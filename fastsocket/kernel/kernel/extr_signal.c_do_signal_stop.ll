; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_signal.c_do_signal_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_signal.c_do_signal_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32, %struct.TYPE_2__*, %struct.signal_struct* }
%struct.TYPE_2__ = type { i32 }
%struct.signal_struct = type { i32, i32, i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@SIGNAL_STOP_DEQUEUED = common dso_local global i32 0, align 4
@PF_EXITING = common dso_local global i32 0, align 4
@CLD_STOPPED = common dso_local global i32 0, align 4
@SIGNAL_STOP_STOPPED = common dso_local global i32 0, align 4
@TASK_STOPPED = common dso_local global i32 0, align 4
@tasklist_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @do_signal_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_signal_stop(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.signal_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.task_struct*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %8 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %7, i32 0, i32 3
  %9 = load %struct.signal_struct*, %struct.signal_struct** %8, align 8
  store %struct.signal_struct* %9, %struct.signal_struct** %4, align 8
  %10 = load %struct.signal_struct*, %struct.signal_struct** %4, align 8
  %11 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %63, label %14

14:                                               ; preds = %1
  %15 = load %struct.signal_struct*, %struct.signal_struct** %4, align 8
  %16 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SIGNAL_STOP_DEQUEUED, align 4
  %19 = and i32 %17, %18
  %20 = call i32 @likely(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %14
  %23 = load %struct.signal_struct*, %struct.signal_struct** %4, align 8
  %24 = call i32 @signal_group_exit(%struct.signal_struct* %23)
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %14
  store i32 0, i32* %2, align 4
  br label %122

28:                                               ; preds = %22
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.signal_struct*, %struct.signal_struct** %4, align 8
  %31 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.signal_struct*, %struct.signal_struct** %4, align 8
  %33 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  %34 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %35 = call %struct.task_struct* @next_thread(%struct.task_struct* %34)
  store %struct.task_struct* %35, %struct.task_struct** %6, align 8
  br label %36

36:                                               ; preds = %59, %28
  %37 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %38 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %39 = icmp ne %struct.task_struct* %37, %38
  br i1 %39, label %40, label %62

40:                                               ; preds = %36
  %41 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %42 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @PF_EXITING, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %40
  %48 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %49 = call i32 @task_is_stopped_or_traced(%struct.task_struct* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %47
  %52 = load %struct.signal_struct*, %struct.signal_struct** %4, align 8
  %53 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %57 = call i32 @signal_wake_up(%struct.task_struct* %56, i32 0)
  br label %58

58:                                               ; preds = %51, %47, %40
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %61 = call %struct.task_struct* @next_thread(%struct.task_struct* %60)
  store %struct.task_struct* %61, %struct.task_struct** %6, align 8
  br label %36

62:                                               ; preds = %36
  br label %63

63:                                               ; preds = %62, %1
  %64 = load %struct.signal_struct*, %struct.signal_struct** %4, align 8
  %65 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* @CLD_STOPPED, align 4
  br label %71

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70, %68
  %72 = phi i32 [ %69, %68 ], [ 0, %70 ]
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @CLD_STOPPED, align 4
  %75 = call i32 @tracehook_notify_jctl(i32 %73, i32 %74)
  store i32 %75, i32* %5, align 4
  %76 = load %struct.signal_struct*, %struct.signal_struct** %4, align 8
  %77 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %71
  %81 = load %struct.signal_struct*, %struct.signal_struct** %4, align 8
  %82 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %82, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %80
  %87 = load i32, i32* @SIGNAL_STOP_STOPPED, align 4
  %88 = load %struct.signal_struct*, %struct.signal_struct** %4, align 8
  %89 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %86, %80
  %91 = load %struct.signal_struct*, %struct.signal_struct** %4, align 8
  %92 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %95 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @TASK_STOPPED, align 4
  %97 = call i32 @__set_current_state(i32 %96)
  br label %98

98:                                               ; preds = %90, %71
  %99 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %100 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %99, i32 0, i32 2
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = call i32 @spin_unlock_irq(i32* %102)
  %104 = load i32, i32* %5, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %98
  %107 = call i32 @read_lock(i32* @tasklist_lock)
  %108 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @do_notify_parent_cldstop(%struct.task_struct* %108, i32 %109)
  %111 = call i32 @read_unlock(i32* @tasklist_lock)
  br label %112

112:                                              ; preds = %106, %98
  br label %113

113:                                              ; preds = %115, %112
  %114 = call i32 (...) @schedule()
  br label %115

115:                                              ; preds = %113
  %116 = call i64 (...) @try_to_freeze()
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %113, label %118

118:                                              ; preds = %115
  %119 = call i32 (...) @tracehook_finish_jctl()
  %120 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %121 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %120, i32 0, i32 1
  store i32 0, i32* %121, align 4
  store i32 1, i32* %2, align 4
  br label %122

122:                                              ; preds = %118, %27
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @signal_group_exit(%struct.signal_struct*) #1

declare dso_local %struct.task_struct* @next_thread(%struct.task_struct*) #1

declare dso_local i32 @task_is_stopped_or_traced(%struct.task_struct*) #1

declare dso_local i32 @signal_wake_up(%struct.task_struct*, i32) #1

declare dso_local i32 @tracehook_notify_jctl(i32, i32) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @do_notify_parent_cldstop(%struct.task_struct*, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i64 @try_to_freeze(...) #1

declare dso_local i32 @tracehook_finish_jctl(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
