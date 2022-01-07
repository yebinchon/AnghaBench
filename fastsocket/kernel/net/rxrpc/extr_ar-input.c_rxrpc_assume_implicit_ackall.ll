; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-input.c_rxrpc_assume_implicit_ackall.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-input.c_rxrpc_assume_implicit_ackall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i32, i32, i32, i32, i32, i32 }

@RXRPC_CALL_CLIENT_RECV_REPLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"implicit ACKALL %%%u\00", align 1
@RXRPC_CALL_RCVD_ACKALL = common dso_local global i32 0, align 4
@RXRPC_CALL_RESEND_TIMER = common dso_local global i32 0, align 4
@RXRPC_CALL_RESEND = common dso_local global i32 0, align 4
@RXRPC_CALL_RUN_RTIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_call*, i32)* @rxrpc_assume_implicit_ackall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_assume_implicit_ackall(%struct.rxrpc_call* %0, i32 %1) #0 {
  %3 = alloca %struct.rxrpc_call*, align 8
  %4 = alloca i32, align 4
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %6 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %5, i32 0, i32 1
  %7 = call i32 @write_lock_bh(i32* %6)
  %8 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %9 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %47 [
    i32 128, label %11
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @RXRPC_CALL_CLIENT_RECV_REPLY, align 4
  %13 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %14 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %17 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 4
  %18 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %19 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @RXRPC_CALL_RCVD_ACKALL, align 4
  %23 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %24 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %23, i32 0, i32 3
  %25 = call i32 @set_bit(i32 %22, i32* %24)
  %26 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %27 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %26, i32 0, i32 1
  %28 = call i32 @write_unlock_bh(i32* %27)
  %29 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %30 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %29, i32 0, i32 4
  %31 = call i32 @try_to_del_timer_sync(i32* %30)
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %11
  %34 = load i32, i32* @RXRPC_CALL_RESEND_TIMER, align 4
  %35 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %36 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %35, i32 0, i32 3
  %37 = call i32 @clear_bit(i32 %34, i32* %36)
  %38 = load i32, i32* @RXRPC_CALL_RESEND, align 4
  %39 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %40 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %39, i32 0, i32 3
  %41 = call i32 @clear_bit(i32 %38, i32* %40)
  %42 = load i32, i32* @RXRPC_CALL_RUN_RTIMER, align 4
  %43 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %44 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %43, i32 0, i32 2
  %45 = call i32 @clear_bit(i32 %42, i32* %44)
  br label %46

46:                                               ; preds = %33, %11
  br label %51

47:                                               ; preds = %2
  %48 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %49 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %48, i32 0, i32 1
  %50 = call i32 @write_unlock_bh(i32* %49)
  br label %51

51:                                               ; preds = %47, %46
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @_debug(i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @try_to_del_timer_sync(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
