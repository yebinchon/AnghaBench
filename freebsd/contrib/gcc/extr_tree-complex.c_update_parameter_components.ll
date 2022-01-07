; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-complex.c_update_parameter_components.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-complex.c_update_parameter_components.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ENTRY_BLOCK_PTR = common dso_local global i32 0, align 4
@cfun = common dso_local global %struct.TYPE_2__* null, align 8
@COMPLEX_TYPE = common dso_local global i64 0, align 8
@REALPART_EXPR = common dso_local global i32 0, align 4
@IMAGPART_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @update_parameter_components to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_parameter_components() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = load i32, i32* @ENTRY_BLOCK_PTR, align 4
  %8 = call i32 @single_succ_edge(i32 %7)
  store i32 %8, i32* %1, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfun, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @DECL_ARGUMENTS(i32 %11)
  store i64 %12, i64* %2, align 8
  br label %13

13:                                               ; preds = %50, %0
  %14 = load i64, i64* %2, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %13
  %17 = load i64, i64* %2, align 8
  %18 = call i64 @TREE_TYPE(i64 %17)
  store i64 %18, i64* %3, align 8
  %19 = load i64, i64* %3, align 8
  %20 = call i64 @TREE_CODE(i64 %19)
  %21 = load i64, i64* @COMPLEX_TYPE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %16
  %24 = load i64, i64* %2, align 8
  %25 = call i32 @is_gimple_reg(i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23, %16
  br label %50

28:                                               ; preds = %23
  %29 = load i64, i64* %3, align 8
  %30 = call i64 @TREE_TYPE(i64 %29)
  store i64 %30, i64* %3, align 8
  %31 = load i64, i64* %2, align 8
  %32 = call i64 @default_def(i64 %31)
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* %4, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  br label %50

36:                                               ; preds = %28
  %37 = load i32, i32* @REALPART_EXPR, align 4
  %38 = load i64, i64* %3, align 8
  %39 = load i64, i64* %4, align 8
  %40 = call i64 @build1(i32 %37, i64 %38, i64 %39)
  store i64 %40, i64* %5, align 8
  %41 = load i32, i32* @IMAGPART_EXPR, align 4
  %42 = load i64, i64* %3, align 8
  %43 = load i64, i64* %4, align 8
  %44 = call i64 @build1(i32 %41, i64 %42, i64 %43)
  store i64 %44, i64* %6, align 8
  %45 = load i32, i32* %1, align 4
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @update_complex_components_on_edge(i32 %45, i64 %46, i64 %47, i64 %48)
  br label %50

50:                                               ; preds = %36, %35, %27
  %51 = load i64, i64* %2, align 8
  %52 = call i64 @TREE_CHAIN(i64 %51)
  store i64 %52, i64* %2, align 8
  br label %13

53:                                               ; preds = %13
  ret void
}

declare dso_local i32 @single_succ_edge(i32) #1

declare dso_local i64 @DECL_ARGUMENTS(i32) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @is_gimple_reg(i64) #1

declare dso_local i64 @default_def(i64) #1

declare dso_local i64 @build1(i32, i64, i64) #1

declare dso_local i32 @update_complex_components_on_edge(i32, i64, i64, i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
