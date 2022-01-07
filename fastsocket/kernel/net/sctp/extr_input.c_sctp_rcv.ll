; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_input.c_sctp_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_input.c_sctp_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.sock = type { i64 }
%struct.sctp_association = type { %struct.sctp_ep_common }
%struct.sctp_ep_common = type { i32, %struct.sock* }
%struct.sctp_endpoint = type { %struct.sctp_ep_common }
%struct.sctp_transport = type { i32 }
%struct.sctp_chunk = type { %struct.sctp_ep_common*, %struct.sctp_transport*, %struct.sctphdr* }
%struct.sctphdr = type { i32 }
%union.sctp_addr = type { i32 }
%struct.sctp_af = type { i64 (%struct.sk_buff*)*, i32 (%union.sctp_addr*, i32*, %struct.sk_buff*)*, i32 (%union.sctp_addr*, %struct.sk_buff*, i32)* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.sctp_endpoint* }
%struct.TYPE_6__ = type { %struct.sctp_chunk* }

@PACKET_HOST = common dso_local global i64 0, align 8
@SCTP_MIB_INSCTPPACKS = common dso_local global i32 0, align 4
@sctp_checksum_disable = common dso_local global i32 0, align 4
@SCTP_MIB_OUTOFBLUES = common dso_local global i32 0, align 4
@XFRM_POLICY_IN = common dso_local global i32 0, align 4
@SCTP_MIB_IN_PKT_BACKLOG = common dso_local global i32 0, align 4
@SCTP_MIB_IN_PKT_SOFTIRQ = common dso_local global i32 0, align 4
@SCTP_MIB_IN_PKT_DISCARDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_rcv(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca %struct.sctp_endpoint*, align 8
  %7 = alloca %struct.sctp_ep_common*, align 8
  %8 = alloca %struct.sctp_transport*, align 8
  %9 = alloca %struct.sctp_chunk*, align 8
  %10 = alloca %struct.sctphdr*, align 8
  %11 = alloca %union.sctp_addr, align 4
  %12 = alloca %union.sctp_addr, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sctp_af*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.sctp_endpoint* null, %struct.sctp_endpoint** %6, align 8
  store %struct.sctp_transport* null, %struct.sctp_transport** %8, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PACKET_HOST, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %260

21:                                               ; preds = %1
  %22 = load i32, i32* @SCTP_MIB_INSCTPPACKS, align 4
  %23 = call i32 @SCTP_INC_STATS_BH(i32 %22)
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = call i64 @skb_linearize(%struct.sk_buff* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %260

28:                                               ; preds = %21
  %29 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %30 = call %struct.sctphdr* @sctp_hdr(%struct.sk_buff* %29)
  store %struct.sctphdr* %30, %struct.sctphdr** %10, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %33 = call i32 @skb_transport_offset(%struct.sk_buff* %32)
  %34 = call i32 @__skb_pull(%struct.sk_buff* %31, i32 %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = icmp ult i64 %38, 4
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  br label %260

41:                                               ; preds = %28
  %42 = load i32, i32* @sctp_checksum_disable, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %41
  %45 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %46 = call i32 @skb_csum_unnecessary(%struct.sk_buff* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %50 = call i64 @sctp_rcv_checksum(%struct.sk_buff* %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %260

53:                                               ; preds = %48, %44, %41
  %54 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %55 = call i32 @skb_pull(%struct.sk_buff* %54, i32 4)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = icmp ult i64 %59, 4
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %260

62:                                               ; preds = %53
  %63 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %64 = call %struct.TYPE_5__* @ip_hdr(%struct.sk_buff* %63)
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ipver2af(i32 %66)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = call %struct.sctp_af* @sctp_get_af_specific(i32 %68)
  store %struct.sctp_af* %69, %struct.sctp_af** %14, align 8
  %70 = load %struct.sctp_af*, %struct.sctp_af** %14, align 8
  %71 = icmp ne %struct.sctp_af* %70, null
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %62
  br label %260

77:                                               ; preds = %62
  %78 = load %struct.sctp_af*, %struct.sctp_af** %14, align 8
  %79 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %78, i32 0, i32 2
  %80 = load i32 (%union.sctp_addr*, %struct.sk_buff*, i32)*, i32 (%union.sctp_addr*, %struct.sk_buff*, i32)** %79, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %82 = call i32 %80(%union.sctp_addr* %11, %struct.sk_buff* %81, i32 1)
  %83 = load %struct.sctp_af*, %struct.sctp_af** %14, align 8
  %84 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %83, i32 0, i32 2
  %85 = load i32 (%union.sctp_addr*, %struct.sk_buff*, i32)*, i32 (%union.sctp_addr*, %struct.sk_buff*, i32)** %84, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %87 = call i32 %85(%union.sctp_addr* %12, %struct.sk_buff* %86, i32 0)
  %88 = load %struct.sctp_af*, %struct.sctp_af** %14, align 8
  %89 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %88, i32 0, i32 1
  %90 = load i32 (%union.sctp_addr*, i32*, %struct.sk_buff*)*, i32 (%union.sctp_addr*, i32*, %struct.sk_buff*)** %89, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %92 = call i32 %90(%union.sctp_addr* %11, i32* null, %struct.sk_buff* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %77
  %95 = load %struct.sctp_af*, %struct.sctp_af** %14, align 8
  %96 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %95, i32 0, i32 1
  %97 = load i32 (%union.sctp_addr*, i32*, %struct.sk_buff*)*, i32 (%union.sctp_addr*, i32*, %struct.sk_buff*)** %96, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %99 = call i32 %97(%union.sctp_addr* %12, i32* null, %struct.sk_buff* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %94, %77
  br label %260

102:                                              ; preds = %94
  %103 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %104 = call %struct.sctp_association* @__sctp_rcv_lookup(%struct.sk_buff* %103, %union.sctp_addr* %11, %union.sctp_addr* %12, %struct.sctp_transport** %8)
  store %struct.sctp_association* %104, %struct.sctp_association** %5, align 8
  %105 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %106 = icmp ne %struct.sctp_association* %105, null
  br i1 %106, label %109, label %107

107:                                              ; preds = %102
  %108 = call %struct.sctp_endpoint* @__sctp_rcv_lookup_endpoint(%union.sctp_addr* %12)
  store %struct.sctp_endpoint* %108, %struct.sctp_endpoint** %6, align 8
  br label %109

109:                                              ; preds = %107, %102
  %110 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %111 = icmp ne %struct.sctp_association* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %114 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %113, i32 0, i32 0
  br label %118

115:                                              ; preds = %109
  %116 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %6, align 8
  %117 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %116, i32 0, i32 0
  br label %118

118:                                              ; preds = %115, %112
  %119 = phi %struct.sctp_ep_common* [ %114, %112 ], [ %117, %115 ]
  store %struct.sctp_ep_common* %119, %struct.sctp_ep_common** %7, align 8
  %120 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %7, align 8
  %121 = getelementptr inbounds %struct.sctp_ep_common, %struct.sctp_ep_common* %120, i32 0, i32 1
  %122 = load %struct.sock*, %struct.sock** %121, align 8
  store %struct.sock* %122, %struct.sock** %4, align 8
  %123 = load %struct.sock*, %struct.sock** %4, align 8
  %124 = getelementptr inbounds %struct.sock, %struct.sock* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %156

127:                                              ; preds = %118
  %128 = load %struct.sock*, %struct.sock** %4, align 8
  %129 = getelementptr inbounds %struct.sock, %struct.sock* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.sctp_af*, %struct.sctp_af** %14, align 8
  %132 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %131, i32 0, i32 0
  %133 = load i64 (%struct.sk_buff*)*, i64 (%struct.sk_buff*)** %132, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %135 = call i64 %133(%struct.sk_buff* %134)
  %136 = icmp ne i64 %130, %135
  br i1 %136, label %137, label %156

137:                                              ; preds = %127
  %138 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %139 = icmp ne %struct.sctp_association* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %142 = call i32 @sctp_association_put(%struct.sctp_association* %141)
  store %struct.sctp_association* null, %struct.sctp_association** %5, align 8
  br label %146

143:                                              ; preds = %137
  %144 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %6, align 8
  %145 = call i32 @sctp_endpoint_put(%struct.sctp_endpoint* %144)
  store %struct.sctp_endpoint* null, %struct.sctp_endpoint** %6, align 8
  br label %146

146:                                              ; preds = %143, %140
  %147 = call %struct.sock* (...) @sctp_get_ctl_sock()
  store %struct.sock* %147, %struct.sock** %4, align 8
  %148 = load %struct.sock*, %struct.sock** %4, align 8
  %149 = call %struct.TYPE_4__* @sctp_sk(%struct.sock* %148)
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %150, align 8
  store %struct.sctp_endpoint* %151, %struct.sctp_endpoint** %6, align 8
  %152 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %6, align 8
  %153 = call i32 @sctp_endpoint_hold(%struct.sctp_endpoint* %152)
  %154 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %6, align 8
  %155 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %154, i32 0, i32 0
  store %struct.sctp_ep_common* %155, %struct.sctp_ep_common** %7, align 8
  br label %156

156:                                              ; preds = %146, %127, %118
  %157 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %158 = icmp ne %struct.sctp_association* %157, null
  br i1 %158, label %167, label %159

159:                                              ; preds = %156
  %160 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %161 = call i64 @sctp_rcv_ootb(%struct.sk_buff* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %159
  %164 = load i32, i32* @SCTP_MIB_OUTOFBLUES, align 4
  %165 = call i32 @SCTP_INC_STATS_BH(i32 %164)
  br label %265

166:                                              ; preds = %159
  br label %167

167:                                              ; preds = %166, %156
  %168 = load %struct.sock*, %struct.sock** %4, align 8
  %169 = load i32, i32* @XFRM_POLICY_IN, align 4
  %170 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %171 = load i32, i32* %13, align 4
  %172 = call i32 @xfrm_policy_check(%struct.sock* %168, i32 %169, %struct.sk_buff* %170, i32 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %167
  br label %265

175:                                              ; preds = %167
  %176 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %177 = call i32 @nf_reset(%struct.sk_buff* %176)
  %178 = load %struct.sock*, %struct.sock** %4, align 8
  %179 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %180 = call i64 @sk_filter(%struct.sock* %178, %struct.sk_buff* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %175
  br label %265

183:                                              ; preds = %175
  %184 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %185 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %186 = load %struct.sock*, %struct.sock** %4, align 8
  %187 = call %struct.sctp_chunk* @sctp_chunkify(%struct.sk_buff* %184, %struct.sctp_association* %185, %struct.sock* %186)
  store %struct.sctp_chunk* %187, %struct.sctp_chunk** %9, align 8
  %188 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %189 = icmp ne %struct.sctp_chunk* %188, null
  br i1 %189, label %191, label %190

190:                                              ; preds = %183
  br label %265

191:                                              ; preds = %183
  %192 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %193 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %194 = call %struct.TYPE_6__* @SCTP_INPUT_CB(%struct.sk_buff* %193)
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  store %struct.sctp_chunk* %192, %struct.sctp_chunk** %195, align 8
  %196 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %7, align 8
  %197 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %198 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %197, i32 0, i32 0
  store %struct.sctp_ep_common* %196, %struct.sctp_ep_common** %198, align 8
  %199 = load %struct.sctphdr*, %struct.sctphdr** %10, align 8
  %200 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %201 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %200, i32 0, i32 2
  store %struct.sctphdr* %199, %struct.sctphdr** %201, align 8
  %202 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %203 = call i32 @sctp_init_addrs(%struct.sctp_chunk* %202, %union.sctp_addr* %11, %union.sctp_addr* %12)
  %204 = load %struct.sctp_transport*, %struct.sctp_transport** %8, align 8
  %205 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %206 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %205, i32 0, i32 1
  store %struct.sctp_transport* %204, %struct.sctp_transport** %206, align 8
  %207 = load %struct.sock*, %struct.sock** %4, align 8
  %208 = call i32 @sctp_bh_lock_sock(%struct.sock* %207)
  %209 = load %struct.sock*, %struct.sock** %4, align 8
  %210 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %7, align 8
  %211 = getelementptr inbounds %struct.sctp_ep_common, %struct.sctp_ep_common* %210, i32 0, i32 1
  %212 = load %struct.sock*, %struct.sock** %211, align 8
  %213 = icmp ne %struct.sock* %209, %212
  br i1 %213, label %214, label %222

214:                                              ; preds = %191
  %215 = load %struct.sock*, %struct.sock** %4, align 8
  %216 = call i32 @sctp_bh_unlock_sock(%struct.sock* %215)
  %217 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %7, align 8
  %218 = getelementptr inbounds %struct.sctp_ep_common, %struct.sctp_ep_common* %217, i32 0, i32 1
  %219 = load %struct.sock*, %struct.sock** %218, align 8
  store %struct.sock* %219, %struct.sock** %4, align 8
  %220 = load %struct.sock*, %struct.sock** %4, align 8
  %221 = call i32 @sctp_bh_lock_sock(%struct.sock* %220)
  br label %222

222:                                              ; preds = %214, %191
  %223 = load %struct.sock*, %struct.sock** %4, align 8
  %224 = call i64 @sock_owned_by_user(%struct.sock* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %239

226:                                              ; preds = %222
  %227 = load %struct.sock*, %struct.sock** %4, align 8
  %228 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %229 = call i64 @sctp_add_backlog(%struct.sock* %227, %struct.sk_buff* %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %226
  %232 = load %struct.sock*, %struct.sock** %4, align 8
  %233 = call i32 @sctp_bh_unlock_sock(%struct.sock* %232)
  %234 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %235 = call i32 @sctp_chunk_free(%struct.sctp_chunk* %234)
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %265

236:                                              ; preds = %226
  %237 = load i32, i32* @SCTP_MIB_IN_PKT_BACKLOG, align 4
  %238 = call i32 @SCTP_INC_STATS_BH(i32 %237)
  br label %248

239:                                              ; preds = %222
  %240 = load i32, i32* @SCTP_MIB_IN_PKT_SOFTIRQ, align 4
  %241 = call i32 @SCTP_INC_STATS_BH(i32 %240)
  %242 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %243 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %242, i32 0, i32 0
  %244 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %243, align 8
  %245 = getelementptr inbounds %struct.sctp_ep_common, %struct.sctp_ep_common* %244, i32 0, i32 0
  %246 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %247 = call i32 @sctp_inq_push(i32* %245, %struct.sctp_chunk* %246)
  br label %248

248:                                              ; preds = %239, %236
  %249 = load %struct.sock*, %struct.sock** %4, align 8
  %250 = call i32 @sctp_bh_unlock_sock(%struct.sock* %249)
  %251 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %252 = icmp ne %struct.sctp_association* %251, null
  br i1 %252, label %253, label %256

253:                                              ; preds = %248
  %254 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %255 = call i32 @sctp_association_put(%struct.sctp_association* %254)
  br label %259

256:                                              ; preds = %248
  %257 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %6, align 8
  %258 = call i32 @sctp_endpoint_put(%struct.sctp_endpoint* %257)
  br label %259

259:                                              ; preds = %256, %253
  store i32 0, i32* %2, align 4
  br label %275

260:                                              ; preds = %274, %101, %76, %61, %52, %40, %27, %20
  %261 = load i32, i32* @SCTP_MIB_IN_PKT_DISCARDS, align 4
  %262 = call i32 @SCTP_INC_STATS_BH(i32 %261)
  %263 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %264 = call i32 @kfree_skb(%struct.sk_buff* %263)
  store i32 0, i32* %2, align 4
  br label %275

265:                                              ; preds = %231, %190, %182, %174, %163
  %266 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %267 = icmp ne %struct.sctp_association* %266, null
  br i1 %267, label %268, label %271

268:                                              ; preds = %265
  %269 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %270 = call i32 @sctp_association_put(%struct.sctp_association* %269)
  br label %274

271:                                              ; preds = %265
  %272 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %6, align 8
  %273 = call i32 @sctp_endpoint_put(%struct.sctp_endpoint* %272)
  br label %274

274:                                              ; preds = %271, %268
  br label %260

275:                                              ; preds = %260, %259
  %276 = load i32, i32* %2, align 4
  ret i32 %276
}

declare dso_local i32 @SCTP_INC_STATS_BH(i32) #1

declare dso_local i64 @skb_linearize(%struct.sk_buff*) #1

declare dso_local %struct.sctphdr* @sctp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @skb_csum_unnecessary(%struct.sk_buff*) #1

declare dso_local i64 @sctp_rcv_checksum(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @ipver2af(i32) #1

declare dso_local %struct.TYPE_5__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.sctp_af* @sctp_get_af_specific(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sctp_association* @__sctp_rcv_lookup(%struct.sk_buff*, %union.sctp_addr*, %union.sctp_addr*, %struct.sctp_transport**) #1

declare dso_local %struct.sctp_endpoint* @__sctp_rcv_lookup_endpoint(%union.sctp_addr*) #1

declare dso_local i32 @sctp_association_put(%struct.sctp_association*) #1

declare dso_local i32 @sctp_endpoint_put(%struct.sctp_endpoint*) #1

declare dso_local %struct.sock* @sctp_get_ctl_sock(...) #1

declare dso_local %struct.TYPE_4__* @sctp_sk(%struct.sock*) #1

declare dso_local i32 @sctp_endpoint_hold(%struct.sctp_endpoint*) #1

declare dso_local i64 @sctp_rcv_ootb(%struct.sk_buff*) #1

declare dso_local i32 @xfrm_policy_check(%struct.sock*, i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @nf_reset(%struct.sk_buff*) #1

declare dso_local i64 @sk_filter(%struct.sock*, %struct.sk_buff*) #1

declare dso_local %struct.sctp_chunk* @sctp_chunkify(%struct.sk_buff*, %struct.sctp_association*, %struct.sock*) #1

declare dso_local %struct.TYPE_6__* @SCTP_INPUT_CB(%struct.sk_buff*) #1

declare dso_local i32 @sctp_init_addrs(%struct.sctp_chunk*, %union.sctp_addr*, %union.sctp_addr*) #1

declare dso_local i32 @sctp_bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @sctp_bh_unlock_sock(%struct.sock*) #1

declare dso_local i64 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i64 @sctp_add_backlog(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @sctp_chunk_free(%struct.sctp_chunk*) #1

declare dso_local i32 @sctp_inq_push(i32*, %struct.sctp_chunk*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
