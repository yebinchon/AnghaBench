; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/cxxfilt/extr_cxxfilt.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/cxxfilt/extr_cxxfilt.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STRBUFSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"_nps:V\00", align 1
@longopts = common dso_local global i32 0, align 4
@stripus = common dso_local global i32 0, align 4
@noparam = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@format = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"unsupported format: %s\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to limit stdio rights\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to enter capability mode\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@_IOLBF = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c".$_\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"buffer overflowed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* @STRBUFSZ, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  br label %17

17:                                               ; preds = %42, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = load i32, i32* @longopts, align 4
  %21 = call i32 @getopt_long(i32 %18, i8** %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %20, i32* null)
  store i32 %21, i32* %12, align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %43

23:                                               ; preds = %17
  %24 = load i32, i32* %12, align 4
  switch i32 %24, label %40 [
    i32 95, label %25
    i32 110, label %26
    i32 112, label %27
    i32 115, label %28
    i32 86, label %37
    i32 128, label %39
  ]

25:                                               ; preds = %23
  store i32 1, i32* @stripus, align 4
  br label %42

26:                                               ; preds = %23
  store i32 0, i32* @stripus, align 4
  br label %42

27:                                               ; preds = %23
  store i32 1, i32* @noparam, align 4
  br label %42

28:                                               ; preds = %23
  %29 = load i32, i32* @optarg, align 4
  %30 = call i32 @find_format(i32 %29)
  store i32 %30, i32* @format, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* @EXIT_FAILURE, align 4
  %34 = load i32, i32* @optarg, align 4
  %35 = call i32 @errx(i32 %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %32, %28
  br label %42

37:                                               ; preds = %23
  %38 = call i32 (...) @version()
  br label %39

39:                                               ; preds = %23, %37
  br label %40

40:                                               ; preds = %23, %39
  %41 = call i32 (...) @usage()
  br label %42

42:                                               ; preds = %40, %36, %27, %26, %25
  br label %17

43:                                               ; preds = %17
  %44 = load i64, i64* @optind, align 8
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 %44
  store i8** %46, i8*** %5, align 8
  %47 = load i64, i64* @optind, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = sub nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %4, align 4
  %52 = call i64 (...) @caph_limit_stdio()
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %43
  %55 = load i32, i32* @EXIT_FAILURE, align 4
  %56 = call i32 @err(i32 %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %43
  %58 = call i64 (...) @caph_enter()
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* @EXIT_FAILURE, align 4
  %62 = call i32 @err(i32 %61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i8**, i8*** %5, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %95

67:                                               ; preds = %63
  store i32 0, i32* %11, align 4
  br label %68

68:                                               ; preds = %91, %67
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %94

72:                                               ; preds = %68
  %73 = load i8**, i8*** %5, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = call i8* @demangle(i8* %77)
  store i8* %78, i8** %6, align 8
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %72
  %81 = load i8**, i8*** %5, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %85)
  br label %90

87:                                               ; preds = %72
  %88 = load i8*, i8** %6, align 8
  %89 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %88)
  br label %90

90:                                               ; preds = %87, %80
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %11, align 4
  br label %68

94:                                               ; preds = %68
  br label %150

95:                                               ; preds = %63
  store i64 0, i64* %9, align 8
  br label %96

96:                                               ; preds = %148, %95
  %97 = load i32, i32* @stdout, align 4
  %98 = load i32, i32* @_IOLBF, align 4
  %99 = call i32 @setvbuf(i32 %97, i32* null, i32 %98, i32 0)
  %100 = load i32, i32* @stdin, align 4
  %101 = call i32 @fgetc(i32 %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @EOF, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %113, label %105

105:                                              ; preds = %96
  %106 = load i32, i32* %10, align 4
  %107 = call i64 @isalnum(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %135, label %109

109:                                              ; preds = %105
  %110 = load i32, i32* %10, align 4
  %111 = call i64 @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %135, label %113

113:                                              ; preds = %109, %96
  %114 = load i64, i64* %9, align 8
  %115 = icmp ugt i64 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %113
  %117 = load i64, i64* %9, align 8
  %118 = getelementptr inbounds i8, i8* %16, i64 %117
  store i8 0, i8* %118, align 1
  %119 = call i8* @demangle(i8* %16)
  store i8* %119, i8** %6, align 8
  %120 = icmp eq i8* %119, null
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %16)
  br label %126

123:                                              ; preds = %116
  %124 = load i8*, i8** %6, align 8
  %125 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %124)
  br label %126

126:                                              ; preds = %123, %121
  store i64 0, i64* %9, align 8
  br label %127

127:                                              ; preds = %126, %113
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* @EOF, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  br label %149

132:                                              ; preds = %127
  %133 = load i32, i32* %10, align 4
  %134 = call i32 @putchar(i32 %133)
  br label %148

135:                                              ; preds = %109, %105
  %136 = load i64, i64* %9, align 8
  %137 = sub i64 %14, 1
  %138 = icmp uge i64 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = call i32 @warnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  br label %147

141:                                              ; preds = %135
  %142 = load i32, i32* %10, align 4
  %143 = trunc i32 %142 to i8
  %144 = load i64, i64* %9, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %9, align 8
  %146 = getelementptr inbounds i8, i8* %16, i64 %144
  store i8 %143, i8* %146, align 1
  br label %147

147:                                              ; preds = %141, %139
  br label %148

148:                                              ; preds = %147, %132
  br label %96

149:                                              ; preds = %131
  br label %150

150:                                              ; preds = %149, %94
  %151 = call i32 @exit(i32 0) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #2

declare dso_local i32 @find_format(i32) #2

declare dso_local i32 @errx(i32, i8*, i32) #2

declare dso_local i32 @version(...) #2

declare dso_local i32 @usage(...) #2

declare dso_local i64 @caph_limit_stdio(...) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i64 @caph_enter(...) #2

declare dso_local i8* @demangle(i8*) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i32 @setvbuf(i32, i32*, i32, i32) #2

declare dso_local i32 @fgetc(i32) #2

declare dso_local i64 @isalnum(i32) #2

declare dso_local i64 @strchr(i8*, i32) #2

declare dso_local i32 @putchar(i32) #2

declare dso_local i32 @warnx(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
