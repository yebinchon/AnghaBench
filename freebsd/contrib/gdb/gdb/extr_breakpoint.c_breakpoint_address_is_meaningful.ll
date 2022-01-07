; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_breakpoint_address_is_meaningful.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_breakpoint_address_is_meaningful.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.breakpoint = type { i32 }

@bp_watchpoint = common dso_local global i32 0, align 4
@bp_hardware_watchpoint = common dso_local global i32 0, align 4
@bp_read_watchpoint = common dso_local global i32 0, align 4
@bp_access_watchpoint = common dso_local global i32 0, align 4
@bp_catch_exec = common dso_local global i32 0, align 4
@bp_longjmp_resume = common dso_local global i32 0, align 4
@bp_catch_fork = common dso_local global i32 0, align 4
@bp_catch_vfork = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.breakpoint*)* @breakpoint_address_is_meaningful to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @breakpoint_address_is_meaningful(%struct.breakpoint* %0) #0 {
  %2 = alloca %struct.breakpoint*, align 8
  %3 = alloca i32, align 4
  store %struct.breakpoint* %0, %struct.breakpoint** %2, align 8
  %4 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %5 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @bp_watchpoint, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %38

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @bp_hardware_watchpoint, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @bp_read_watchpoint, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @bp_access_watchpoint, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @bp_catch_exec, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @bp_longjmp_resume, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @bp_catch_fork, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @bp_catch_vfork, align 4
  %37 = icmp ne i32 %35, %36
  br label %38

38:                                               ; preds = %34, %30, %26, %22, %18, %14, %10, %1
  %39 = phi i1 [ false, %30 ], [ false, %26 ], [ false, %22 ], [ false, %18 ], [ false, %14 ], [ false, %10 ], [ false, %1 ], [ %37, %34 ]
  %40 = zext i1 %39 to i32
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
