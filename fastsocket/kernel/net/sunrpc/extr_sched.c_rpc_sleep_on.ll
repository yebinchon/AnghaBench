; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_sched.c_rpc_sleep_on.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_sched.c_rpc_sleep_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_wait_queue = type { i32 }
%struct.rpc_task = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpc_sleep_on(%struct.rpc_wait_queue* %0, %struct.rpc_task* %1, i32 %2) #0 {
  %4 = alloca %struct.rpc_wait_queue*, align 8
  %5 = alloca %struct.rpc_task*, align 8
  %6 = alloca i32, align 4
  store %struct.rpc_wait_queue* %0, %struct.rpc_wait_queue** %4, align 8
  store %struct.rpc_task* %1, %struct.rpc_task** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %8 = call i32 @RPC_IS_ACTIVATED(%struct.rpc_task* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %4, align 8
  %14 = getelementptr inbounds %struct.rpc_wait_queue, %struct.rpc_wait_queue* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %4, align 8
  %17 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %20 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @__rpc_sleep_on_priority(%struct.rpc_wait_queue* %16, %struct.rpc_task* %17, i32 %18, i32 %21)
  %23 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %4, align 8
  %24 = getelementptr inbounds %struct.rpc_wait_queue, %struct.rpc_wait_queue* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock_bh(i32* %24)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @RPC_IS_ACTIVATED(%struct.rpc_task*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__rpc_sleep_on_priority(%struct.rpc_wait_queue*, %struct.rpc_task*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
