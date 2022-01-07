; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_nr_hugepages_store_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_nr_hugepages_store_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.kobj_attribute = type { i32 }
%struct.hstate = type { i64, i32, i64*, i64 }

@nodemask_t = common dso_local global i32 0, align 4
@nodes_allowed = common dso_local global i32* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4
@MAX_ORDER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@node_states = common dso_local global i32* null, align 8
@N_HIGH_MEMORY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.kobject*, %struct.kobj_attribute*, i8*, i64)* @nr_hugepages_store_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nr_hugepages_store_common(i32 %0, %struct.kobject* %1, %struct.kobj_attribute* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.kobject*, align 8
  %9 = alloca %struct.kobj_attribute*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.hstate*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.kobject* %1, %struct.kobject** %8, align 8
  store %struct.kobj_attribute* %2, %struct.kobj_attribute** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load i32, i32* @nodemask_t, align 4
  %17 = load i32*, i32** @nodes_allowed, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = load i32, i32* @__GFP_NORETRY, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @NODEMASK_ALLOC(i32 %16, i32* %17, i32 %20)
  %22 = load i8*, i8** %10, align 8
  %23 = call i32 @strict_strtoul(i8* %22, i32 10, i64* %14)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  br label %98

27:                                               ; preds = %5
  %28 = load %struct.kobject*, %struct.kobject** %8, align 8
  %29 = call %struct.hstate* @kobj_to_hstate(%struct.kobject* %28, i32* %13)
  store %struct.hstate* %29, %struct.hstate** %15, align 8
  %30 = load %struct.hstate*, %struct.hstate** %15, align 8
  %31 = getelementptr inbounds %struct.hstate, %struct.hstate* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MAX_ORDER, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %12, align 4
  br label %98

38:                                               ; preds = %27
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @NUMA_NO_NODE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %38
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32*, i32** @nodes_allowed, align 8
  %47 = call i64 @init_nodemask_of_mempolicy(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %45, %42
  %50 = load i32*, i32** @nodes_allowed, align 8
  %51 = call i32 @NODEMASK_FREE(i32* %50)
  %52 = load i32*, i32** @node_states, align 8
  %53 = load i64, i64* @N_HIGH_MEMORY, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32* %54, i32** @nodes_allowed, align 8
  br label %55

55:                                               ; preds = %49, %45
  br label %81

56:                                               ; preds = %38
  %57 = load i32*, i32** @nodes_allowed, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %76

59:                                               ; preds = %56
  %60 = load %struct.hstate*, %struct.hstate** %15, align 8
  %61 = getelementptr inbounds %struct.hstate, %struct.hstate* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.hstate*, %struct.hstate** %15, align 8
  %64 = getelementptr inbounds %struct.hstate, %struct.hstate* %63, i32 0, i32 2
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %62, %69
  %71 = load i64, i64* %14, align 8
  %72 = add i64 %71, %70
  store i64 %72, i64* %14, align 8
  %73 = load i32*, i32** @nodes_allowed, align 8
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @init_nodemask_of_node(i32* %73, i32 %74)
  br label %80

76:                                               ; preds = %56
  %77 = load i32*, i32** @node_states, align 8
  %78 = load i64, i64* @N_HIGH_MEMORY, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32* %79, i32** @nodes_allowed, align 8
  br label %80

80:                                               ; preds = %76, %59
  br label %81

81:                                               ; preds = %80, %55
  %82 = load %struct.hstate*, %struct.hstate** %15, align 8
  %83 = load i64, i64* %14, align 8
  %84 = load i32*, i32** @nodes_allowed, align 8
  %85 = call i32 @set_max_huge_pages(%struct.hstate* %82, i64 %83, i32* %84)
  %86 = load %struct.hstate*, %struct.hstate** %15, align 8
  %87 = getelementptr inbounds %struct.hstate, %struct.hstate* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 8
  %88 = load i32*, i32** @nodes_allowed, align 8
  %89 = load i32*, i32** @node_states, align 8
  %90 = load i64, i64* @N_HIGH_MEMORY, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = icmp ne i32* %88, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %81
  %94 = load i32*, i32** @nodes_allowed, align 8
  %95 = call i32 @NODEMASK_FREE(i32* %94)
  br label %96

96:                                               ; preds = %93, %81
  %97 = load i64, i64* %11, align 8
  store i64 %97, i64* %6, align 8
  br label %103

98:                                               ; preds = %35, %26
  %99 = load i32*, i32** @nodes_allowed, align 8
  %100 = call i32 @NODEMASK_FREE(i32* %99)
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  store i64 %102, i64* %6, align 8
  br label %103

103:                                              ; preds = %98, %96
  %104 = load i64, i64* %6, align 8
  ret i64 %104
}

declare dso_local i32 @NODEMASK_ALLOC(i32, i32*, i32) #1

declare dso_local i32 @strict_strtoul(i8*, i32, i64*) #1

declare dso_local %struct.hstate* @kobj_to_hstate(%struct.kobject*, i32*) #1

declare dso_local i64 @init_nodemask_of_mempolicy(i32*) #1

declare dso_local i32 @NODEMASK_FREE(i32*) #1

declare dso_local i32 @init_nodemask_of_node(i32*, i32) #1

declare dso_local i32 @set_max_huge_pages(%struct.hstate*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
