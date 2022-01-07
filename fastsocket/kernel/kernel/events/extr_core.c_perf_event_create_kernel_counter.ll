; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_event_create_kernel_counter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_event_create_kernel_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, i32, i32, i32 }
%struct.perf_event_attr = type { i32 }
%struct.task_struct = type { i32 }
%struct.perf_event_context = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.perf_event* @perf_event_create_kernel_counter(%struct.perf_event_attr* %0, i32 %1, %struct.task_struct* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.perf_event*, align 8
  %7 = alloca %struct.perf_event_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.perf_event_context*, align 8
  %13 = alloca %struct.perf_event*, align 8
  %14 = alloca i32, align 4
  store %struct.perf_event_attr* %0, %struct.perf_event_attr** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.task_struct* %2, %struct.task_struct** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %15 = load %struct.perf_event_attr*, %struct.perf_event_attr** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i8*, i8** %11, align 8
  %20 = call %struct.perf_event_context* @perf_event_alloc(%struct.perf_event_attr* %15, i32 %16, %struct.task_struct* %17, i32* null, i32* null, i32 %18, i8* %19)
  %21 = bitcast %struct.perf_event_context* %20 to %struct.perf_event*
  store %struct.perf_event* %21, %struct.perf_event** %13, align 8
  %22 = load %struct.perf_event*, %struct.perf_event** %13, align 8
  %23 = bitcast %struct.perf_event* %22 to %struct.perf_event_context*
  %24 = call i64 @IS_ERR(%struct.perf_event_context* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %5
  %27 = load %struct.perf_event*, %struct.perf_event** %13, align 8
  %28 = bitcast %struct.perf_event* %27 to %struct.perf_event_context*
  %29 = call i32 @PTR_ERR(%struct.perf_event_context* %28)
  store i32 %29, i32* %14, align 4
  br label %70

30:                                               ; preds = %5
  %31 = load %struct.perf_event*, %struct.perf_event** %13, align 8
  %32 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call %struct.perf_event_context* @find_get_context(i32 %33, %struct.task_struct* %34, i32 %35)
  store %struct.perf_event_context* %36, %struct.perf_event_context** %12, align 8
  %37 = load %struct.perf_event_context*, %struct.perf_event_context** %12, align 8
  %38 = call i64 @IS_ERR(%struct.perf_event_context* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load %struct.perf_event_context*, %struct.perf_event_context** %12, align 8
  %42 = call i32 @PTR_ERR(%struct.perf_event_context* %41)
  store i32 %42, i32* %14, align 4
  br label %66

43:                                               ; preds = %30
  %44 = load %struct.perf_event_context*, %struct.perf_event_context** %12, align 8
  %45 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @WARN_ON_ONCE(i32 %46)
  %48 = load %struct.perf_event_context*, %struct.perf_event_context** %12, align 8
  %49 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %48, i32 0, i32 0
  %50 = call i32 @mutex_lock(i32* %49)
  %51 = load %struct.perf_event_context*, %struct.perf_event_context** %12, align 8
  %52 = load %struct.perf_event*, %struct.perf_event** %13, align 8
  %53 = bitcast %struct.perf_event* %52 to %struct.perf_event_context*
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @perf_install_in_context(%struct.perf_event_context* %51, %struct.perf_event_context* %53, i32 %54)
  %56 = load %struct.perf_event_context*, %struct.perf_event_context** %12, align 8
  %57 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = load %struct.perf_event_context*, %struct.perf_event_context** %12, align 8
  %61 = call i32 @perf_unpin_context(%struct.perf_event_context* %60)
  %62 = load %struct.perf_event_context*, %struct.perf_event_context** %12, align 8
  %63 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load %struct.perf_event*, %struct.perf_event** %13, align 8
  store %struct.perf_event* %65, %struct.perf_event** %6, align 8
  br label %74

66:                                               ; preds = %40
  %67 = load %struct.perf_event*, %struct.perf_event** %13, align 8
  %68 = bitcast %struct.perf_event* %67 to %struct.perf_event_context*
  %69 = call i32 @free_event(%struct.perf_event_context* %68)
  br label %70

70:                                               ; preds = %66, %26
  %71 = load i32, i32* %14, align 4
  %72 = call %struct.perf_event_context* @ERR_PTR(i32 %71)
  %73 = bitcast %struct.perf_event_context* %72 to %struct.perf_event*
  store %struct.perf_event* %73, %struct.perf_event** %6, align 8
  br label %74

74:                                               ; preds = %70, %43
  %75 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  ret %struct.perf_event* %75
}

declare dso_local %struct.perf_event_context* @perf_event_alloc(%struct.perf_event_attr*, i32, %struct.task_struct*, i32*, i32*, i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.perf_event_context*) #1

declare dso_local i32 @PTR_ERR(%struct.perf_event_context*) #1

declare dso_local %struct.perf_event_context* @find_get_context(i32, %struct.task_struct*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @perf_install_in_context(%struct.perf_event_context*, %struct.perf_event_context*, i32) #1

declare dso_local i32 @perf_unpin_context(%struct.perf_event_context*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @free_event(%struct.perf_event_context*) #1

declare dso_local %struct.perf_event_context* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
