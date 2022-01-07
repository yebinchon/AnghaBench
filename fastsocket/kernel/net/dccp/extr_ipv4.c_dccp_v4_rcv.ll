; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ipv4.c_dccp_v4_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ipv4.c_dccp_v4_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.dccp_hdr = type { i64, i32, i32, i32 }
%struct.iphdr = type { i32, i32 }
%struct.sock = type { i64 }
%struct.TYPE_4__ = type { i64, i32, i64, i64 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"dropped packet with invalid checksum\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"%8.8s src=%pI4@%-5d dst=%pI4@%-5d seq=%llu\00", align 1
@DCCP_PKT_WITHOUT_ACK_SEQ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c", ack=%llu\0A\00", align 1
@dccp_hashinfo = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [65 x i8] c"failed to look up flow ID in table and get corresponding socket\0A\00", align 1
@DCCP_TIME_WAIT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [46 x i8] c"sk->sk_state == DCCP_TIME_WAIT: do_time_wait\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"Packet CsCov %d does not satisfy MinCsCov %d\0A\00", align 1
@XFRM_POLICY_IN = common dso_local global i32 0, align 4
@DCCP_PKT_RESET = common dso_local global i64 0, align 8
@DCCP_RESET_CODE_NO_CONNECTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @dccp_v4_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_v4_rcv(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.dccp_hdr*, align 8
  %5 = alloca %struct.iphdr*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = call i64 @dccp_invalid_packet(%struct.sk_buff* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %163

12:                                               ; preds = %1
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %13)
  store %struct.iphdr* %14, %struct.iphdr** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %17 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %20 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @dccp_v4_csum_finish(%struct.sk_buff* %15, i32 %18, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %12
  %25 = call i32 @DCCP_WARN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %163

26:                                               ; preds = %12
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = call %struct.dccp_hdr* @dccp_hdr(%struct.sk_buff* %27)
  store %struct.dccp_hdr* %28, %struct.dccp_hdr** %4, align 8
  %29 = load %struct.dccp_hdr*, %struct.dccp_hdr** %4, align 8
  %30 = call i64 @dccp_hdr_seq(%struct.dccp_hdr* %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = call %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff* %31)
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  store i64 %30, i64* %33, align 8
  %34 = load %struct.dccp_hdr*, %struct.dccp_hdr** %4, align 8
  %35 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %38 = call %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff* %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i64 %36, i64* %39, align 8
  %40 = load %struct.dccp_hdr*, %struct.dccp_hdr** %4, align 8
  %41 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @dccp_packet_name(i64 %42)
  %44 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %45 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %44, i32 0, i32 1
  %46 = load %struct.dccp_hdr*, %struct.dccp_hdr** %4, align 8
  %47 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @ntohs(i32 %48)
  %50 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %51 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %50, i32 0, i32 0
  %52 = load %struct.dccp_hdr*, %struct.dccp_hdr** %4, align 8
  %53 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ntohs(i32 %54)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %57 = call %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff* %56)
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = call i32 (i8*, ...) @dccp_pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32* %45, i32 %49, i32* %51, i32 %55, i64 %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %62 = call i64 @dccp_packet_without_ack(%struct.sk_buff* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %26
  %65 = load i64, i64* @DCCP_PKT_WITHOUT_ACK_SEQ, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %67 = call %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff* %66)
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  store i64 %65, i64* %68, align 8
  %69 = call i32 (i8*, ...) @dccp_pr_debug_cat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %81

70:                                               ; preds = %26
  %71 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %72 = call i64 @dccp_hdr_ack_seq(%struct.sk_buff* %71)
  %73 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %74 = call %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff* %73)
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  store i64 %72, i64* %75, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %77 = call %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff* %76)
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = call i32 (i8*, ...) @dccp_pr_debug_cat(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %79)
  br label %81

81:                                               ; preds = %70, %64
  %82 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %83 = load %struct.dccp_hdr*, %struct.dccp_hdr** %4, align 8
  %84 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.dccp_hdr*, %struct.dccp_hdr** %4, align 8
  %87 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call %struct.sock* @__inet_lookup_skb(i32* @dccp_hashinfo, %struct.sk_buff* %82, i32 %85, i32 %88)
  store %struct.sock* %89, %struct.sock** %6, align 8
  %90 = load %struct.sock*, %struct.sock** %6, align 8
  %91 = icmp eq %struct.sock* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %81
  %93 = call i32 (i8*, ...) @dccp_pr_debug(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0))
  br label %142

