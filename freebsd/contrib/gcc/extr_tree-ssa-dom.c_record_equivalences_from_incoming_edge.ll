; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-dom.c_record_equivalences_from_incoming_edge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-dom.c_record_equivalences_from_incoming_edge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.edge_info = type { i32, i64*, i64, i64 }

@CDI_DOMINATORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @record_equivalences_from_incoming_edge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @record_equivalences_from_incoming_edge(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.edge_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %12 = load i32, i32* @CDI_DOMINATORS, align 4
  %13 = load i64, i64* %2, align 8
  %14 = call i64 @get_immediate_dominator(i32 %12, i64 %13)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %2, align 8
  %16 = call %struct.TYPE_3__* @single_incoming_edge_ignoring_loop_edges(i64 %15)
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %3, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %79

19:                                               ; preds = %1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %79

25:                                               ; preds = %19
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.edge_info*
  store %struct.edge_info* %29, %struct.edge_info** %5, align 8
  %30 = load %struct.edge_info*, %struct.edge_info** %5, align 8
  %31 = icmp ne %struct.edge_info* %30, null
  br i1 %31, label %32, label %78

32:                                               ; preds = %25
  %33 = load %struct.edge_info*, %struct.edge_info** %5, align 8
  %34 = getelementptr inbounds %struct.edge_info, %struct.edge_info* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %7, align 8
  %36 = load %struct.edge_info*, %struct.edge_info** %5, align 8
  %37 = getelementptr inbounds %struct.edge_info, %struct.edge_info* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %8, align 8
  %39 = load %struct.edge_info*, %struct.edge_info** %5, align 8
  %40 = getelementptr inbounds %struct.edge_info, %struct.edge_info* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  store i64* %41, i64** %9, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %32
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @record_equality(i64 %45, i64 %46)
  br label %48

48:                                               ; preds = %44, %32
  %49 = load i64*, i64** %9, align 8
  %50 = icmp ne i64* %49, null
  br i1 %50, label %51, label %77

51:                                               ; preds = %48
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %73, %51
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.edge_info*, %struct.edge_info** %5, align 8
  %55 = getelementptr inbounds %struct.edge_info, %struct.edge_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ult i32 %53, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %52
  %59 = load i64*, i64** %9, align 8
  %60 = load i32, i32* %6, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %10, align 8
  %64 = load i64*, i64** %9, align 8
  %65 = load i32, i32* %6, align 4
  %66 = add i32 %65, 1
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %64, i64 %67
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %11, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* %11, align 8
  %72 = call i32 @record_cond(i64 %70, i64 %71)
  br label %73

73:                                               ; preds = %58
  %74 = load i32, i32* %6, align 4
  %75 = add i32 %74, 2
  store i32 %75, i32* %6, align 4
  br label %52

76:                                               ; preds = %52
  br label %77

77:                                               ; preds = %76, %48
  br label %78

78:                                               ; preds = %77, %25
  br label %79

79:                                               ; preds = %78, %19, %1
  ret void
}

declare dso_local i64 @get_immediate_dominator(i32, i64) #1

declare dso_local %struct.TYPE_3__* @single_incoming_edge_ignoring_loop_edges(i64) #1

declare dso_local i32 @record_equality(i64, i64) #1

declare dso_local i32 @record_cond(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
