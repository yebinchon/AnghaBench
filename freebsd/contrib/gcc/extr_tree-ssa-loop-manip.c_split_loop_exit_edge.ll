; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-manip.c_split_loop_exit_edge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-manip.c_split_loop_exit_edge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@SSA_NAME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @split_loop_exit_edge(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %3, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = call i32 @loop_split_edge_with(%struct.TYPE_5__* %14, i32* null)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @phi_nodes(i32 %16)
  store i64 %17, i64* %5, align 8
  br label %18

18:                                               ; preds = %47, %1
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %50

21:                                               ; preds = %18
  %22 = load i64, i64* %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @single_succ_edge(i32 %23)
  %25 = call i32 @PHI_ARG_DEF_PTR_FROM_EDGE(i64 %22, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i64 @USE_FROM_PTR(i32 %26)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i64 @TREE_CODE(i64 %28)
  %30 = load i64, i64* @SSA_NAME, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %47

33:                                               ; preds = %21
  %34 = load i64, i64* %8, align 8
  %35 = call i64 @duplicate_ssa_name(i64 %34, i32* null)
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i64 @create_phi_node(i64 %36, i32 %37)
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %43 = call i32 @add_phi_arg(i64 %40, i64 %41, %struct.TYPE_5__* %42)
  %44 = load i32, i32* %9, align 4
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @SET_USE(i32 %44, i64 %45)
  br label %47

47:                                               ; preds = %33, %32
  %48 = load i64, i64* %5, align 8
  %49 = call i64 @PHI_CHAIN(i64 %48)
  store i64 %49, i64* %5, align 8
  br label %18

50:                                               ; preds = %18
  ret void
}

declare dso_local i32 @loop_split_edge_with(%struct.TYPE_5__*, i32*) #1

declare dso_local i64 @phi_nodes(i32) #1

declare dso_local i32 @PHI_ARG_DEF_PTR_FROM_EDGE(i64, i32) #1

declare dso_local i32 @single_succ_edge(i32) #1

declare dso_local i64 @USE_FROM_PTR(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @duplicate_ssa_name(i64, i32*) #1

declare dso_local i64 @create_phi_node(i64, i32) #1

declare dso_local i32 @add_phi_arg(i64, i64, %struct.TYPE_5__*) #1

declare dso_local i32 @SET_USE(i32, i64) #1

declare dso_local i64 @PHI_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
