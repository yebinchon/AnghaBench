; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_inherit_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_inherit_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.perf_event = type { i64, i32, i32, %struct.perf_event_context*, i32, i32, %struct.hw_perf_event, %struct.TYPE_2__, i32, i32, %struct.perf_event* }
%struct.hw_perf_event = type { i32, i8*, i8* }
%struct.TYPE_2__ = type { i64 }
%struct.perf_event_context = type { i32, i32 }

@PERF_EVENT_STATE_INACTIVE = common dso_local global i64 0, align 8
@PERF_EVENT_STATE_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.perf_event* (%struct.perf_event*, %struct.task_struct*, %struct.perf_event_context*, %struct.task_struct*, %struct.perf_event*, %struct.perf_event_context*)* @inherit_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.perf_event* @inherit_event(%struct.perf_event* %0, %struct.task_struct* %1, %struct.perf_event_context* %2, %struct.task_struct* %3, %struct.perf_event* %4, %struct.perf_event_context* %5) #0 {
  %7 = alloca %struct.perf_event*, align 8
  %8 = alloca %struct.perf_event*, align 8
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca %struct.perf_event_context*, align 8
  %11 = alloca %struct.task_struct*, align 8
  %12 = alloca %struct.perf_event*, align 8
  %13 = alloca %struct.perf_event_context*, align 8
  %14 = alloca %struct.perf_event*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.hw_perf_event*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %8, align 8
  store %struct.task_struct* %1, %struct.task_struct** %9, align 8
  store %struct.perf_event_context* %2, %struct.perf_event_context** %10, align 8
  store %struct.task_struct* %3, %struct.task_struct** %11, align 8
  store %struct.perf_event* %4, %struct.perf_event** %12, align 8
  store %struct.perf_event_context* %5, %struct.perf_event_context** %13, align 8
  %18 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %19 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %18, i32 0, i32 10
  %20 = load %struct.perf_event*, %struct.perf_event** %19, align 8
  %21 = icmp ne %struct.perf_event* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %6
  %23 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %24 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %23, i32 0, i32 10
  %25 = load %struct.perf_event*, %struct.perf_event** %24, align 8
  store %struct.perf_event* %25, %struct.perf_event** %8, align 8
  br label %26

