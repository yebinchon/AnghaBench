; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_legitimate_reload_constant_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_legitimate_reload_constant_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONST_INT = common dso_local global i64 0, align 8
@TARGET_ZARCH = common dso_local global i64 0, align 8
@word_mode = common dso_local global i64 0, align 8
@HImode = common dso_local global i64 0, align 8
@TARGET_EXTIMM = common dso_local global i64 0, align 8
@SImode = common dso_local global i64 0, align 8
@TARGET_CPU_ZARCH = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@CONST_DOUBLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"G\00", align 1
@DImode = common dso_local global i32 0, align 4
@TImode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @legitimate_reload_constant_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @GET_CODE(i32 %7)
  %9 = load i64, i64* @CONST_INT, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @INTVAL(i32 %12)
  %14 = call i64 @DISP_IN_RANGE(i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %138

17:                                               ; preds = %11, %1
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @GET_CODE(i32 %18)
  %20 = load i64, i64* @CONST_INT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @INTVAL(i32 %23)
  %25 = call i64 @CONST_OK_FOR_K(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @INTVAL(i32 %28)
  %30 = call i64 @CONST_OK_FOR_Os(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27, %22
  store i32 1, i32* %2, align 4
  br label %138

33:                                               ; preds = %27, %17
  %34 = load i64, i64* @TARGET_ZARCH, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %33
  %37 = load i32, i32* %3, align 4
  %38 = call i64 @GET_CODE(i32 %37)
  %39 = load i64, i64* @CONST_INT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %36
  %42 = load i32, i32* %3, align 4
  %43 = call i64 @INTVAL(i32 %42)
  %44 = load i64, i64* @word_mode, align 8
  %45 = call i64 @trunc_int_for_mode(i64 %43, i64 %44)
  %46 = load i32, i32* %3, align 4
  %47 = call i64 @INTVAL(i32 %46)
  %48 = icmp eq i64 %45, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %41
  %50 = load i32, i32* %3, align 4
  %51 = load i64, i64* @word_mode, align 8
  %52 = load i64, i64* @HImode, align 8
  %53 = call i64 @s390_single_part(i32 %50, i64 %51, i64 %52, i32 0)
  %54 = icmp sge i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 1, i32* %2, align 4
  br label %138

56:                                               ; preds = %49, %41, %36, %33
  %57 = load i64, i64* @TARGET_EXTIMM, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %79

59:                                               ; preds = %56
  %60 = load i32, i32* %3, align 4
  %61 = call i64 @GET_CODE(i32 %60)
  %62 = load i64, i64* @CONST_INT, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %59
  %65 = load i32, i32* %3, align 4
  %66 = call i64 @INTVAL(i32 %65)
  %67 = load i64, i64* @word_mode, align 8
  %68 = call i64 @trunc_int_for_mode(i64 %66, i64 %67)
  %69 = load i32, i32* %3, align 4
  %70 = call i64 @INTVAL(i32 %69)
  %71 = icmp eq i64 %68, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %64
  %73 = load i32, i32* %3, align 4
  %74 = load i64, i64* @word_mode, align 8
  %75 = load i64, i64* @SImode, align 8
  %76 = call i64 @s390_single_part(i32 %73, i64 %74, i64 %75, i32 0)
  %77 = icmp sge i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  store i32 1, i32* %2, align 4
  br label %138

79:                                               ; preds = %72, %64, %59, %56
  %80 = load i64, i64* @TARGET_CPU_ZARCH, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* @VOIDmode, align 4
  %85 = call i64 @larl_operand(i32 %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i32 1, i32* %2, align 4
  br label %138

88:                                               ; preds = %82, %79
  %89 = load i32, i32* %3, align 4
  %90 = call i64 @GET_CODE(i32 %89)
  %91 = load i64, i64* @CONST_DOUBLE, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load i32, i32* %3, align 4
  %95 = call i64 @CONST_DOUBLE_OK_FOR_CONSTRAINT_P(i32 %94, i8 signext 71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  store i32 1, i32* %2, align 4
  br label %138

98:                                               ; preds = %93, %88
  %99 = load i32, i32* %3, align 4
  %100 = call i64 @GET_CODE(i32 %99)
  %101 = load i64, i64* @CONST_INT, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %137

103:                                              ; preds = %98
  %104 = load i32, i32* %3, align 4
  %105 = call i64 @INTVAL(i32 %104)
  %106 = load i64, i64* @word_mode, align 8
  %107 = call i64 @trunc_int_for_mode(i64 %105, i64 %106)
  %108 = load i32, i32* %3, align 4
  %109 = call i64 @INTVAL(i32 %108)
  %110 = icmp ne i64 %107, %109
  br i1 %110, label %111, label %137

111:                                              ; preds = %103
  %112 = load i64, i64* @word_mode, align 8
  %113 = load i64, i64* @SImode, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load i32, i32* @DImode, align 4
  br label %119

117:                                              ; preds = %111
  %118 = load i32, i32* @TImode, align 4
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i32 [ %116, %115 ], [ %118, %117 ]
  store i32 %120, i32* %4, align 4
  %121 = load i32, i32* %3, align 4
  %122 = load i32, i32* %4, align 4
  %123 = call i32 @operand_subword(i32 %121, i32 0, i32 0, i32 %122)
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* %3, align 4
  %125 = load i32, i32* %4, align 4
  %126 = call i32 @operand_subword(i32 %124, i32 1, i32 0, i32 %125)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @legitimate_reload_constant_p(i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %119
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @legitimate_reload_constant_p(i32 %131)
  %133 = icmp ne i32 %132, 0
  br label %134

134:                                              ; preds = %130, %119
  %135 = phi i1 [ false, %119 ], [ %133, %130 ]
  %136 = zext i1 %135 to i32
  store i32 %136, i32* %2, align 4
  br label %138

137:                                              ; preds = %103, %98
  store i32 0, i32* %2, align 4
  br label %138

138:                                              ; preds = %137, %134, %97, %87, %78, %55, %32, %16
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i64 @DISP_IN_RANGE(i64) #1

declare dso_local i64 @INTVAL(i32) #1

declare dso_local i64 @CONST_OK_FOR_K(i64) #1

declare dso_local i64 @CONST_OK_FOR_Os(i64) #1

declare dso_local i64 @trunc_int_for_mode(i64, i64) #1

declare dso_local i64 @s390_single_part(i32, i64, i64, i32) #1

declare dso_local i64 @larl_operand(i32, i32) #1

declare dso_local i64 @CONST_DOUBLE_OK_FOR_CONSTRAINT_P(i32, i8 signext, i8*) #1

declare dso_local i32 @operand_subword(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
