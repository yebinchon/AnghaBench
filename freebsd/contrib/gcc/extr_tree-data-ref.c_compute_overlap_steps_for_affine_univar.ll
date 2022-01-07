; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_compute_overlap_steps_for_affine_univar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_compute_overlap_steps_for_affine_univar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@integer_zero_node = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32*, i32*, i32*, i32)* @compute_overlap_steps_for_affine_univar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_overlap_steps_for_affine_univar(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %7
  %23 = load i32, i32* %10, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %22, %7
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %68

28:                                               ; preds = %25
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %68

31:                                               ; preds = %28, %22
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @gcd(i32 %32, i32 %33)
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %17, align 4
  %37 = sdiv i32 %35, %36
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %17, align 4
  %40 = sdiv i32 %38, %39
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %15, align 4
  %43 = call i32 @FLOOR_DIV(i32 %41, i32 %42)
  store i32 %43, i32* %19, align 4
  %44 = load i32, i32* %19, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %16, align 4
  %47 = call i32 @FLOOR_DIV(i32 %45, i32 %46)
  %48 = call i32 @MIN(i32 %44, i32 %47)
  store i32 %48, i32* %19, align 4
  %49 = load i32, i32* %19, align 4
  store i32 %49, i32* %18, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* @integer_zero_node, align 4
  %52 = load i32, i32* @NULL_TREE, align 4
  %53 = load i32, i32* %15, align 4
  %54 = call i32 @build_int_cst(i32 %52, i32 %53)
  %55 = call i32 @build_polynomial_chrec(i32 %50, i32 %51, i32 %54)
  %56 = load i32*, i32** %11, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* @integer_zero_node, align 4
  %59 = load i32, i32* @NULL_TREE, align 4
  %60 = load i32, i32* %16, align 4
  %61 = call i32 @build_int_cst(i32 %59, i32 %60)
  %62 = call i32 @build_polynomial_chrec(i32 %57, i32 %58, i32 %61)
  %63 = load i32*, i32** %12, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* @NULL_TREE, align 4
  %65 = load i32, i32* %18, align 4
  %66 = call i32 @build_int_cst(i32 %64, i32 %65)
  %67 = load i32*, i32** %13, align 8
  store i32 %66, i32* %67, align 4
  br label %75

68:                                               ; preds = %28, %25
  %69 = load i32, i32* @integer_zero_node, align 4
  %70 = load i32*, i32** %11, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* @integer_zero_node, align 4
  %72 = load i32*, i32** %12, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* @integer_zero_node, align 4
  %74 = load i32*, i32** %13, align 8
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %68, %31
  ret void
}

declare dso_local i32 @gcd(i32, i32) #1

declare dso_local i32 @FLOOR_DIV(i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @build_polynomial_chrec(i32, i32, i32) #1

declare dso_local i32 @build_int_cst(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
