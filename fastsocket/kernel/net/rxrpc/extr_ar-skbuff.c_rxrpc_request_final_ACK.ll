; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-skbuff.c_rxrpc_request_final_ACK.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-skbuff.c_rxrpc_request_final_ACK.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i32, i32, i32, i32 }

@RXRPC_CALL_CLIENT_FINAL_ACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"request final ACK\00", align 1
@RXRPC_CALL_ACK_FINAL = common dso_local global i32 0, align 4
@RXRPC_CALL_SERVER_ACK_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_call*)* @rxrpc_request_final_ACK to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_request_final_ACK(%struct.rxrpc_call* %0) #0 {
  %2 = alloca %struct.rxrpc_call*, align 8
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %2, align 8
  %3 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %4 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %3, i32 0, i32 1
  %5 = call i32 @write_lock(i32* %4)
  %6 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %7 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %32 [
    i32 129, label %9
    i32 128, label %28
  ]

9:                                                ; preds = %1
  %10 = load i32, i32* @RXRPC_CALL_CLIENT_FINAL_ACK, align 4
  %11 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %12 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = call i32 @_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %15 = call i32 @rxrpc_get_call(%struct.rxrpc_call* %14)
  %16 = load i32, i32* @RXRPC_CALL_ACK_FINAL, align 4
  %17 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %18 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %17, i32 0, i32 3
  %19 = call i32 @set_bit(i32 %16, i32* %18)
  %20 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %21 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %20, i32 0, i32 2
  %22 = call i32 @try_to_del_timer_sync(i32* %21)
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %9
  %25 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %26 = call i32 @rxrpc_queue_call(%struct.rxrpc_call* %25)
  br label %27

27:                                               ; preds = %24, %9
  br label %33

28:                                               ; preds = %1
  %29 = load i32, i32* @RXRPC_CALL_SERVER_ACK_REQUEST, align 4
  %30 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %31 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %1, %28
  br label %33

33:                                               ; preds = %32, %27
  %34 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %35 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %34, i32 0, i32 1
  %36 = call i32 @write_unlock(i32* %35)
  ret void
}

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @_debug(i8*) #1

declare dso_local i32 @rxrpc_get_call(%struct.rxrpc_call*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @try_to_del_timer_sync(i32*) #1

declare dso_local i32 @rxrpc_queue_call(%struct.rxrpc_call*) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
