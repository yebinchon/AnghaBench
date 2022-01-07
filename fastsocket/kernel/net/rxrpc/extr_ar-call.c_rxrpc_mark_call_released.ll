; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-call.c_rxrpc_mark_call_released.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-call.c_rxrpc_mark_call_released.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i64, i32, i32, i32 }

@RXRPC_CALL_DEAD = common dso_local global i64 0, align 8
@RXRPC_CALL_COMPLETE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"abort call %p\00", align 1
@RXRPC_CALL_LOCALLY_ABORTED = common dso_local global i64 0, align 8
@RX_CALL_DEAD = common dso_local global i32 0, align 4
@RXRPC_CALL_ABORT = common dso_local global i32 0, align 4
@RXRPC_CALL_RELEASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_call*)* @rxrpc_mark_call_released to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_mark_call_released(%struct.rxrpc_call* %0) #0 {
  %2 = alloca %struct.rxrpc_call*, align 8
  %3 = alloca i32, align 4
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %2, align 8
  %4 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %5 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %4, i32 0, i32 1
  %6 = call i32 @write_lock(i32* %5)
  %7 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %8 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @RXRPC_CALL_DEAD, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %48

12:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  %13 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %14 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @RXRPC_CALL_COMPLETE, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %12
  %19 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %20 = call i32 @_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.rxrpc_call* %19)
  %21 = load i64, i64* @RXRPC_CALL_LOCALLY_ABORTED, align 8
  %22 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %23 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load i32, i32* @RX_CALL_DEAD, align 4
  %25 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %26 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @RXRPC_CALL_ABORT, align 4
  %28 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %29 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %28, i32 0, i32 2
  %30 = call i32 @test_and_set_bit(i32 %27, i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %18
  br label %34

34:                                               ; preds = %33, %12
  %35 = load i32, i32* @RXRPC_CALL_RELEASE, align 4
  %36 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %37 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %36, i32 0, i32 2
  %38 = call i32 @test_and_set_bit(i32 %35, i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %34
  %42 = load i32, i32* %3, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %46 = call i32 @rxrpc_queue_call(%struct.rxrpc_call* %45)
  br label %47

47:                                               ; preds = %44, %41
  br label %48

48:                                               ; preds = %47, %1
  %49 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %50 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %49, i32 0, i32 1
  %51 = call i32 @write_unlock(i32* %50)
  ret void
}

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @_debug(i8*, %struct.rxrpc_call*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @rxrpc_queue_call(%struct.rxrpc_call*) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
