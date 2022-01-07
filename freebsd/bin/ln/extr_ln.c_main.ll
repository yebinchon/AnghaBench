; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ln/extr_ln.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ln/extr_ln.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"FLPfhinsvw\00", align 1
@Fflag = common dso_local global i32 0, align 4
@Pflag = common dso_local global i32 0, align 4
@fflag = common dso_local global i32 0, align 4
@iflag = common dso_local global i64 0, align 8
@wflag = common dso_local global i32 0, align 4
@hflag = common dso_local global i32 0, align 4
@sflag = common dso_local global i64 0, align 8
@vflag = common dso_local global i32 0, align 4
@linkch = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@ENOTDIR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i8* @strrchr(i8* %13, i8 signext 47)
  store i8* %14, i8** %7, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %7, align 8
  br label %23

20:                                               ; preds = %2
  %21 = load i8*, i8** %7, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %7, align 8
  br label %23

23:                                               ; preds = %20, %16
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %23
  br label %28

28:                                               ; preds = %33, %27
  %29 = load i32, i32* %4, align 4
  %30 = load i8**, i8*** %5, align 8
  %31 = call i32 @getopt(i32 %29, i8** %30, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %32 = icmp ne i32 %31, -1
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 (...) @usage()
  br label %28

35:                                               ; preds = %28
  %36 = load i64, i64* @optind, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = sub nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %4, align 4
  %41 = load i64, i64* @optind, align 8
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 %41
  store i8** %43, i8*** %5, align 8
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 2
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = call i32 (...) @usage()
  br label %48

48:                                               ; preds = %46, %35
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i8**, i8*** %5, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @linkit(i8* %51, i8* %54, i32 0)
  %56 = call i32 @exit(i32 %55) #3
  unreachable

57:                                               ; preds = %23
  br label %58

58:                                               ; preds = %77, %57
  %59 = load i32, i32* %4, align 4
  %60 = load i8**, i8*** %5, align 8
  %61 = call i32 @getopt(i32 %59, i8** %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 %61, i32* %9, align 4
  %62 = icmp ne i32 %61, -1
  br i1 %62, label %63, label %78

63:                                               ; preds = %58
  %64 = load i32, i32* %9, align 4
  switch i32 %64, label %75 [
    i32 70, label %65
    i32 76, label %66
    i32 80, label %67
    i32 102, label %68
    i32 104, label %69
    i32 110, label %69
    i32 105, label %70
    i32 115, label %71
    i32 118, label %72
    i32 119, label %73
    i32 63, label %74
  ]

65:                                               ; preds = %63
  store i32 1, i32* @Fflag, align 4
  br label %77

66:                                               ; preds = %63
  store i32 0, i32* @Pflag, align 4
  br label %77

67:                                               ; preds = %63
  store i32 1, i32* @Pflag, align 4
  br label %77

68:                                               ; preds = %63
  store i32 1, i32* @fflag, align 4
  store i64 0, i64* @iflag, align 8
  store i32 0, i32* @wflag, align 4
  br label %77

69:                                               ; preds = %63, %63
  store i32 1, i32* @hflag, align 4
  br label %77

70:                                               ; preds = %63
  store i64 1, i64* @iflag, align 8
  store i32 0, i32* @fflag, align 4
  br label %77

71:                                               ; preds = %63
  store i64 1, i64* @sflag, align 8
  br label %77

72:                                               ; preds = %63
  store i32 1, i32* @vflag, align 4
  br label %77

73:                                               ; preds = %63
  store i32 1, i32* @wflag, align 4
  br label %77

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %63, %74
  %76 = call i32 (...) @usage()
  br label %77

77:                                               ; preds = %75, %73, %72, %71, %70, %69, %68, %67, %66, %65
  br label %58

78:                                               ; preds = %58
  %79 = load i64, i64* @optind, align 8
  %80 = load i8**, i8*** %5, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 %79
  store i8** %81, i8*** %5, align 8
  %82 = load i64, i64* @optind, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = sub nsw i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %4, align 4
  %87 = load i64, i64* @sflag, align 8
  %88 = icmp ne i64 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 45, i32 61
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* @linkch, align 1
  %92 = load i64, i64* @sflag, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %78
  store i32 0, i32* @Fflag, align 4
  br label %95

95:                                               ; preds = %94, %78
  %96 = load i32, i32* @Fflag, align 4
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i64, i64* @iflag, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i32 1, i32* @fflag, align 4
  store i32 0, i32* @wflag, align 4
  br label %102

102:                                              ; preds = %101, %98, %95
  %103 = load i32, i32* %4, align 4
  switch i32 %103, label %121 [
    i32 0, label %104
    i32 1, label %106
    i32 2, label %112
  ]

104:                                              ; preds = %102
  %105 = call i32 (...) @usage()
  br label %106

106:                                              ; preds = %102, %104
  %107 = load i8**, i8*** %5, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @linkit(i8* %109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %111 = call i32 @exit(i32 %110) #3
  unreachable

112:                                              ; preds = %102
  %113 = load i8**, i8*** %5, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i64 0
  %115 = load i8*, i8** %114, align 8
  %116 = load i8**, i8*** %5, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 1
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @linkit(i8* %115, i8* %118, i32 0)
  %120 = call i32 @exit(i32 %119) #3
  unreachable

121:                                              ; preds = %102
  br label %122

122:                                              ; preds = %121
  %123 = load i8**, i8*** %5, align 8
  %124 = load i32, i32* %4, align 4
  %125 = sub nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8*, i8** %123, i64 %126
  %128 = load i8*, i8** %127, align 8
  store i8* %128, i8** %8, align 8
  %129 = load i32, i32* @hflag, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %122
  %132 = load i8*, i8** %8, align 8
  %133 = call i64 @lstat(i8* %132, %struct.stat* %6)
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @S_ISLNK(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load i32, i32* @ENOTDIR, align 4
  store i32 %141, i32* @errno, align 4
  %142 = load i8*, i8** %8, align 8
  %143 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %142)
  br label %144

144:                                              ; preds = %140, %135, %131, %122
  %145 = load i8*, i8** %8, align 8
  %146 = call i64 @stat(i8* %145, %struct.stat* %6)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = load i8*, i8** %8, align 8
  %150 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %149)
  br label %151

151:                                              ; preds = %148, %144
  %152 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @S_ISDIR(i32 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %151
  %157 = call i32 (...) @usage()
  br label %158

158:                                              ; preds = %156, %151
  store i32 0, i32* %10, align 4
  br label %159

159:                                              ; preds = %171, %158
  %160 = load i8**, i8*** %5, align 8
  %161 = load i8*, i8** %160, align 8
  %162 = load i8*, i8** %8, align 8
  %163 = icmp ne i8* %161, %162
  br i1 %163, label %164, label %174

164:                                              ; preds = %159
  %165 = load i8**, i8*** %5, align 8
  %166 = load i8*, i8** %165, align 8
  %167 = load i8*, i8** %8, align 8
  %168 = call i32 @linkit(i8* %166, i8* %167, i32 1)
  %169 = load i32, i32* %10, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %10, align 4
  br label %171

171:                                              ; preds = %164
  %172 = load i8**, i8*** %5, align 8
  %173 = getelementptr inbounds i8*, i8** %172, i32 1
  store i8** %173, i8*** %5, align 8
  br label %159

174:                                              ; preds = %159
  %175 = load i32, i32* %10, align 4
  %176 = call i32 @exit(i32 %175) #3
  unreachable
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @linkit(i8*, i8*, i32) #1

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISDIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
