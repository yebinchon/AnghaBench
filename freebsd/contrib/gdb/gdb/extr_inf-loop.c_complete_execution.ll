; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_inf-loop.c_complete_execution.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_inf-loop.c_complete_execution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@target_executing = common dso_local global i64 0, align 8
@sync_execution = common dso_local global i64 0, align 8
@ALL_CLEANUPS = common dso_local global i32 0, align 4
@exec_done_display_p = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"completed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @complete_execution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @complete_execution() #0 {
  store i64 0, i64* @target_executing, align 8
  %1 = call i32 @target_async(i32* null, i32 0)
  %2 = load i64, i64* @sync_execution, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = load i32, i32* @ALL_CLEANUPS, align 4
  %6 = call i32 @do_exec_error_cleanups(i32 %5)
  %7 = call i32 @display_gdb_prompt(i32 0)
  br label %14

8:                                                ; preds = %0
  %9 = load i64, i64* @exec_done_display_p, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %8
  br label %14

14:                                               ; preds = %13, %4
  ret void
}

declare dso_local i32 @target_async(i32*, i32) #1

declare dso_local i32 @do_exec_error_cleanups(i32) #1

declare dso_local i32 @display_gdb_prompt(i32) #1

declare dso_local i32 @printf_unfiltered(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
