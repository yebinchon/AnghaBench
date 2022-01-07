; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_rxrpc.c_afs_wait_for_call_to_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_rxrpc.c_afs_wait_for_call_to_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_call = type { i32, i64, %struct.TYPE_2__*, i32*, i32, i32 }
%struct.TYPE_2__ = type { {}* }
%struct.sk_buff = type { i32 }

@myself = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@AFS_CALL_COMPLETE = common dso_local global i64 0, align 8
@EINTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"call incomplete\00", align 1
@RX_CALL_DEAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"call complete\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_call*)* @afs_wait_for_call_to_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_wait_for_call_to_complete(%struct.afs_call* %0) #0 {
  %2 = alloca %struct.afs_call*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  store %struct.afs_call* %0, %struct.afs_call** %2, align 8
  %5 = load i32, i32* @myself, align 4
  %6 = load i32, i32* @current, align 4
  %7 = call i32 @DECLARE_WAITQUEUE(i32 %5, i32 %6)
  %8 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.afs_call*, %struct.afs_call** %2, align 8
  %10 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %9, i32 0, i32 5
  %11 = call i32 @add_wait_queue(i32* %10, i32* @myself)
  br label %12

12:                                               ; preds = %41, %19, %1
  %13 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %14 = call i32 @set_current_state(i32 %13)
  %15 = load %struct.afs_call*, %struct.afs_call** %2, align 8
  %16 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %15, i32 0, i32 4
  %17 = call i32 @skb_queue_empty(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %12
  %20 = load i32, i32* @TASK_RUNNING, align 4
  %21 = call i32 @__set_current_state(i32 %20)
  %22 = load %struct.afs_call*, %struct.afs_call** %2, align 8
  %23 = call i32 @afs_deliver_to_call(%struct.afs_call* %22)
  br label %12

24:                                               ; preds = %12
  %25 = load %struct.afs_call*, %struct.afs_call** %2, align 8
  %26 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %4, align 4
  %28 = load %struct.afs_call*, %struct.afs_call** %2, align 8
  %29 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AFS_CALL_COMPLETE, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %43

34:                                               ; preds = %24
  %35 = load i32, i32* @EINTR, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* @current, align 4
  %38 = call i64 @signal_pending(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %43

41:                                               ; preds = %34
  %42 = call i32 (...) @schedule()
  br label %12

43:                                               ; preds = %40, %33
  %44 = load %struct.afs_call*, %struct.afs_call** %2, align 8
  %45 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %44, i32 0, i32 5
  %46 = call i32 @remove_wait_queue(i32* %45, i32* @myself)
  %47 = load i32, i32* @TASK_RUNNING, align 4
  %48 = call i32 @__set_current_state(i32 %47)
  %49 = load %struct.afs_call*, %struct.afs_call** %2, align 8
  %50 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @AFS_CALL_COMPLETE, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %43
  %55 = call i32 @_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.afs_call*, %struct.afs_call** %2, align 8
  %57 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* @RX_CALL_DEAD, align 4
  %60 = call i32 @rxrpc_kernel_abort_call(i32* %58, i32 %59)
  br label %61

61:                                               ; preds = %66, %54
  %62 = load %struct.afs_call*, %struct.afs_call** %2, align 8
  %63 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %62, i32 0, i32 4
  %64 = call %struct.sk_buff* @skb_dequeue(i32* %63)
  store %struct.sk_buff* %64, %struct.sk_buff** %3, align 8
  %65 = icmp ne %struct.sk_buff* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %68 = call i32 @afs_free_skb(%struct.sk_buff* %67)
  br label %61

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69, %43
  %71 = call i32 @_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %72 = load %struct.afs_call*, %struct.afs_call** %2, align 8
  %73 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @rxrpc_kernel_end_call(i32* %74)
  %76 = load %struct.afs_call*, %struct.afs_call** %2, align 8
  %77 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %76, i32 0, i32 3
  store i32* null, i32** %77, align 8
  %78 = load %struct.afs_call*, %struct.afs_call** %2, align 8
  %79 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %78, i32 0, i32 2
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = bitcast {}** %81 to i32 (%struct.afs_call*)**
  %83 = load i32 (%struct.afs_call*)*, i32 (%struct.afs_call*)** %82, align 8
  %84 = load %struct.afs_call*, %struct.afs_call** %2, align 8
  %85 = call i32 %83(%struct.afs_call* %84)
  %86 = load %struct.afs_call*, %struct.afs_call** %2, align 8
  %87 = call i32 @afs_free_call(%struct.afs_call* %86)
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @_enter(i8*) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @afs_deliver_to_call(%struct.afs_call*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @_debug(i8*) #1

declare dso_local i32 @rxrpc_kernel_abort_call(i32*, i32) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @afs_free_skb(%struct.sk_buff*) #1

declare dso_local i32 @rxrpc_kernel_end_call(i32*) #1

declare dso_local i32 @afs_free_call(%struct.afs_call*) #1

declare dso_local i32 @_leave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
