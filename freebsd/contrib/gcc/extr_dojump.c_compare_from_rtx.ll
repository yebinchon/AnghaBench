; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_dojump.c_compare_from_rtx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_dojump.c_compare_from_rtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i32 0, align 4
@GTU = common dso_local global i32 0, align 4
@LTU = common dso_local global i32 0, align 4
@GEU = common dso_local global i32 0, align 4
@LEU = common dso_local global i32 0, align 4
@cc0_rtx = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @compare_from_rtx(i64 %0, i64 %1, i32 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = call i64 @swap_commutative_operands_p(i64 %15, i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %6
  %20 = load i64, i64* %8, align 8
  store i64 %20, i64* %14, align 8
  %21 = load i64, i64* %9, align 8
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %14, align 8
  store i64 %22, i64* %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @swap_condition(i32 %23)
  store i32 %24, i32* %10, align 4
  br label %25

25:                                               ; preds = %19, %6
  %26 = call i32 (...) @do_pending_stack_adjust()
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @unsigned_condition(i32 %30)
  br label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %10, align 4
  br label %34

34:                                               ; preds = %32, %29
  %35 = phi i32 [ %31, %29 ], [ %33, %32 ]
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @VOIDmode, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i64 @simplify_relational_operation(i32 %36, i32 %37, i32 %38, i64 %39, i64 %40)
  store i64 %41, i64* %14, align 8
  %42 = load i64, i64* %14, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %82

44:                                               ; preds = %34
  %45 = load i64, i64* %14, align 8
  %46 = call i64 @CONSTANT_P(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i64, i64* %14, align 8
  store i64 %49, i64* %7, align 8
  br label %95

50:                                               ; preds = %44
  %51 = load i64, i64* %14, align 8
  %52 = call i64 @COMPARISON_P(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %81

54:                                               ; preds = %50
  %55 = load i64, i64* %14, align 8
  %56 = call i32 @GET_CODE(i64 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i64, i64* %14, align 8
  %58 = call i64 @XEXP(i64 %57, i32 0)
  store i64 %58, i64* %8, align 8
  %59 = load i64, i64* %14, align 8
  %60 = call i64 @XEXP(i64 %59, i32 1)
  store i64 %60, i64* %9, align 8
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @GET_MODE(i64 %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @GTU, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %78, label %66

66:                                               ; preds = %54
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @LTU, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %78, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @GEU, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @LEU, align 4
  %77 = icmp eq i32 %75, %76
  br label %78

78:                                               ; preds = %74, %70, %66, %54
  %79 = phi i1 [ true, %70 ], [ true, %66 ], [ true, %54 ], [ %77, %74 ]
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %11, align 4
  br label %81

81:                                               ; preds = %78, %50
  br label %82

82:                                               ; preds = %81, %34
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* %9, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load i64, i64* %13, align 8
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @emit_cmp_insn(i64 %83, i64 %84, i32 %85, i64 %86, i32 %87, i32 %88)
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @VOIDmode, align 4
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* %9, align 8
  %94 = call i64 @gen_rtx_fmt_ee(i32 %90, i32 %91, i64 %92, i64 %93)
  store i64 %94, i64* %7, align 8
  br label %95

95:                                               ; preds = %82, %48
  %96 = load i64, i64* %7, align 8
  ret i64 %96
}

declare dso_local i64 @swap_commutative_operands_p(i64, i64) #1

declare dso_local i32 @swap_condition(i32) #1

declare dso_local i32 @do_pending_stack_adjust(...) #1

declare dso_local i32 @unsigned_condition(i32) #1

declare dso_local i64 @simplify_relational_operation(i32, i32, i32, i64, i64) #1

declare dso_local i64 @CONSTANT_P(i64) #1

declare dso_local i64 @COMPARISON_P(i64) #1

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i32 @emit_cmp_insn(i64, i64, i32, i64, i32, i32) #1

declare dso_local i64 @gen_rtx_fmt_ee(i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
