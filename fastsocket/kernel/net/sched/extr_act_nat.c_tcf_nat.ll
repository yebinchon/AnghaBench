; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_nat.c_tcf_nat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_nat.c_tcf_nat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { %struct.tcf_nat* }
%struct.tcf_nat = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.tcf_result = type { i32 }
%struct.iphdr = type { i32, i32, i32, i32, i32, i32 }
%struct.tcphdr = type { i32 }
%struct.udphdr = type { i32 }
%struct.icmphdr = type { i32, i32 }

@jiffies = common dso_local global i32 0, align 4
@TCA_NAT_FLAG_EGRESS = common dso_local global i32 0, align 4
@TC_ACT_SHOT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@IP_OFFSET = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i32 0, align 4
@CSUM_MANGLED_0 = common dso_local global i32 0, align 4
@ICMP_DEST_UNREACH = common dso_local global i32 0, align 4
@ICMP_TIME_EXCEEDED = common dso_local global i32 0, align 4
@ICMP_PARAMETERPROB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, %struct.tcf_result*)* @tcf_nat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_nat(%struct.sk_buff* %0, %struct.tc_action* %1, %struct.tcf_result* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tc_action*, align 8
  %7 = alloca %struct.tcf_result*, align 8
  %8 = alloca %struct.tcf_nat*, align 8
  %9 = alloca %struct.iphdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.tcphdr*, align 8
  %18 = alloca %struct.udphdr*, align 8
  %19 = alloca %struct.icmphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tc_action* %1, %struct.tc_action** %6, align 8
  store %struct.tcf_result* %2, %struct.tcf_result** %7, align 8
  %20 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %21 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %20, i32 0, i32 0
  %22 = load %struct.tcf_nat*, %struct.tcf_nat** %21, align 8
  store %struct.tcf_nat* %22, %struct.tcf_nat** %8, align 8
  %23 = load %struct.tcf_nat*, %struct.tcf_nat** %8, align 8
  %24 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %23, i32 0, i32 5
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load i32, i32* @jiffies, align 4
  %27 = load %struct.tcf_nat*, %struct.tcf_nat** %8, align 8
  %28 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %27, i32 0, i32 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load %struct.tcf_nat*, %struct.tcf_nat** %8, align 8
  %31 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  %33 = load %struct.tcf_nat*, %struct.tcf_nat** %8, align 8
  %34 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %11, align 4
  %36 = load %struct.tcf_nat*, %struct.tcf_nat** %8, align 8
  %37 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %12, align 4
  %39 = load %struct.tcf_nat*, %struct.tcf_nat** %8, align 8
  %40 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @TCA_NAT_FLAG_EGRESS, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %14, align 4
  %44 = load %struct.tcf_nat*, %struct.tcf_nat** %8, align 8
  %45 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %15, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = call i64 @qdisc_pkt_len(%struct.sk_buff* %47)
  %49 = load %struct.tcf_nat*, %struct.tcf_nat** %8, align 8
  %50 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %49, i32 0, i32 7
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %48
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 4
  %56 = load %struct.tcf_nat*, %struct.tcf_nat** %8, align 8
  %57 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %56, i32 0, i32 7
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load %struct.tcf_nat*, %struct.tcf_nat** %8, align 8
  %62 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %61, i32 0, i32 5
  %63 = call i32 @spin_unlock(i32* %62)
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* @TC_ACT_SHOT, align 4
  %66 = icmp eq i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %3
  br label %377

71:                                               ; preds = %3
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = call i32 @pskb_may_pull(%struct.sk_buff* %72, i32 24)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  br label %377

76:                                               ; preds = %71
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %78 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %77)
  store %struct.iphdr* %78, %struct.iphdr** %9, align 8
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %83 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %13, align 4
  br label %89

85:                                               ; preds = %76
  %86 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %87 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %13, align 4
  br label %89

89:                                               ; preds = %85, %81
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %13, align 4
  %92 = xor i32 %90, %91
  %93 = load i32, i32* %12, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %138, label %96

