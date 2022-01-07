; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expmed.c_expand_sdiv_pow2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expmed.c_expand_sdiv_pow2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i32 0, align 4
@BRANCH_COST = common dso_local global i32 0, align 4
@LT = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@add_optab = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@OPTAB_LIB_WIDEN = common dso_local global i32 0, align 4
@RSHIFT_EXPR = common dso_local global i32 0, align 4
@shift_cost = common dso_local global i64** null, align 8
@and_optab = common dso_local global i32 0, align 4
@GE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i32)* @expand_sdiv_pow2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @expand_sdiv_pow2(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @floor_log2(i32 %13)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* @NULL_TREE, align 4
  %16 = load i32, i32* %11, align 4
  %17 = call i32 @build_int_cst(i32 %15, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %45

20:                                               ; preds = %3
  %21 = load i32, i32* @BRANCH_COST, align 4
  %22 = icmp sge i32 %21, 1
  br i1 %22, label %23, label %45

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @gen_reg_rtx(i32 %24)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i32, i32* @LT, align 4
  %28 = load i64, i64* %6, align 8
  %29 = load i32, i32* @const0_rtx, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @emit_store_flag(i64 %26, i32 %27, i64 %28, i32 %29, i32 %30, i32 0, i32 1)
  store i64 %31, i64* %8, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @add_optab, align 4
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i32, i32* @NULL_RTX, align 4
  %37 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %38 = call i64 @expand_binop(i32 %32, i32 %33, i64 %34, i64 %35, i32 %36, i32 0, i32 %37)
  store i64 %38, i64* %8, align 8
  %39 = load i32, i32* @RSHIFT_EXPR, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i64, i64* %8, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @NULL_RTX, align 4
  %44 = call i64 @expand_shift(i32 %39, i32 %40, i64 %41, i32 %42, i32 %43, i32 0)
  store i64 %44, i64* %4, align 8
  br label %129

45:                                               ; preds = %20, %3
  %46 = load i32, i32* @BRANCH_COST, align 4
  %47 = icmp sge i32 %46, 2
  br i1 %47, label %48, label %105

48:                                               ; preds = %45
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @GET_MODE_BITSIZE(i32 %49)
  %51 = load i32, i32* %11, align 4
  %52 = sub nsw i32 %50, %51
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i64 @gen_reg_rtx(i32 %53)
  store i64 %54, i64* %8, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load i32, i32* @LT, align 4
  %57 = load i64, i64* %6, align 8
  %58 = load i32, i32* @const0_rtx, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i64 @emit_store_flag(i64 %55, i32 %56, i64 %57, i32 %58, i32 %59, i32 0, i32 -1)
  store i64 %60, i64* %8, align 8
  %61 = load i64**, i64*** @shift_cost, align 8
  %62 = load i32, i32* %5, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i64*, i64** %61, i64 %63
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @COSTS_N_INSNS(i32 1)
  %71 = icmp sgt i64 %69, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %48
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @and_optab, align 4
  %75 = load i64, i64* %8, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sub nsw i32 %76, 1
  %78 = call i64 @GEN_INT(i32 %77)
  %79 = load i32, i32* @NULL_RTX, align 4
  %80 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %81 = call i64 @expand_binop(i32 %73, i32 %74, i64 %75, i64 %78, i32 %79, i32 0, i32 %80)
  store i64 %81, i64* %8, align 8
  br label %91

82:                                               ; preds = %48
  %83 = load i32, i32* @RSHIFT_EXPR, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load i64, i64* %8, align 8
  %86 = load i32, i32* @NULL_TREE, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @build_int_cst(i32 %86, i32 %87)
  %89 = load i32, i32* @NULL_RTX, align 4
  %90 = call i64 @expand_shift(i32 %83, i32 %84, i64 %85, i32 %88, i32 %89, i32 1)
  store i64 %90, i64* %8, align 8
  br label %91

91:                                               ; preds = %82, %72
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @add_optab, align 4
  %94 = load i64, i64* %8, align 8
  %95 = load i64, i64* %6, align 8
  %96 = load i32, i32* @NULL_RTX, align 4
  %97 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %98 = call i64 @expand_binop(i32 %92, i32 %93, i64 %94, i64 %95, i32 %96, i32 0, i32 %97)
  store i64 %98, i64* %8, align 8
  %99 = load i32, i32* @RSHIFT_EXPR, align 4
  %100 = load i32, i32* %5, align 4
  %101 = load i64, i64* %8, align 8
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @NULL_RTX, align 4
  %104 = call i64 @expand_shift(i32 %99, i32 %100, i64 %101, i32 %102, i32 %103, i32 0)
  store i64 %104, i64* %4, align 8
  br label %129

105:                                              ; preds = %45
  %106 = call i64 (...) @gen_label_rtx()
  store i64 %106, i64* %9, align 8
  %107 = load i32, i32* %5, align 4
  %108 = load i64, i64* %6, align 8
  %109 = call i64 @copy_to_mode_reg(i32 %107, i64 %108)
  store i64 %109, i64* %8, align 8
  %110 = load i64, i64* %8, align 8
  %111 = load i32, i32* @const0_rtx, align 4
  %112 = load i32, i32* @GE, align 4
  %113 = load i32, i32* %5, align 4
  %114 = load i64, i64* %9, align 8
  %115 = call i32 @do_cmp_and_jump(i64 %110, i32 %111, i32 %112, i32 %113, i64 %114)
  %116 = load i64, i64* %8, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sub nsw i32 %117, 1
  %119 = call i64 @GEN_INT(i32 %118)
  %120 = call i32 @expand_inc(i64 %116, i64 %119)
  %121 = load i64, i64* %9, align 8
  %122 = call i32 @emit_label(i64 %121)
  %123 = load i32, i32* @RSHIFT_EXPR, align 4
  %124 = load i32, i32* %5, align 4
  %125 = load i64, i64* %8, align 8
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* @NULL_RTX, align 4
  %128 = call i64 @expand_shift(i32 %123, i32 %124, i64 %125, i32 %126, i32 %127, i32 0)
  store i64 %128, i64* %4, align 8
  br label %129

129:                                              ; preds = %105, %91, %23
  %130 = load i64, i64* %4, align 8
  ret i64 %130
}

declare dso_local i32 @floor_log2(i32) #1

declare dso_local i32 @build_int_cst(i32, i32) #1

declare dso_local i64 @gen_reg_rtx(i32) #1

declare dso_local i64 @emit_store_flag(i64, i32, i64, i32, i32, i32, i32) #1

declare dso_local i64 @expand_binop(i32, i32, i64, i64, i32, i32, i32) #1

declare dso_local i64 @expand_shift(i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i64 @COSTS_N_INSNS(i32) #1

declare dso_local i64 @GEN_INT(i32) #1

declare dso_local i64 @gen_label_rtx(...) #1

declare dso_local i64 @copy_to_mode_reg(i32, i64) #1

declare dso_local i32 @do_cmp_and_jump(i64, i32, i32, i32, i64) #1

declare dso_local i32 @expand_inc(i64, i64) #1

declare dso_local i32 @emit_label(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
