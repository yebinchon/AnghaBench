; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-recvmsg.c_rxrpc_remove_user_ID.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-recvmsg.c_rxrpc_remove_user_ID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_sock = type { i32 }
%struct.rxrpc_call = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"RELEASE CALL %d\00", align 1
@RXRPC_CALL_HAS_USERID = common dso_local global i32 0, align 4
@RXRPC_CALL_RELEASED = common dso_local global i32 0, align 4
@RXRPC_CALL_RELEASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rxrpc_remove_user_ID(%struct.rxrpc_sock* %0, %struct.rxrpc_call* %1) #0 {
  %3 = alloca %struct.rxrpc_sock*, align 8
  %4 = alloca %struct.rxrpc_call*, align 8
  store %struct.rxrpc_sock* %0, %struct.rxrpc_sock** %3, align 8
  store %struct.rxrpc_call* %1, %struct.rxrpc_call** %4, align 8
  %5 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %6 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* @RXRPC_CALL_HAS_USERID, align 4
  %10 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %11 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %10, i32 0, i32 2
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %2
  %15 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %3, align 8
  %16 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %15, i32 0, i32 0
  %17 = call i32 @write_lock_bh(i32* %16)
  %18 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %19 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %18, i32 0, i32 4
  %20 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %21 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @rb_erase(i32* %19, i32* %23)
  %25 = load i32, i32* @RXRPC_CALL_HAS_USERID, align 4
  %26 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %27 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %26, i32 0, i32 2
  %28 = call i32 @clear_bit(i32 %25, i32* %27)
  %29 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %3, align 8
  %30 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %29, i32 0, i32 0
  %31 = call i32 @write_unlock_bh(i32* %30)
  br label %32

32:                                               ; preds = %14, %2
  %33 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %34 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %33, i32 0, i32 0
  %35 = call i32 @read_lock_bh(i32* %34)
  %36 = load i32, i32* @RXRPC_CALL_RELEASED, align 4
  %37 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %38 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %37, i32 0, i32 2
  %39 = call i64 @test_bit(i32 %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %32
  %42 = load i32, i32* @RXRPC_CALL_RELEASE, align 4
  %43 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %44 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %43, i32 0, i32 1
  %45 = call i32 @test_and_set_bit(i32 %42, i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %49 = call i32 @rxrpc_queue_call(%struct.rxrpc_call* %48)
  br label %50

50:                                               ; preds = %47, %41, %32
  %51 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %52 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %51, i32 0, i32 0
  %53 = call i32 @read_unlock_bh(i32* %52)
  ret void
}

declare dso_local i32 @_debug(i8*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @rxrpc_queue_call(%struct.rxrpc_call*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
