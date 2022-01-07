; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-ack.c_rxrpc_set_resend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-ack.c_rxrpc_set_resend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i64, i32, i32, i32, i32 }

@RXRPC_CALL_COMPLETE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"SET RESEND\00", align 1
@RXRPC_CALL_RESEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"MODIFY RESEND TIMER\00", align 1
@RXRPC_CALL_RUN_RTIMER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"KILL RESEND TIMER\00", align 1
@RXRPC_CALL_RESEND_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_call*, i32, i64)* @rxrpc_set_resend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_set_resend(%struct.rxrpc_call* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.rxrpc_call*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %8 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %7, i32 0, i32 1
  %9 = call i32 @read_lock_bh(i32* %8)
  %10 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %11 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @RXRPC_CALL_COMPLETE, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %15, %3
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = call i32 @_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @RXRPC_CALL_RESEND, align 4
  %23 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %24 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %23, i32 0, i32 3
  %25 = call i32 @set_bit(i32 %22, i32* %24)
  br label %26

26:                                               ; preds = %20, %16
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, 2
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = call i32 @_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @RXRPC_CALL_RUN_RTIMER, align 4
  %33 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %34 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %33, i32 0, i32 2
  %35 = call i32 @set_bit(i32 %32, i32* %34)
  %36 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %37 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %36, i32 0, i32 4
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @mod_timer(i32* %37, i64 %38)
  br label %53

40:                                               ; preds = %26
  %41 = call i32 @_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %42 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %43 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %42, i32 0, i32 4
  %44 = call i32 @del_timer_sync(i32* %43)
  %45 = load i32, i32* @RXRPC_CALL_RESEND_TIMER, align 4
  %46 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %47 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %46, i32 0, i32 3
  %48 = call i32 @clear_bit(i32 %45, i32* %47)
  %49 = load i32, i32* @RXRPC_CALL_RUN_RTIMER, align 4
  %50 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %51 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %50, i32 0, i32 2
  %52 = call i32 @clear_bit(i32 %49, i32* %51)
  br label %53

53:                                               ; preds = %40, %30
  %54 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %55 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %54, i32 0, i32 1
  %56 = call i32 @read_unlock_bh(i32* %55)
  ret void
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @_debug(i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