94:                                               ; preds = %81
  %95 = load %struct.sock*, %struct.sock** %6, align 8
  %96 = getelementptr inbounds %struct.sock, %struct.sock* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @DCCP_TIME_WAIT, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %94
  %101 = call i32 (i8*, ...) @dccp_pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  %102 = load %struct.sock*, %struct.sock** %6, align 8
  %103 = call i32 @inet_twsk(%struct.sock* %102)
  %104 = call i32 @inet_twsk_put(i32 %103)
  br label %142

105:                                              ; preds = %94
  %106 = load %struct.sock*, %struct.sock** %6, align 8
  %107 = call %struct.TYPE_3__* @dccp_sk(%struct.sock* %106)
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %7, align 4
  %110 = load %struct.dccp_hdr*, %struct.dccp_hdr** %4, align 8
  %111 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %129

114:                                              ; preds = %105
  %115 = load i32, i32* %7, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %114
  %118 = load %struct.dccp_hdr*, %struct.dccp_hdr** %4, align 8
  %119 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %7, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %117, %114
  %124 = load %struct.dccp_hdr*, %struct.dccp_hdr** %4, align 8
  %125 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = call i32 (i8*, ...) @dccp_pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %126, i32 %127)
  br label %166

129:                                              ; preds = %117, %105
  %130 = load %struct.sock*, %struct.sock** %6, align 8
  %131 = load i32, i32* @XFRM_POLICY_IN, align 4
  %132 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %133 = call i32 @xfrm4_policy_check(%struct.sock* %130, i32 %131, %struct.sk_buff* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %129
  br label %166

136:                                              ; preds = %129
  %137 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %138 = call i32 @nf_reset(%struct.sk_buff* %137)
  %139 = load %struct.sock*, %struct.sock** %6, align 8
  %140 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %141 = call i32 @sk_receive_skb(%struct.sock* %139, %struct.sk_buff* %140, i32 1)
  store i32 %141, i32* %2, align 4
  br label %169

142:                                              ; preds = %100, %92
  %143 = load i32, i32* @XFRM_POLICY_IN, align 4
  %144 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %145 = call i32 @xfrm4_policy_check(%struct.sock* null, i32 %143, %struct.sk_buff* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %142
  br label %163

148:                                              ; preds = %142
  %149 = load %struct.dccp_hdr*, %struct.dccp_hdr** %4, align 8
  %150 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @DCCP_PKT_RESET, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %162

154:                                              ; preds = %148
  %155 = load i32, i32* @DCCP_RESET_CODE_NO_CONNECTION, align 4
  %156 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %157 = call %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff* %156)
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 1
  store i32 %155, i32* %158, align 8
  %159 = load %struct.sock*, %struct.sock** %6, align 8
  %160 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %161 = call i32 @dccp_v4_ctl_send_reset(%struct.sock* %159, %struct.sk_buff* %160)
  br label %162

162:                                              ; preds = %154, %148
  br label %163

163:                                              ; preds = %166, %162, %147, %24, %11
  %164 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %165 = call i32 @kfree_skb(%struct.sk_buff* %164)
  store i32 0, i32* %2, align 4
  br label %169

166:                                              ; preds = %135, %123
  %167 = load %struct.sock*, %struct.sock** %6, align 8
  %168 = call i32 @sock_put(%struct.sock* %167)
  br label %163

169:                                              ; preds = %163, %136
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local i64 @dccp_invalid_packet(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @dccp_v4_csum_finish(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @DCCP_WARN(i8*) #1

declare dso_local %struct.dccp_hdr* @dccp_hdr(%struct.sk_buff*) #1

declare dso_local i64 @dccp_hdr_seq(%struct.dccp_hdr*) #1

declare dso_local %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @dccp_pr_debug(i8*, ...) #1

declare dso_local i32 @dccp_packet_name(i64) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @dccp_packet_without_ack(%struct.sk_buff*) #1

declare dso_local i32 @dccp_pr_debug_cat(i8*, ...) #1

declare dso_local i64 @dccp_hdr_ack_seq(%struct.sk_buff*) #1

declare dso_local %struct.sock* @__inet_lookup_skb(i32*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @inet_twsk_put(i32) #1

declare dso_local i32 @inet_twsk(%struct.sock*) #1

declare dso_local %struct.TYPE_3__* @dccp_sk(%struct.sock*) #1

declare dso_local i32 @xfrm4_policy_check(%struct.sock*, i32, %struct.sk_buff*) #1

declare dso_local i32 @nf_reset(%struct.sk_buff*) #1

declare dso_local i32 @sk_receive_skb(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @dccp_v4_ctl_send_reset(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
