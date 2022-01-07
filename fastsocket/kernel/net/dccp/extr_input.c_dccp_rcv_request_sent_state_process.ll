; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_input.c_dccp_rcv_request_sent_state_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_input.c_dccp_rcv_request_sent_state_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i64, i32 (%struct.sock*)*, i32* }
%struct.sk_buff = type { i32 }
%struct.dccp_hdr = type { i64 }
%struct.inet_connection_sock = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__*, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 (%struct.sock*)* }
%struct.dccp_sock = type { i32, i32, i32, %struct.TYPE_6__, i32, i64, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32, i64 }

@DCCP_PKT_RESPONSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"invalid ackno: S.AWL=%llu, P.ackno=%llu, S.AWH=%llu \0A\00", align 1
@ICSK_TIME_RETRANS = common dso_local global i32 0, align 4
@DCCP_PARTOPEN = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@SOCK_WAKE_IO = common dso_local global i32 0, align 4
@POLL_OUT = common dso_local global i32 0, align 4
@DCCP_RESET_CODE_PACKET_ERROR = common dso_local global i32 0, align 4
@DCCP_RESET_CODE_ABORTED = common dso_local global i32 0, align 4
@DCCP_CLOSED = common dso_local global i32 0, align 4
@ECOMM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.dccp_hdr*, i32)* @dccp_rcv_request_sent_state_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_rcv_request_sent_state_process(%struct.sock* %0, %struct.sk_buff* %1, %struct.dccp_hdr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.dccp_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.inet_connection_sock*, align 8
  %11 = alloca %struct.dccp_sock*, align 8
  %12 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.dccp_hdr* %2, %struct.dccp_hdr** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.dccp_hdr*, %struct.dccp_hdr** %8, align 8
  %14 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DCCP_PKT_RESPONSE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %170

18:                                               ; preds = %4
  %19 = load %struct.sock*, %struct.sock** %6, align 8
  %20 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %19)
  store %struct.inet_connection_sock* %20, %struct.inet_connection_sock** %10, align 8
  %21 = load %struct.sock*, %struct.sock** %6, align 8
  %22 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %21)
  store %struct.dccp_sock* %22, %struct.dccp_sock** %11, align 8
  %23 = call i64 (...) @dccp_timestamp()
  store i64 %23, i64* %12, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = call %struct.TYPE_10__* @DCCP_SKB_CB(%struct.sk_buff* %24)
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.dccp_sock*, %struct.dccp_sock** %11, align 8
  %29 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %28, i32 0, i32 6
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.dccp_sock*, %struct.dccp_sock** %11, align 8
  %32 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @between48(i64 %27, i64 %30, i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %18
  %37 = load %struct.dccp_sock*, %struct.dccp_sock** %11, align 8
  %38 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %37, i32 0, i32 6
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = call %struct.TYPE_10__* @DCCP_SKB_CB(%struct.sk_buff* %40)
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.dccp_sock*, %struct.dccp_sock** %11, align 8
  %45 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @dccp_pr_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %39, i64 %43, i64 %46)
  br label %171

