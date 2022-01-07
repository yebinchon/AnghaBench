; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_proceed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_proceed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@step_start_function = common dso_local global i32 0, align 4
@stop_after_trap = common dso_local global i32 0, align 4
@stop_pc = common dso_local global i64 0, align 8
@trap_expected = common dso_local global i32 0, align 4
@breakpoints_inserted = common dso_local global i32 0, align 4
@TARGET_SIGNAL_DEFAULT = common dso_local global i32 0, align 4
@stop_signal = common dso_local global i64 0, align 8
@signal_program = common dso_local global i32* null, align 8
@TARGET_SIGNAL_0 = common dso_local global i64 0, align 8
@gdb_stdout = common dso_local global i32 0, align 4
@prev_pc = common dso_local global i64 0, align 8
@event_loop_p = common dso_local global i32 0, align 4
@STEP_SKIPS_DELAY_P = common dso_local global i64 0, align 8
@trap_expected_after_continue = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proceed(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = call i64 (...) @read_pc()
  %12 = call i32 @find_pc_function(i64 %11)
  store i32 %12, i32* @step_start_function, align 4
  br label %13

13:                                               ; preds = %10, %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 1, i32* @stop_after_trap, align 4
  br label %17

17:                                               ; preds = %16, %13
  %18 = load i64, i64* %4, align 8
  %19 = icmp eq i64 %18, -1
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = call i64 (...) @read_pc()
  %22 = load i64, i64* @stop_pc, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = call i64 (...) @read_pc()
  %26 = call i64 @breakpoint_here_p(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 1, i32* %7, align 4
  br label %29

29:                                               ; preds = %28, %24, %20
  br label %33

30:                                               ; preds = %17
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @write_pc(i64 %31)
  br label %33

33:                                               ; preds = %30, %29
  %34 = call i64 (...) @prepare_to_proceed()
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = call i64 (...) @read_pc()
  %38 = call i64 @breakpoint_here_p(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 1, i32* %7, align 4
  br label %41

41:                                               ; preds = %40, %36, %33
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 1, i32* @trap_expected, align 4
  br label %47

45:                                               ; preds = %41
  %46 = call i32 (...) @insert_breakpoints()
  store i32 1, i32* @breakpoints_inserted, align 4
  br label %47

47:                                               ; preds = %45, %44
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @TARGET_SIGNAL_DEFAULT, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* %5, align 4
  %53 = zext i32 %52 to i64
  store i64 %53, i64* @stop_signal, align 8
  br label %63

54:                                               ; preds = %47
  %55 = load i32*, i32** @signal_program, align 8
  %56 = load i64, i64* @stop_signal, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %54
  %61 = load i64, i64* @TARGET_SIGNAL_0, align 8
  store i64 %61, i64* @stop_signal, align 8
  br label %62

62:                                               ; preds = %60, %54
  br label %63

63:                                               ; preds = %62, %51
  %64 = call i32 (...) @annotate_starting()
  %65 = load i32, i32* @gdb_stdout, align 4
  %66 = call i32 @gdb_flush(i32 %65)
  %67 = call i64 (...) @read_pc()
  store i64 %67, i64* @prev_pc, align 8
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %63
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = call i64 (...) @bpstat_should_step()
  %75 = icmp ne i64 %74, 0
  br label %76

76:                                               ; preds = %73, %70, %63
  %77 = phi i1 [ true, %70 ], [ true, %63 ], [ %75, %73 ]
  %78 = zext i1 %77 to i32
  %79 = load i64, i64* @stop_signal, align 8
  %80 = call i32 @resume(i32 %78, i64 %79)
  %81 = load i32, i32* @event_loop_p, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = call i32 (...) @target_can_async_p()
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83, %76
  %87 = call i32 (...) @wait_for_inferior()
  %88 = call i32 (...) @normal_stop()
  br label %89

89:                                               ; preds = %86, %83
  ret void
}

declare dso_local i32 @find_pc_function(i64) #1

declare dso_local i64 @read_pc(...) #1

declare dso_local i64 @breakpoint_here_p(i64) #1

declare dso_local i32 @write_pc(i64) #1

declare dso_local i64 @prepare_to_proceed(...) #1

declare dso_local i32 @insert_breakpoints(...) #1

declare dso_local i32 @annotate_starting(...) #1

declare dso_local i32 @gdb_flush(i32) #1

declare dso_local i32 @resume(i32, i64) #1

declare dso_local i64 @bpstat_should_step(...) #1

declare dso_local i32 @target_can_async_p(...) #1

declare dso_local i32 @wait_for_inferior(...) #1

declare dso_local i32 @normal_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
