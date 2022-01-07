; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_sched.c___rpc_sleep_on_priority.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_sched.c___rpc_sleep_on_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_wait_queue = type { i32 }
%struct.rpc_task = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"RPC: %5u sleep_on(queue \22%s\22 time %lu)\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_wait_queue*, %struct.rpc_task*, i32*, i8)* @__rpc_sleep_on_priority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rpc_sleep_on_priority(%struct.rpc_wait_queue* %0, %struct.rpc_task* %1, i32* %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.rpc_wait_queue*, align 8
  %6 = alloca %struct.rpc_task*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8, align 1
  store %struct.rpc_wait_queue* %0, %struct.rpc_wait_queue** %5, align 8
  store %struct.rpc_task* %1, %struct.rpc_task** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8 %3, i8* %8, align 1
  %9 = load %struct.rpc_task*, %struct.rpc_task** %6, align 8
  %10 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %5, align 8
  %13 = call i32 @rpc_qname(%struct.rpc_wait_queue* %12)
  %14 = load i32, i32* @jiffies, align 4
  %15 = call i32 @dprintk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %13, i32 %14)
  %16 = load %struct.rpc_task*, %struct.rpc_task** %6, align 8
  %17 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.rpc_task*, %struct.rpc_task** %6, align 8
  %20 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %5, align 8
  %21 = call i32 @trace_rpc_task_sleep(i32 %18, %struct.rpc_task* %19, %struct.rpc_wait_queue* %20)
  %22 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %5, align 8
  %23 = load %struct.rpc_task*, %struct.rpc_task** %6, align 8
  %24 = load i8, i8* %8, align 1
  %25 = call i32 @__rpc_add_wait_queue(%struct.rpc_wait_queue* %22, %struct.rpc_task* %23, i8 zeroext %24)
  %26 = load %struct.rpc_task*, %struct.rpc_task** %6, align 8
  %27 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load i32*, i32** %7, align 8
  %33 = load %struct.rpc_task*, %struct.rpc_task** %6, align 8
  %34 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %33, i32 0, i32 0
  store i32* %32, i32** %34, align 8
  %35 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %5, align 8
  %36 = load %struct.rpc_task*, %struct.rpc_task** %6, align 8
  %37 = call i32 @__rpc_add_timer(%struct.rpc_wait_queue* %35, %struct.rpc_task* %36)
  ret void
}

declare dso_local i32 @dprintk(i8*, i32, i32, i32) #1

declare dso_local i32 @rpc_qname(%struct.rpc_wait_queue*) #1

declare dso_local i32 @trace_rpc_task_sleep(i32, %struct.rpc_task*, %struct.rpc_wait_queue*) #1

declare dso_local i32 @__rpc_add_wait_queue(%struct.rpc_wait_queue*, %struct.rpc_task*, i8 zeroext) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @__rpc_add_timer(%struct.rpc_wait_queue*, %struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
