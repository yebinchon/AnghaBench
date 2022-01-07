; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_signal.c_exit_signals.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_signal.c_exit_signals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@PF_EXITING = common dso_local global i32 0, align 4
@SIGNAL_STOP_STOPPED = common dso_local global i32 0, align 4
@CLD_STOPPED = common dso_local global i32 0, align 4
@tasklist_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exit_signals(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %6 = call i64 @thread_group_empty(%struct.task_struct* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = call i64 @signal_group_exit(%struct.TYPE_4__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %8, %1
  %15 = load i32, i32* @PF_EXITING, align 4
  %16 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  br label %98

20:                                               ; preds = %8
  %21 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %22 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = call i32 @spin_lock_irq(i32* %24)
  %26 = load i32, i32* @PF_EXITING, align 4
  %27 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %28 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %32 = call i32 @signal_pending(%struct.task_struct* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %20
  br label %83

35:                                               ; preds = %20
  %36 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  store %struct.task_struct* %36, %struct.task_struct** %4, align 8
  br label %37

37:                                               ; preds = %56, %35
  %38 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %39 = call %struct.task_struct* @next_thread(%struct.task_struct* %38)
  store %struct.task_struct* %39, %struct.task_struct** %4, align 8
  %40 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %41 = icmp ne %struct.task_struct* %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %37
  %43 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %44 = call i32 @signal_pending(%struct.task_struct* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %42
  %47 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %48 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @PF_EXITING, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %46
  %54 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %55 = call i32 @recalc_sigpending_and_wake(%struct.task_struct* %54)
  br label %56

56:                                               ; preds = %53, %46, %42
  br label %37

57:                                               ; preds = %37
  %58 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %59 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %58, i32 0, i32 2
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %57
  %66 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %67 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %69, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %82, label %73

73:                                               ; preds = %65
  %74 = load i32, i32* @SIGNAL_STOP_STOPPED, align 4
  %75 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %76 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %75, i32 0, i32 2
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  store i32 %74, i32* %78, align 4
  %79 = load i32, i32* @CLD_STOPPED, align 4
  %80 = load i32, i32* @CLD_STOPPED, align 4
  %81 = call i32 @tracehook_notify_jctl(i32 %79, i32 %80)
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %73, %65, %57
  br label %83

83:                                               ; preds = %82, %34
  %84 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %85 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %84, i32 0, i32 1
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = call i32 @spin_unlock_irq(i32* %87)
  %89 = load i32, i32* %3, align 4
  %90 = call i64 @unlikely(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %83
  %93 = call i32 @read_lock(i32* @tasklist_lock)
  %94 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @do_notify_parent_cldstop(%struct.task_struct* %94, i32 %95)
  %97 = call i32 @read_unlock(i32* @tasklist_lock)
  br label %98

98:                                               ; preds = %14, %92, %83
  ret void
}

declare dso_local i64 @thread_group_empty(%struct.task_struct*) #1

declare dso_local i64 @signal_group_exit(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @signal_pending(%struct.task_struct*) #1

declare dso_local %struct.task_struct* @next_thread(%struct.task_struct*) #1

declare dso_local i32 @recalc_sigpending_and_wake(%struct.task_struct*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tracehook_notify_jctl(i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @do_notify_parent_cldstop(%struct.task_struct*, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
