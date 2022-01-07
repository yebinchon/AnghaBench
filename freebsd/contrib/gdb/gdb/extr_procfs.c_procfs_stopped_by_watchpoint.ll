; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_procfs.c_procfs_stopped_by_watchpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_procfs.c_procfs_stopped_by_watchpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inferior_ptid = common dso_local global i32 0, align 4
@PR_STOPPED = common dso_local global i32 0, align 4
@PR_ISTOP = common dso_local global i32 0, align 4
@PR_FAULTED = common dso_local global i64 0, align 8
@FLTKWATCH = common dso_local global i64 0, align 8
@FLTWATCH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @procfs_stopped_by_watchpoint(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @PIDGET(i32 %5)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @inferior_ptid, align 4
  %10 = call i32 @PIDGET(i32 %9)
  br label %14

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @PIDGET(i32 %12)
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi i32 [ %10, %8 ], [ %13, %11 ]
  %16 = call i32* @find_procinfo_or_die(i32 %15, i32 0)
  store i32* %16, i32** %4, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %36

20:                                               ; preds = %14
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @proc_flags(i32* %21)
  %23 = load i32, i32* @PR_STOPPED, align 4
  %24 = load i32, i32* @PR_ISTOP, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %20
  %29 = load i32*, i32** %4, align 8
  %30 = call i64 @proc_why(i32* %29)
  %31 = load i64, i64* @PR_FAULTED, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33, %28
  br label %35

35:                                               ; preds = %34, %20
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %19
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32* @find_procinfo_or_die(i32, i32) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @proc_flags(i32*) #1

declare dso_local i64 @proc_why(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
