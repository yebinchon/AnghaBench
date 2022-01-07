; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-skbuff.c_rxrpc_packet_destructor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-skbuff.c_rxrpc_packet_destructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.rxrpc_skb_priv = type { %struct.rxrpc_call*, %struct.TYPE_2__ }
%struct.rxrpc_call = type { i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"%p{%p}\00", align 1
@RXRPC_PACKET_TYPE_DATA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rxrpc_packet_destructor(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.rxrpc_skb_priv*, align 8
  %4 = alloca %struct.rxrpc_call*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %6 = call %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff* %5)
  store %struct.rxrpc_skb_priv* %6, %struct.rxrpc_skb_priv** %3, align 8
  %7 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %3, align 8
  %8 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %7, i32 0, i32 0
  %9 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  store %struct.rxrpc_call* %9, %struct.rxrpc_call** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %11 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %12 = call i32 @_enter(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %10, %struct.rxrpc_call* %11)
  %13 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %14 = icmp ne %struct.rxrpc_call* %13, null
  br i1 %14, label %15, label %31

15:                                               ; preds = %1
  %16 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %3, align 8
  %17 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @RXRPC_PACKET_TYPE_DATA, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %24 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %3, align 8
  %25 = call i32 @rxrpc_hard_ACK_data(%struct.rxrpc_call* %23, %struct.rxrpc_skb_priv* %24)
  br label %26

26:                                               ; preds = %22, %15
  %27 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %28 = call i32 @rxrpc_put_call(%struct.rxrpc_call* %27)
  %29 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %3, align 8
  %30 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %29, i32 0, i32 0
  store %struct.rxrpc_call* null, %struct.rxrpc_call** %30, align 8
  br label %31

31:                                               ; preds = %26, %1
  %32 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %38 = call i32 @sock_rfree(%struct.sk_buff* %37)
  br label %39

39:                                               ; preds = %36, %31
  %40 = call i32 @_leave(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff*) #1

declare dso_local i32 @_enter(i8*, %struct.sk_buff*, %struct.rxrpc_call*) #1

declare dso_local i32 @rxrpc_hard_ACK_data(%struct.rxrpc_call*, %struct.rxrpc_skb_priv*) #1

declare dso_local i32 @rxrpc_put_call(%struct.rxrpc_call*) #1

declare dso_local i32 @sock_rfree(%struct.sk_buff*) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
