; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ipv6.c_dccp_v6_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ipv6.c_dccp_v6_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.dccp_hdr = type { i64, i32, i32, i32 }
%struct.sock = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"dropped packet with invalid checksum\0A\00", align 1
@DCCP_PKT_WITHOUT_ACK_SEQ = common dso_local global i32 0, align 4
@dccp_hashinfo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"failed to look up flow ID in table and get corresponding socket\0A\00", align 1
@DCCP_TIME_WAIT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"sk->sk_state == DCCP_TIME_WAIT: do_time_wait\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Packet CsCov %d does not satisfy MinCsCov %d\0A\00", align 1
@XFRM_POLICY_IN = common dso_local global i32 0, align 4
@DCCP_PKT_RESET = common dso_local global i64 0, align 8
@DCCP_RESET_CODE_NO_CONNECTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @dccp_v6_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_v6_rcv(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.dccp_hdr*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = call i64 @dccp_invalid_packet(%struct.sk_buff* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %134

11:                                               ; preds = %1
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = call %struct.TYPE_4__* @ipv6_hdr(%struct.sk_buff* %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = call %struct.TYPE_4__* @ipv6_hdr(%struct.sk_buff* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i64 @dccp_v6_csum_finish(%struct.sk_buff* %12, i32* %15, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %11
  %22 = call i32 @DCCP_WARN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %134

23:                                               ; preds = %11
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = call %struct.dccp_hdr* @dccp_hdr(%struct.sk_buff* %24)
  store %struct.dccp_hdr* %25, %struct.dccp_hdr** %4, align 8
  %26 = load %struct.dccp_hdr*, %struct.dccp_hdr** %4, align 8
  %27 = call i32 @dccp_hdr_seq(%struct.dccp_hdr* %26)
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = call %struct.TYPE_6__* @DCCP_SKB_CB(%struct.sk_buff* %28)
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  store i32 %27, i32* %30, align 8
  %31 = load %struct.dccp_hdr*, %struct.dccp_hdr** %4, align 8
  %32 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %35 = call %struct.TYPE_6__* @DCCP_SKB_CB(%struct.sk_buff* %34)
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i64 %33, i64* %36, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %38 = call i64 @dccp_packet_without_ack(%struct.sk_buff* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %23
  %41 = load i32, i32* @DCCP_PKT_WITHOUT_ACK_SEQ, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %43 = call %struct.TYPE_6__* @DCCP_SKB_CB(%struct.sk_buff* %42)
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 4
  br label %51

45:                                               ; preds = %23
  %46 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %47 = call i32 @dccp_hdr_ack_seq(%struct.sk_buff* %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %49 = call %struct.TYPE_6__* @DCCP_SKB_CB(%struct.sk_buff* %48)
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 4
  br label %51

51:                                               ; preds = %45, %40
  %52 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %53 = load %struct.dccp_hdr*, %struct.dccp_hdr** %4, align 8
  %54 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.dccp_hdr*, %struct.dccp_hdr** %4, align 8
  %57 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.sock* @__inet6_lookup_skb(i32* @dccp_hashinfo, %struct.sk_buff* %52, i32 %55, i32 %58)
  store %struct.sock* %59, %struct.sock** %5, align 8
  %60 = load %struct.sock*, %struct.sock** %5, align 8
  %61 = icmp eq %struct.sock* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %51
  %63 = call i32 (i8*, ...) @dccp_pr_debug(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  br label %113

64:                                               ; preds = %51
  %65 = load %struct.sock*, %struct.sock** %5, align 8
  %66 = getelementptr inbounds %struct.sock, %struct.sock* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @DCCP_TIME_WAIT, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = call i32 (i8*, ...) @dccp_pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %72 = load %struct.sock*, %struct.sock** %5, align 8
  %73 = call i32 @inet_twsk(%struct.sock* %72)
  %74 = call i32 @inet_twsk_put(i32 %73)
  br label %113

75:                                               ; preds = %64
  %76 = load %struct.sock*, %struct.sock** %5, align 8
  %77 = call %struct.TYPE_5__* @dccp_sk(%struct.sock* %76)
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %6, align 4
  %80 = load %struct.dccp_hdr*, %struct.dccp_hdr** %4, align 8
  %81 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %75
  %85 = load i32, i32* %6, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %84
  %88 = load %struct.dccp_hdr*, %struct.dccp_hdr** %4, align 8
  %89 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %87, %84
  %94 = load %struct.dccp_hdr*, %struct.dccp_hdr** %4, align 8
  %95 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i32 (i8*, ...) @dccp_pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %96, i32 %97)
  br label %137

99:                                               ; preds = %87, %75
  %100 = load %struct.sock*, %struct.sock** %5, align 8
  %101 = load i32, i32* @XFRM_POLICY_IN, align 4
  %102 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %103 = call i32 @xfrm6_policy_check(%struct.sock* %100, i32 %101, %struct.sk_buff* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %99
  br label %137

106:                                              ; preds = %99
  %107 = load %struct.sock*, %struct.sock** %5, align 8
  %108 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %109 = call i64 @sk_receive_skb(%struct.sock* %107, %struct.sk_buff* %108, i32 1)
  %110 = icmp ne i64 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 -1, i32 0
  store i32 %112, i32* %2, align 4
  br label %140

113:                                              ; preds = %70, %62
  %114 = load i32, i32* @XFRM_POLICY_IN, align 4
  %115 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %116 = call i32 @xfrm6_policy_check(%struct.sock* null, i32 %114, %struct.sk_buff* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %113
  br label %134

119:                                              ; preds = %113
  %120 = load %struct.dccp_hdr*, %struct.dccp_hdr** %4, align 8
  %121 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @DCCP_PKT_RESET, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %119
  %126 = load i32, i32* @DCCP_RESET_CODE_NO_CONNECTION, align 4
  %127 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %128 = call %struct.TYPE_6__* @DCCP_SKB_CB(%struct.sk_buff* %127)
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  store i32 %126, i32* %129, align 8
  %130 = load %struct.sock*, %struct.sock** %5, align 8
  %131 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %132 = call i32 @dccp_v6_ctl_send_reset(%struct.sock* %130, %struct.sk_buff* %131)
  br label %133

133:                                              ; preds = %125, %119
  br label %134

134:                                              ; preds = %137, %133, %118, %21, %10
  %135 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %136 = call i32 @kfree_skb(%struct.sk_buff* %135)
  store i32 0, i32* %2, align 4
  br label %140

137:                                              ; preds = %105, %93
  %138 = load %struct.sock*, %struct.sock** %5, align 8
  %139 = call i32 @sock_put(%struct.sock* %138)
  br label %134

140:                                              ; preds = %134, %106
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i64 @dccp_invalid_packet(%struct.sk_buff*) #1

declare dso_local i64 @dccp_v6_csum_finish(%struct.sk_buff*, i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @DCCP_WARN(i8*) #1

declare dso_local %struct.dccp_hdr* @dccp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @dccp_hdr_seq(%struct.dccp_hdr*) #1

declare dso_local %struct.TYPE_6__* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @dccp_packet_without_ack(%struct.sk_buff*) #1

declare dso_local i32 @dccp_hdr_ack_seq(%struct.sk_buff*) #1

declare dso_local %struct.sock* @__inet6_lookup_skb(i32*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @dccp_pr_debug(i8*, ...) #1

declare dso_local i32 @inet_twsk_put(i32) #1

declare dso_local i32 @inet_twsk(%struct.sock*) #1

declare dso_local %struct.TYPE_5__* @dccp_sk(%struct.sock*) #1

declare dso_local i32 @xfrm6_policy_check(%struct.sock*, i32, %struct.sk_buff*) #1

declare dso_local i64 @sk_receive_skb(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @dccp_v6_ctl_send_reset(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
