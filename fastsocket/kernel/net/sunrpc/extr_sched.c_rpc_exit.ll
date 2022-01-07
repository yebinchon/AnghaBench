; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_sched.c_rpc_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_sched.c_rpc_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32, i32, i32 }

@rpc_exit_task = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpc_exit(%struct.rpc_task* %0, i32 %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca i32, align 4
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %7 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @rpc_exit_task, align 4
  %9 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %10 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 4
  %11 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %12 = call i64 @RPC_IS_QUEUED(%struct.rpc_task* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %16 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %19 = call i32 @rpc_wake_up_queued_task(i32 %17, %struct.rpc_task* %18)
  br label %20

20:                                               ; preds = %14, %2
  ret void
}

declare dso_local i64 @RPC_IS_QUEUED(%struct.rpc_task*) #1

declare dso_local i32 @rpc_wake_up_queued_task(i32, %struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
