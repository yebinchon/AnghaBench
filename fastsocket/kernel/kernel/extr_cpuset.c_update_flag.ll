; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_update_flag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_update_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuset = type { i32, i32 }
%struct.ptr_heap = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@callback_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cpuset*, i32)* @update_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_flag(i32 %0, %struct.cpuset* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpuset*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cpuset*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ptr_heap, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.cpuset* %1, %struct.cpuset** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %14 = call %struct.cpuset* @alloc_trial_cpuset(%struct.cpuset* %13)
  store %struct.cpuset* %14, %struct.cpuset** %8, align 8
  %15 = load %struct.cpuset*, %struct.cpuset** %8, align 8
  %16 = icmp ne %struct.cpuset* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %97

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.cpuset*, %struct.cpuset** %8, align 8
  %26 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %25, i32 0, i32 1
  %27 = call i32 @set_bit(i32 %24, i32* %26)
  br label %33

28:                                               ; preds = %20
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.cpuset*, %struct.cpuset** %8, align 8
  %31 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %30, i32 0, i32 1
  %32 = call i32 @clear_bit(i32 %29, i32* %31)
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %35 = load %struct.cpuset*, %struct.cpuset** %8, align 8
  %36 = call i32 @validate_change(%struct.cpuset* %34, %struct.cpuset* %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %93

40:                                               ; preds = %33
  %41 = load i32, i32* @PAGE_SIZE, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i32 @heap_init(%struct.ptr_heap* %11, i32 %41, i32 %42, i32* null)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %93

47:                                               ; preds = %40
  %48 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %49 = call i64 @is_sched_load_balance(%struct.cpuset* %48)
  %50 = load %struct.cpuset*, %struct.cpuset** %8, align 8
  %51 = call i64 @is_sched_load_balance(%struct.cpuset* %50)
  %52 = icmp ne i64 %49, %51
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %9, align 4
  %54 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %55 = call i64 @is_spread_slab(%struct.cpuset* %54)
  %56 = load %struct.cpuset*, %struct.cpuset** %8, align 8
  %57 = call i64 @is_spread_slab(%struct.cpuset* %56)
  %58 = icmp ne i64 %55, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %47
  %60 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %61 = call i64 @is_spread_page(%struct.cpuset* %60)
  %62 = load %struct.cpuset*, %struct.cpuset** %8, align 8
  %63 = call i64 @is_spread_page(%struct.cpuset* %62)
  %64 = icmp ne i64 %61, %63
  br label %65

65:                                               ; preds = %59, %47
  %66 = phi i1 [ true, %47 ], [ %64, %59 ]
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %10, align 4
  %68 = call i32 @mutex_lock(i32* @callback_mutex)
  %69 = load %struct.cpuset*, %struct.cpuset** %8, align 8
  %70 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %73 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = call i32 @mutex_unlock(i32* @callback_mutex)
  %75 = load %struct.cpuset*, %struct.cpuset** %8, align 8
  %76 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @cpumask_empty(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %65
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = call i32 (...) @async_rebuild_sched_domains()
  br label %85

85:                                               ; preds = %83, %80, %65
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %90 = call i32 @update_tasks_flags(%struct.cpuset* %89, %struct.ptr_heap* %11)
  br label %91

91:                                               ; preds = %88, %85
  %92 = call i32 @heap_free(%struct.ptr_heap* %11)
  br label %93

93:                                               ; preds = %91, %46, %39
  %94 = load %struct.cpuset*, %struct.cpuset** %8, align 8
  %95 = call i32 @free_trial_cpuset(%struct.cpuset* %94)
  %96 = load i32, i32* %12, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %93, %17
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local %struct.cpuset* @alloc_trial_cpuset(%struct.cpuset*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @validate_change(%struct.cpuset*, %struct.cpuset*) #1

declare dso_local i32 @heap_init(%struct.ptr_heap*, i32, i32, i32*) #1

declare dso_local i64 @is_sched_load_balance(%struct.cpuset*) #1

declare dso_local i64 @is_spread_slab(%struct.cpuset*) #1

declare dso_local i64 @is_spread_page(%struct.cpuset*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cpumask_empty(i32) #1

declare dso_local i32 @async_rebuild_sched_domains(...) #1

declare dso_local i32 @update_tasks_flags(%struct.cpuset*, %struct.ptr_heap*) #1

declare dso_local i32 @heap_free(%struct.ptr_heap*) #1

declare dso_local i32 @free_trial_cpuset(%struct.cpuset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
