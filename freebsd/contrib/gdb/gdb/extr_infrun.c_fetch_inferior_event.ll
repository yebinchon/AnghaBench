; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_fetch_inferior_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_fetch_inferior_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cleanup = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@fetch_inferior_event.old_cleanups = internal global %struct.cleanup* null, align 8
@async_ecss = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@async_ecs = common dso_local global %struct.TYPE_5__* null, align 8
@delete_step_resume_breakpoint = common dso_local global i32 0, align 4
@step_resume_breakpoint = common dso_local global i32 0, align 4
@delete_breakpoint_current_contents = common dso_local global i32 0, align 4
@through_sigtramp_breakpoint = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@previous_inferior_ptid = common dso_local global i32 0, align 4
@overlay_cache_invalid = common dso_local global i32 0, align 4
@step_multi = common dso_local global i64 0, align 8
@stop_step = common dso_local global i64 0, align 8
@INF_EXEC_CONTINUE = common dso_local global i32 0, align 4
@INF_EXEC_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fetch_inferior_event(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store %struct.TYPE_5__* @async_ecss, %struct.TYPE_5__** @async_ecs, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** @async_ecs, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @delete_step_resume_breakpoint, align 4
  %9 = call %struct.cleanup* @make_exec_cleanup(i32 %8, i32* @step_resume_breakpoint)
  store %struct.cleanup* %9, %struct.cleanup** @fetch_inferior_event.old_cleanups, align 8
  %10 = load i32, i32* @delete_breakpoint_current_contents, align 4
  %11 = call %struct.cleanup* @make_exec_cleanup(i32 %10, i32* @through_sigtramp_breakpoint)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @async_ecs, align 8
  %13 = call i32 @init_execution_control_state(%struct.TYPE_5__* %12)
  %14 = load i32, i32* @inferior_ptid, align 4
  store i32 %14, i32* @previous_inferior_ptid, align 4
  store i32 1, i32* @overlay_cache_invalid, align 4
  %15 = call i32 (...) @registers_changed()
  br label %16

16:                                               ; preds = %7, %1
  br i1 true, label %17, label %27

17:                                               ; preds = %16
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @async_ecs, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @async_ecs, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @target_wait_hook(i32 %20, i32 %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @async_ecs, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  br label %37

27:                                               ; preds = %16
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @async_ecs, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @async_ecs, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @target_wait(i32 %30, i32 %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** @async_ecs, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %27, %17
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @async_ecs, align 8
  %39 = call i32 @handle_inferior_event(%struct.TYPE_5__* %38)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @async_ecs, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %60, label %44

44:                                               ; preds = %37
  %45 = load %struct.cleanup*, %struct.cleanup** @fetch_inferior_event.old_cleanups, align 8
  %46 = call i32 @do_exec_cleanups(%struct.cleanup* %45)
  %47 = call i32 (...) @normal_stop()
  %48 = load i64, i64* @step_multi, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load i64, i64* @stop_step, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* @INF_EXEC_CONTINUE, align 4
  %55 = call i32 @inferior_event_handler(i32 %54, i32* null)
  br label %59

56:                                               ; preds = %50, %44
  %57 = load i32, i32* @INF_EXEC_COMPLETE, align 4
  %58 = call i32 @inferior_event_handler(i32 %57, i32* null)
  br label %59

59:                                               ; preds = %56, %53
  br label %60

60:                                               ; preds = %59, %37
  ret void
}

declare dso_local %struct.cleanup* @make_exec_cleanup(i32, i32*) #1

declare dso_local i32 @init_execution_control_state(%struct.TYPE_5__*) #1

declare dso_local i32 @registers_changed(...) #1

declare dso_local i32 @target_wait_hook(i32, i32) #1

declare dso_local i32 @target_wait(i32, i32) #1

declare dso_local i32 @handle_inferior_event(%struct.TYPE_5__*) #1

declare dso_local i32 @do_exec_cleanups(%struct.cleanup*) #1

declare dso_local i32 @normal_stop(...) #1

declare dso_local i32 @inferior_event_handler(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
