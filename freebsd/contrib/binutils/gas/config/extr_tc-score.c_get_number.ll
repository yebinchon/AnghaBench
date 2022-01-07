; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_get_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_get_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@input_line_pointer = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"expected simple number\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c" *input_line_pointer == '%c' 0x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"invalid number\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @get_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_number() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 0, i32* %2, align 4
  store i64 0, i64* %3, align 8
  %4 = load i8*, i8** @input_line_pointer, align 8
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 45
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i8*, i8** @input_line_pointer, align 8
  %10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %10, i8** @input_line_pointer, align 8
  store i32 1, i32* %2, align 4
  br label %11

11:                                               ; preds = %8, %0
  %12 = load i8*, i8** @input_line_pointer, align 8
  %13 = load i8, i8* %12, align 1
  %14 = call i64 @ISDIGIT(i8 signext %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = call i8* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @as_bad(i8* %17)
  br label %19

19:                                               ; preds = %16, %11
  %20 = load i8*, i8** @input_line_pointer, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 48
  br i1 %24, label %25, label %88

25:                                               ; preds = %19
  %26 = load i8*, i8** @input_line_pointer, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 120
  br i1 %30, label %31, label %59

31:                                               ; preds = %25
  %32 = load i8*, i8** @input_line_pointer, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 2
  store i8* %33, i8** @input_line_pointer, align 8
  br label %34

34:                                               ; preds = %39, %31
  %35 = load i8*, i8** @input_line_pointer, align 8
  %36 = load i8, i8* %35, align 1
  %37 = call i64 @ISXDIGIT(i8 signext %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load i64, i64* %3, align 8
  %41 = shl i64 %40, 4
  store i64 %41, i64* %3, align 8
  %42 = load i8*, i8** @input_line_pointer, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** @input_line_pointer, align 8
  %44 = load i8, i8* %42, align 1
  %45 = sext i8 %44 to i32
  %46 = call i64 @hex_value(i32 %45)
  %47 = load i64, i64* %3, align 8
  %48 = or i64 %47, %46
  store i64 %48, i64* %3, align 8
  br label %34

49:                                               ; preds = %34
  %50 = load i32, i32* %2, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i64, i64* %3, align 8
  %54 = sub nsw i64 0, %53
  br label %57

55:                                               ; preds = %49
  %56 = load i64, i64* %3, align 8
  br label %57

57:                                               ; preds = %55, %52
  %58 = phi i64 [ %54, %52 ], [ %56, %55 ]
  store i64 %58, i64* %1, align 8
  br label %129

59:                                               ; preds = %25
  %60 = load i8*, i8** @input_line_pointer, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** @input_line_pointer, align 8
  br label %62

62:                                               ; preds = %67, %59
  %63 = load i8*, i8** @input_line_pointer, align 8
  %64 = load i8, i8* %63, align 1
  %65 = call i64 @ISDIGIT(i8 signext %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %62
  %68 = load i64, i64* %3, align 8
  %69 = shl i64 %68, 3
  store i64 %69, i64* %3, align 8
  %70 = load i8*, i8** @input_line_pointer, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** @input_line_pointer, align 8
  %72 = load i8, i8* %70, align 1
  %73 = sext i8 %72 to i32
  %74 = sub nsw i32 %73, 48
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %3, align 8
  %77 = or i64 %76, %75
  store i64 %77, i64* %3, align 8
  br label %62

78:                                               ; preds = %62
  %79 = load i32, i32* %2, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i64, i64* %3, align 8
  %83 = sub nsw i64 0, %82
  br label %86

84:                                               ; preds = %78
  %85 = load i64, i64* %3, align 8
  br label %86

86:                                               ; preds = %84, %81
  %87 = phi i64 [ %83, %81 ], [ %85, %84 ]
  store i64 %87, i64* %1, align 8
  br label %129

88:                                               ; preds = %19
  %89 = load i8*, i8** @input_line_pointer, align 8
  %90 = load i8, i8* %89, align 1
  %91 = call i64 @ISDIGIT(i8 signext %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %88
  %94 = call i8* @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %95 = load i8*, i8** @input_line_pointer, align 8
  %96 = load i8, i8* %95, align 1
  %97 = load i8*, i8** @input_line_pointer, align 8
  %98 = load i8, i8* %97, align 1
  %99 = call i32 @printf(i8* %94, i8 signext %96, i8 signext %98)
  %100 = call i8* @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %101 = call i32 @as_warn(i8* %100)
  store i64 -1, i64* %1, align 8
  br label %129

102:                                              ; preds = %88
  br label %103

103:                                              ; preds = %108, %102
  %104 = load i8*, i8** @input_line_pointer, align 8
  %105 = load i8, i8* %104, align 1
  %106 = call i64 @ISDIGIT(i8 signext %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %103
  %109 = load i64, i64* %3, align 8
  %110 = mul nsw i64 %109, 10
  store i64 %110, i64* %3, align 8
  %111 = load i8*, i8** @input_line_pointer, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** @input_line_pointer, align 8
  %113 = load i8, i8* %111, align 1
  %114 = sext i8 %113 to i32
  %115 = sub nsw i32 %114, 48
  %116 = sext i32 %115 to i64
  %117 = load i64, i64* %3, align 8
  %118 = add nsw i64 %117, %116
  store i64 %118, i64* %3, align 8
  br label %103

119:                                              ; preds = %103
  %120 = load i32, i32* %2, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i64, i64* %3, align 8
  %124 = sub nsw i64 0, %123
  br label %127

125:                                              ; preds = %119
  %126 = load i64, i64* %3, align 8
  br label %127

127:                                              ; preds = %125, %122
  %128 = phi i64 [ %124, %122 ], [ %126, %125 ]
  store i64 %128, i64* %1, align 8
  br label %129

129:                                              ; preds = %127, %93, %86, %57
  %130 = load i64, i64* %1, align 8
  ret i64 %130
}

declare dso_local i64 @ISDIGIT(i8 signext) #1

declare dso_local i32 @as_bad(i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i64 @ISXDIGIT(i8 signext) #1

declare dso_local i64 @hex_value(i32) #1

declare dso_local i32 @printf(i8*, i8 signext, i8 signext) #1

declare dso_local i32 @as_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
