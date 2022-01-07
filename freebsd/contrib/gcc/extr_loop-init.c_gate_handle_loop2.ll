; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-init.c_gate_handle_loop2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-init.c_gate_handle_loop2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optimize = common dso_local global i64 0, align 8
@flag_move_loop_invariants = common dso_local global i64 0, align 8
@flag_unswitch_loops = common dso_local global i64 0, align 8
@flag_peel_loops = common dso_local global i64 0, align 8
@flag_unroll_loops = common dso_local global i64 0, align 8
@HAVE_doloop_end = common dso_local global i64 0, align 8
@flag_branch_on_count_reg = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @gate_handle_loop2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gate_handle_loop2() #0 {
  %1 = load i64, i64* @optimize, align 8
  %2 = icmp sgt i64 %1, 0
  br i1 %2, label %3, label %17

3:                                                ; preds = %0
  %4 = load i64, i64* @flag_move_loop_invariants, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = load i64, i64* @flag_unswitch_loops, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = load i64, i64* @flag_peel_loops, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load i64, i64* @flag_unroll_loops, align 8
  %14 = icmp ne i64 %13, 0
  br label %15

15:                                               ; preds = %12, %9, %6, %3
  %16 = phi i1 [ true, %9 ], [ true, %6 ], [ true, %3 ], [ %14, %12 ]
  br label %17

17:                                               ; preds = %15, %0
  %18 = phi i1 [ false, %0 ], [ %16, %15 ]
  %19 = zext i1 %18 to i32
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
