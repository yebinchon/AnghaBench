; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_sched.c_rpc_complete_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_sched.c_rpc_complete_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.wait_bit_key = type { i32 }

@RPC_TASK_ACTIVE = common dso_local global i32 0, align 4
@TASK_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_task*)* @rpc_complete_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpc_complete_task(%struct.rpc_task* %0) #0 {
  %2 = alloca %struct.rpc_task*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.wait_bit_key, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.rpc_task* %0, %struct.rpc_task** %2, align 8
  %8 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %9 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %8, i32 0, i32 1
  %10 = bitcast i32* %9 to i8*
  store i8* %10, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = load i32, i32* @RPC_TASK_ACTIVE, align 4
  %13 = call %struct.TYPE_5__* @bit_waitqueue(i8* %11, i32 %12)
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %4, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* @RPC_TASK_ACTIVE, align 4
  %16 = call i32 @__WAIT_BIT_KEY_INITIALIZER(i8* %14, i32 %15)
  %17 = getelementptr inbounds %struct.wait_bit_key, %struct.wait_bit_key* %5, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %19 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %22 = call i32 @trace_rpc_task_complete(i32 %20, %struct.rpc_task* %21, i32* null)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load i32, i32* @RPC_TASK_ACTIVE, align 4
  %28 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %29 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %28, i32 0, i32 1
  %30 = call i32 @clear_bit(i32 %27, i32* %29)
  %31 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %32 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %31, i32 0, i32 0
  %33 = call i32 @atomic_dec_and_test(i32* %32)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = call i64 @waitqueue_active(%struct.TYPE_5__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = load i32, i32* @TASK_NORMAL, align 4
  %40 = call i32 @__wake_up_locked_key(%struct.TYPE_5__* %38, i32 %39, %struct.wait_bit_key* %5)
  br label %41

41:                                               ; preds = %37, %1
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local %struct.TYPE_5__* @bit_waitqueue(i8*, i32) #1

declare dso_local i32 @__WAIT_BIT_KEY_INITIALIZER(i8*, i32) #1

declare dso_local i32 @trace_rpc_task_complete(i32, %struct.rpc_task*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i64 @waitqueue_active(%struct.TYPE_5__*) #1

declare dso_local i32 @__wake_up_locked_key(%struct.TYPE_5__*, i32, %struct.wait_bit_key*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
