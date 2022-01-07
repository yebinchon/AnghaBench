; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-output.c_rxrpc_instant_resend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-output.c_rxrpc_instant_resend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i64, i32, i32, i32, i32 }

@RXRPC_CALL_RUN_RTIMER = common dso_local global i32 0, align 4
@RXRPC_CALL_COMPLETE = common dso_local global i64 0, align 8
@RXRPC_CALL_RESEND_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_call*)* @rxrpc_instant_resend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_instant_resend(%struct.rxrpc_call* %0) #0 {
  %2 = alloca %struct.rxrpc_call*, align 8
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %2, align 8
  %3 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %4 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %3, i32 0, i32 1
  %5 = call i32 @read_lock_bh(i32* %4)
  %6 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %7 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %6, i32 0, i32 4
  %8 = call i64 @try_to_del_timer_sync(i32* %7)
  %9 = icmp sge i64 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %1
  %11 = load i32, i32* @RXRPC_CALL_RUN_RTIMER, align 4
  %12 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %13 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %12, i32 0, i32 3
  %14 = call i32 @clear_bit(i32 %11, i32* %13)
  %15 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %16 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @RXRPC_CALL_COMPLETE, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %10
  %21 = load i32, i32* @RXRPC_CALL_RESEND_TIMER, align 4
  %22 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %23 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %22, i32 0, i32 2
  %24 = call i32 @test_and_set_bit(i32 %21, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %28 = call i32 @rxrpc_queue_call(%struct.rxrpc_call* %27)
  br label %29

29:                                               ; preds = %26, %20, %10
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %32 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %31, i32 0, i32 1
  %33 = call i32 @read_unlock_bh(i32* %32)
  ret void
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i64 @try_to_del_timer_sync(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @rxrpc_queue_call(%struct.rxrpc_call*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
