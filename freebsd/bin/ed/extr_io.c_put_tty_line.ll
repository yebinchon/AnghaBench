; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ed/extr_io.c_put_tty_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ed/extr_io.c_put_tty_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GNP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%ld\09\00", align 1
@GLS = common dso_local global i32 0, align 4
@cols = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"\\\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@scripted = common dso_local global i32 0, align 4
@isglobal = common dso_local global i32 0, align 4
@rows = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Press <RETURN> to continue... \00", align 1
@ERR = common dso_local global i32 0, align 4
@ESCAPES = common dso_local global i8* null, align 8
@ESCCHARS = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @put_tty_line(i8* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @GNP, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %18)
  store i32 8, i32* %10, align 4
  br label %20

20:                                               ; preds = %17, %4
  br label %21

21:                                               ; preds = %140, %20
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %7, align 4
  %24 = icmp ne i32 %22, 0
  br i1 %24, label %25, label %143

25:                                               ; preds = %21
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @GLS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %59

30:                                               ; preds = %25
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* @cols, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %59

35:                                               ; preds = %30
  %36 = load i32, i32* @stdout, align 4
  %37 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  store i32 1, i32* %10, align 4
  %38 = load i32, i32* @scripted, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %58, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @isglobal, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* @rows, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  store i32 0, i32* %11, align 4
  %49 = load i32, i32* @stdout, align 4
  %50 = call i32 @fputs(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @stdout, align 4
  %52 = call i32 @fflush(i32 %51)
  %53 = call i64 (...) @get_tty_line()
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* @ERR, align 4
  store i32 %56, i32* %5, align 4
  br label %152

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %43, %40, %35
  br label %59

59:                                               ; preds = %58, %30, %25
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @GLS, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %135

64:                                               ; preds = %59
  %65 = load i8*, i8** %6, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp slt i32 31, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %64
  %70 = load i8*, i8** %6, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp slt i32 %72, 127
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load i8*, i8** %6, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 92
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i8*, i8** %6, align 8
  %81 = load i8, i8* %80, align 1
  %82 = call i32 @putchar(i8 signext %81)
  br label %134

83:                                               ; preds = %74, %69, %64
  %84 = call i32 @putchar(i8 signext 92)
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  %87 = load i8*, i8** %6, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %83
  %92 = load i8*, i8** @ESCAPES, align 8
  %93 = load i8*, i8** %6, align 8
  %94 = load i8, i8* %93, align 1
  %95 = call i8* @strchr(i8* %92, i8 signext %94)
  store i8* %95, i8** %12, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %107

97:                                               ; preds = %91
  %98 = load i8*, i8** @ESCCHARS, align 8
  %99 = load i8*, i8** %12, align 8
  %100 = load i8*, i8** @ESCAPES, align 8
  %101 = ptrtoint i8* %99 to i64
  %102 = ptrtoint i8* %100 to i64
  %103 = sub i64 %101, %102
  %104 = getelementptr inbounds i8, i8* %98, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = call i32 @putchar(i8 signext %105)
  br label %133

107:                                              ; preds = %91, %83
  %108 = load i8*, i8** %6, align 8
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = and i32 %110, 192
  %112 = ashr i32 %111, 6
  %113 = add nsw i32 %112, 48
  %114 = trunc i32 %113 to i8
  %115 = call i32 @putchar(i8 signext %114)
  %116 = load i8*, i8** %6, align 8
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = and i32 %118, 56
  %120 = ashr i32 %119, 3
  %121 = add nsw i32 %120, 48
  %122 = trunc i32 %121 to i8
  %123 = call i32 @putchar(i8 signext %122)
  %124 = load i8*, i8** %6, align 8
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = and i32 %126, 7
  %128 = add nsw i32 %127, 48
  %129 = trunc i32 %128 to i8
  %130 = call i32 @putchar(i8 signext %129)
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 2
  store i32 %132, i32* %10, align 4
  br label %133

133:                                              ; preds = %107, %97
  br label %134

134:                                              ; preds = %133, %79
  br label %139

135:                                              ; preds = %59
  %136 = load i8*, i8** %6, align 8
  %137 = load i8, i8* %136, align 1
  %138 = call i32 @putchar(i8 signext %137)
  br label %139

139:                                              ; preds = %135, %134
  br label %140

140:                                              ; preds = %139
  %141 = load i8*, i8** %6, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %6, align 8
  br label %21

143:                                              ; preds = %21
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* @GLS, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = call i32 @putchar(i8 signext 36)
  br label %150

150:                                              ; preds = %148, %143
  %151 = call i32 @putchar(i8 signext 10)
  store i32 0, i32* %5, align 4
  br label %152

152:                                              ; preds = %150, %55
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i64 @get_tty_line(...) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
