; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-output.c_rxrpc_send_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-output.c_rxrpc_send_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i64, i32, i32, i32, i32, i32, i32 }

@RXRPC_CALL_COMPLETE = common dso_local global i64 0, align 8
@RXRPC_CALL_LOCALLY_ABORTED = common dso_local global i64 0, align 8
@RXRPC_CALL_ABORT = common dso_local global i32 0, align 4
@RXRPC_CALL_RESEND_TIMER = common dso_local global i32 0, align 4
@RXRPC_CALL_ACK = common dso_local global i32 0, align 4
@RXRPC_CALL_RUN_RTIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_call*, i32)* @rxrpc_send_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_send_abort(%struct.rxrpc_call* %0, i32 %1) #0 {
  %3 = alloca %struct.rxrpc_call*, align 8
  %4 = alloca i32, align 4
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %6 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %5, i32 0, i32 1
  %7 = call i32 @write_lock_bh(i32* %6)
  %8 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %9 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @RXRPC_CALL_COMPLETE, align 8
  %12 = icmp sle i64 %10, %11
  br i1 %12, label %13, label %44

13:                                               ; preds = %2
  %14 = load i64, i64* @RXRPC_CALL_LOCALLY_ABORTED, align 8
  %15 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %16 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %19 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @RXRPC_CALL_ABORT, align 4
  %21 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %22 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %21, i32 0, i32 3
  %23 = call i32 @set_bit(i32 %20, i32* %22)
  %24 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %25 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %24, i32 0, i32 5
  %26 = call i32 @del_timer_sync(i32* %25)
  %27 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %28 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %27, i32 0, i32 4
  %29 = call i32 @del_timer_sync(i32* %28)
  %30 = load i32, i32* @RXRPC_CALL_RESEND_TIMER, align 4
  %31 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %32 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %31, i32 0, i32 3
  %33 = call i32 @clear_bit(i32 %30, i32* %32)
  %34 = load i32, i32* @RXRPC_CALL_ACK, align 4
  %35 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %36 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %35, i32 0, i32 3
  %37 = call i32 @clear_bit(i32 %34, i32* %36)
  %38 = load i32, i32* @RXRPC_CALL_RUN_RTIMER, align 4
  %39 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %40 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %39, i32 0, i32 2
  %41 = call i32 @clear_bit(i32 %38, i32* %40)
  %42 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %43 = call i32 @rxrpc_queue_call(%struct.rxrpc_call* %42)
  br label %44

44:                                               ; preds = %13, %2
  %45 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %46 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %45, i32 0, i32 1
  %47 = call i32 @write_unlock_bh(i32* %46)
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @rxrpc_queue_call(%struct.rxrpc_call*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
