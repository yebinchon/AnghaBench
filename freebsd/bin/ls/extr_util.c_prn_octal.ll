; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ls/extr_util.c_prn_octal.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ls/extr_util.c_prn_octal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prn_octal.esc = internal constant [19 x i8] c"\\\\\22\22\07a\08b\0Cf\0An\0Dr\09t\0Bv\00", align 16
@MB_LEN_MAX = common dso_local global i32 0, align 4
@f_octal_escape = common dso_local global i64 0, align 8
@UCHAR_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prn_octal(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %12 = call i32 @memset(i32* %4, i32 0, i32 4)
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %153, %1
  %14 = load i8*, i8** %2, align 8
  %15 = load i32, i32* @MB_LEN_MAX, align 4
  %16 = call i64 @mbrtowc(i32* %5, i8* %14, i32 %15, i32* %4)
  store i64 %16, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %154

18:                                               ; preds = %13
  %19 = load i64, i64* %6, align 8
  %20 = icmp ne i64 %19, -1
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i64, i64* %6, align 8
  %23 = icmp ne i64 %22, -2
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i1 [ false, %18 ], [ %23, %21 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %62

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @iswprint(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %62

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 34
  br i1 %35, label %36, label %62

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 92
  br i1 %38, label %39, label %62

39:                                               ; preds = %36
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %52, %39
  %41 = load i32, i32* %9, align 4
  %42 = load i64, i64* %6, align 8
  %43 = trunc i64 %42 to i32
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load i8*, i8** %2, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = call i32 @putchar(i8 signext %50)
  br label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %40

55:                                               ; preds = %40
  %56 = load i32, i32* %5, align 4
  %57 = call i64 @wcwidth(i32 %56)
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %10, align 4
  br label %138

62:                                               ; preds = %36, %33, %29, %24
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %86

65:                                               ; preds = %62
  %66 = load i64, i64* @f_octal_escape, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %65
  %69 = load i32, i32* %5, align 4
  %70 = load i64, i64* @UCHAR_MAX, align 8
  %71 = trunc i64 %70 to i32
  %72 = icmp sle i32 %69, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %68
  %74 = load i32, i32* %5, align 4
  %75 = trunc i32 %74 to i8
  %76 = call i8* @strchr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @prn_octal.esc, i64 0, i64 0), i8 signext %75)
  store i8* %76, i8** %3, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = call i32 @putchar(i8 signext 92)
  %80 = load i8*, i8** %3, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = call i32 @putchar(i8 signext %82)
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 2
  store i32 %85, i32* %10, align 4
  br label %137

86:                                               ; preds = %73, %68, %65, %62
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i64, i64* %6, align 8
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %11, align 4
  br label %100

92:                                               ; preds = %86
  %93 = load i64, i64* %6, align 8
  %94 = icmp eq i64 %93, -1
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 1, i32* %11, align 4
  br label %99

96:                                               ; preds = %92
  %97 = load i8*, i8** %2, align 8
  %98 = call i32 @strlen(i8* %97)
  store i32 %98, i32* %11, align 4
  br label %99

99:                                               ; preds = %96, %95
  br label %100

100:                                              ; preds = %99, %89
  store i32 0, i32* %9, align 4
  br label %101

101:                                              ; preds = %133, %100
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %136

105:                                              ; preds = %101
  %106 = load i8*, i8** %2, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load i8, i8* %109, align 1
  store i8 %110, i8* %7, align 1
  %111 = call i32 @putchar(i8 signext 92)
  %112 = load i8, i8* %7, align 1
  %113 = zext i8 %112 to i32
  %114 = ashr i32 %113, 6
  %115 = add nsw i32 48, %114
  %116 = trunc i32 %115 to i8
  %117 = call i32 @putchar(i8 signext %116)
  %118 = load i8, i8* %7, align 1
  %119 = zext i8 %118 to i32
  %120 = ashr i32 %119, 3
  %121 = and i32 %120, 7
  %122 = add nsw i32 48, %121
  %123 = trunc i32 %122 to i8
  %124 = call i32 @putchar(i8 signext %123)
  %125 = load i8, i8* %7, align 1
  %126 = zext i8 %125 to i32
  %127 = and i32 %126, 7
  %128 = add nsw i32 48, %127
  %129 = trunc i32 %128 to i8
  %130 = call i32 @putchar(i8 signext %129)
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 4
  store i32 %132, i32* %10, align 4
  br label %133

133:                                              ; preds = %105
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %9, align 4
  br label %101

136:                                              ; preds = %101
  br label %137

137:                                              ; preds = %136, %78
  br label %138

138:                                              ; preds = %137, %55
  %139 = load i64, i64* %6, align 8
  %140 = icmp eq i64 %139, -2
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  br label %154

142:                                              ; preds = %138
  %143 = load i64, i64* %6, align 8
  %144 = icmp eq i64 %143, -1
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = call i32 @memset(i32* %4, i32 0, i32 4)
  %147 = load i8*, i8** %2, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %2, align 8
  br label %153

149:                                              ; preds = %142
  %150 = load i64, i64* %6, align 8
  %151 = load i8*, i8** %2, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 %150
  store i8* %152, i8** %2, align 8
  br label %153

153:                                              ; preds = %149, %145
  br label %13

154:                                              ; preds = %141, %13
  %155 = load i32, i32* %10, align 4
  ret i32 %155
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @mbrtowc(i32*, i8*, i32, i32*) #1

declare dso_local i64 @iswprint(i32) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i64 @wcwidth(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
