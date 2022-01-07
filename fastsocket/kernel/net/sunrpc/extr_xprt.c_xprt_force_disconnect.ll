; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprt.c_xprt_force_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprt.c_xprt_force_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { i32, i32, i32 }

@XPRT_CLOSE_WAIT = common dso_local global i32 0, align 4
@XPRT_LOCKED = common dso_local global i32 0, align 4
@rpciod_workqueue = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xprt_force_disconnect(%struct.rpc_xprt* %0) #0 {
  %2 = alloca %struct.rpc_xprt*, align 8
  store %struct.rpc_xprt* %0, %struct.rpc_xprt** %2, align 8
  %3 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %4 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %3, i32 0, i32 0
  %5 = call i32 @spin_lock_bh(i32* %4)
  %6 = load i32, i32* @XPRT_CLOSE_WAIT, align 4
  %7 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %8 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %7, i32 0, i32 2
  %9 = call i32 @set_bit(i32 %6, i32* %8)
  %10 = load i32, i32* @XPRT_LOCKED, align 4
  %11 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %12 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %11, i32 0, i32 2
  %13 = call i64 @test_and_set_bit(i32 %10, i32* %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load i32, i32* @rpciod_workqueue, align 4
  %17 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %18 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %17, i32 0, i32 1
  %19 = call i32 @queue_work(i32 %16, i32* %18)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %22 = load i32, i32* @EAGAIN, align 4
  %23 = sub nsw i32 0, %22
  %24 = call i32 @xprt_wake_pending_tasks(%struct.rpc_xprt* %21, i32 %23)
  %25 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %26 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock_bh(i32* %26)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @xprt_wake_pending_tasks(%struct.rpc_xprt*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
