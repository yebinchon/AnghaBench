; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_sched.c___rpc_disable_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_sched.c___rpc_disable_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_wait_queue = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.rpc_task = type { i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"RPC: %5u disabling timer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_wait_queue*, %struct.rpc_task*)* @__rpc_disable_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rpc_disable_timer(%struct.rpc_wait_queue* %0, %struct.rpc_task* %1) #0 {
  %3 = alloca %struct.rpc_wait_queue*, align 8
  %4 = alloca %struct.rpc_task*, align 8
  store %struct.rpc_wait_queue* %0, %struct.rpc_wait_queue** %3, align 8
  store %struct.rpc_task* %1, %struct.rpc_task** %4, align 8
  %5 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %6 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %32

10:                                               ; preds = %2
  %11 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %12 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dprintk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %16 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %18 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i32 @list_del(i32* %20)
  %22 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %3, align 8
  %23 = getelementptr inbounds %struct.rpc_wait_queue, %struct.rpc_wait_queue* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = call i64 @list_empty(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %10
  %28 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %3, align 8
  %29 = getelementptr inbounds %struct.rpc_wait_queue, %struct.rpc_wait_queue* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = call i32 @del_timer(i32* %30)
  br label %32

32:                                               ; preds = %9, %27, %10
  ret void
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