96:                                               ; preds = %89
  %97 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %98 = call i64 @skb_cloned(%struct.sk_buff* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %96
  %101 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %102 = call i32 @skb_clone_writable(%struct.sk_buff* %101, i32 24)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %100
  %105 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %106 = load i32, i32* @GFP_ATOMIC, align 4
  %107 = call i64 @pskb_expand_head(%struct.sk_buff* %105, i32 0, i32 0, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %377

110:                                              ; preds = %104, %100, %96
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %11, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %12, align 4
  %116 = xor i32 %115, -1
  %117 = and i32 %114, %116
  %118 = load i32, i32* %11, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %11, align 4
  %120 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %121 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %120)
  store %struct.iphdr* %121, %struct.iphdr** %9, align 8
  %122 = load i32, i32* %14, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %110
  %125 = load i32, i32* %11, align 4
  %126 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %127 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 4
  br label %132

128:                                              ; preds = %110
  %129 = load i32, i32* %11, align 4
  %130 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %131 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  br label %132

132:                                              ; preds = %128, %124
  %133 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %134 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %133, i32 0, i32 5
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* %11, align 4
  %137 = call i32 @csum_replace4(i32* %134, i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %132, %89
  %139 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %140 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = mul nsw i32 %141, 4
  store i32 %142, i32* %16, align 4
  %143 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %144 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @IP_OFFSET, align 4
  %147 = call i32 @htons(i32 %146)
  %148 = and i32 %145, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %138
  br label %155

151:                                              ; preds = %138
  %152 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %153 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  br label %155

155:                                              ; preds = %151, %150
  %156 = phi i32 [ 0, %150 ], [ %154, %151 ]
  switch i32 %156, label %374 [
    i32 129, label %157
    i32 128, label %197
    i32 130, label %258
  ]

157:                                              ; preds = %155
  %158 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %159 = load i32, i32* %16, align 4
  %160 = sext i32 %159 to i64
  %161 = add i64 %160, 4
  %162 = trunc i64 %161 to i32
  %163 = call i32 @pskb_may_pull(%struct.sk_buff* %158, i32 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %182

165:                                              ; preds = %157
  %166 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %167 = call i64 @skb_cloned(%struct.sk_buff* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %183

169:                                              ; preds = %165
  %170 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %171 = load i32, i32* %16, align 4
  %172 = sext i32 %171 to i64
  %173 = add i64 %172, 4
  %174 = trunc i64 %173 to i32
  %175 = call i32 @skb_clone_writable(%struct.sk_buff* %170, i32 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %183, label %177

177:                                              ; preds = %169
  %178 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %179 = load i32, i32* @GFP_ATOMIC, align 4
  %180 = call i64 @pskb_expand_head(%struct.sk_buff* %178, i32 0, i32 0, i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %177, %157
  br label %377

183:                                              ; preds = %177, %169, %165
  %184 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %185 = call i32 @skb_network_header(%struct.sk_buff* %184)
  %186 = load i32, i32* %16, align 4
  %187 = add nsw i32 %185, %186
  %188 = sext i32 %187 to i64
  %189 = inttoptr i64 %188 to i8*
  %190 = bitcast i8* %189 to %struct.tcphdr*
  store %struct.tcphdr* %190, %struct.tcphdr** %17, align 8
  %191 = load %struct.tcphdr*, %struct.tcphdr** %17, align 8
  %192 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %191, i32 0, i32 0
  %193 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %194 = load i32, i32* %13, align 4
  %195 = load i32, i32* %11, align 4
  %196 = call i32 @inet_proto_csum_replace4(i32* %192, %struct.sk_buff* %193, i32 %194, i32 %195, i32 1)
  br label %375

197:                                              ; preds = %155
  %198 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %199 = load i32, i32* %16, align 4
  %200 = sext i32 %199 to i64
  %201 = add i64 %200, 4
  %202 = trunc i64 %201 to i32
  %203 = call i32 @pskb_may_pull(%struct.sk_buff* %198, i32 %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %222

205:                                              ; preds = %197
  %206 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %207 = call i64 @skb_cloned(%struct.sk_buff* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %223

209:                                              ; preds = %205
  %210 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %211 = load i32, i32* %16, align 4
  %212 = sext i32 %211 to i64
  %213 = add i64 %212, 4
  %214 = trunc i64 %213 to i32
  %215 = call i32 @skb_clone_writable(%struct.sk_buff* %210, i32 %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %223, label %217

217:                                              ; preds = %209
  %218 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %219 = load i32, i32* @GFP_ATOMIC, align 4
  %220 = call i64 @pskb_expand_head(%struct.sk_buff* %218, i32 0, i32 0, i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %217, %197
  br label %377

223:                                              ; preds = %217, %209, %205
  %224 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %225 = call i32 @skb_network_header(%struct.sk_buff* %224)
  %226 = load i32, i32* %16, align 4
  %227 = add nsw i32 %225, %226
  %228 = sext i32 %227 to i64
  %229 = inttoptr i64 %228 to i8*
  %230 = bitcast i8* %229 to %struct.udphdr*
  store %struct.udphdr* %230, %struct.udphdr** %18, align 8
  %231 = load %struct.udphdr*, %struct.udphdr** %18, align 8
  %232 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %241, label %235

235:                                              ; preds = %223
  %236 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %237 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @CHECKSUM_PARTIAL, align 4
  %240 = icmp eq i32 %238, %239
  br i1 %240, label %241, label %257

241:                                              ; preds = %235, %223
  %242 = load %struct.udphdr*, %struct.udphdr** %18, align 8
  %243 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %242, i32 0, i32 0
  %244 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %245 = load i32, i32* %13, align 4
  %246 = load i32, i32* %11, align 4
  %247 = call i32 @inet_proto_csum_replace4(i32* %243, %struct.sk_buff* %244, i32 %245, i32 %246, i32 1)
  %248 = load %struct.udphdr*, %struct.udphdr** %18, align 8
  %249 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %256, label %252

252:                                              ; preds = %241
  %253 = load i32, i32* @CSUM_MANGLED_0, align 4
  %254 = load %struct.udphdr*, %struct.udphdr** %18, align 8
  %255 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %254, i32 0, i32 0
  store i32 %253, i32* %255, align 4
  br label %256

256:                                              ; preds = %252, %241
  br label %257

257:                                              ; preds = %256, %235
  br label %375

258:                                              ; preds = %155
  %259 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %260 = load i32, i32* %16, align 4
  %261 = sext i32 %260 to i64
  %262 = add i64 %261, 8
  %263 = add i64 %262, 24
  %264 = trunc i64 %263 to i32
  %265 = call i32 @pskb_may_pull(%struct.sk_buff* %259, i32 %264)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %268, label %267

267:                                              ; preds = %258
  br label %377

268:                                              ; preds = %258
  %269 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %270 = call i32 @skb_network_header(%struct.sk_buff* %269)
  %271 = load i32, i32* %16, align 4
  %272 = add nsw i32 %270, %271
  %273 = sext i32 %272 to i64
  %274 = inttoptr i64 %273 to i8*
  %275 = bitcast i8* %274 to %struct.icmphdr*
  store %struct.icmphdr* %275, %struct.icmphdr** %19, align 8
  %276 = load %struct.icmphdr*, %struct.icmphdr** %19, align 8
  %277 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* @ICMP_DEST_UNREACH, align 4
  %280 = icmp ne i32 %278, %279
  br i1 %280, label %281, label %294

281:                                              ; preds = %268
  %282 = load %struct.icmphdr*, %struct.icmphdr** %19, align 8
  %283 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* @ICMP_TIME_EXCEEDED, align 4
  %286 = icmp ne i32 %284, %285
  br i1 %286, label %287, label %294

287:                                              ; preds = %281
  %288 = load %struct.icmphdr*, %struct.icmphdr** %19, align 8
  %289 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* @ICMP_PARAMETERPROB, align 4
  %292 = icmp ne i32 %290, %291
  br i1 %292, label %293, label %294

293:                                              ; preds = %287
  br label %375

294:                                              ; preds = %287, %281, %268
  %295 = load %struct.icmphdr*, %struct.icmphdr** %19, align 8
  %296 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %295, i64 1
  %297 = bitcast %struct.icmphdr* %296 to i8*
  %298 = bitcast i8* %297 to %struct.iphdr*
  store %struct.iphdr* %298, %struct.iphdr** %9, align 8
  %299 = load i32, i32* %14, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %305

301:                                              ; preds = %294
  %302 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %303 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  store i32 %304, i32* %13, align 4
  br label %309

305:                                              ; preds = %294
  %306 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %307 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  store i32 %308, i32* %13, align 4
  br label %309

309:                                              ; preds = %305, %301
  %310 = load i32, i32* %10, align 4
  %311 = load i32, i32* %13, align 4
  %312 = xor i32 %310, %311
  %313 = load i32, i32* %12, align 4
  %314 = and i32 %312, %313
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %317

316:                                              ; preds = %309
  br label %375

317:                                              ; preds = %309
  %318 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %319 = call i64 @skb_cloned(%struct.sk_buff* %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %336

321:                                              ; preds = %317
  %322 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %323 = load i32, i32* %16, align 4
  %324 = sext i32 %323 to i64
  %325 = add i64 %324, 8
  %326 = add i64 %325, 24
  %327 = trunc i64 %326 to i32
  %328 = call i32 @skb_clone_writable(%struct.sk_buff* %322, i32 %327)
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %336, label %330

330:                                              ; preds = %321
  %331 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %332 = load i32, i32* @GFP_ATOMIC, align 4
  %333 = call i64 @pskb_expand_head(%struct.sk_buff* %331, i32 0, i32 0, i32 %332)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %336

335:                                              ; preds = %330
  br label %377

336:                                              ; preds = %330, %321, %317
  %337 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %338 = call i32 @skb_network_header(%struct.sk_buff* %337)
  %339 = load i32, i32* %16, align 4
  %340 = add nsw i32 %338, %339
  %341 = sext i32 %340 to i64
  %342 = inttoptr i64 %341 to i8*
  %343 = bitcast i8* %342 to %struct.icmphdr*
  store %struct.icmphdr* %343, %struct.icmphdr** %19, align 8
  %344 = load %struct.icmphdr*, %struct.icmphdr** %19, align 8
  %345 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %344, i64 1
  %346 = bitcast %struct.icmphdr* %345 to i8*
  %347 = bitcast i8* %346 to %struct.iphdr*
  store %struct.iphdr* %347, %struct.iphdr** %9, align 8
  %348 = load i32, i32* %12, align 4
  %349 = load i32, i32* %11, align 4
  %350 = and i32 %349, %348
  store i32 %350, i32* %11, align 4
  %351 = load i32, i32* %13, align 4
  %352 = load i32, i32* %12, align 4
  %353 = xor i32 %352, -1
  %354 = and i32 %351, %353
  %355 = load i32, i32* %11, align 4
  %356 = or i32 %355, %354
  store i32 %356, i32* %11, align 4
  %357 = load i32, i32* %14, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %363

359:                                              ; preds = %336
  %360 = load i32, i32* %11, align 4
  %361 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %362 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %361, i32 0, i32 1
  store i32 %360, i32* %362, align 4
  br label %367

363:                                              ; preds = %336
  %364 = load i32, i32* %11, align 4
  %365 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %366 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %365, i32 0, i32 0
  store i32 %364, i32* %366, align 4
  br label %367

367:                                              ; preds = %363, %359
  %368 = load %struct.icmphdr*, %struct.icmphdr** %19, align 8
  %369 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %368, i32 0, i32 0
  %370 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %371 = load i32, i32* %13, align 4
  %372 = load i32, i32* %11, align 4
  %373 = call i32 @inet_proto_csum_replace4(i32* %369, %struct.sk_buff* %370, i32 %371, i32 %372, i32 1)
  br label %375

374:                                              ; preds = %155
  br label %375

375:                                              ; preds = %374, %367, %316, %293, %257, %183
  %376 = load i32, i32* %15, align 4
  store i32 %376, i32* %4, align 4
  br label %390

377:                                              ; preds = %335, %267, %222, %182, %109, %75, %70
  %378 = load %struct.tcf_nat*, %struct.tcf_nat** %8, align 8
  %379 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %378, i32 0, i32 5
  %380 = call i32 @spin_lock(i32* %379)
  %381 = load %struct.tcf_nat*, %struct.tcf_nat** %8, align 8
  %382 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %381, i32 0, i32 6
  %383 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %383, align 4
  %386 = load %struct.tcf_nat*, %struct.tcf_nat** %8, align 8
  %387 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %386, i32 0, i32 5
  %388 = call i32 @spin_unlock(i32* %387)
  %389 = load i32, i32* @TC_ACT_SHOT, align 4
  store i32 %389, i32* %4, align 4
  br label %390

390:                                              ; preds = %377, %375
  %391 = load i32, i32* %4, align 4
  ret i32 %391
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @skb_cloned(%struct.sk_buff*) #1

declare dso_local i32 @skb_clone_writable(%struct.sk_buff*, i32) #1

declare dso_local i64 @pskb_expand_head(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @csum_replace4(i32*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @inet_proto_csum_replace4(i32*, %struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
