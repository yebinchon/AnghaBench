; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_flow.c_rest_of_handle_flow2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_flow.c_rest_of_handle_flow2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optimize = common dso_local global i64 0, align 8
@flag_branch_target_load_optimize = common dso_local global i64 0, align 8
@epilogue_completed = common dso_local global i32 0, align 4
@CLEANUP_EXPENSIVE = common dso_local global i32 0, align 4
@flow2_completed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @rest_of_handle_flow2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rest_of_handle_flow2() #0 {
  %1 = load i64, i64* @optimize, align 8
  %2 = icmp sgt i64 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = call i32 @split_all_insns(i32 0)
  br label %5

5:                                                ; preds = %3, %0
  %6 = load i64, i64* @flag_branch_target_load_optimize, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load i32, i32* @epilogue_completed, align 4
  %10 = call i32 @branch_target_load_optimize(i32 %9)
  br label %11

11:                                               ; preds = %8, %5
  %12 = load i64, i64* @optimize, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* @CLEANUP_EXPENSIVE, align 4
  %16 = call i32 @cleanup_cfg(i32 %15)
  br label %17

17:                                               ; preds = %14, %11
  %18 = call i32 (...) @get_insns()
  %19 = call i32 @thread_prologue_and_epilogue_insns(i32 %18)
  store i32 1, i32* @epilogue_completed, align 4
  store i32 1, i32* @flow2_completed, align 4
  ret i32 0
}

declare dso_local i32 @split_all_insns(i32) #1

declare dso_local i32 @branch_target_load_optimize(i32) #1

declare dso_local i32 @cleanup_cfg(i32) #1

declare dso_local i32 @thread_prologue_and_epilogue_insns(i32) #1

declare dso_local i32 @get_insns(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
