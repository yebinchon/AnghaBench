; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_kobj_to_hstate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_kobj_to_hstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.hstate = type { i32 }

@HUGE_MAX_HSTATE = common dso_local global i32 0, align 4
@hstate_kobjs = common dso_local global %struct.kobject** null, align 8
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@hstates = common dso_local global %struct.hstate* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hstate* (%struct.kobject*, i32*)* @kobj_to_hstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hstate* @kobj_to_hstate(%struct.kobject* %0, i32* %1) #0 {
  %3 = alloca %struct.hstate*, align 8
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %31, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @HUGE_MAX_HSTATE, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %34

11:                                               ; preds = %7
  %12 = load %struct.kobject**, %struct.kobject*** @hstate_kobjs, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.kobject*, %struct.kobject** %12, i64 %14
  %16 = load %struct.kobject*, %struct.kobject** %15, align 8
  %17 = load %struct.kobject*, %struct.kobject** %4, align 8
  %18 = icmp eq %struct.kobject* %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %11
  %20 = load i32*, i32** %5, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @NUMA_NO_NODE, align 4
  %24 = load i32*, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.hstate*, %struct.hstate** @hstates, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.hstate, %struct.hstate* %26, i64 %28
  store %struct.hstate* %29, %struct.hstate** %3, align 8
  br label %38

30:                                               ; preds = %11
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %7

34:                                               ; preds = %7
  %35 = load %struct.kobject*, %struct.kobject** %4, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call %struct.hstate* @kobj_to_node_hstate(%struct.kobject* %35, i32* %36)
  store %struct.hstate* %37, %struct.hstate** %3, align 8
  br label %38

38:                                               ; preds = %34, %25
  %39 = load %struct.hstate*, %struct.hstate** %3, align 8
  ret %struct.hstate* %39
}

declare dso_local %struct.hstate* @kobj_to_node_hstate(%struct.kobject*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
