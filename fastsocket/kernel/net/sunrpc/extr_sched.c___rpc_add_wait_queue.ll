; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_sched.c___rpc_add_wait_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_sched.c___rpc_add_wait_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_wait_queue = type { i32, i32* }
%struct.rpc_task = type { i32, %struct.rpc_wait_queue*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"RPC: %5u added to queue %p \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_wait_queue*, %struct.rpc_task*, i8)* @__rpc_add_wait_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rpc_add_wait_queue(%struct.rpc_wait_queue* %0, %struct.rpc_task* %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.rpc_wait_queue*, align 8
  %5 = alloca %struct.rpc_task*, align 8
  %6 = alloca i8, align 1
  store %struct.rpc_wait_queue* %0, %struct.rpc_wait_queue** %4, align 8
  store %struct.rpc_task* %1, %struct.rpc_task** %5, align 8
  store i8 %2, i8* %6, align 1
  %7 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %8 = call i32 @RPC_IS_QUEUED(%struct.rpc_task* %7)
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %4, align 8
  %11 = call i64 @RPC_IS_PRIORITY(%struct.rpc_wait_queue* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %4, align 8
  %15 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %16 = load i8, i8* %6, align 1
  %17 = call i32 @__rpc_add_wait_queue_priority(%struct.rpc_wait_queue* %14, %struct.rpc_task* %15, i8 zeroext %16)
  br label %43

18:                                               ; preds = %3
  %19 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %20 = call i64 @RPC_IS_SWAPPER(%struct.rpc_task* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %24 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %4, align 8
  %28 = getelementptr inbounds %struct.rpc_wait_queue, %struct.rpc_wait_queue* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = call i32 @list_add(i32* %26, i32* %30)
  br label %42

32:                                               ; preds = %18
  %33 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %34 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %4, align 8
  %38 = getelementptr inbounds %struct.rpc_wait_queue, %struct.rpc_wait_queue* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = call i32 @list_add_tail(i32* %36, i32* %40)
  br label %42

42:                                               ; preds = %32, %22
  br label %43

43:                                               ; preds = %42, %13
  %44 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %4, align 8
  %45 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %46 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %45, i32 0, i32 1
  store %struct.rpc_wait_queue* %44, %struct.rpc_wait_queue** %46, align 8
  %47 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %4, align 8
  %48 = getelementptr inbounds %struct.rpc_wait_queue, %struct.rpc_wait_queue* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = call i32 (...) @smp_wmb()
  %52 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %53 = call i32 @rpc_set_queued(%struct.rpc_task* %52)
  %54 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %55 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %4, align 8
  %58 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %4, align 8
  %59 = call i32 @rpc_qname(%struct.rpc_wait_queue* %58)
  %60 = call i32 @dprintk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %56, %struct.rpc_wait_queue* %57, i32 %59)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @RPC_IS_QUEUED(%struct.rpc_task*) #1

declare dso_local i64 @RPC_IS_PRIORITY(%struct.rpc_wait_queue*) #1

declare dso_local i32 @__rpc_add_wait_queue_priority(%struct.rpc_wait_queue*, %struct.rpc_task*, i8 zeroext) #1

declare dso_local i64 @RPC_IS_SWAPPER(%struct.rpc_task*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @rpc_set_queued(%struct.rpc_task*) #1

declare dso_local i32 @dprintk(i8*, i32, %struct.rpc_wait_queue*, i32) #1

declare dso_local i32 @rpc_qname(%struct.rpc_wait_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
