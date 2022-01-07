; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_sched.c_rpc_make_runnable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_sched.c_rpc_make_runnable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@rpc_async_schedule = common dso_local global i32 0, align 4
@rpciod_workqueue = common dso_local global i32 0, align 4
@RPC_TASK_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*)* @rpc_make_runnable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpc_make_runnable(%struct.rpc_task* %0) #0 {
  %2 = alloca %struct.rpc_task*, align 8
  %3 = alloca i32, align 4
  store %struct.rpc_task* %0, %struct.rpc_task** %2, align 8
  %4 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %5 = call i32 @rpc_test_and_set_running(%struct.rpc_task* %4)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  store i32 %8, i32* %3, align 4
  %9 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %10 = call i32 @rpc_clear_queued(%struct.rpc_task* %9)
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %34

14:                                               ; preds = %1
  %15 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %16 = call i64 @RPC_IS_ASYNC(%struct.rpc_task* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %20 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* @rpc_async_schedule, align 4
  %23 = call i32 @INIT_WORK(i32* %21, i32 %22)
  %24 = load i32, i32* @rpciod_workqueue, align 4
  %25 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %26 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @queue_work(i32 %24, i32* %27)
  br label %34

29:                                               ; preds = %14
  %30 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %31 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %30, i32 0, i32 0
  %32 = load i32, i32* @RPC_TASK_QUEUED, align 4
  %33 = call i32 @wake_up_bit(i32* %31, i32 %32)
  br label %34

34:                                               ; preds = %13, %29, %18
  ret void
}

declare dso_local i32 @rpc_test_and_set_running(%struct.rpc_task*) #1

declare dso_local i32 @rpc_clear_queued(%struct.rpc_task*) #1

declare dso_local i64 @RPC_IS_ASYNC(%struct.rpc_task*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @wake_up_bit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
