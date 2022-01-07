; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/compat/opensolaris/misc/extr_fsshare.c_fsshare_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/compat/opensolaris/misc/extr_fsshare.c_fsshare_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c".XXXXXXXX\00", align 1
@errno = common dso_local global i32 0, align 4
@LOCK_EX = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@FILE_HEADER = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%s\09%s\0A\00", align 1
@LOCK_UN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i32)* @fsshare_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsshare_main(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* @PATH_MAX, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %13, align 8
  store i32 0, i32* %16, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = trunc i64 %19 to i32
  %24 = call i32 @strlcpy(i8* %21, i8* %22, i32 %23)
  %25 = sext i32 %24 to i64
  %26 = icmp uge i64 %25, %19
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %28, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %193

29:                                               ; preds = %4
  %30 = trunc i64 %19 to i32
  %31 = call i32 @strlcat(i8* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = sext i32 %31 to i64
  %33 = icmp uge i64 %32, %19
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %35, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %193

36:                                               ; preds = %29
  %37 = call i32 @mkstemp(i8* %21)
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @errno, align 4
  store i32 %41, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %193

42:                                               ; preds = %36
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* @LOCK_EX, align 4
  %45 = call i32 @flock(i32 %43, i32 %44)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %16, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* @errno, align 4
  %53 = load i32, i32* @EOPNOTSUPP, align 4
  %54 = icmp eq i32 %52, %53
  br label %55

55:                                               ; preds = %51, %48
  %56 = phi i1 [ false, %48 ], [ %54, %51 ]
  br label %57

57:                                               ; preds = %55, %42
  %58 = phi i1 [ true, %42 ], [ %56, %55 ]
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load i32, i32* %15, align 4
  %62 = call i32* @fdopen(i32 %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %62, i32** %13, align 8
  %63 = load i32*, i32** %13, align 8
  %64 = icmp ne i32* %63, null
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load i8*, i8** %6, align 8
  %68 = call i32* @fopen(i8* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %68, i32** %14, align 8
  %69 = load i32*, i32** %14, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %89

71:                                               ; preds = %57
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load i32, i32* @errno, align 4
  %76 = load i32, i32* @ENOENT, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* @errno, align 4
  store i32 %79, i32* %16, align 4
  br label %154

80:                                               ; preds = %74
  br label %88

81:                                               ; preds = %71
  %82 = load i32, i32* @errno, align 4
  %83 = load i32, i32* @ENOENT, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 0, i32* @errno, align 4
  br label %86

86:                                               ; preds = %85, %81
  %87 = load i32, i32* @errno, align 4
  store i32 %87, i32* %16, align 4
  br label %154

88:                                               ; preds = %80
  br label %109

89:                                               ; preds = %57
  %90 = load i32*, i32** %14, align 8
  %91 = call i32 @fileno(i32* %90)
  %92 = load i32, i32* @LOCK_EX, align 4
  %93 = call i32 @flock(i32 %91, i32 %92)
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %16, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %105, label %96

96:                                               ; preds = %89
  %97 = load i32, i32* %16, align 4
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load i32, i32* @errno, align 4
  %101 = load i32, i32* @EOPNOTSUPP, align 4
  %102 = icmp eq i32 %100, %101
  br label %103

103:                                              ; preds = %99, %96
  %104 = phi i1 [ false, %96 ], [ %102, %99 ]
  br label %105

105:                                              ; preds = %103, %89
  %106 = phi i1 [ true, %89 ], [ %104, %103 ]
  %107 = zext i1 %106 to i32
  %108 = call i32 @assert(i32 %107)
  store i32 0, i32* %16, align 4
  br label %109

109:                                              ; preds = %105, %88
  %110 = load i32*, i32** %13, align 8
  %111 = load i8*, i8** @FILE_HEADER, align 8
  %112 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %110, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %111)
  br label %113

113:                                              ; preds = %123, %109
  %114 = load i32*, i32** %14, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = load i32*, i32** %14, align 8
  %118 = load i8*, i8** %7, align 8
  %119 = call i8* @zgetline(i32* %117, i8* %118)
  store i8* %119, i8** %12, align 8
  %120 = icmp ne i8* %119, null
  br label %121

121:                                              ; preds = %116, %113
  %122 = phi i1 [ false, %113 ], [ %120, %116 ]
  br i1 %122, label %123, label %127

123:                                              ; preds = %121
  %124 = load i32*, i32** %13, align 8
  %125 = load i8*, i8** %12, align 8
  %126 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %124, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %125)
  br label %113

127:                                              ; preds = %121
  %128 = load i32*, i32** %14, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %137

130:                                              ; preds = %127
  %131 = load i32*, i32** %14, align 8
  %132 = call i32 @ferror(i32* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load i32*, i32** %14, align 8
  %136 = call i32 @ferror(i32* %135)
  store i32 %136, i32* %16, align 4
  br label %154

137:                                              ; preds = %130, %127
  %138 = load i32*, i32** %13, align 8
  %139 = call i32 @ferror(i32* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load i32*, i32** %13, align 8
  %143 = call i32 @ferror(i32* %142)
  store i32 %143, i32* %16, align 4
  br label %154

144:                                              ; preds = %137
  %145 = load i32, i32* %9, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %144
  %148 = load i32*, i32** %13, align 8
  %149 = load i8*, i8** %7, align 8
  %150 = load i8*, i8** %8, align 8
  %151 = call i8* @translate_opts(i8* %150)
  %152 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %148, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %149, i8* %151)
  br label %153

153:                                              ; preds = %147, %144
  br label %154

154:                                              ; preds = %153, %141, %134, %86, %78
  %155 = load i32, i32* %16, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %154
  %158 = call i32 @unlink(i8* %21)
  br label %171

159:                                              ; preds = %154
  %160 = load i8*, i8** %6, align 8
  %161 = call i32 @rename(i8* %21, i8* %160)
  %162 = icmp eq i32 %161, -1
  br i1 %162, label %163, label %166

163:                                              ; preds = %159
  %164 = load i32, i32* @errno, align 4
  store i32 %164, i32* %16, align 4
  %165 = call i32 @unlink(i8* %21)
  br label %170

166:                                              ; preds = %159
  %167 = load i32*, i32** %13, align 8
  %168 = call i32 @fflush(i32* %167)
  %169 = call i32 (...) @restart_mountd()
  br label %170

170:                                              ; preds = %166, %163
  br label %171

171:                                              ; preds = %170, %157
  %172 = load i32*, i32** %14, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %174, label %181

174:                                              ; preds = %171
  %175 = load i32*, i32** %14, align 8
  %176 = call i32 @fileno(i32* %175)
  %177 = load i32, i32* @LOCK_UN, align 4
  %178 = call i32 @flock(i32 %176, i32 %177)
  %179 = load i32*, i32** %14, align 8
  %180 = call i32 @fclose(i32* %179)
  br label %181

181:                                              ; preds = %174, %171
  %182 = load i32*, i32** %13, align 8
  %183 = icmp ne i32* %182, null
  br i1 %183, label %184, label %191

184:                                              ; preds = %181
  %185 = load i32*, i32** %13, align 8
  %186 = call i32 @fileno(i32* %185)
  %187 = load i32, i32* @LOCK_UN, align 4
  %188 = call i32 @flock(i32 %186, i32 %187)
  %189 = load i32*, i32** %13, align 8
  %190 = call i32 @fclose(i32* %189)
  br label %191

191:                                              ; preds = %184, %181
  %192 = load i32, i32* %16, align 4
  store i32 %192, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %193

193:                                              ; preds = %191, %40, %34, %27
  %194 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %194)
  %195 = load i32, i32* %5, align 4
  ret i32 %195
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i32 @mkstemp(i8*) #2

declare dso_local i32 @flock(i32, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32* @fdopen(i32, i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @fileno(i32*) #2

declare dso_local i32 @fprintf(i32*, i8*, i8*, ...) #2

declare dso_local i8* @zgetline(i32*, i8*) #2

declare dso_local i32 @ferror(i32*) #2

declare dso_local i8* @translate_opts(i8*) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i32 @rename(i8*, i8*) #2

declare dso_local i32 @fflush(i32*) #2

declare dso_local i32 @restart_mountd(...) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
