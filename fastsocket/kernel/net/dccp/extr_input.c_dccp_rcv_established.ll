; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_input.c_dccp_rcv_established.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_input.c_dccp_rcv_established.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.dccp_hdr = type { i32 }
%struct.dccp_sock = type { i32* }
%struct.TYPE_2__ = type { i64, i32 }

@DCCP_PKT_WITHOUT_ACK_SEQ = common dso_local global i64 0, align 8
@DCCP_ACKVEC_STATE_RECEIVED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dccp_rcv_established(%struct.sock* %0, %struct.sk_buff* %1, %struct.dccp_hdr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.dccp_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dccp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.dccp_hdr* %2, %struct.dccp_hdr** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.sock*, %struct.sock** %6, align 8
  %12 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %11)
  store %struct.dccp_sock* %12, %struct.dccp_sock** %10, align 8
  %13 = load %struct.sock*, %struct.sock** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = call i64 @dccp_check_seqno(%struct.sock* %13, %struct.sk_buff* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %62

18:                                               ; preds = %4
  %19 = load %struct.sock*, %struct.sock** %6, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = call i64 @dccp_parse_options(%struct.sock* %19, i32* null, %struct.sk_buff* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 1, i32* %5, align 4
  br label %65

24:                                               ; preds = %18
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = call %struct.TYPE_2__* @DCCP_SKB_CB(%struct.sk_buff* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DCCP_PKT_WITHOUT_ACK_SEQ, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load %struct.sock*, %struct.sock** %6, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %34 = call i32 @dccp_event_ack_recv(%struct.sock* %32, %struct.sk_buff* %33)
  br label %35

35:                                               ; preds = %31, %24
  %36 = load %struct.dccp_sock*, %struct.dccp_sock** %10, align 8
  %37 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = load %struct.dccp_sock*, %struct.dccp_sock** %10, align 8
  %42 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.sock*, %struct.sock** %6, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %46 = call %struct.TYPE_2__* @DCCP_SKB_CB(%struct.sk_buff* %45)
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @DCCP_ACKVEC_STATE_RECEIVED, align 4
  %50 = call i64 @dccp_ackvec_add(i32* %43, %struct.sock* %44, i32 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  br label %62

53:                                               ; preds = %40, %35
  %54 = load %struct.sock*, %struct.sock** %6, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %56 = call i32 @dccp_deliver_input_to_ccids(%struct.sock* %54, %struct.sk_buff* %55)
  %57 = load %struct.sock*, %struct.sock** %6, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %59 = load %struct.dccp_hdr*, %struct.dccp_hdr** %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @__dccp_rcv_established(%struct.sock* %57, %struct.sk_buff* %58, %struct.dccp_hdr* %59, i32 %60)
  store i32 %61, i32* %5, align 4
  br label %65

62:                                               ; preds = %52, %17
  %63 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %64 = call i32 @__kfree_skb(%struct.sk_buff* %63)
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %62, %53, %23
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local i64 @dccp_check_seqno(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @dccp_parse_options(%struct.sock*, i32*, %struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @dccp_event_ack_recv(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @dccp_ackvec_add(i32*, %struct.sock*, i32, i32) #1

declare dso_local i32 @dccp_deliver_input_to_ccids(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @__dccp_rcv_established(%struct.sock*, %struct.sk_buff*, %struct.dccp_hdr*, i32) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
