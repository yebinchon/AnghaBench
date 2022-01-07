; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_restore_inferior_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_restore_inferior_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inferior_status = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@stop_signal = common dso_local global i32 0, align 4
@stop_pc = common dso_local global i32 0, align 4
@stop_step = common dso_local global i32 0, align 4
@stop_stack_dummy = common dso_local global i32 0, align 4
@stopped_by_random_signal = common dso_local global i32 0, align 4
@trap_expected = common dso_local global i32 0, align 4
@step_range_start = common dso_local global i32 0, align 4
@step_range_end = common dso_local global i32 0, align 4
@step_frame_id = common dso_local global i32 0, align 4
@step_over_calls = common dso_local global i32 0, align 4
@stop_after_trap = common dso_local global i32 0, align 4
@stop_soon = common dso_local global i32 0, align 4
@stop_bpstat = common dso_local global i32 0, align 4
@breakpoint_proceeded = common dso_local global i32 0, align 4
@proceed_to_finish = common dso_local global i32 0, align 4
@stop_registers = common dso_local global i32 0, align 4
@target_has_execution = common dso_local global i64 0, align 8
@current_regcache = common dso_local global i32 0, align 4
@target_has_stack = common dso_local global i64 0, align 8
@restore_selected_frame = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Unable to restore previously selected frame:\0A\00", align 1
@RETURN_MASK_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @restore_inferior_status(%struct.inferior_status* %0) #0 {
  %2 = alloca %struct.inferior_status*, align 8
  store %struct.inferior_status* %0, %struct.inferior_status** %2, align 8
  %3 = load %struct.inferior_status*, %struct.inferior_status** %2, align 8
  %4 = getelementptr inbounds %struct.inferior_status, %struct.inferior_status* %3, i32 0, i32 18
  %5 = load i32, i32* %4, align 8
  store i32 %5, i32* @stop_signal, align 4
  %6 = load %struct.inferior_status*, %struct.inferior_status** %2, align 8
  %7 = getelementptr inbounds %struct.inferior_status, %struct.inferior_status* %6, i32 0, i32 17
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* @stop_pc, align 4
  %9 = load %struct.inferior_status*, %struct.inferior_status** %2, align 8
  %10 = getelementptr inbounds %struct.inferior_status, %struct.inferior_status* %9, i32 0, i32 16
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* @stop_step, align 4
  %12 = load %struct.inferior_status*, %struct.inferior_status** %2, align 8
  %13 = getelementptr inbounds %struct.inferior_status, %struct.inferior_status* %12, i32 0, i32 15
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* @stop_stack_dummy, align 4
  %15 = load %struct.inferior_status*, %struct.inferior_status** %2, align 8
  %16 = getelementptr inbounds %struct.inferior_status, %struct.inferior_status* %15, i32 0, i32 14
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* @stopped_by_random_signal, align 4
  %18 = load %struct.inferior_status*, %struct.inferior_status** %2, align 8
  %19 = getelementptr inbounds %struct.inferior_status, %struct.inferior_status* %18, i32 0, i32 13
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* @trap_expected, align 4
  %21 = load %struct.inferior_status*, %struct.inferior_status** %2, align 8
  %22 = getelementptr inbounds %struct.inferior_status, %struct.inferior_status* %21, i32 0, i32 12
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* @step_range_start, align 4
  %24 = load %struct.inferior_status*, %struct.inferior_status** %2, align 8
  %25 = getelementptr inbounds %struct.inferior_status, %struct.inferior_status* %24, i32 0, i32 11
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* @step_range_end, align 4
  %27 = load %struct.inferior_status*, %struct.inferior_status** %2, align 8
  %28 = getelementptr inbounds %struct.inferior_status, %struct.inferior_status* %27, i32 0, i32 10
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* @step_frame_id, align 4
  %30 = load %struct.inferior_status*, %struct.inferior_status** %2, align 8
  %31 = getelementptr inbounds %struct.inferior_status, %struct.inferior_status* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* @step_over_calls, align 4
  %33 = load %struct.inferior_status*, %struct.inferior_status** %2, align 8
  %34 = getelementptr inbounds %struct.inferior_status, %struct.inferior_status* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* @stop_after_trap, align 4
  %36 = load %struct.inferior_status*, %struct.inferior_status** %2, align 8
  %37 = getelementptr inbounds %struct.inferior_status, %struct.inferior_status* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* @stop_soon, align 4
  %39 = call i32 @bpstat_clear(i32* @stop_bpstat)
  %40 = load %struct.inferior_status*, %struct.inferior_status** %2, align 8
  %41 = getelementptr inbounds %struct.inferior_status, %struct.inferior_status* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* @stop_bpstat, align 4
  %43 = load %struct.inferior_status*, %struct.inferior_status** %2, align 8
  %44 = getelementptr inbounds %struct.inferior_status, %struct.inferior_status* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* @breakpoint_proceeded, align 4
  %46 = load %struct.inferior_status*, %struct.inferior_status** %2, align 8
  %47 = getelementptr inbounds %struct.inferior_status, %struct.inferior_status* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* @proceed_to_finish, align 4
  %49 = load i32, i32* @stop_registers, align 4
  %50 = call i32 @regcache_xfree(i32 %49)
  %51 = load %struct.inferior_status*, %struct.inferior_status** %2, align 8
  %52 = getelementptr inbounds %struct.inferior_status, %struct.inferior_status* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* @stop_registers, align 4
  %54 = load i64, i64* @target_has_execution, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %1
  %57 = load i32, i32* @current_regcache, align 4
  %58 = load %struct.inferior_status*, %struct.inferior_status** %2, align 8
  %59 = getelementptr inbounds %struct.inferior_status, %struct.inferior_status* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @regcache_cpy(i32 %57, i32 %60)
  br label %62

62:                                               ; preds = %56, %1
  %63 = load %struct.inferior_status*, %struct.inferior_status** %2, align 8
  %64 = getelementptr inbounds %struct.inferior_status, %struct.inferior_status* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @regcache_xfree(i32 %65)
  %67 = load i64, i64* @target_has_stack, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %62
  %70 = load %struct.inferior_status*, %struct.inferior_status** %2, align 8
  %71 = getelementptr inbounds %struct.inferior_status, %struct.inferior_status* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %69
  %75 = load i32, i32* @restore_selected_frame, align 4
  %76 = load %struct.inferior_status*, %struct.inferior_status** %2, align 8
  %77 = getelementptr inbounds %struct.inferior_status, %struct.inferior_status* %76, i32 0, i32 0
  %78 = load i32, i32* @RETURN_MASK_ERROR, align 4
  %79 = call i64 @catch_errors(i32 %75, i32* %77, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = call i32 (...) @get_current_frame()
  %83 = call i32 @select_frame(i32 %82)
  br label %84

84:                                               ; preds = %81, %74
  br label %85

85:                                               ; preds = %84, %69, %62
  %86 = load %struct.inferior_status*, %struct.inferior_status** %2, align 8
  %87 = call i32 @xfree(%struct.inferior_status* %86)
  ret void
}

declare dso_local i32 @bpstat_clear(i32*) #1

declare dso_local i32 @regcache_xfree(i32) #1

declare dso_local i32 @regcache_cpy(i32, i32) #1

declare dso_local i64 @catch_errors(i32, i32*, i8*, i32) #1

declare dso_local i32 @select_frame(i32) #1

declare dso_local i32 @get_current_frame(...) #1

declare dso_local i32 @xfree(%struct.inferior_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
