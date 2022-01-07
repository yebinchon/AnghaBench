; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_event_set_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_event_set_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, i64, i32, %struct.ring_buffer*, i32 }
%struct.ring_buffer = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, %struct.perf_event*)* @perf_event_set_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_event_set_output(%struct.perf_event* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.ring_buffer*, align 8
  %6 = alloca %struct.ring_buffer*, align 8
  %7 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store %struct.perf_event* %1, %struct.perf_event** %4, align 8
  store %struct.ring_buffer* null, %struct.ring_buffer** %5, align 8
  store %struct.ring_buffer* null, %struct.ring_buffer** %6, align 8
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %11 = icmp ne %struct.perf_event* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %42

13:                                               ; preds = %2
  %14 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %15 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %16 = icmp eq %struct.perf_event* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %87

18:                                               ; preds = %13
  %19 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %20 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %23 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %87

27:                                               ; preds = %18
  %28 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %29 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %34 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %37 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %87

41:                                               ; preds = %32, %27
  br label %42

42:                                               ; preds = %41, %12
  %43 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %44 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %43, i32 0, i32 2
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %47 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %46, i32 0, i32 4
  %48 = call i64 @atomic_read(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %77

51:                                               ; preds = %42
  %52 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %53 = icmp ne %struct.perf_event* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %56 = call %struct.ring_buffer* @ring_buffer_get(%struct.perf_event* %55)
  store %struct.ring_buffer* %56, %struct.ring_buffer** %5, align 8
  %57 = load %struct.ring_buffer*, %struct.ring_buffer** %5, align 8
  %58 = icmp ne %struct.ring_buffer* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  br label %77

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60, %51
  %62 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %63 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %62, i32 0, i32 3
  %64 = load %struct.ring_buffer*, %struct.ring_buffer** %63, align 8
  store %struct.ring_buffer* %64, %struct.ring_buffer** %6, align 8
  %65 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %66 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %65, i32 0, i32 3
  %67 = load %struct.ring_buffer*, %struct.ring_buffer** %66, align 8
  %68 = load %struct.ring_buffer*, %struct.ring_buffer** %5, align 8
  %69 = call i32 @rcu_assign_pointer(%struct.ring_buffer* %67, %struct.ring_buffer* %68)
  %70 = load %struct.ring_buffer*, %struct.ring_buffer** %6, align 8
  %71 = icmp ne %struct.ring_buffer* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %61
  %73 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %74 = load %struct.ring_buffer*, %struct.ring_buffer** %6, align 8
  %75 = call i32 @ring_buffer_detach(%struct.perf_event* %73, %struct.ring_buffer* %74)
  br label %76

76:                                               ; preds = %72, %61
  store i32 0, i32* %7, align 4
  br label %77

77:                                               ; preds = %76, %59, %50
  %78 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %79 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %78, i32 0, i32 2
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load %struct.ring_buffer*, %struct.ring_buffer** %6, align 8
  %82 = icmp ne %struct.ring_buffer* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load %struct.ring_buffer*, %struct.ring_buffer** %6, align 8
  %85 = call i32 @ring_buffer_put(%struct.ring_buffer* %84)
  br label %86

86:                                               ; preds = %83, %77
  br label %87

87:                                               ; preds = %86, %40, %26, %17
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.ring_buffer* @ring_buffer_get(%struct.perf_event*) #1

declare dso_local i32 @rcu_assign_pointer(%struct.ring_buffer*, %struct.ring_buffer*) #1

declare dso_local i32 @ring_buffer_detach(%struct.perf_event*, %struct.ring_buffer*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ring_buffer_put(%struct.ring_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
