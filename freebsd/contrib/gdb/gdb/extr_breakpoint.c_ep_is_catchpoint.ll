; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_ep_is_catchpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_ep_is_catchpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.breakpoint = type { i64 }

@bp_catch_load = common dso_local global i64 0, align 8
@bp_catch_unload = common dso_local global i64 0, align 8
@bp_catch_fork = common dso_local global i64 0, align 8
@bp_catch_vfork = common dso_local global i64 0, align 8
@bp_catch_exec = common dso_local global i64 0, align 8
@bp_catch_catch = common dso_local global i64 0, align 8
@bp_catch_throw = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ep_is_catchpoint(%struct.breakpoint* %0) #0 {
  %2 = alloca %struct.breakpoint*, align 8
  store %struct.breakpoint* %0, %struct.breakpoint** %2, align 8
  %3 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %4 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @bp_catch_load, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %44, label %8

8:                                                ; preds = %1
  %9 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %10 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @bp_catch_unload, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %44, label %14

14:                                               ; preds = %8
  %15 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %16 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @bp_catch_fork, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %44, label %20

20:                                               ; preds = %14
  %21 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %22 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @bp_catch_vfork, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %44, label %26

26:                                               ; preds = %20
  %27 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %28 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @bp_catch_exec, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %44, label %32

32:                                               ; preds = %26
  %33 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %34 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @bp_catch_catch, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %40 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @bp_catch_throw, align 8
  %43 = icmp eq i64 %41, %42
  br label %44

44:                                               ; preds = %38, %32, %26, %20, %14, %8, %1
  %45 = phi i1 [ true, %32 ], [ true, %26 ], [ true, %20 ], [ true, %14 ], [ true, %8 ], [ true, %1 ], [ %43, %38 ]
  %46 = zext i1 %45 to i32
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
