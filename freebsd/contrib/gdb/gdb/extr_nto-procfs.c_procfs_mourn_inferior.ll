; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_nto-procfs.c_procfs_mourn_inferior.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_nto-procfs.c_procfs_mourn_inferior.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inferior_ptid = common dso_local global i32 0, align 4
@null_ptid = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4
@ctl_fd = common dso_local global i32 0, align 4
@procfs_ops = common dso_local global i32 0, align 4
@attach_flag = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @procfs_mourn_inferior to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @procfs_mourn_inferior() #0 {
  %1 = load i32, i32* @inferior_ptid, align 4
  %2 = load i32, i32* @null_ptid, align 4
  %3 = call i32 @ptid_equal(i32 %1, i32 %2)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %0
  %6 = call i32 (...) @nto_node()
  %7 = load i32, i32* @inferior_ptid, align 4
  %8 = call i32 @PIDGET(i32 %7)
  %9 = load i32, i32* @SIGKILL, align 4
  %10 = call i32 @SignalKill(i32 %6, i32 %8, i32 0, i32 %9, i32 0, i32 0)
  %11 = load i32, i32* @ctl_fd, align 4
  %12 = call i32 @close(i32 %11)
  br label %13

13:                                               ; preds = %5, %0
  %14 = load i32, i32* @null_ptid, align 4
  store i32 %14, i32* @inferior_ptid, align 4
  %15 = call i32 (...) @init_thread_list()
  %16 = call i32 @unpush_target(i32* @procfs_ops)
  %17 = call i32 (...) @generic_mourn_inferior()
  store i64 0, i64* @attach_flag, align 8
  ret void
}

declare dso_local i32 @ptid_equal(i32, i32) #1

declare dso_local i32 @SignalKill(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nto_node(...) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @init_thread_list(...) #1

declare dso_local i32 @unpush_target(i32*) #1

declare dso_local i32 @generic_mourn_inferior(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
