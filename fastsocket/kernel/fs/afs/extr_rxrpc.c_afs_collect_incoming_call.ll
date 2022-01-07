; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_rxrpc.c_afs_collect_incoming_call.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_rxrpc.c_afs_collect_incoming_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.work_struct = type { i32 }
%struct.rxrpc_call = type { i32 }
%struct.afs_call = type { %struct.rxrpc_call*, %struct.TYPE_2__*, i32, i32, i32, i32*, i32 }
%struct.sk_buff = type { i32 }

@afs_incoming_calls = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"new call\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@afs_socket = common dso_local global i32 0, align 4
@afs_process_async_call = common dso_local global i32 0, align 4
@afs_async_incoming_call = common dso_local global i32 0, align 4
@afs_RXCMxxxx = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@AFS_CALL_AWAIT_OP_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"CALL %p{%s} [%d]\00", align 1
@afs_outstanding_calls = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @afs_collect_incoming_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @afs_collect_incoming_call(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.rxrpc_call*, align 8
  %4 = alloca %struct.afs_call*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  store %struct.afs_call* null, %struct.afs_call** %4, align 8
  br label %6

6:                                                ; preds = %62, %1
  %7 = call %struct.sk_buff* @skb_dequeue(i32* @afs_incoming_calls)
  store %struct.sk_buff* %7, %struct.sk_buff** %5, align 8
  %8 = icmp ne %struct.sk_buff* %7, null
  br i1 %8, label %9, label %63

9:                                                ; preds = %6
  %10 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call i32 @afs_free_skb(%struct.sk_buff* %11)
  %13 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %14 = icmp ne %struct.afs_call* %13, null
  br i1 %14, label %50, label %15

15:                                               ; preds = %9
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.afs_call* @kzalloc(i32 48, i32 %16)
  store %struct.afs_call* %17, %struct.afs_call** %4, align 8
  %18 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %19 = icmp ne %struct.afs_call* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @afs_socket, align 4
  %22 = call i32 @rxrpc_kernel_reject_call(i32 %21)
  br label %69

23:                                               ; preds = %15
  %24 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %25 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %24, i32 0, i32 6
  %26 = load i32, i32* @afs_process_async_call, align 4
  %27 = call i32 @INIT_WORK(i32* %25, i32 %26)
  %28 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %29 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %28, i32 0, i32 5
  store i32* @afs_async_incoming_call, i32** %29, align 8
  %30 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %31 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %30, i32 0, i32 1
  store %struct.TYPE_2__* @afs_RXCMxxxx, %struct.TYPE_2__** %31, align 8
  %32 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %33 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %32, i32 0, i32 4
  %34 = call i32 @init_waitqueue_head(i32* %33)
  %35 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %36 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %35, i32 0, i32 3
  %37 = call i32 @skb_queue_head_init(i32* %36)
  %38 = load i32, i32* @AFS_CALL_AWAIT_OP_ID, align 4
  %39 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %40 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %42 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %43 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @atomic_read(i32* @afs_outstanding_calls)
  %48 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), %struct.afs_call* %41, i32 %46, i32 %47)
  %49 = call i32 @atomic_inc(i32* @afs_outstanding_calls)
  br label %50

50:                                               ; preds = %23, %9
  %51 = load i32, i32* @afs_socket, align 4
  %52 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %53 = ptrtoint %struct.afs_call* %52 to i64
  %54 = call %struct.rxrpc_call* @rxrpc_kernel_accept_call(i32 %51, i64 %53)
  store %struct.rxrpc_call* %54, %struct.rxrpc_call** %3, align 8
  %55 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %56 = call i32 @IS_ERR(%struct.rxrpc_call* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %50
  %59 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %60 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %61 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %60, i32 0, i32 0
  store %struct.rxrpc_call* %59, %struct.rxrpc_call** %61, align 8
  store %struct.afs_call* null, %struct.afs_call** %4, align 8
  br label %62

62:                                               ; preds = %58, %50
  br label %6

63:                                               ; preds = %6
  %64 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %65 = icmp ne %struct.afs_call* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %68 = call i32 @afs_free_call(%struct.afs_call* %67)
  br label %69

69:                                               ; preds = %20, %66, %63
  ret void
}

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @_debug(i8*, ...) #1

declare dso_local i32 @afs_free_skb(%struct.sk_buff*) #1

declare dso_local %struct.afs_call* @kzalloc(i32, i32) #1

declare dso_local i32 @rxrpc_kernel_reject_call(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.rxrpc_call* @rxrpc_kernel_accept_call(i32, i64) #1

declare dso_local i32 @IS_ERR(%struct.rxrpc_call*) #1

declare dso_local i32 @afs_free_call(%struct.afs_call*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
