; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_signal.c_ptrace_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_signal.c_ptrace_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@current = common dso_local global %struct.TYPE_9__* null, align 8
@TASK_TRACED = common dso_local global i32 0, align 4
@tasklist_lock = common dso_local global i32 0, align 4
@CLD_TRAPPED = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*)* @ptrace_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ptrace_stop(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32*, i32** %6, align 8
  %9 = call i64 @arch_ptrace_stop_needed(i32 %7, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %3
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = call i32 @spin_unlock_irq(i32* %15)
  %17 = load i32, i32* %4, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @arch_ptrace_stop(i32 %17, i32* %18)
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = call i32 @spin_lock_irq(i32* %23)
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %26 = call i64 @sigkill_pending(%struct.TYPE_9__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %11
  br label %90

29:                                               ; preds = %11
  br label %30

30:                                               ; preds = %29, %3
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, -1
  store i64 %43, i64* %41, align 8
  br label %44

44:                                               ; preds = %37, %30
  %45 = load i32*, i32** %6, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  store i32* %45, i32** %47, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @TASK_TRACED, align 4
  %52 = call i32 @__set_current_state(i32 %51)
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = call i32 @spin_unlock_irq(i32* %56)
  %58 = call i32 @read_lock(i32* @tasklist_lock)
  %59 = call i64 (...) @may_ptrace_stop()
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %44
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %63 = load i32, i32* @CLD_TRAPPED, align 4
  %64 = call i32 @do_notify_parent_cldstop(%struct.TYPE_9__* %62, i32 %63)
  %65 = call i32 (...) @preempt_disable()
  %66 = call i32 @read_unlock(i32* @tasklist_lock)
  %67 = call i32 (...) @preempt_enable_no_resched()
  %68 = call i32 (...) @schedule()
  br label %79

69:                                               ; preds = %44
  %70 = load i32, i32* @TASK_RUNNING, align 4
  %71 = call i32 @__set_current_state(i32 %70)
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  store i32 0, i32* %76, align 8
  br label %77

77:                                               ; preds = %74, %69
  %78 = call i32 @read_unlock(i32* @tasklist_lock)
  br label %79

79:                                               ; preds = %77, %61
  %80 = call i32 (...) @try_to_freeze()
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = call i32 @spin_lock_irq(i32* %84)
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  store i32* null, i32** %87, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %89 = call i32 @recalc_sigpending_tsk(%struct.TYPE_9__* %88)
  br label %90

90:                                               ; preds = %79, %28
  ret void
}

declare dso_local i64 @arch_ptrace_stop_needed(i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @arch_ptrace_stop(i32, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @sigkill_pending(%struct.TYPE_9__*) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i64 @may_ptrace_stop(...) #1

declare dso_local i32 @do_notify_parent_cldstop(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @preempt_enable_no_resched(...) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @try_to_freeze(...) #1

declare dso_local i32 @recalc_sigpending_tsk(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
