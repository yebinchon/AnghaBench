; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-dce.c_find_control_dependence.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-dce.c_find_control_dependence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edge_list = type { i32 }
%struct.TYPE_3__ = type { i32 }

@EXIT_BLOCK_PTR = common dso_local global i64 0, align 8
@ENTRY_BLOCK_PTR = common dso_local global i64 0, align 8
@EDGE_ABNORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edge_list*, i32)* @find_control_dependence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_control_dependence(%struct.edge_list* %0, i32 %1) #0 {
  %3 = alloca %struct.edge_list*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  store %struct.edge_list* %0, %struct.edge_list** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.edge_list*, %struct.edge_list** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @INDEX_EDGE_PRED_BB(%struct.edge_list* %8, i32 %9)
  %11 = load i64, i64* @EXIT_BLOCK_PTR, align 8
  %12 = icmp ne i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @gcc_assert(i32 %13)
  %15 = load %struct.edge_list*, %struct.edge_list** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @INDEX_EDGE_PRED_BB(%struct.edge_list* %15, i32 %16)
  %18 = load i64, i64* @ENTRY_BLOCK_PTR, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i64, i64* @ENTRY_BLOCK_PTR, align 8
  %22 = call i64 @single_succ(i64 %21)
  store i64 %22, i64* %6, align 8
  br label %28

23:                                               ; preds = %2
  %24 = load %struct.edge_list*, %struct.edge_list** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @INDEX_EDGE_PRED_BB(%struct.edge_list* %24, i32 %25)
  %27 = call i64 @find_pdom(i64 %26)
  store i64 %27, i64* %6, align 8
  br label %28

28:                                               ; preds = %23, %20
  %29 = load %struct.edge_list*, %struct.edge_list** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @INDEX_EDGE_SUCC_BB(%struct.edge_list* %29, i32 %30)
  store i64 %31, i64* %5, align 8
  br label %32

32:                                               ; preds = %57, %28
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @EXIT_BLOCK_PTR, align 8
  %39 = icmp ne i64 %37, %38
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i1 [ false, %32 ], [ %39, %36 ]
  br i1 %41, label %42, label %60

42:                                               ; preds = %40
  %43 = load %struct.edge_list*, %struct.edge_list** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call %struct.TYPE_3__* @INDEX_EDGE(%struct.edge_list* %43, i32 %44)
  store %struct.TYPE_3__* %45, %struct.TYPE_3__** %7, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @EDGE_ABNORMAL, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %57

53:                                               ; preds = %42
  %54 = load i64, i64* %5, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @set_control_dependence_map_bit(i64 %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %52
  %58 = load i64, i64* %5, align 8
  %59 = call i64 @find_pdom(i64 %58)
  store i64 %59, i64* %5, align 8
  br label %32

60:                                               ; preds = %40
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @INDEX_EDGE_PRED_BB(%struct.edge_list*, i32) #1

declare dso_local i64 @single_succ(i64) #1

declare dso_local i64 @find_pdom(i64) #1

declare dso_local i64 @INDEX_EDGE_SUCC_BB(%struct.edge_list*, i32) #1

declare dso_local %struct.TYPE_3__* @INDEX_EDGE(%struct.edge_list*, i32) #1

declare dso_local i32 @set_control_dependence_map_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
