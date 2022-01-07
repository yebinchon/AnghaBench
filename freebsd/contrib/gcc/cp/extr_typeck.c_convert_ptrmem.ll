; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_convert_ptrmem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_convert_ptrmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PTRMEM_CST = common dso_local global i64 0, align 8
@PLUS_EXPR = common dso_local global i32 0, align 4
@ptrdiff_type_node = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @convert_ptrmem(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @TYPE_PTRMEM_P(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %45

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @TREE_CODE(i32 %15)
  %17 = load i64, i64* @PTRMEM_CST, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @cplus_expand_constant(i32 %20)
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %19, %14
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @TREE_TYPE(i32 %23)
  %25 = call i32 @TYPE_PTRMEM_CLASS_TYPE(i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @TYPE_PTRMEM_CLASS_TYPE(i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @get_delta_difference(i32 %25, i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @integer_zerop(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %22
  %35 = load i32, i32* @PLUS_EXPR, align 4
  %36 = load i32, i32* @ptrdiff_type_node, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @build_nop(i32 %36, i32 %37)
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @cp_build_binary_op(i32 %35, i32 %38, i32 %39)
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %34, %22
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @build_nop(i32 %42, i32 %43)
  store i32 %44, i32* %5, align 4
  br label %52

45:                                               ; preds = %4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @TYPE_PTRMEMFUNC_FN_TYPE(i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @build_ptrmemfunc(i32 %47, i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %45, %41
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i64 @TYPE_PTRMEM_P(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @cplus_expand_constant(i32) #1

declare dso_local i32 @get_delta_difference(i32, i32, i32, i32) #1

declare dso_local i32 @TYPE_PTRMEM_CLASS_TYPE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @integer_zerop(i32) #1

declare dso_local i32 @cp_build_binary_op(i32, i32, i32) #1

declare dso_local i32 @build_nop(i32, i32) #1

declare dso_local i32 @build_ptrmemfunc(i32, i32, i32, i32) #1

declare dso_local i32 @TYPE_PTRMEMFUNC_FN_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
