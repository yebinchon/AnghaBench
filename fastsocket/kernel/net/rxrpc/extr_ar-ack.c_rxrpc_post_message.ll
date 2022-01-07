; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-ack.c_rxrpc_post_message.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-ack.c_rxrpc_post_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i32, i32, i32, i32, i32 }
%struct.rxrpc_skb_priv = type { %struct.rxrpc_call*, i64 }
%struct.sk_buff = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"{%d,%lx},%u,%u,%d\00", align 1
@RXRPC_CALL_RUN_RTIMER = common dso_local global i32 0, align 4
@RXRPC_SKB_MARK_NEW_CALL = common dso_local global i64 0, align 8
@RXRPC_CALL_HAS_USERID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"[no userid]\00", align 1
@RXRPC_CALL_TERMINAL_MSG = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxrpc_call*, i64, i64, i32)* @rxrpc_post_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxrpc_post_message(%struct.rxrpc_call* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rxrpc_call*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rxrpc_skb_priv*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %14 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %17 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @_enter(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i64 %19, i64 %20, i32 %21)
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %4
  %26 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %27 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %26, i32 0, i32 3
  %28 = call i32 @del_timer_sync(i32* %27)
  %29 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %30 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %29, i32 0, i32 2
  %31 = call i32 @del_timer_sync(i32* %30)
  %32 = load i32, i32* @RXRPC_CALL_RUN_RTIMER, align 4
  %33 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %34 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %33, i32 0, i32 1
  %35 = call i32 @clear_bit(i32 %32, i32* %34)
  br label %36

36:                                               ; preds = %25, %4
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @RXRPC_SKB_MARK_NEW_CALL, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load i32, i32* @RXRPC_CALL_HAS_USERID, align 4
  %42 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %43 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %42, i32 0, i32 1
  %44 = call i32 @test_bit(i32 %41, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %40
  %47 = call i32 @_leave(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %95

48:                                               ; preds = %40, %36
  %49 = load i32, i32* @RXRPC_CALL_TERMINAL_MSG, align 4
  %50 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %51 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %50, i32 0, i32 1
  %52 = call i32 @test_bit(i32 %49, i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %94, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* @GFP_NOFS, align 4
  %56 = call %struct.sk_buff* @alloc_skb(i32 0, i32 %55)
  store %struct.sk_buff* %56, %struct.sk_buff** %11, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %58 = icmp ne %struct.sk_buff* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %95

62:                                               ; preds = %54
  %63 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %64 = call i32 @rxrpc_new_skb(%struct.sk_buff* %63)
  %65 = load i64, i64* %7, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %69 = call %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff* %68)
  store %struct.rxrpc_skb_priv* %69, %struct.rxrpc_skb_priv** %10, align 8
  %70 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %71 = call i32 @memset(%struct.rxrpc_skb_priv* %70, i32 0, i32 16)
  %72 = load i64, i64* %8, align 8
  %73 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %74 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %76 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %77 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %76, i32 0, i32 0
  store %struct.rxrpc_call* %75, %struct.rxrpc_call** %77, align 8
  %78 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %79 = call i32 @rxrpc_get_call(%struct.rxrpc_call* %78)
  %80 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %81 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %80, i32 0, i32 0
  %82 = call i32 @spin_lock_bh(i32* %81)
  %83 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @rxrpc_queue_rcv_skb(%struct.rxrpc_call* %83, %struct.sk_buff* %84, i32 1, i32 %85)
  store i32 %86, i32* %12, align 4
  %87 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %88 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %87, i32 0, i32 0
  %89 = call i32 @spin_unlock_bh(i32* %88)
  %90 = load i32, i32* %12, align 4
  %91 = icmp slt i32 %90, 0
  %92 = zext i1 %91 to i32
  %93 = call i32 @BUG_ON(i32 %92)
  br label %94

94:                                               ; preds = %62, %48
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %94, %59, %46
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @_enter(i8*, i32, i32, i64, i64, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @_leave(i8*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @rxrpc_new_skb(%struct.sk_buff*) #1

declare dso_local %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.rxrpc_skb_priv*, i32, i32) #1

declare dso_local i32 @rxrpc_get_call(%struct.rxrpc_call*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @rxrpc_queue_rcv_skb(%struct.rxrpc_call*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
