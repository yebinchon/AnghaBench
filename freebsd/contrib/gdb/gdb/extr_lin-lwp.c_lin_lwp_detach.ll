; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_lin_lwp_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_lin_lwp_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i8*, i32)* }

@detach_callback = common dso_local global i32 0, align 4
@num_lwps = common dso_local global i32 0, align 4
@null_ptid = common dso_local global i32 0, align 4
@trap_ptid = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@normal_mask = common dso_local global i32 0, align 4
@blocked_mask = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@child_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @lin_lwp_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lin_lwp_detach(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @detach_callback, align 4
  %6 = call i32 @iterate_over_lwps(i32 %5, i32* null)
  %7 = load i32, i32* @num_lwps, align 4
  %8 = icmp eq i32 %7, 1
  %9 = zext i1 %8 to i32
  %10 = call i32 @gdb_assert(i32 %9)
  %11 = load i32, i32* @null_ptid, align 4
  store i32 %11, i32* @trap_ptid, align 4
  %12 = call i32 (...) @init_lwp_list()
  %13 = load i32, i32* @SIG_SETMASK, align 4
  %14 = call i32 @sigprocmask(i32 %13, i32* @normal_mask, i32* null)
  %15 = call i32 @sigemptyset(i32* @blocked_mask)
  %16 = load i32, i32* @inferior_ptid, align 4
  %17 = call i32 @GET_PID(i32 %16)
  %18 = call i32 @pid_to_ptid(i32 %17)
  store i32 %18, i32* @inferior_ptid, align 4
  %19 = load i32 (i8*, i32)*, i32 (i8*, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @child_ops, i32 0, i32 0), align 8
  %20 = load i8*, i8** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 %19(i8* %20, i32 %21)
  ret void
}

declare dso_local i32 @iterate_over_lwps(i32, i32*) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @init_lwp_list(...) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @pid_to_ptid(i32) #1

declare dso_local i32 @GET_PID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
