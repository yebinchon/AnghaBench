; ModuleID = '/home/carl/AnghaBench/freebsd/bin/mv/extr_mv.c_do_move.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/mv/extr_mv.c_do_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i64, i64 }
%struct.statfs = type { i32 }

@fflg = common dso_local global i32 0, align 4
@F_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@nflg = common dso_local global i64 0, align 8
@vflg = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"%s not overwritten\0A\00", align 1
@iflg = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"overwrite %s? %s\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"(y/n [n]) \00", align 1
@W_OK = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"override %s%s%s/%s for %s? %s\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"not overwritten\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"%s -> %s\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@EXDEV = common dso_local global i64 0, align 8
@PATH_MAX = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"cannot resolve %s: %s\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"cannot rename a mount point\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"rename %s to %s\00", align 1
@YESNO = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @do_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_move(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [15 x i8], align 1
  %11 = alloca %struct.statfs, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load i32, i32* @fflg, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %110, label %17

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* @F_OK, align 4
  %20 = call i64 @access(i8* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %110, label %22

22:                                               ; preds = %17
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @lstat(i8* %23, %struct.stat* %6)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %27)
  store i32 1, i32* %3, align 4
  br label %192

29:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  %30 = load i64, i64* @nflg, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i64, i64* @vflg, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %35, %32
  store i32 0, i32* %3, align 4
  br label %192

39:                                               ; preds = %29
  %40 = load i64, i64* @iflg, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* @stderr, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %82

46:                                               ; preds = %39
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* @W_OK, align 4
  %49 = call i64 @access(i8* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %81

51:                                               ; preds = %46
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @stat(i8* %52, %struct.stat* %6)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %81, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* @STDIN_FILENO, align 4
  %57 = call i64 @isatty(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %81

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds [15 x i8], [15 x i8]* %10, i64 0, i64 0
  %63 = call i32 @strmode(i32 %61, i8* %62)
  %64 = load i32, i32* @stderr, align 4
  %65 = getelementptr inbounds [15 x i8], [15 x i8]* %10, i64 0, i64 0
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = getelementptr inbounds [15 x i8], [15 x i8]* %10, i64 0, i64 9
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 32
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %73 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = call i8* @user_from_uid(i64 %74, i32 0)
  %76 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i8* @group_from_gid(i64 %77, i32 0)
  %79 = load i8*, i8** %5, align 8
  %80 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %66, i8* %72, i8* %75, i8* %78, i8* %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %81

81:                                               ; preds = %59, %55, %51, %46
  br label %82

82:                                               ; preds = %81, %42
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %109

86:                                               ; preds = %83
  %87 = call i32 (...) @getchar()
  store i32 %87, i32* %8, align 4
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %97, %86
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 10
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @EOF, align 4
  %94 = icmp ne i32 %92, %93
  br label %95

95:                                               ; preds = %91, %88
  %96 = phi i1 [ false, %88 ], [ %94, %91 ]
  br i1 %96, label %97, label %99

97:                                               ; preds = %95
  %98 = call i32 (...) @getchar()
  store i32 %98, i32* %8, align 4
  br label %88

99:                                               ; preds = %95
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 121
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 89
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* @stderr, align 4
  %107 = call i32 (i32, i8*, ...) @fprintf(i32 %106, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %192

108:                                              ; preds = %102, %99
  br label %109

109:                                              ; preds = %108, %83
  br label %110

110:                                              ; preds = %109, %17, %2
  %111 = load i8*, i8** %4, align 8
  %112 = load i8*, i8** %5, align 8
  %113 = call i32 @rename(i8* %111, i8* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %110
  %116 = load i64, i64* @vflg, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load i8*, i8** %4, align 8
  %120 = load i8*, i8** %5, align 8
  %121 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %119, i8* %120)
  br label %122

122:                                              ; preds = %118, %115
  store i32 0, i32* %3, align 4
  br label %192

123:                                              ; preds = %110
  %124 = load i64, i64* @errno, align 8
  %125 = load i64, i64* @EXDEV, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %166

127:                                              ; preds = %123
  %128 = load i32, i32* @PATH_MAX, align 4
  %129 = zext i32 %128 to i64
  %130 = call i8* @llvm.stacksave()
  store i8* %130, i8** %12, align 8
  %131 = alloca i8, i64 %129, align 16
  store i64 %129, i64* %13, align 8
  %132 = load i8*, i8** %4, align 8
  %133 = call i32 @lstat(i8* %132, %struct.stat* %6)
  %134 = icmp eq i32 %133, -1
  br i1 %134, label %135, label %138

135:                                              ; preds = %127
  %136 = load i8*, i8** %4, align 8
  %137 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %136)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %162

138:                                              ; preds = %127
  %139 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @S_ISLNK(i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %161, label %143

143:                                              ; preds = %138
  %144 = load i8*, i8** %4, align 8
  %145 = call i32* @realpath(i8* %144, i8* %131)
  %146 = icmp eq i32* %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %143
  %148 = load i8*, i8** %4, align 8
  %149 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i8* %148, i8* %131)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %162

150:                                              ; preds = %143
  %151 = call i32 @statfs(i8* %131, %struct.statfs* %11)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %160, label %153

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.statfs, %struct.statfs* %11, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @strcmp(i8* %131, i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %153
  %159 = call i32 @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %162

160:                                              ; preds = %153, %150
  br label %161

161:                                              ; preds = %160, %138
  store i32 0, i32* %14, align 4
  br label %162

162:                                              ; preds = %161, %158, %147, %135
  %163 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %163)
  %164 = load i32, i32* %14, align 4
  switch i32 %164, label %194 [
    i32 0, label %165
    i32 1, label %192
  ]

165:                                              ; preds = %162
  br label %170

166:                                              ; preds = %123
  %167 = load i8*, i8** %4, align 8
  %168 = load i8*, i8** %5, align 8
  %169 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* %167, i8* %168)
  store i32 1, i32* %3, align 4
  br label %192

170:                                              ; preds = %165
  %171 = load i8*, i8** %4, align 8
  %172 = call i32 @lstat(i8* %171, %struct.stat* %6)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %170
  %175 = load i8*, i8** %4, align 8
  %176 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %175)
  store i32 1, i32* %3, align 4
  br label %192

177:                                              ; preds = %170
  %178 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call i64 @S_ISREG(i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %177
  %183 = load i8*, i8** %4, align 8
  %184 = load i8*, i8** %5, align 8
  %185 = call i32 @fastcopy(i8* %183, i8* %184, %struct.stat* %6)
  br label %190

186:                                              ; preds = %177
  %187 = load i8*, i8** %4, align 8
  %188 = load i8*, i8** %5, align 8
  %189 = call i32 @copy(i8* %187, i8* %188)
  br label %190

190:                                              ; preds = %186, %182
  %191 = phi i32 [ %185, %182 ], [ %189, %186 ]
  store i32 %191, i32* %3, align 4
  br label %192

192:                                              ; preds = %190, %174, %166, %162, %122, %105, %38, %26
  %193 = load i32, i32* %3, align 4
  ret i32 %193

194:                                              ; preds = %162
  unreachable
}

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @warn(i8*, i8*, ...) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @isatty(i32) #1

declare dso_local i32 @strmode(i32, i8*) #1

declare dso_local i8* @user_from_uid(i64, i32) #1

declare dso_local i8* @group_from_gid(i64, i32) #1

declare dso_local i32 @getchar(...) #1

declare dso_local i32 @rename(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @S_ISLNK(i32) #1

declare dso_local i32* @realpath(i8*, i8*) #1

declare dso_local i32 @statfs(i8*, %struct.statfs*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @warnx(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @fastcopy(i8*, i8*, %struct.stat*) #1

declare dso_local i32 @copy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