48:                                               ; preds = %18
  %49 = load %struct.sock*, %struct.sock** %6, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %51 = call i64 @dccp_parse_options(%struct.sock* %49, i32* null, %struct.sk_buff* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 1, i32* %5, align 4
  br label %187

54:                                               ; preds = %48
  %55 = load %struct.dccp_sock*, %struct.dccp_sock** %11, align 8
  %56 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @likely(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %54
  %62 = load %struct.sock*, %struct.sock** %6, align 8
  %63 = load i64, i64* %12, align 8
  %64 = load %struct.dccp_sock*, %struct.dccp_sock** %11, align 8
  %65 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %63, %67
  %69 = mul nsw i64 10, %68
  %70 = trunc i64 %69 to i32
  %71 = call i32 @dccp_sample_rtt(%struct.sock* %62, i32 %70)
  %72 = load %struct.dccp_sock*, %struct.dccp_sock** %11, align 8
  %73 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %61, %54
  %75 = load %struct.sock*, %struct.sock** %6, align 8
  %76 = load i32, i32* @ICSK_TIME_RETRANS, align 4
  %77 = call i32 @inet_csk_clear_xmit_timer(%struct.sock* %75, i32 %76)
  %78 = load %struct.sock*, %struct.sock** %6, align 8
  %79 = getelementptr inbounds %struct.sock, %struct.sock* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = icmp eq i32* %80, null
  %82 = zext i1 %81 to i32
  %83 = call i32 @WARN_ON(i32 %82)
  %84 = load %struct.sock*, %struct.sock** %6, align 8
  %85 = getelementptr inbounds %struct.sock, %struct.sock* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @kfree_skb(i32* %86)
  %88 = load %struct.sock*, %struct.sock** %6, align 8
  %89 = getelementptr inbounds %struct.sock, %struct.sock* %88, i32 0, i32 3
  store i32* null, i32** %89, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %91 = call %struct.TYPE_10__* @DCCP_SKB_CB(%struct.sk_buff* %90)
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.dccp_sock*, %struct.dccp_sock** %11, align 8
  %95 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load %struct.sock*, %struct.sock** %6, align 8
  %97 = load %struct.dccp_sock*, %struct.dccp_sock** %11, align 8
  %98 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @dccp_update_gsr(%struct.sock* %96, i32 %99)
  %101 = load %struct.dccp_sock*, %struct.dccp_sock** %11, align 8
  %102 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %101, i32 0, i32 2
  %103 = load %struct.dccp_sock*, %struct.dccp_sock** %11, align 8
  %104 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.dccp_sock*, %struct.dccp_sock** %11, align 8
  %107 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @max48(i32 %105, i32 %108)
  %110 = call i32 @dccp_set_seqno(i32* %102, i32 %109)
  %111 = load %struct.sock*, %struct.sock** %6, align 8
  %112 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %10, align 8
  %113 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @dccp_sync_mss(%struct.sock* %111, i32 %114)
  %116 = load %struct.sock*, %struct.sock** %6, align 8
  %117 = load i32, i32* @DCCP_PARTOPEN, align 4
  %118 = call i32 @dccp_set_state(%struct.sock* %116, i32 %117)
  %119 = load %struct.sock*, %struct.sock** %6, align 8
  %120 = load %struct.dccp_sock*, %struct.dccp_sock** %11, align 8
  %121 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %120, i32 0, i32 0
  %122 = call i64 @dccp_feat_activate_values(%struct.sock* %119, i32* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %74
  br label %176

125:                                              ; preds = %74
  %126 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %10, align 8
  %127 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %126, i32 0, i32 2
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %129, align 8
  %131 = load %struct.sock*, %struct.sock** %6, align 8
  %132 = call i32 %130(%struct.sock* %131)
  %133 = load %struct.sock*, %struct.sock** %6, align 8
  %134 = load i32, i32* @SOCK_DEAD, align 4
  %135 = call i32 @sock_flag(%struct.sock* %133, i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %147, label %137

137:                                              ; preds = %125
  %138 = load %struct.sock*, %struct.sock** %6, align 8
  %139 = getelementptr inbounds %struct.sock, %struct.sock* %138, i32 0, i32 2
  %140 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %139, align 8
  %141 = load %struct.sock*, %struct.sock** %6, align 8
  %142 = call i32 %140(%struct.sock* %141)
  %143 = load %struct.sock*, %struct.sock** %6, align 8
  %144 = load i32, i32* @SOCK_WAKE_IO, align 4
  %145 = load i32, i32* @POLL_OUT, align 4
  %146 = call i32 @sk_wake_async(%struct.sock* %143, i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %137, %125
  %148 = load %struct.sock*, %struct.sock** %6, align 8
  %149 = getelementptr inbounds %struct.sock, %struct.sock* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %164, label %152

152:                                              ; preds = %147
  %153 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %10, align 8
  %154 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %164, label %158

158:                                              ; preds = %152
  %159 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %10, align 8
  %160 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %158, %152, %147
  %165 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %166 = call i32 @__kfree_skb(%struct.sk_buff* %165)
  store i32 0, i32* %5, align 4
  br label %187

167:                                              ; preds = %158
  %168 = load %struct.sock*, %struct.sock** %6, align 8
  %169 = call i32 @dccp_send_ack(%struct.sock* %168)
  store i32 -1, i32* %5, align 4
  br label %187

170:                                              ; preds = %4
  br label %171

171:                                              ; preds = %170, %36
  %172 = load i32, i32* @DCCP_RESET_CODE_PACKET_ERROR, align 4
  %173 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %174 = call %struct.TYPE_10__* @DCCP_SKB_CB(%struct.sk_buff* %173)
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  store i32 %172, i32* %175, align 8
  store i32 1, i32* %5, align 4
  br label %187

176:                                              ; preds = %124
  %177 = load i32, i32* @DCCP_RESET_CODE_ABORTED, align 4
  %178 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %179 = call %struct.TYPE_10__* @DCCP_SKB_CB(%struct.sk_buff* %178)
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  store i32 %177, i32* %180, align 8
  %181 = load %struct.sock*, %struct.sock** %6, align 8
  %182 = load i32, i32* @DCCP_CLOSED, align 4
  %183 = call i32 @dccp_set_state(%struct.sock* %181, i32 %182)
  %184 = load i32, i32* @ECOMM, align 4
  %185 = load %struct.sock*, %struct.sock** %6, align 8
  %186 = getelementptr inbounds %struct.sock, %struct.sock* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 8
  store i32 1, i32* %5, align 4
  br label %187

187:                                              ; preds = %176, %171, %167, %164, %53
  %188 = load i32, i32* %5, align 4
  ret i32 %188
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local i64 @dccp_timestamp(...) #1

declare dso_local i32 @between48(i64, i64, i64) #1

declare dso_local %struct.TYPE_10__* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @dccp_pr_debug(i8*, i64, i64, i64) #1

declare dso_local i64 @dccp_parse_options(%struct.sock*, i32*, %struct.sk_buff*) #1

declare dso_local i64 @likely(i64) #1

declare dso_local i32 @dccp_sample_rtt(%struct.sock*, i32) #1

declare dso_local i32 @inet_csk_clear_xmit_timer(%struct.sock*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree_skb(i32*) #1

declare dso_local i32 @dccp_update_gsr(%struct.sock*, i32) #1

declare dso_local i32 @dccp_set_seqno(i32*, i32) #1

declare dso_local i32 @max48(i32, i32) #1

declare dso_local i32 @dccp_sync_mss(%struct.sock*, i32) #1

declare dso_local i32 @dccp_set_state(%struct.sock*, i32) #1

declare dso_local i64 @dccp_feat_activate_values(%struct.sock*, i32*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @sk_wake_async(%struct.sock*, i32, i32) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @dccp_send_ack(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
