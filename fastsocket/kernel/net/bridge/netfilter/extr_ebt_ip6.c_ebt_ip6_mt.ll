; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_ip6.c_ebt_ip6_mt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_ip6.c_ebt_ip6_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_match_param = type { %struct.ebt_ip6_info* }
%struct.ebt_ip6_info = type { i32, i64, i64, i64*, i64*, i32, %struct.TYPE_18__, i32, %struct.TYPE_13__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }
%struct.ipv6hdr = type { i64, i32, i32, %struct.TYPE_16__, %struct.TYPE_11__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }
%struct.tcpudphdr = type { i64, i32, i32, %struct.TYPE_16__, %struct.TYPE_11__ }
%struct.in6_addr = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32* }

@EBT_IP6_TCLASS = common dso_local global i32 0, align 4
@EBT_IP6_SOURCE = common dso_local global i32 0, align 4
@EBT_IP6_DEST = common dso_local global i32 0, align 4
@EBT_IP6_PROTO = common dso_local global i32 0, align 4
@EBT_IP6_DPORT = common dso_local global i32 0, align 4
@EBT_IP6_SPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_match_param*)* @ebt_ip6_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_ip6_mt(%struct.sk_buff* %0, %struct.xt_match_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_match_param*, align 8
  %6 = alloca %struct.ebt_ip6_info*, align 8
  %7 = alloca %struct.ipv6hdr*, align 8
  %8 = alloca %struct.ipv6hdr, align 8
  %9 = alloca %struct.tcpudphdr*, align 8
  %10 = alloca %struct.tcpudphdr, align 8
  %11 = alloca %struct.in6_addr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_match_param* %1, %struct.xt_match_param** %5, align 8
  %17 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %18 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %17, i32 0, i32 0
  %19 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %18, align 8
  store %struct.ebt_ip6_info* %19, %struct.ebt_ip6_info** %6, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = bitcast %struct.ipv6hdr* %8 to %struct.tcpudphdr*
  %22 = call %struct.tcpudphdr* @skb_header_pointer(%struct.sk_buff* %20, i32 0, i32 32, %struct.tcpudphdr* %21)
  %23 = bitcast %struct.tcpudphdr* %22 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %23, %struct.ipv6hdr** %7, align 8
  %24 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %25 = icmp eq %struct.ipv6hdr* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %268

27:                                               ; preds = %2
  %28 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %29 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @EBT_IP6_TCLASS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %27
  %35 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %36 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %39 = bitcast %struct.ipv6hdr* %38 to %struct.tcpudphdr*
  %40 = call i64 @ipv6_get_dsfield(%struct.tcpudphdr* %39)
  %41 = icmp ne i64 %37, %40
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* @EBT_IP6_TCLASS, align 4
  %44 = call i64 @FWINV(i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %268

47:                                               ; preds = %34, %27
  store i32 0, i32* %12, align 4
  br label %48

48:                                               ; preds = %77, %47
  %49 = load i32, i32* %12, align 4
  %50 = icmp slt i32 %49, 4
  br i1 %50, label %51, label %80

51:                                               ; preds = %48
  %52 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %53 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %62 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %61, i32 0, i32 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %60, %69
  %71 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %11, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %70, i32* %76, align 4
  br label %77

77:                                               ; preds = %51
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %12, align 4
  br label %48

80:                                               ; preds = %48
  %81 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %82 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @EBT_IP6_SOURCE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %80
  %88 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %89 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %88, i32 0, i32 7
  %90 = call i64 @ipv6_addr_cmp(%struct.in6_addr* %11, i32* %89)
  %91 = icmp ne i64 %90, 0
  %92 = zext i1 %91 to i32
  %93 = load i32, i32* @EBT_IP6_SOURCE, align 4
  %94 = call i64 @FWINV(i32 %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  store i32 0, i32* %3, align 4
  br label %268

97:                                               ; preds = %87, %80
  store i32 0, i32* %12, align 4
  br label %98

98:                                               ; preds = %127, %97
  %99 = load i32, i32* %12, align 4
  %100 = icmp slt i32 %99, 4
  br i1 %100, label %101, label %130

101:                                              ; preds = %98
  %102 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %103 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %112 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %111, i32 0, i32 6
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %110, %119
  %121 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %11, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 %120, i32* %126, align 4
  br label %127

127:                                              ; preds = %101
  %128 = load i32, i32* %12, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %12, align 4
  br label %98

130:                                              ; preds = %98
  %131 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %132 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @EBT_IP6_DEST, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %130
  %138 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %139 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %138, i32 0, i32 5
  %140 = call i64 @ipv6_addr_cmp(%struct.in6_addr* %11, i32* %139)
  %141 = icmp ne i64 %140, 0
  %142 = zext i1 %141 to i32
  %143 = load i32, i32* @EBT_IP6_DEST, align 4
  %144 = call i64 @FWINV(i32 %142, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %137
  store i32 0, i32* %3, align 4
  br label %268

147:                                              ; preds = %137, %130
  %148 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %149 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @EBT_IP6_PROTO, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %267

154:                                              ; preds = %147
  %155 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %156 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  store i64 %157, i64* %13, align 8
  %158 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %159 = call i32 @ipv6_skip_exthdr(%struct.sk_buff* %158, i32 32, i64* %13)
  store i32 %159, i32* %14, align 4
  %160 = load i32, i32* %14, align 4
  %161 = icmp eq i32 %160, -1
  br i1 %161, label %162, label %163

162:                                              ; preds = %154
  store i32 0, i32* %3, align 4
  br label %268

163:                                              ; preds = %154
  %164 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %165 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* %13, align 8
  %168 = icmp ne i64 %166, %167
  %169 = zext i1 %168 to i32
  %170 = load i32, i32* @EBT_IP6_PROTO, align 4
  %171 = call i64 @FWINV(i32 %169, i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %163
  store i32 0, i32* %3, align 4
  br label %268

174:                                              ; preds = %163
  %175 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %176 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @EBT_IP6_DPORT, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %189, label %181

181:                                              ; preds = %174
  %182 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %183 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @EBT_IP6_SPORT, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %189, label %188

188:                                              ; preds = %181
  store i32 1, i32* %3, align 4
  br label %268

189:                                              ; preds = %181, %174
  %190 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %191 = load i32, i32* %14, align 4
  %192 = call %struct.tcpudphdr* @skb_header_pointer(%struct.sk_buff* %190, i32 %191, i32 32, %struct.tcpudphdr* %10)
  store %struct.tcpudphdr* %192, %struct.tcpudphdr** %9, align 8
  %193 = load %struct.tcpudphdr*, %struct.tcpudphdr** %9, align 8
  %194 = icmp eq %struct.tcpudphdr* %193, null
  br i1 %194, label %195, label %196

195:                                              ; preds = %189
  store i32 0, i32* %3, align 4
  br label %268

196:                                              ; preds = %189
  %197 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %198 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @EBT_IP6_DPORT, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %231

203:                                              ; preds = %196
  %204 = load %struct.tcpudphdr*, %struct.tcpudphdr** %9, align 8
  %205 = getelementptr inbounds %struct.tcpudphdr, %struct.tcpudphdr* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = call i64 @ntohs(i32 %206)
  store i64 %207, i64* %15, align 8
  %208 = load i64, i64* %15, align 8
  %209 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %210 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %209, i32 0, i32 3
  %211 = load i64*, i64** %210, align 8
  %212 = getelementptr inbounds i64, i64* %211, i64 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp slt i64 %208, %213
  br i1 %214, label %223, label %215

215:                                              ; preds = %203
  %216 = load i64, i64* %15, align 8
  %217 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %218 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %217, i32 0, i32 3
  %219 = load i64*, i64** %218, align 8
  %220 = getelementptr inbounds i64, i64* %219, i64 1
  %221 = load i64, i64* %220, align 8
  %222 = icmp sgt i64 %216, %221
  br label %223

223:                                              ; preds = %215, %203
  %224 = phi i1 [ true, %203 ], [ %222, %215 ]
  %225 = zext i1 %224 to i32
  %226 = load i32, i32* @EBT_IP6_DPORT, align 4
  %227 = call i64 @FWINV(i32 %225, i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %223
  store i32 0, i32* %3, align 4
  br label %268

230:                                              ; preds = %223
  br label %231

231:                                              ; preds = %230, %196
  %232 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %233 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* @EBT_IP6_SPORT, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %266

238:                                              ; preds = %231
  %239 = load %struct.tcpudphdr*, %struct.tcpudphdr** %9, align 8
  %240 = getelementptr inbounds %struct.tcpudphdr, %struct.tcpudphdr* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = call i64 @ntohs(i32 %241)
  store i64 %242, i64* %16, align 8
  %243 = load i64, i64* %16, align 8
  %244 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %245 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %244, i32 0, i32 4
  %246 = load i64*, i64** %245, align 8
  %247 = getelementptr inbounds i64, i64* %246, i64 0
  %248 = load i64, i64* %247, align 8
  %249 = icmp slt i64 %243, %248
  br i1 %249, label %258, label %250

250:                                              ; preds = %238
  %251 = load i64, i64* %16, align 8
  %252 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %253 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %252, i32 0, i32 4
  %254 = load i64*, i64** %253, align 8
  %255 = getelementptr inbounds i64, i64* %254, i64 1
  %256 = load i64, i64* %255, align 8
  %257 = icmp sgt i64 %251, %256
  br label %258

258:                                              ; preds = %250, %238
  %259 = phi i1 [ true, %238 ], [ %257, %250 ]
  %260 = zext i1 %259 to i32
  %261 = load i32, i32* @EBT_IP6_SPORT, align 4
  %262 = call i64 @FWINV(i32 %260, i32 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %258
  store i32 0, i32* %3, align 4
  br label %268

265:                                              ; preds = %258
  br label %266

266:                                              ; preds = %265, %231
  store i32 1, i32* %3, align 4
  br label %268

267:                                              ; preds = %147
  store i32 1, i32* %3, align 4
  br label %268

268:                                              ; preds = %267, %266, %264, %229, %195, %188, %173, %162, %146, %96, %46, %26
  %269 = load i32, i32* %3, align 4
  ret i32 %269
}

declare dso_local %struct.tcpudphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.tcpudphdr*) #1

declare dso_local i64 @FWINV(i32, i32) #1

declare dso_local i64 @ipv6_get_dsfield(%struct.tcpudphdr*) #1

declare dso_local i64 @ipv6_addr_cmp(%struct.in6_addr*, i32*) #1

declare dso_local i32 @ipv6_skip_exthdr(%struct.sk_buff*, i32, i64*) #1

declare dso_local i64 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
