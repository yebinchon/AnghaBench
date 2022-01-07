; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_build_one_cst.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_build_one_cst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dconst1 = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@integer_zero_node = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @build_one_cst(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @TREE_CODE(i32 %7)
  switch i32 %8, label %46 [
    i32 133, label %9
    i32 134, label %9
    i32 136, label %9
    i32 131, label %9
    i32 129, label %9
    i32 132, label %9
    i32 130, label %12
    i32 128, label %16
    i32 135, label %36
  ]

9:                                                ; preds = %1, %1, %1, %1, %1, %1
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @build_int_cst(i32 %10, i32 1)
  store i32 %11, i32* %2, align 4
  br label %48

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @dconst1, align 4
  %15 = call i32 @build_real(i32 %13, i32 %14)
  store i32 %15, i32* %2, align 4
  br label %48

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @TREE_TYPE(i32 %17)
  %19 = call i32 @build_one_cst(i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @NULL_TREE, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @TYPE_VECTOR_SUBPARTS(i32 %21)
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %27, %16
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %6, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32, i32* @NULL_TREE, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @tree_cons(i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %5, align 4
  br label %23

32:                                               ; preds = %23
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @build_vector(i32 %33, i32 %34)
  store i32 %35, i32* %2, align 4
  br label %48

36:                                               ; preds = %1
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @TREE_TYPE(i32 %38)
  %40 = call i32 @build_one_cst(i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @TREE_TYPE(i32 %41)
  %43 = load i32, i32* @integer_zero_node, align 4
  %44 = call i32 @fold_convert(i32 %42, i32 %43)
  %45 = call i32 @build_complex(i32 %37, i32 %40, i32 %44)
  store i32 %45, i32* %2, align 4
  br label %48

46:                                               ; preds = %1
  %47 = call i32 (...) @gcc_unreachable()
  br label %48

48:                                               ; preds = %9, %12, %32, %36, %46
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @build_int_cst(i32, i32) #1

declare dso_local i32 @build_real(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TYPE_VECTOR_SUBPARTS(i32) #1

declare dso_local i32 @tree_cons(i32, i32, i32) #1

declare dso_local i32 @build_vector(i32, i32) #1

declare dso_local i32 @build_complex(i32, i32, i32) #1

declare dso_local i32 @fold_convert(i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
