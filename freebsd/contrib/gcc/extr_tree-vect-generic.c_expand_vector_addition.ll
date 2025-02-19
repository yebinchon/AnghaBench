; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vect-generic.c_expand_vector_addition.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vect-generic.c_expand_vector_addition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNITS_PER_WORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32, i32, i32)* @expand_vector_addition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand_vector_addition(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %17 = load i32, i32* @UNITS_PER_WORD, align 4
  %18 = load i32, i32* %12, align 4
  %19 = call i32 @TREE_TYPE(i32 %18)
  %20 = call i32 @TYPE_SIZE_UNIT(i32 %19)
  %21 = call i32 @tree_low_cst(i32 %20, i32 1)
  %22 = sdiv i32 %17, %21
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %12, align 4
  %24 = call i32 @TREE_TYPE(i32 %23)
  %25 = call i64 @INTEGRAL_TYPE_P(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %7
  %28 = load i32, i32* %16, align 4
  %29 = icmp sge i32 %28, 4
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @TYPE_VECTOR_SUBPARTS(i32 %31)
  %33 = icmp sge i32 %32, 4
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %15, align 4
  %41 = call i32 @expand_vector_parallel(i32* %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %8, align 4
  br label %52

42:                                               ; preds = %30, %27, %7
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @TREE_TYPE(i32 %46)
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %15, align 4
  %51 = call i32 @expand_vector_piecewise(i32* %43, i32 %44, i32 %45, i32 %47, i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %42, %34
  %53 = load i32, i32* %8, align 4
  ret i32 %53
}

declare dso_local i32 @tree_low_cst(i32, i32) #1

declare dso_local i32 @TYPE_SIZE_UNIT(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @INTEGRAL_TYPE_P(i32) #1

declare dso_local i32 @TYPE_VECTOR_SUBPARTS(i32) #1

declare dso_local i32 @expand_vector_parallel(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @expand_vector_piecewise(i32*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
