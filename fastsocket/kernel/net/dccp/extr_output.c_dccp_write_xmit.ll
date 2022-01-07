; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_output.c_dccp_write_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_output.c_dccp_write_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32 }
%struct.dccp_sock = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.dccp_skb_cb = type { i8* }
%struct.TYPE_2__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@EINTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"err=%d after dccp_wait_for_ccid\00", align 1
@DCCP_PARTOPEN = common dso_local global i64 0, align 8
@DCCP_FEATNEG_OVERHEAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Payload too large (%d) for featneg.\0A\00", align 1
@ICSK_TIME_DACK = common dso_local global i32 0, align 4
@DCCP_RTO_MAX = common dso_local global i32 0, align 4
@DCCP_PKT_DATAACK = common dso_local global i8* null, align 8
@DCCP_PKT_DATA = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"err=%d after ccid_hc_tx_packet_sent\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"packet discarded due to err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dccp_write_xmit(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dccp_sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dccp_skb_cb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %11)
  store %struct.dccp_sock* %12, %struct.dccp_sock** %5, align 8
  br label %13

13:                                               ; preds = %143, %2
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 1
  %16 = call %struct.sk_buff* @skb_peek(i32* %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %6, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %18, label %144

18:                                               ; preds = %13
  %19 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %20 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sock*, %struct.sock** %3, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = call i32 @ccid_hc_tx_send_packet(i32 %21, %struct.sock* %22, %struct.sk_buff* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %56

27:                                               ; preds = %18
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %27
  %31 = load %struct.sock*, %struct.sock** %3, align 8
  %32 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %33 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %32, i32 0, i32 3
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @msecs_to_jiffies(i32 %34)
  %36 = load i64, i64* @jiffies, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @sk_reset_timer(%struct.sock* %31, i32* %33, i64 %37)
  br label %144

39:                                               ; preds = %27
  %40 = load %struct.sock*, %struct.sock** %3, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @dccp_wait_for_ccid(%struct.sock* %40, %struct.sk_buff* %41, i32 %42)
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @EINTR, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp ne i32 %48, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @DCCP_BUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %52, %47, %44
  br label %56

56:                                               ; preds = %55, %18
  %57 = load %struct.sock*, %struct.sock** %3, align 8
  %58 = getelementptr inbounds %struct.sock, %struct.sock* %57, i32 0, i32 1
  %59 = call i32 @skb_dequeue(i32* %58)
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %138

62:                                               ; preds = %56
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = call %struct.dccp_skb_cb* @DCCP_SKB_CB(%struct.sk_buff* %63)
  store %struct.dccp_skb_cb* %64, %struct.dccp_skb_cb** %8, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %9, align 4
  %68 = load %struct.sock*, %struct.sock** %3, align 8
  %69 = getelementptr inbounds %struct.sock, %struct.sock* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @DCCP_PARTOPEN, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %109

73:                                               ; preds = %62
  %74 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %75 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @DCCP_FEATNEG_OVERHEAD, align 4
  %78 = sub nsw i32 %76, %77
  store i32 %78, i32* %10, align 4
  %79 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %80 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %79, i32 0, i32 2
  %81 = call i32 @list_empty(i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %95, label %83

83:                                               ; preds = %73
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %83
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @DCCP_WARN(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load %struct.sock*, %struct.sock** %3, align 8
  %91 = call i32 @dccp_send_ack(%struct.sock* %90)
  %92 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %93 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %92, i32 0, i32 2
  %94 = call i32 @dccp_feat_list_purge(i32* %93)
  br label %95

95:                                               ; preds = %87, %83, %73
  %96 = load %struct.sock*, %struct.sock** %3, align 8
  %97 = call i32 @inet_csk_schedule_ack(%struct.sock* %96)
  %98 = load %struct.sock*, %struct.sock** %3, align 8
  %99 = load i32, i32* @ICSK_TIME_DACK, align 4
  %100 = load %struct.sock*, %struct.sock** %3, align 8
  %101 = call %struct.TYPE_2__* @inet_csk(%struct.sock* %100)
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @DCCP_RTO_MAX, align 4
  %105 = call i32 @inet_csk_reset_xmit_timer(%struct.sock* %98, i32 %99, i32 %103, i32 %104)
  %106 = load i8*, i8** @DCCP_PKT_DATAACK, align 8
  %107 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %8, align 8
  %108 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %107, i32 0, i32 0
  store i8* %106, i8** %108, align 8
  br label %122

109:                                              ; preds = %62
  %110 = load %struct.sock*, %struct.sock** %3, align 8
  %111 = call i64 @dccp_ack_pending(%struct.sock* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %109
  %114 = load i8*, i8** @DCCP_PKT_DATAACK, align 8
  %115 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %8, align 8
  %116 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %115, i32 0, i32 0
  store i8* %114, i8** %116, align 8
  br label %121

117:                                              ; preds = %109
  %118 = load i8*, i8** @DCCP_PKT_DATA, align 8
  %119 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %8, align 8
  %120 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %119, i32 0, i32 0
  store i8* %118, i8** %120, align 8
  br label %121

121:                                              ; preds = %117, %113
  br label %122

122:                                              ; preds = %121, %95
  %123 = load %struct.sock*, %struct.sock** %3, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %125 = call i32 @dccp_transmit_skb(%struct.sock* %123, %struct.sk_buff* %124)
  store i32 %125, i32* %7, align 4
  %126 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %127 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.sock*, %struct.sock** %3, align 8
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @ccid_hc_tx_packet_sent(i32 %128, %struct.sock* %129, i32 0, i32 %130)
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %122
  %135 = load i32, i32* %7, align 4
  %136 = call i32 @DCCP_BUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %134, %122
  br label %143

138:                                              ; preds = %56
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @dccp_pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %139)
  %141 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %142 = call i32 @kfree_skb(%struct.sk_buff* %141)
  br label %143

143:                                              ; preds = %138, %137
  br label %13

144:                                              ; preds = %30, %13
  ret void
}

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local i32 @ccid_hc_tx_send_packet(i32, %struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @sk_reset_timer(%struct.sock*, i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dccp_wait_for_ccid(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @DCCP_BUG(i8*, i32) #1

declare dso_local i32 @skb_dequeue(i32*) #1

declare dso_local %struct.dccp_skb_cb* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @DCCP_WARN(i8*, i32) #1

declare dso_local i32 @dccp_send_ack(%struct.sock*) #1

declare dso_local i32 @dccp_feat_list_purge(i32*) #1

declare dso_local i32 @inet_csk_schedule_ack(%struct.sock*) #1

declare dso_local i32 @inet_csk_reset_xmit_timer(%struct.sock*, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @inet_csk(%struct.sock*) #1

declare dso_local i64 @dccp_ack_pending(%struct.sock*) #1

declare dso_local i32 @dccp_transmit_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @ccid_hc_tx_packet_sent(i32, %struct.sock*, i32, i32) #1

declare dso_local i32 @dccp_pr_debug(i8*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
