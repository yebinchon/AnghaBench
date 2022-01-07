; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_update_cpumask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_update_cpumask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuset = type { i32 }
%struct.ptr_heap = type { i32 }

@top_cpuset = common dso_local global %struct.cpuset zeroinitializer, align 4
@EACCES = common dso_local global i32 0, align 4
@cpu_active_mask = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@callback_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuset*, %struct.cpuset*, i8*)* @update_cpumask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_cpumask(%struct.cpuset* %0, %struct.cpuset* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpuset*, align 8
  %6 = alloca %struct.cpuset*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ptr_heap, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cpuset* %0, %struct.cpuset** %5, align 8
  store %struct.cpuset* %1, %struct.cpuset** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.cpuset*, %struct.cpuset** %5, align 8
  %12 = icmp eq %struct.cpuset* %11, @top_cpuset
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EACCES, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %92

16:                                               ; preds = %3
  %17 = load i8*, i8** %7, align 8
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %22 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @cpumask_clear(i32 %23)
  br label %46

25:                                               ; preds = %16
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %28 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @cpulist_parse(i8* %26, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %92

35:                                               ; preds = %25
  %36 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %37 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @cpu_active_mask, align 4
  %40 = call i32 @cpumask_subset(i32 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %92

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %20
  %47 = load %struct.cpuset*, %struct.cpuset** %5, align 8
  %48 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %49 = call i32 @validate_change(%struct.cpuset* %47, %struct.cpuset* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  br label %92

54:                                               ; preds = %46
  %55 = load %struct.cpuset*, %struct.cpuset** %5, align 8
  %56 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %59 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @cpumask_equal(i32 %57, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %92

64:                                               ; preds = %54
  %65 = load i32, i32* @PAGE_SIZE, align 4
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i32 @heap_init(%struct.ptr_heap* %8, i32 %65, i32 %66, i32* null)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %4, align 4
  br label %92

72:                                               ; preds = %64
  %73 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %74 = call i32 @is_sched_load_balance(%struct.cpuset* %73)
  store i32 %74, i32* %10, align 4
  %75 = call i32 @mutex_lock(i32* @callback_mutex)
  %76 = load %struct.cpuset*, %struct.cpuset** %5, align 8
  %77 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %80 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @cpumask_copy(i32 %78, i32 %81)
  %83 = call i32 @mutex_unlock(i32* @callback_mutex)
  %84 = load %struct.cpuset*, %struct.cpuset** %5, align 8
  %85 = call i32 @update_tasks_cpumask(%struct.cpuset* %84, %struct.ptr_heap* %8)
  %86 = call i32 @heap_free(%struct.ptr_heap* %8)
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %72
  %90 = call i32 (...) @async_rebuild_sched_domains()
  br label %91

91:                                               ; preds = %89, %72
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %70, %63, %52, %42, %33, %13
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @cpumask_clear(i32) #1

declare dso_local i32 @cpulist_parse(i8*, i32) #1

declare dso_local i32 @cpumask_subset(i32, i32) #1

declare dso_local i32 @validate_change(%struct.cpuset*, %struct.cpuset*) #1

declare dso_local i64 @cpumask_equal(i32, i32) #1

declare dso_local i32 @heap_init(%struct.ptr_heap*, i32, i32, i32*) #1

declare dso_local i32 @is_sched_load_balance(%struct.cpuset*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cpumask_copy(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @update_tasks_cpumask(%struct.cpuset*, %struct.ptr_heap*) #1

declare dso_local i32 @heap_free(%struct.ptr_heap*) #1

declare dso_local i32 @async_rebuild_sched_domains(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