26:                                               ; preds = %22, %6
  %27 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %28 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %27, i32 0, i32 7
  %29 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %30 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %29, i32 0, i32 9
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.task_struct*, %struct.task_struct** %11, align 8
  %33 = load %struct.perf_event*, %struct.perf_event** %12, align 8
  %34 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %35 = call %struct.perf_event* @perf_event_alloc(%struct.TYPE_2__* %28, i32 %31, %struct.task_struct* %32, %struct.perf_event* %33, %struct.perf_event* %34, i32* null, i32* null)
  store %struct.perf_event* %35, %struct.perf_event** %14, align 8
  %36 = load %struct.perf_event*, %struct.perf_event** %14, align 8
  %37 = call i64 @IS_ERR(%struct.perf_event* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %26
  %40 = load %struct.perf_event*, %struct.perf_event** %14, align 8
  store %struct.perf_event* %40, %struct.perf_event** %7, align 8
  br label %135

41:                                               ; preds = %26
  %42 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %43 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %42, i32 0, i32 8
  %44 = call i32 @atomic_long_inc_not_zero(i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load %struct.perf_event*, %struct.perf_event** %14, align 8
  %48 = call i32 @free_event(%struct.perf_event* %47)
  store %struct.perf_event* null, %struct.perf_event** %7, align 8
  br label %135

49:                                               ; preds = %41
  %50 = load %struct.perf_event_context*, %struct.perf_event_context** %13, align 8
  %51 = call i32 @get_ctx(%struct.perf_event_context* %50)
  %52 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %53 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @PERF_EVENT_STATE_INACTIVE, align 8
  %56 = icmp sge i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = load i64, i64* @PERF_EVENT_STATE_INACTIVE, align 8
  %59 = load %struct.perf_event*, %struct.perf_event** %14, align 8
  %60 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  br label %65

61:                                               ; preds = %49
  %62 = load i64, i64* @PERF_EVENT_STATE_OFF, align 8
  %63 = load %struct.perf_event*, %struct.perf_event** %14, align 8
  %64 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %61, %57
  %66 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %67 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %66, i32 0, i32 7
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %65
  %72 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %73 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %72, i32 0, i32 6
  %74 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %16, align 8
  %76 = load %struct.perf_event*, %struct.perf_event** %14, align 8
  %77 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %76, i32 0, i32 6
  store %struct.hw_perf_event* %77, %struct.hw_perf_event** %17, align 8
  %78 = load i8*, i8** %16, align 8
  %79 = load %struct.hw_perf_event*, %struct.hw_perf_event** %17, align 8
  %80 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  %81 = load i8*, i8** %16, align 8
  %82 = load %struct.hw_perf_event*, %struct.hw_perf_event** %17, align 8
  %83 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  %84 = load %struct.hw_perf_event*, %struct.hw_perf_event** %17, align 8
  %85 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %84, i32 0, i32 0
  %86 = load i8*, i8** %16, align 8
  %87 = call i32 @local64_set(i32* %85, i8* %86)
  br label %88

88:                                               ; preds = %71, %65
  %89 = load %struct.perf_event_context*, %struct.perf_event_context** %13, align 8
  %90 = load %struct.perf_event*, %struct.perf_event** %14, align 8
  %91 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %90, i32 0, i32 3
  store %struct.perf_event_context* %89, %struct.perf_event_context** %91, align 8
  %92 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %93 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.perf_event*, %struct.perf_event** %14, align 8
  %96 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 4
  %97 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %98 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.perf_event*, %struct.perf_event** %14, align 8
  %101 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 8
  %102 = load %struct.perf_event*, %struct.perf_event** %14, align 8
  %103 = call i32 @perf_event__header_size(%struct.perf_event* %102)
  %104 = load %struct.perf_event*, %struct.perf_event** %14, align 8
  %105 = call i32 @perf_event__id_header_size(%struct.perf_event* %104)
  %106 = load %struct.perf_event_context*, %struct.perf_event_context** %13, align 8
  %107 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %106, i32 0, i32 1
  %108 = load i64, i64* %15, align 8
  %109 = call i32 @spin_lock_irqsave(i32* %107, i64 %108)
  %110 = load %struct.perf_event*, %struct.perf_event** %14, align 8
  %111 = load %struct.perf_event_context*, %struct.perf_event_context** %13, align 8
  %112 = call i32 @add_event_to_ctx(%struct.perf_event* %110, %struct.perf_event_context* %111)
  %113 = load %struct.perf_event_context*, %struct.perf_event_context** %13, align 8
  %114 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %113, i32 0, i32 1
  %115 = load i64, i64* %15, align 8
  %116 = call i32 @spin_unlock_irqrestore(i32* %114, i64 %115)
  %117 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %118 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %117, i32 0, i32 3
  %119 = load %struct.perf_event_context*, %struct.perf_event_context** %118, align 8
  %120 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @WARN_ON_ONCE(i32 %121)
  %123 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %124 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %123, i32 0, i32 1
  %125 = call i32 @mutex_lock(i32* %124)
  %126 = load %struct.perf_event*, %struct.perf_event** %14, align 8
  %127 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %126, i32 0, i32 2
  %128 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %129 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %128, i32 0, i32 2
  %130 = call i32 @list_add_tail(i32* %127, i32* %129)
  %131 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %132 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %131, i32 0, i32 1
  %133 = call i32 @mutex_unlock(i32* %132)
  %134 = load %struct.perf_event*, %struct.perf_event** %14, align 8
  store %struct.perf_event* %134, %struct.perf_event** %7, align 8
  br label %135

135:                                              ; preds = %88, %46, %39
  %136 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  ret %struct.perf_event* %136
}

declare dso_local %struct.perf_event* @perf_event_alloc(%struct.TYPE_2__*, i32, %struct.task_struct*, %struct.perf_event*, %struct.perf_event*, i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.perf_event*) #1

declare dso_local i32 @atomic_long_inc_not_zero(i32*) #1

declare dso_local i32 @free_event(%struct.perf_event*) #1

declare dso_local i32 @get_ctx(%struct.perf_event_context*) #1

declare dso_local i32 @local64_set(i32*, i8*) #1

declare dso_local i32 @perf_event__header_size(%struct.perf_event*) #1

declare dso_local i32 @perf_event__id_header_size(%struct.perf_event*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @add_event_to_ctx(%struct.perf_event*, %struct.perf_event_context*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
