; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_sched.c_rpc_wake_up_first.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_sched.c_rpc_wake_up_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.rpc_wait_queue = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"RPC:       wake_up_first(%p \22%s\22)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpc_task* @rpc_wake_up_first(%struct.rpc_wait_queue* %0, i32 (%struct.rpc_task*, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.rpc_wait_queue*, align 8
  %5 = alloca i32 (%struct.rpc_task*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.rpc_task*, align 8
  store %struct.rpc_wait_queue* %0, %struct.rpc_wait_queue** %4, align 8
  store i32 (%struct.rpc_task*, i8*)* %1, i32 (%struct.rpc_task*, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.rpc_task* null, %struct.rpc_task** %7, align 8
  %8 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %4, align 8
  %9 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %4, align 8
  %10 = call i32 @rpc_qname(%struct.rpc_wait_queue* %9)
  %11 = call i32 @dprintk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.rpc_wait_queue* %8, i32 %10)
  %12 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %4, align 8
  %13 = getelementptr inbounds %struct.rpc_wait_queue, %struct.rpc_wait_queue* %12, i32 0, i32 0
  %14 = call i32 @spin_lock_bh(i32* %13)
  %15 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %4, align 8
  %16 = call %struct.rpc_task* @__rpc_find_next_queued(%struct.rpc_wait_queue* %15)
  store %struct.rpc_task* %16, %struct.rpc_task** %7, align 8
  %17 = load %struct.rpc_task*, %struct.rpc_task** %7, align 8
  %18 = icmp ne %struct.rpc_task* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %3
  %20 = load i32 (%struct.rpc_task*, i8*)*, i32 (%struct.rpc_task*, i8*)** %5, align 8
  %21 = load %struct.rpc_task*, %struct.rpc_task** %7, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 %20(%struct.rpc_task* %21, i8* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %4, align 8
  %27 = load %struct.rpc_task*, %struct.rpc_task** %7, align 8
  %28 = call i32 @rpc_wake_up_task_queue_locked(%struct.rpc_wait_queue* %26, %struct.rpc_task* %27)
  br label %30

29:                                               ; preds = %19
  store %struct.rpc_task* null, %struct.rpc_task** %7, align 8
  br label %30

30:                                               ; preds = %29, %25
  br label %31

31:                                               ; preds = %30, %3
  %32 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %4, align 8
  %33 = getelementptr inbounds %struct.rpc_wait_queue, %struct.rpc_wait_queue* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock_bh(i32* %33)
  %35 = load %struct.rpc_task*, %struct.rpc_task** %7, align 8
  ret %struct.rpc_task* %35
}

declare dso_local i32 @dprintk(i8*, %struct.rpc_wait_queue*, i32) #1

declare dso_local i32 @rpc_qname(%struct.rpc_wait_queue*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.rpc_task* @__rpc_find_next_queued(%struct.rpc_wait_queue*) #1

declare dso_local i32 @rpc_wake_up_task_queue_locked(%struct.rpc_wait_queue*, %struct.rpc_task*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
