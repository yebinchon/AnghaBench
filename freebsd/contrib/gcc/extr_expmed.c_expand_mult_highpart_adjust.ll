; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expmed.c_expand_mult_highpart_adjust.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expmed.c_expand_mult_highpart_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLUS = common dso_local global i32 0, align 4
@MINUS = common dso_local global i32 0, align 4
@RSHIFT_EXPR = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @expand_mult_highpart_adjust(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %6
  %18 = load i32, i32* @PLUS, align 4
  br label %21

19:                                               ; preds = %6
  %20 = load i32, i32* @MINUS, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* @RSHIFT_EXPR, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @NULL_TREE, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @GET_MODE_BITSIZE(i32 %27)
  %29 = sub nsw i64 %28, 1
  %30 = call i32 @build_int_cst(i32 %26, i64 %29)
  %31 = load i32, i32* @NULL_RTX, align 4
  %32 = call i32 @expand_shift(i32 %23, i32 %24, i32 %25, i32 %30, i32 %31, i32 0)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @NULL_RTX, align 4
  %37 = call i32 @expand_and(i32 %33, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @gen_rtx_fmt_ee(i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @force_operand(i32 %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* @RSHIFT_EXPR, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @NULL_TREE, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i64 @GET_MODE_BITSIZE(i32 %49)
  %51 = sub nsw i64 %50, 1
  %52 = call i32 @build_int_cst(i32 %48, i64 %51)
  %53 = load i32, i32* @NULL_RTX, align 4
  %54 = call i32 @expand_shift(i32 %45, i32 %46, i32 %47, i32 %52, i32 %53, i32 0)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @NULL_RTX, align 4
  %59 = call i32 @expand_and(i32 %55, i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @gen_rtx_fmt_ee(i32 %60, i32 %61, i32 %62, i32 %63)
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @force_operand(i32 %64, i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  ret i32 %67
}

declare dso_local i32 @expand_shift(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @build_int_cst(i32, i64) #1

declare dso_local i64 @GET_MODE_BITSIZE(i32) #1

declare dso_local i32 @expand_and(i32, i32, i32, i32) #1

declare dso_local i32 @force_operand(i32, i32) #1

declare dso_local i32 @gen_rtx_fmt_ee(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
