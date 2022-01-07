; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_predict.c_expected_value_to_br_prob.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_predict.c_expected_value_to_br_prob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_RTX = common dso_local global i64 0, align 8
@NOTE_INSN_EXPECTED_VALUE = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@const_true_rtx = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i64 0, align 8
@PRED_BUILTIN_EXPECT = common dso_local global i32 0, align 4
@TAKEN = common dso_local global i32 0, align 4
@NOT_TAKEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @expected_value_to_br_prob() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i64, i64* @NULL_RTX, align 8
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* @NULL_RTX, align 8
  store i64 %6, i64* %4, align 8
  %7 = call i64 (...) @get_insns()
  store i64 %7, i64* %1, align 8
  br label %8

8:                                                ; preds = %111, %0
  %9 = load i64, i64* %1, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %114

11:                                               ; preds = %8
  %12 = load i64, i64* %1, align 8
  %13 = call i32 @GET_CODE(i64 %12)
  switch i32 %13, label %43 [
    i32 128, label %14
    i32 130, label %27
    i32 129, label %29
  ]

14:                                               ; preds = %11
  %15 = load i64, i64* %1, align 8
  %16 = call i32 @NOTE_LINE_NUMBER(i64 %15)
  %17 = load i32, i32* @NOTE_INSN_EXPECTED_VALUE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load i64, i64* %1, align 8
  %21 = call i64 @NOTE_EXPECTED_VALUE(i64 %20)
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %3, align 8
  %23 = call i64 @XEXP(i64 %22, i32 0)
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %1, align 8
  %25 = call i32 @delete_insn(i64 %24)
  br label %26

26:                                               ; preds = %19, %14
  br label %111

27:                                               ; preds = %11
  %28 = load i64, i64* @NULL_RTX, align 8
  store i64 %28, i64* %3, align 8
  br label %111

29:                                               ; preds = %11
  %30 = load i64, i64* %1, align 8
  %31 = call i32 @JUMP_P(i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* @NULL_RTX, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* %1, align 8
  %39 = call i32 @any_condjump_p(i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37, %33, %29
  br label %111

42:                                               ; preds = %37
  br label %54

43:                                               ; preds = %11
  %44 = load i64, i64* %3, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* %1, align 8
  %49 = call i32 @reg_set_p(i64 %47, i64 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i64, i64* @NULL_RTX, align 8
  store i64 %52, i64* %3, align 8
  br label %53

53:                                               ; preds = %51, %46, %43
  br label %111

54:                                               ; preds = %42
  %55 = load i64, i64* %1, align 8
  %56 = call i32 @pc_set(i64 %55)
  %57 = call i64 @SET_SRC(i32 %56)
  %58 = call i64 @XEXP(i64 %57, i32 0)
  store i64 %58, i64* %2, align 8
  %59 = load i64, i64* %1, align 8
  %60 = load i64, i64* %2, align 8
  %61 = load i64, i64* %4, align 8
  %62 = call i64 @canonicalize_condition(i64 %59, i64 %60, i32 0, i32* null, i64 %61, i32 0, i32 0)
  store i64 %62, i64* %2, align 8
  %63 = load i64, i64* %2, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %54
  %66 = load i64, i64* %2, align 8
  %67 = call i64 @XEXP(i64 %66, i32 0)
  %68 = load i64, i64* %4, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %65
  %71 = load i64, i64* %2, align 8
  %72 = call i64 @XEXP(i64 %71, i32 1)
  %73 = call i32 @GET_CODE(i64 %72)
  %74 = load i32, i32* @CONST_INT, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70, %65, %54
  br label %111

77:                                               ; preds = %70
  %78 = load i64, i64* %2, align 8
  %79 = call i32 @GET_CODE(i64 %78)
  %80 = load i32, i32* @VOIDmode, align 4
  %81 = load i64, i64* %3, align 8
  %82 = call i64 @XEXP(i64 %81, i32 1)
  %83 = load i64, i64* %2, align 8
  %84 = call i64 @XEXP(i64 %83, i32 1)
  %85 = call i64 @gen_rtx_fmt_ee(i32 %79, i32 %80, i64 %82, i64 %84)
  store i64 %85, i64* %2, align 8
  %86 = load i64, i64* %2, align 8
  %87 = call i64 @simplify_rtx(i64 %86)
  store i64 %87, i64* %2, align 8
  %88 = load i64, i64* %2, align 8
  %89 = load i64, i64* @const_true_rtx, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %95, label %91

91:                                               ; preds = %77
  %92 = load i64, i64* %2, align 8
  %93 = load i64, i64* @const0_rtx, align 8
  %94 = icmp eq i64 %92, %93
  br label %95

95:                                               ; preds = %91, %77
  %96 = phi i1 [ true, %77 ], [ %94, %91 ]
  %97 = zext i1 %96 to i32
  %98 = call i32 @gcc_assert(i32 %97)
  %99 = load i64, i64* %1, align 8
  %100 = load i32, i32* @PRED_BUILTIN_EXPECT, align 4
  %101 = load i64, i64* %2, align 8
  %102 = load i64, i64* @const_true_rtx, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %95
  %105 = load i32, i32* @TAKEN, align 4
  br label %108

106:                                              ; preds = %95
  %107 = load i32, i32* @NOT_TAKEN, align 4
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i32 [ %105, %104 ], [ %107, %106 ]
  %110 = call i32 @predict_insn_def(i64 %99, i32 %100, i32 %109)
  br label %111

111:                                              ; preds = %108, %76, %53, %41, %27, %26
  %112 = load i64, i64* %1, align 8
  %113 = call i64 @NEXT_INSN(i64 %112)
  store i64 %113, i64* %1, align 8
  br label %8

114:                                              ; preds = %8
  ret void
}

declare dso_local i64 @get_insns(...) #1

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i32 @NOTE_LINE_NUMBER(i64) #1

declare dso_local i64 @NOTE_EXPECTED_VALUE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @delete_insn(i64) #1

declare dso_local i32 @JUMP_P(i64) #1

declare dso_local i32 @any_condjump_p(i64) #1

declare dso_local i32 @reg_set_p(i64, i64) #1

declare dso_local i64 @SET_SRC(i32) #1

declare dso_local i32 @pc_set(i64) #1

declare dso_local i64 @canonicalize_condition(i64, i64, i32, i32*, i64, i32, i32) #1

declare dso_local i64 @gen_rtx_fmt_ee(i32, i32, i64, i64) #1

declare dso_local i64 @simplify_rtx(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @predict_insn_def(i64, i32, i32) #1

declare dso_local i64 @NEXT_INSN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
