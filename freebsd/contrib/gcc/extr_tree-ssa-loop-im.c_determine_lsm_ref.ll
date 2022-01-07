; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-im.c_determine_lsm_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-im.c_determine_lsm_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }
%struct.mem_ref = type { %struct.mem_ref_loc*, i32, i32, i32 }
%struct.mem_ref_loc = type { i32, %struct.mem_ref_loc* }
%struct.TYPE_2__ = type { %struct.loop* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.loop*, i32*, i32, i32, %struct.mem_ref*)* @determine_lsm_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @determine_lsm_ref(%struct.loop* %0, i32* %1, i32 %2, i32 %3, %struct.mem_ref* %4) #0 {
  %6 = alloca %struct.loop*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mem_ref*, align 8
  %11 = alloca %struct.mem_ref_loc*, align 8
  %12 = alloca %struct.loop*, align 8
  store %struct.loop* %0, %struct.loop** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.mem_ref* %4, %struct.mem_ref** %10, align 8
  %13 = load %struct.mem_ref*, %struct.mem_ref** %10, align 8
  %14 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  br label %87

18:                                               ; preds = %5
  %19 = load %struct.mem_ref*, %struct.mem_ref** %10, align 8
  %20 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i64 @bitmap_intersect_p(i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %87

26:                                               ; preds = %18
  %27 = load %struct.mem_ref*, %struct.mem_ref** %10, align 8
  %28 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @tree_could_trap_p(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %76

32:                                               ; preds = %26
  %33 = load %struct.mem_ref*, %struct.mem_ref** %10, align 8
  %34 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %33, i32 0, i32 0
  %35 = load %struct.mem_ref_loc*, %struct.mem_ref_loc** %34, align 8
  store %struct.mem_ref_loc* %35, %struct.mem_ref_loc** %11, align 8
  br label %36

36:                                               ; preds = %67, %32
  %37 = load %struct.mem_ref_loc*, %struct.mem_ref_loc** %11, align 8
  %38 = icmp ne %struct.mem_ref_loc* %37, null
  br i1 %38, label %39, label %71

39:                                               ; preds = %36
  %40 = load %struct.mem_ref_loc*, %struct.mem_ref_loc** %11, align 8
  %41 = getelementptr inbounds %struct.mem_ref_loc, %struct.mem_ref_loc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.TYPE_2__* @LIM_DATA(i32 %42)
  %44 = icmp ne %struct.TYPE_2__* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  br label %67

46:                                               ; preds = %39
  %47 = load %struct.mem_ref_loc*, %struct.mem_ref_loc** %11, align 8
  %48 = getelementptr inbounds %struct.mem_ref_loc, %struct.mem_ref_loc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call %struct.TYPE_2__* @LIM_DATA(i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load %struct.loop*, %struct.loop** %51, align 8
  store %struct.loop* %52, %struct.loop** %12, align 8
  %53 = load %struct.loop*, %struct.loop** %12, align 8
  %54 = icmp ne %struct.loop* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %46
  br label %67

56:                                               ; preds = %46
  %57 = load %struct.loop*, %struct.loop** %12, align 8
  %58 = load %struct.loop*, %struct.loop** %6, align 8
  %59 = icmp eq %struct.loop* %57, %58
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = load %struct.loop*, %struct.loop** %12, align 8
  %62 = load %struct.loop*, %struct.loop** %6, align 8
  %63 = call i64 @flow_loop_nested_p(%struct.loop* %61, %struct.loop* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60, %56
  br label %71

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66, %55, %45
  %68 = load %struct.mem_ref_loc*, %struct.mem_ref_loc** %11, align 8
  %69 = getelementptr inbounds %struct.mem_ref_loc, %struct.mem_ref_loc* %68, i32 0, i32 1
  %70 = load %struct.mem_ref_loc*, %struct.mem_ref_loc** %69, align 8
  store %struct.mem_ref_loc* %70, %struct.mem_ref_loc** %11, align 8
  br label %36

71:                                               ; preds = %65, %36
  %72 = load %struct.mem_ref_loc*, %struct.mem_ref_loc** %11, align 8
  %73 = icmp ne %struct.mem_ref_loc* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  br label %87

75:                                               ; preds = %71
  br label %76

76:                                               ; preds = %75, %26
  %77 = load %struct.loop*, %struct.loop** %6, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.mem_ref*, %struct.mem_ref** %10, align 8
  %81 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.mem_ref*, %struct.mem_ref** %10, align 8
  %84 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %83, i32 0, i32 0
  %85 = load %struct.mem_ref_loc*, %struct.mem_ref_loc** %84, align 8
  %86 = call i32 @schedule_sm(%struct.loop* %77, i32* %78, i32 %79, i32 %82, %struct.mem_ref_loc* %85)
  br label %87

87:                                               ; preds = %76, %74, %25, %17
  ret void
}

declare dso_local i64 @bitmap_intersect_p(i32, i32) #1

declare dso_local i64 @tree_could_trap_p(i32) #1

declare dso_local %struct.TYPE_2__* @LIM_DATA(i32) #1

declare dso_local i64 @flow_loop_nested_p(%struct.loop*, %struct.loop*) #1

declare dso_local i32 @schedule_sm(%struct.loop*, i32*, i32, i32, %struct.mem_ref_loc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
