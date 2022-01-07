; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_find_last_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_find_last_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_EQUAL = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i64 0, align 8
@EXPR_LIST = common dso_local global i64 0, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @find_last_value(i64 %0, i64* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i64*, i64** %7, align 8
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @PREV_INSN(i64 %15)
  store i64 %16, i64* %10, align 8
  br label %17

17:                                               ; preds = %96, %4
  %18 = load i64, i64* %10, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i64, i64* %10, align 8
  %22 = call i32 @LABEL_P(i64 %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %20, %17
  %26 = phi i1 [ false, %17 ], [ %24, %20 ]
  br i1 %26, label %27, label %99

27:                                               ; preds = %25
  %28 = load i64, i64* %10, align 8
  %29 = call i64 @INSN_P(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %95

31:                                               ; preds = %27
  %32 = load i64, i64* %10, align 8
  %33 = call i64 @single_set(i64 %32)
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i32, i32* @REG_EQUAL, align 4
  %36 = load i64, i64* @NULL_RTX, align 8
  %37 = call i64 @find_reg_note(i64 %34, i32 %35, i64 %36)
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %11, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %88

40:                                               ; preds = %31
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %11, align 8
  %43 = call i32 @SET_DEST(i64 %42)
  %44 = call i64 @rtx_equal_p(i64 %41, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %88

46:                                               ; preds = %40
  %47 = load i64, i64* %11, align 8
  %48 = call i64 @SET_SRC(i64 %47)
  store i64 %48, i64* %13, align 8
  %49 = load i64, i64* %12, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load i64, i64* %12, align 8
  %53 = call i64 @XEXP(i64 %52, i32 0)
  %54 = call i64 @GET_CODE(i64 %53)
  %55 = load i64, i64* @EXPR_LIST, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i64, i64* %12, align 8
  %59 = call i64 @XEXP(i64 %58, i32 0)
  store i64 %59, i64* %13, align 8
  br label %60

60:                                               ; preds = %57, %51, %46
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* @NULL_RTX, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %71, label %64

64:                                               ; preds = %60
  %65 = load i64, i64* %13, align 8
  %66 = load i64, i64* %10, align 8
  %67 = call i64 @PREV_INSN(i64 %66)
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @modified_between_p(i64 %65, i64 %67, i64 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %87, label %71

71:                                               ; preds = %64, %60
  %72 = load i64, i64* %13, align 8
  %73 = call i64 @REG_P(i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = load i64, i64* %13, align 8
  %77 = call i64 @REGNO(i64 %76)
  %78 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80, %75, %71
  %84 = load i64, i64* %10, align 8
  %85 = load i64*, i64** %7, align 8
  store i64 %84, i64* %85, align 8
  %86 = load i64, i64* %13, align 8
  store i64 %86, i64* %5, align 8
  br label %101

87:                                               ; preds = %80, %64
  br label %88

88:                                               ; preds = %87, %40, %31
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* %10, align 8
  %91 = call i64 @reg_set_p(i64 %89, i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %99

94:                                               ; preds = %88
  br label %95

95:                                               ; preds = %94, %27
  br label %96

96:                                               ; preds = %95
  %97 = load i64, i64* %10, align 8
  %98 = call i64 @PREV_INSN(i64 %97)
  store i64 %98, i64* %10, align 8
  br label %17

99:                                               ; preds = %93, %25
  %100 = load i64, i64* %6, align 8
  store i64 %100, i64* %5, align 8
  br label %101

101:                                              ; preds = %99, %83
  %102 = load i64, i64* %5, align 8
  ret i64 %102
}

declare dso_local i64 @PREV_INSN(i64) #1

declare dso_local i32 @LABEL_P(i64) #1

declare dso_local i64 @INSN_P(i64) #1

declare dso_local i64 @single_set(i64) #1

declare dso_local i64 @find_reg_note(i64, i32, i64) #1

declare dso_local i64 @rtx_equal_p(i64, i32) #1

declare dso_local i32 @SET_DEST(i64) #1

declare dso_local i64 @SET_SRC(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @modified_between_p(i64, i64, i64) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @REGNO(i64) #1

declare dso_local i64 @reg_set_p(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
