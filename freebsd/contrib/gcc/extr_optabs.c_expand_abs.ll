; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_expand_abs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_expand_abs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flag_trapv = common dso_local global i32 0, align 4
@FIRST_PSEUDO_REGISTER = common dso_local global i64 0, align 8
@NO_DEFER_POP = common dso_local global i32 0, align 4
@GE = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@neg_optab = common dso_local global i32 0, align 4
@negv_optab = common dso_local global i32 0, align 4
@OK_DEFER_POP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @expand_abs(i32 %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @flag_trapv, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  store i32 1, i32* %10, align 4
  br label %17

17:                                               ; preds = %16, %5
  %18 = load i32, i32* %7, align 4
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i64 @expand_abs_nojump(i32 %18, i64 %19, i64 %20, i32 %21)
  store i64 %22, i64* %12, align 8
  %23 = load i64, i64* %12, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i64, i64* %12, align 8
  store i64 %26, i64* %6, align 8
  br label %111

27:                                               ; preds = %17
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load i64, i64* %8, align 8
  %33 = call i64 @REG_P(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i64, i64* %8, align 8
  %37 = call i64 @REGNO(i64 %36)
  %38 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 1, i32* %11, align 4
  br label %41

41:                                               ; preds = %40, %35, %31, %27
  %42 = call i64 (...) @gen_label_rtx()
  store i64 %42, i64* %13, align 8
  %43 = load i64, i64* %9, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %70, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %45
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @GET_MODE(i64 %49)
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %70, label %53

53:                                               ; preds = %48
  %54 = load i64, i64* %9, align 8
  %55 = call i64 @MEM_P(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i64, i64* %9, align 8
  %59 = call i64 @MEM_VOLATILE_P(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %57, %53
  %62 = load i64, i64* %9, align 8
  %63 = call i64 @REG_P(i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load i64, i64* %9, align 8
  %67 = call i64 @REGNO(i64 %66)
  %68 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %65, %57, %48, %45, %41
  %71 = load i32, i32* %7, align 4
  %72 = call i64 @gen_reg_rtx(i32 %71)
  store i64 %72, i64* %9, align 8
  br label %73

73:                                               ; preds = %70, %65, %61
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %8, align 8
  %76 = call i32 @emit_move_insn(i64 %74, i64 %75)
  %77 = load i32, i32* @NO_DEFER_POP, align 4
  %78 = load i64, i64* %9, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @CONST0_RTX(i32 %79)
  %81 = load i32, i32* @GE, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @NULL_RTX, align 4
  %84 = load i32, i32* @NULL_RTX, align 4
  %85 = load i64, i64* %13, align 8
  %86 = call i32 @do_compare_rtx_and_jump(i64 %78, i32 %80, i32 %81, i32 0, i32 %82, i32 %83, i32 %84, i64 %85)
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %73
  %91 = load i32, i32* @neg_optab, align 4
  br label %94

92:                                               ; preds = %73
  %93 = load i32, i32* @negv_optab, align 4
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %91, %90 ], [ %93, %92 ]
  %96 = load i64, i64* %9, align 8
  %97 = load i64, i64* %9, align 8
  %98 = call i64 @expand_unop(i32 %87, i32 %95, i64 %96, i64 %97, i32 0)
  store i64 %98, i64* %8, align 8
  %99 = load i64, i64* %8, align 8
  %100 = load i64, i64* %9, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %94
  %103 = load i64, i64* %9, align 8
  %104 = load i64, i64* %8, align 8
  %105 = call i32 @emit_move_insn(i64 %103, i64 %104)
  br label %106

106:                                              ; preds = %102, %94
  %107 = load i64, i64* %13, align 8
  %108 = call i32 @emit_label(i64 %107)
  %109 = load i32, i32* @OK_DEFER_POP, align 4
  %110 = load i64, i64* %9, align 8
  store i64 %110, i64* %6, align 8
  br label %111

111:                                              ; preds = %106, %25
  %112 = load i64, i64* %6, align 8
  ret i64 %112
}

declare dso_local i64 @expand_abs_nojump(i32, i64, i64, i32) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @REGNO(i64) #1

declare dso_local i64 @gen_label_rtx(...) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @MEM_P(i64) #1

declare dso_local i64 @MEM_VOLATILE_P(i64) #1

declare dso_local i64 @gen_reg_rtx(i32) #1

declare dso_local i32 @emit_move_insn(i64, i64) #1

declare dso_local i32 @do_compare_rtx_and_jump(i64, i32, i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @CONST0_RTX(i32) #1

declare dso_local i64 @expand_unop(i32, i32, i64, i64, i32) #1

declare dso_local i32 @emit_label(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
