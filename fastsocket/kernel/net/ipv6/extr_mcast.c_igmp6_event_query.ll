; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_igmp6_event_query.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_igmp6_event_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.mld2_query = type { i64, i32, i64, i32 }
%struct.ifmcaddr6 = type { i32, i32, i32, %struct.ifmcaddr6* }
%struct.in6_addr = type { i32 }
%struct.inet6_dev = type { i32, i64, i32, %struct.ifmcaddr6*, i32, i64, i64 }
%struct.mld_msg = type { i64, %struct.in6_addr }
%struct.TYPE_2__ = type { i64, %struct.in6_addr }

@EINVAL = common dso_local global i32 0, align 4
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@IPV6_ADDR_ANY = common dso_local global i32 0, align 4
@IPV6_ADDR_MULTICAST = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@MAF_TIMER_RUNNING = common dso_local global i32 0, align 4
@MAF_GSQUERY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igmp6_event_query(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.mld2_query*, align 8
  %5 = alloca %struct.ifmcaddr6*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.inet6_dev*, align 8
  %9 = alloca %struct.mld_msg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.mld2_query* null, %struct.mld2_query** %4, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = call i32 @pskb_may_pull(%struct.sk_buff* %15, i32 4)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %328

21:                                               ; preds = %1
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = call %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @ntohs(i64 %25)
  %27 = sext i32 %26 to i64
  %28 = add i64 %27, 4
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %12, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %31 = call i64 @skb_network_header_len(%struct.sk_buff* %30)
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = sub nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %12, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %37 = call %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = call i32 @ipv6_addr_type(%struct.in6_addr* %38)
  %40 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %21
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %328

46:                                               ; preds = %21
  %47 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.inet6_dev* @in6_dev_get(i32 %49)
  store %struct.inet6_dev* %50, %struct.inet6_dev** %8, align 8
  %51 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %52 = icmp eq %struct.inet6_dev* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %328

54:                                               ; preds = %46
  %55 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %56 = call i64 @icmp6_hdr(%struct.sk_buff* %55)
  %57 = inttoptr i64 %56 to %struct.mld_msg*
  store %struct.mld_msg* %57, %struct.mld_msg** %9, align 8
  %58 = load %struct.mld_msg*, %struct.mld_msg** %9, align 8
  %59 = getelementptr inbounds %struct.mld_msg, %struct.mld_msg* %58, i32 0, i32 1
  store %struct.in6_addr* %59, %struct.in6_addr** %6, align 8
  %60 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %61 = call i32 @ipv6_addr_type(%struct.in6_addr* %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @IPV6_ADDR_ANY, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %54
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @IPV6_ADDR_MULTICAST, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %72 = call i32 @in6_dev_put(%struct.inet6_dev* %71)
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %328

75:                                               ; preds = %65, %54
  %76 = load i32, i32* %12, align 4
  %77 = icmp eq i32 %76, 24
  br i1 %77, label %78, label %113

78:                                               ; preds = %75
  %79 = load %struct.mld_msg*, %struct.mld_msg** %9, align 8
  %80 = getelementptr inbounds %struct.mld_msg, %struct.mld_msg* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @ntohs(i64 %81)
  %83 = load i32, i32* @HZ, align 4
  %84 = mul nsw i32 %82, %83
  %85 = sdiv i32 %84, 1000
  %86 = sext i32 %85 to i64
  store i64 %86, i64* %7, align 8
  %87 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %88 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* %7, align 8
  %93 = mul i64 %91, %92
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %13, align 4
  %95 = load i64, i64* @jiffies, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %95, %97
  %99 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %100 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %99, i32 0, i32 6
  store i64 %98, i64* %100, align 8
  %101 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %102 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %101, i32 0, i32 5
  store i64 0, i64* %102, align 8
  %103 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %104 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %103, i32 0, i32 4
  %105 = call i64 @del_timer(i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %78
  %108 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %109 = call i32 @__in6_dev_put(%struct.inet6_dev* %108)
  br label %110

110:                                              ; preds = %107, %78
  %111 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %112 = call i32 @mld_clear_delrec(%struct.inet6_dev* %111)
  br label %210

113:                                              ; preds = %75
  %114 = load i32, i32* %12, align 4
  %115 = icmp sge i32 %114, 28
  br i1 %115, label %116, label %204

116:                                              ; preds = %113
  store i32 28, i32* %14, align 4
  %117 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %118 = load i32, i32* %14, align 4
  %119 = call i32 @pskb_may_pull(%struct.sk_buff* %117, i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %116
  %122 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %123 = call i32 @in6_dev_put(%struct.inet6_dev* %122)
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %2, align 4
  br label %328

126:                                              ; preds = %116
  %127 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %128 = call i64 @skb_transport_header(%struct.sk_buff* %127)
  %129 = inttoptr i64 %128 to %struct.mld2_query*
  store %struct.mld2_query* %129, %struct.mld2_query** %4, align 8
  %130 = load %struct.mld2_query*, %struct.mld2_query** %4, align 8
  %131 = getelementptr inbounds %struct.mld2_query, %struct.mld2_query* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @ntohs(i64 %132)
  %134 = call i32 @MLDV2_MRC(i32 %133)
  %135 = load i32, i32* @HZ, align 4
  %136 = mul nsw i32 %134, %135
  %137 = sdiv i32 %136, 1000
  %138 = sext i32 %137 to i64
  store i64 %138, i64* %7, align 8
  %139 = load i64, i64* %7, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %126
  store i64 1, i64* %7, align 8
  br label %142

142:                                              ; preds = %141, %126
  %143 = load i64, i64* %7, align 8
  %144 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %145 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %144, i32 0, i32 1
  store i64 %143, i64* %145, align 8
  %146 = load %struct.mld2_query*, %struct.mld2_query** %4, align 8
  %147 = getelementptr inbounds %struct.mld2_query, %struct.mld2_query* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %142
  %151 = load %struct.mld2_query*, %struct.mld2_query** %4, align 8
  %152 = getelementptr inbounds %struct.mld2_query, %struct.mld2_query* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %155 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  br label %156

156:                                              ; preds = %150, %142
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* @IPV6_ADDR_ANY, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %175

160:                                              ; preds = %156
  %161 = load %struct.mld2_query*, %struct.mld2_query** %4, align 8
  %162 = getelementptr inbounds %struct.mld2_query, %struct.mld2_query* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %160
  %166 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %167 = call i32 @in6_dev_put(%struct.inet6_dev* %166)
  %168 = load i32, i32* @EINVAL, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %2, align 4
  br label %328

170:                                              ; preds = %160
  %171 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %172 = call i32 @mld_gq_start_timer(%struct.inet6_dev* %171)
  %173 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %174 = call i32 @in6_dev_put(%struct.inet6_dev* %173)
  store i32 0, i32* %2, align 4
  br label %328

175:                                              ; preds = %156
  %176 = load %struct.mld2_query*, %struct.mld2_query** %4, align 8
  %177 = getelementptr inbounds %struct.mld2_query, %struct.mld2_query* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %203

180:                                              ; preds = %175
  %181 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %182 = load i32, i32* %14, align 4
  %183 = sext i32 %182 to i64
  %184 = load %struct.mld2_query*, %struct.mld2_query** %4, align 8
  %185 = getelementptr inbounds %struct.mld2_query, %struct.mld2_query* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = call i32 @ntohs(i64 %186)
  %188 = sext i32 %187 to i64
  %189 = mul i64 %188, 4
  %190 = add i64 %183, %189
  %191 = trunc i64 %190 to i32
  %192 = call i32 @pskb_may_pull(%struct.sk_buff* %181, i32 %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %199, label %194

194:                                              ; preds = %180
  %195 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %196 = call i32 @in6_dev_put(%struct.inet6_dev* %195)
  %197 = load i32, i32* @EINVAL, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %2, align 4
  br label %328

199:                                              ; preds = %180
  %200 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %201 = call i64 @skb_transport_header(%struct.sk_buff* %200)
  %202 = inttoptr i64 %201 to %struct.mld2_query*
  store %struct.mld2_query* %202, %struct.mld2_query** %4, align 8
  store i32 1, i32* %11, align 4
  br label %203

203:                                              ; preds = %199, %175
  br label %209

204:                                              ; preds = %113
  %205 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %206 = call i32 @in6_dev_put(%struct.inet6_dev* %205)
  %207 = load i32, i32* @EINVAL, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %2, align 4
  br label %328

209:                                              ; preds = %203
  br label %210

210:                                              ; preds = %209, %110
  %211 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %212 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %211, i32 0, i32 2
  %213 = call i32 @read_lock_bh(i32* %212)
  %214 = load i32, i32* %10, align 4
  %215 = load i32, i32* @IPV6_ADDR_ANY, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %239

217:                                              ; preds = %210
  %218 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %219 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %218, i32 0, i32 3
  %220 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %219, align 8
  store %struct.ifmcaddr6* %220, %struct.ifmcaddr6** %5, align 8
  br label %221

221:                                              ; preds = %234, %217
  %222 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %223 = icmp ne %struct.ifmcaddr6* %222, null
  br i1 %223, label %224, label %238

224:                                              ; preds = %221
  %225 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %226 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %225, i32 0, i32 1
  %227 = call i32 @spin_lock_bh(i32* %226)
  %228 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %229 = load i64, i64* %7, align 8
  %230 = call i32 @igmp6_group_queried(%struct.ifmcaddr6* %228, i64 %229)
  %231 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %232 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %231, i32 0, i32 1
  %233 = call i32 @spin_unlock_bh(i32* %232)
  br label %234

234:                                              ; preds = %224
  %235 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %236 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %235, i32 0, i32 3
  %237 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %236, align 8
  store %struct.ifmcaddr6* %237, %struct.ifmcaddr6** %5, align 8
  br label %221

238:                                              ; preds = %221
  br label %322

239:                                              ; preds = %210
  %240 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %241 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %240, i32 0, i32 3
  %242 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %241, align 8
  store %struct.ifmcaddr6* %242, %struct.ifmcaddr6** %5, align 8
  br label %243

243:                                              ; preds = %317, %239
  %244 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %245 = icmp ne %struct.ifmcaddr6* %244, null
  br i1 %245, label %246, label %321

246:                                              ; preds = %243
  %247 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %248 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %249 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %248, i32 0, i32 2
  %250 = call i32 @ipv6_addr_equal(%struct.in6_addr* %247, i32* %249)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %253, label %252

252:                                              ; preds = %246
  br label %317

253:                                              ; preds = %246
  %254 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %255 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %254, i32 0, i32 1
  %256 = call i32 @spin_lock_bh(i32* %255)
  %257 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %258 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* @MAF_TIMER_RUNNING, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %274

263:                                              ; preds = %253
  %264 = load i32, i32* %11, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %273, label %266

266:                                              ; preds = %263
  %267 = load i32, i32* @MAF_GSQUERY, align 4
  %268 = xor i32 %267, -1
  %269 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %270 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = and i32 %271, %268
  store i32 %272, i32* %270, align 8
  br label %273

273:                                              ; preds = %266, %263
  br label %291

274:                                              ; preds = %253
  %275 = load i32, i32* %11, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %283

277:                                              ; preds = %274
  %278 = load i32, i32* @MAF_GSQUERY, align 4
  %279 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %280 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = or i32 %281, %278
  store i32 %282, i32* %280, align 8
  br label %290

283:                                              ; preds = %274
  %284 = load i32, i32* @MAF_GSQUERY, align 4
  %285 = xor i32 %284, -1
  %286 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %287 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = and i32 %288, %285
  store i32 %289, i32* %287, align 8
  br label %290

290:                                              ; preds = %283, %277
  br label %291

291:                                              ; preds = %290, %273
  %292 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %293 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @MAF_GSQUERY, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %309

298:                                              ; preds = %291
  %299 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %300 = load %struct.mld2_query*, %struct.mld2_query** %4, align 8
  %301 = getelementptr inbounds %struct.mld2_query, %struct.mld2_query* %300, i32 0, i32 2
  %302 = load i64, i64* %301, align 8
  %303 = call i32 @ntohs(i64 %302)
  %304 = load %struct.mld2_query*, %struct.mld2_query** %4, align 8
  %305 = getelementptr inbounds %struct.mld2_query, %struct.mld2_query* %304, i32 0, i32 3
  %306 = load i32, i32* %305, align 8
  %307 = call i64 @mld_marksources(%struct.ifmcaddr6* %299, i32 %303, i32 %306)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %313

309:                                              ; preds = %298, %291
  %310 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %311 = load i64, i64* %7, align 8
  %312 = call i32 @igmp6_group_queried(%struct.ifmcaddr6* %310, i64 %311)
  br label %313

313:                                              ; preds = %309, %298
  %314 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %315 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %314, i32 0, i32 1
  %316 = call i32 @spin_unlock_bh(i32* %315)
  br label %321

317:                                              ; preds = %252
  %318 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %319 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %318, i32 0, i32 3
  %320 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %319, align 8
  store %struct.ifmcaddr6* %320, %struct.ifmcaddr6** %5, align 8
  br label %243

321:                                              ; preds = %313, %243
  br label %322

322:                                              ; preds = %321, %238
  %323 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %324 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %323, i32 0, i32 2
  %325 = call i32 @read_unlock_bh(i32* %324)
  %326 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %327 = call i32 @in6_dev_put(%struct.inet6_dev* %326)
  store i32 0, i32* %2, align 4
  br label %328

328:                                              ; preds = %322, %204, %194, %170, %165, %121, %70, %53, %43, %18
  %329 = load i32, i32* %2, align 4
  ret i32 %329
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @ntohs(i64) #1

declare dso_local %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i64 @skb_network_header_len(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_addr_type(%struct.in6_addr*) #1

declare dso_local %struct.inet6_dev* @in6_dev_get(i32) #1

declare dso_local i64 @icmp6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @in6_dev_put(%struct.inet6_dev*) #1

declare dso_local i64 @del_timer(i32*) #1

declare dso_local i32 @__in6_dev_put(%struct.inet6_dev*) #1

declare dso_local i32 @mld_clear_delrec(%struct.inet6_dev*) #1

declare dso_local i64 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @MLDV2_MRC(i32) #1

declare dso_local i32 @mld_gq_start_timer(%struct.inet6_dev*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @igmp6_group_queried(%struct.ifmcaddr6*, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ipv6_addr_equal(%struct.in6_addr*, i32*) #1

declare dso_local i64 @mld_marksources(%struct.ifmcaddr6*, i32, i32) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
