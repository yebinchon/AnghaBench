; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgcleanup.c_rest_of_handle_jump2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgcleanup.c_rest_of_handle_jump2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flag_guess_branch_prob = common dso_local global i64 0, align 8
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@optimize = common dso_local global i64 0, align 8
@CLEANUP_EXPENSIVE = common dso_local global i32 0, align 4
@flag_thread_jumps = common dso_local global i64 0, align 8
@CLEANUP_THREADING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @rest_of_handle_jump2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rest_of_handle_jump2() #0 {
  %1 = load i64, i64* @flag_guess_branch_prob, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = call i32 (...) @expected_value_to_br_prob()
  br label %5

5:                                                ; preds = %3, %0
  %6 = call i32 (...) @get_insns()
  %7 = call i32 (...) @max_reg_num()
  %8 = call i32 @delete_trivially_dead_insns(i32 %6, i32 %7)
  %9 = call i32 (...) @get_insns()
  %10 = call i32 (...) @max_reg_num()
  %11 = call i32 @reg_scan(i32 %9, i32 %10)
  %12 = load i64, i64* @dump_file, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %5
  %15 = load i64, i64* @dump_file, align 8
  %16 = load i32, i32* @dump_flags, align 4
  %17 = call i32 @dump_flow_info(i64 %15, i32 %16)
  br label %18

18:                                               ; preds = %14, %5
  %19 = load i64, i64* @optimize, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @CLEANUP_EXPENSIVE, align 4
  br label %24

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i32 [ %22, %21 ], [ 0, %23 ]
  %26 = load i64, i64* @flag_thread_jumps, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @CLEANUP_THREADING, align 4
  br label %31

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i32 [ %29, %28 ], [ 0, %30 ]
  %33 = or i32 %25, %32
  %34 = call i32 @cleanup_cfg(i32 %33)
  %35 = call i32 (...) @purge_line_number_notes()
  %36 = load i64, i64* @optimize, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @CLEANUP_EXPENSIVE, align 4
  %40 = call i32 @cleanup_cfg(i32 %39)
  br label %41

41:                                               ; preds = %38, %31
  %42 = call i32 (...) @renumber_insns()
  ret i32 0
}

declare dso_local i32 @expected_value_to_br_prob(...) #1

declare dso_local i32 @delete_trivially_dead_insns(i32, i32) #1

declare dso_local i32 @get_insns(...) #1

declare dso_local i32 @max_reg_num(...) #1

declare dso_local i32 @reg_scan(i32, i32) #1

declare dso_local i32 @dump_flow_info(i64, i32) #1

declare dso_local i32 @cleanup_cfg(i32) #1

declare dso_local i32 @purge_line_number_notes(...) #1

declare dso_local i32 @renumber_insns(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
