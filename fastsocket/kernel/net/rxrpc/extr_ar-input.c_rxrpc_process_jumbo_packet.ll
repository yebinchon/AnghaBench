; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-input.c_rxrpc_process_jumbo_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-input.c_rxrpc_process_jumbo_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i64, i32, i32, i32 }
%struct.sk_buff = type { i32, i32 }
%struct.rxrpc_jumbo_header = type { i32, i32 }
%struct.rxrpc_skb_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i32, i8* }

@.str = private unnamed_addr constant [9 x i8] c",{%u,%u}\00", align 1
@RXRPC_JUMBO_PACKET = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@RXRPC_JUMBO_DATALEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Rx DATA Jumbo %%%u\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"protocol error\00", align 1
@RXRPC_CALL_COMPLETE = common dso_local global i64 0, align 8
@RXRPC_CALL_LOCALLY_ABORTED = common dso_local global i64 0, align 8
@RX_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@RXRPC_CALL_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_call*, %struct.sk_buff*)* @rxrpc_process_jumbo_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_process_jumbo_packet(%struct.rxrpc_call* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.rxrpc_call*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.rxrpc_jumbo_header, align 4
  %6 = alloca %struct.rxrpc_skb_priv*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @_enter(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13)
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff* %15)
  store %struct.rxrpc_skb_priv* %16, %struct.rxrpc_skb_priv** %6, align 8
  br label %17

17:                                               ; preds = %97, %2
  %18 = load i32, i32* @RXRPC_JUMBO_PACKET, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %6, align 8
  %21 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, %19
  store i32 %24, i32* %22, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %25, i32 %26)
  store %struct.sk_buff* %27, %struct.sk_buff** %7, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %17
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = load i32, i32* @RXRPC_JUMBO_DATALEN, align 4
  %33 = call i32 @pskb_trim(%struct.sk_buff* %31, i32 %32)
  br label %105

34:                                               ; preds = %17
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = call i32 @rxrpc_new_skb(%struct.sk_buff* %35)
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = load i32, i32* @RXRPC_JUMBO_DATALEN, align 4
  %39 = call i32 @pskb_trim(%struct.sk_buff* %37, i32 %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = load i32, i32* @RXRPC_JUMBO_DATALEN, align 4
  %42 = call i32 @pskb_pull(%struct.sk_buff* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %34
  br label %110

45:                                               ; preds = %34
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = call i64 @skb_copy_bits(%struct.sk_buff* %46, i32 0, %struct.rxrpc_jumbo_header* %5, i32 8)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %110

50:                                               ; preds = %45
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = call i32 @pskb_pull(%struct.sk_buff* %51, i32 8)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = call i32 (...) @BUG()
  br label %56

56:                                               ; preds = %54, %50
  %57 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %6, align 8
  %58 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @ntohl(i8* %60)
  %62 = add nsw i64 %61, 1
  %63 = call i8* @htonl(i64 %62)
  %64 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %6, align 8
  %65 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 3
  store i8* %63, i8** %66, align 8
  %67 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %6, align 8
  %68 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = call i64 @ntohl(i8* %70)
  %72 = add nsw i64 %71, 1
  %73 = call i8* @htonl(i64 %72)
  %74 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %6, align 8
  %75 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store i8* %73, i8** %76, align 8
  %77 = getelementptr inbounds %struct.rxrpc_jumbo_header, %struct.rxrpc_jumbo_header* %5, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %6, align 8
  %80 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  %82 = getelementptr inbounds %struct.rxrpc_jumbo_header, %struct.rxrpc_jumbo_header* %5, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %6, align 8
  %85 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  store i32 %83, i32* %86, align 8
  %87 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %6, align 8
  %88 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @ntohl(i8* %90)
  %92 = sub nsw i64 %91, 1
  %93 = call i32 @_proto(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %92)
  %94 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %96 = call i32 @rxrpc_fast_process_packet(%struct.rxrpc_call* %94, %struct.sk_buff* %95)
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  br label %97

97:                                               ; preds = %56
  %98 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %6, align 8
  %99 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @RXRPC_JUMBO_PACKET, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %17, label %105

105:                                              ; preds = %97, %30
  %106 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %108 = call i32 @rxrpc_fast_process_packet(%struct.rxrpc_call* %106, %struct.sk_buff* %107)
  %109 = call i32 @_leave(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  br label %142

110:                                              ; preds = %49, %44
  %111 = call i32 @_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %112 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %113 = call i32 @rxrpc_free_skb(%struct.sk_buff* %112)
  %114 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %115 = call i32 @rxrpc_free_skb(%struct.sk_buff* %114)
  %116 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %117 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %116, i32 0, i32 1
  %118 = call i32 @write_lock_bh(i32* %117)
  %119 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %120 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @RXRPC_CALL_COMPLETE, align 8
  %123 = icmp sle i64 %121, %122
  br i1 %123, label %124, label %137

124:                                              ; preds = %110
  %125 = load i64, i64* @RXRPC_CALL_LOCALLY_ABORTED, align 8
  %126 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %127 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  %128 = load i32, i32* @RX_PROTOCOL_ERROR, align 4
  %129 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %130 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %129, i32 0, i32 3
  store i32 %128, i32* %130, align 8
  %131 = load i32, i32* @RXRPC_CALL_ABORT, align 4
  %132 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %133 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %132, i32 0, i32 2
  %134 = call i32 @set_bit(i32 %131, i32* %133)
  %135 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %136 = call i32 @rxrpc_queue_call(%struct.rxrpc_call* %135)
  br label %137

137:                                              ; preds = %124, %110
  %138 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %139 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %138, i32 0, i32 1
  %140 = call i32 @write_unlock_bh(i32* %139)
  %141 = call i32 @_leave(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  br label %142

142:                                              ; preds = %137, %105
  ret void
}

declare dso_local i32 @_enter(i8*, i32, i32) #1

declare dso_local %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @pskb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @rxrpc_new_skb(%struct.sk_buff*) #1

declare dso_local i32 @pskb_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_copy_bits(%struct.sk_buff*, i32, %struct.rxrpc_jumbo_header*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i8* @htonl(i64) #1

declare dso_local i64 @ntohl(i8*) #1

declare dso_local i32 @_proto(i8*, i64) #1

declare dso_local i32 @rxrpc_fast_process_packet(%struct.rxrpc_call*, %struct.sk_buff*) #1

declare dso_local i32 @_leave(i8*) #1

declare dso_local i32 @_debug(i8*) #1

declare dso_local i32 @rxrpc_free_skb(%struct.sk_buff*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @rxrpc_queue_call(%struct.rxrpc_call*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
