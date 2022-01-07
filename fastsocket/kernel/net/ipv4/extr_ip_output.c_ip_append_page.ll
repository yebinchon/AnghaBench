; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_output.c_ip_append_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_output.c_ip_append_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32, i32, i32 }
%struct.page = type { i32 }
%struct.inet_sock = type { %struct.TYPE_10__, i32, i64 }
%struct.TYPE_10__ = type { i32, i32, i64, %struct.ip_options*, i64 }
%struct.ip_options = type { i32 }
%struct.sk_buff = type { i64, i64, i32, i32, i64, i64, i64 }
%struct.rtable = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@MSG_PROBE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IPCORK_OPT = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i64 0, align 8
@NETIF_F_UFO = common dso_local global i32 0, align 4
@SKB_GSO_UDP = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i64 0, align 8
@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@IPSTATS_MIB_OUTDISCARDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_append_page(%struct.sock* %0, %struct.page* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.inet_sock*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.rtable*, align 8
  %15 = alloca %struct.ip_options*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.sk_buff*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.page* %1, %struct.page** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %27 = load %struct.sock*, %struct.sock** %7, align 8
  %28 = call %struct.inet_sock* @inet_sk(%struct.sock* %27)
  store %struct.inet_sock* %28, %struct.inet_sock** %12, align 8
  store %struct.ip_options* null, %struct.ip_options** %15, align 8
  %29 = load %struct.inet_sock*, %struct.inet_sock** %12, align 8
  %30 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %5
  %34 = load i32, i32* @EPERM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %414

36:                                               ; preds = %5
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @MSG_PROBE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %414

42:                                               ; preds = %36
  %43 = load %struct.sock*, %struct.sock** %7, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 2
  %45 = call i64 @skb_queue_empty(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %414

50:                                               ; preds = %42
  %51 = load %struct.inet_sock*, %struct.inet_sock** %12, align 8
  %52 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.rtable*
  store %struct.rtable* %55, %struct.rtable** %14, align 8
  %56 = load %struct.inet_sock*, %struct.inet_sock** %12, align 8
  %57 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @IPCORK_OPT, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %50
  %64 = load %struct.inet_sock*, %struct.inet_sock** %12, align 8
  %65 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 3
  %67 = load %struct.ip_options*, %struct.ip_options** %66, align 8
  store %struct.ip_options* %67, %struct.ip_options** %15, align 8
  br label %68

68:                                               ; preds = %63, %50
  %69 = load %struct.rtable*, %struct.rtable** %14, align 8
  %70 = getelementptr inbounds %struct.rtable, %struct.rtable* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @NETIF_F_SG, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %68
  %80 = load i32, i32* @EOPNOTSUPP, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  br label %414

82:                                               ; preds = %68
  %83 = load %struct.rtable*, %struct.rtable** %14, align 8
  %84 = getelementptr inbounds %struct.rtable, %struct.rtable* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = call i32 @LL_RESERVED_SPACE(%struct.TYPE_12__* %87)
  store i32 %88, i32* %16, align 4
  %89 = load %struct.inet_sock*, %struct.inet_sock** %12, align 8
  %90 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %17, align 4
  %93 = load %struct.ip_options*, %struct.ip_options** %15, align 8
  %94 = icmp ne %struct.ip_options* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %82
  %96 = load %struct.ip_options*, %struct.ip_options** %15, align 8
  %97 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  br label %100

99:                                               ; preds = %82
  br label %100

100:                                              ; preds = %99, %95
  %101 = phi i32 [ %98, %95 ], [ 0, %99 ]
  %102 = sext i32 %101 to i64
  %103 = add i64 4, %102
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %21, align 4
  %105 = load i32, i32* %17, align 4
  %106 = load i32, i32* %21, align 4
  %107 = sub i32 %105, %106
  %108 = and i32 %107, -8
  %109 = load i32, i32* %21, align 4
  %110 = add i32 %108, %109
  store i32 %110, i32* %20, align 4
  %111 = load %struct.inet_sock*, %struct.inet_sock** %12, align 8
  %112 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %10, align 8
  %116 = add i64 %114, %115
  %117 = load i32, i32* %21, align 4
  %118 = sub i32 65535, %117
  %119 = zext i32 %118 to i64
  %120 = icmp ugt i64 %116, %119
  br i1 %120, label %121, label %134

121:                                              ; preds = %100
  %122 = load %struct.sock*, %struct.sock** %7, align 8
  %123 = load i32, i32* @EMSGSIZE, align 4
  %124 = load %struct.rtable*, %struct.rtable** %14, align 8
  %125 = getelementptr inbounds %struct.rtable, %struct.rtable* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.inet_sock*, %struct.inet_sock** %12, align 8
  %128 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %17, align 4
  %131 = call i32 @ip_local_error(%struct.sock* %122, i32 %123, i32 %126, i32 %129, i32 %130)
  %132 = load i32, i32* @EMSGSIZE, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %6, align 4
  br label %414

134:                                              ; preds = %100
  %135 = load %struct.sock*, %struct.sock** %7, align 8
  %136 = getelementptr inbounds %struct.sock, %struct.sock* %135, i32 0, i32 2
  %137 = call %struct.sk_buff* @skb_peek_tail(i32* %136)
  store %struct.sk_buff* %137, %struct.sk_buff** %13, align 8
  %138 = icmp eq %struct.sk_buff* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %6, align 4
  br label %414

142:                                              ; preds = %134
  %143 = load i64, i64* %10, align 8
  %144 = load %struct.inet_sock*, %struct.inet_sock** %12, align 8
  %145 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = add i64 %147, %143
  store i64 %148, i64* %146, align 8
  %149 = load i64, i64* %10, align 8
  %150 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %151 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = add i64 %149, %152
  %154 = load i32, i32* %17, align 4
  %155 = sext i32 %154 to i64
  %156 = icmp ugt i64 %153, %155
  br i1 %156, label %157, label %185

157:                                              ; preds = %142
  %158 = load %struct.sock*, %struct.sock** %7, align 8
  %159 = getelementptr inbounds %struct.sock, %struct.sock* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @IPPROTO_UDP, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %185

163:                                              ; preds = %157
  %164 = load %struct.rtable*, %struct.rtable** %14, align 8
  %165 = getelementptr inbounds %struct.rtable, %struct.rtable* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @NETIF_F_UFO, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %185

174:                                              ; preds = %163
  %175 = load i32, i32* %17, align 4
  %176 = load i32, i32* %21, align 4
  %177 = sub i32 %175, %176
  %178 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %179 = call %struct.TYPE_11__* @skb_shinfo(%struct.sk_buff* %178)
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  store i32 %177, i32* %180, align 8
  %181 = load i32, i32* @SKB_GSO_UDP, align 4
  %182 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %183 = call %struct.TYPE_11__* @skb_shinfo(%struct.sk_buff* %182)
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 3
  store i32 %181, i32* %184, align 8
  br label %185

185:                                              ; preds = %174, %163, %157, %142
  br label %186

186:                                              ; preds = %373, %297, %185
  %187 = load i64, i64* %10, align 8
  %188 = icmp ugt i64 %187, 0
  br i1 %188, label %189, label %401

189:                                              ; preds = %186
  %190 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %191 = call i64 @skb_is_gso(%struct.sk_buff* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %189
  %194 = load i64, i64* %10, align 8
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %18, align 4
  br label %217

196:                                              ; preds = %189
  %197 = load i32, i32* %17, align 4
  %198 = sext i32 %197 to i64
  %199 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %200 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = sub i64 %198, %201
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %18, align 4
  %204 = load i32, i32* %18, align 4
  %205 = sext i32 %204 to i64
  %206 = load i64, i64* %10, align 8
  %207 = icmp ult i64 %205, %206
  br i1 %207, label %208, label %216

208:                                              ; preds = %196
  %209 = load i32, i32* %20, align 4
  %210 = zext i32 %209 to i64
  %211 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %212 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = sub i64 %210, %213
  %215 = trunc i64 %214 to i32
  store i32 %215, i32* %18, align 4
  br label %216

216:                                              ; preds = %208, %196
  br label %217

217:                                              ; preds = %216, %193
  %218 = load i32, i32* %18, align 4
  %219 = icmp sle i32 %218, 0
  br i1 %219, label %220, label %302

220:                                              ; preds = %217
  %221 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %221, %struct.sk_buff** %24, align 8
  %222 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %223 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i32, i32* %20, align 4
  %226 = zext i32 %225 to i64
  %227 = sub i64 %224, %226
  %228 = trunc i64 %227 to i32
  store i32 %228, i32* %22, align 4
  %229 = load i32, i32* %21, align 4
  %230 = load i32, i32* %16, align 4
  %231 = add i32 %229, %230
  %232 = load i32, i32* %22, align 4
  %233 = add i32 %231, %232
  %234 = add i32 %233, 15
  store i32 %234, i32* %25, align 4
  %235 = load %struct.sock*, %struct.sock** %7, align 8
  %236 = load i32, i32* %25, align 4
  %237 = load %struct.sock*, %struct.sock** %7, align 8
  %238 = getelementptr inbounds %struct.sock, %struct.sock* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 8
  %240 = call %struct.sk_buff* @sock_wmalloc(%struct.sock* %235, i32 %236, i32 1, i32 %239)
  store %struct.sk_buff* %240, %struct.sk_buff** %13, align 8
  %241 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %242 = icmp ne %struct.sk_buff* %241, null
  %243 = xor i1 %242, true
  %244 = zext i1 %243 to i32
  %245 = call i64 @unlikely(i32 %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %220
  %248 = load i32, i32* @ENOBUFS, align 4
  %249 = sub nsw i32 0, %248
  store i32 %249, i32* %19, align 4
  br label %402

250:                                              ; preds = %220
  %251 = load i64, i64* @CHECKSUM_NONE, align 8
  %252 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %253 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %252, i32 0, i32 1
  store i64 %251, i64* %253, align 8
  %254 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %255 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %254, i32 0, i32 4
  store i64 0, i64* %255, align 8
  %256 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %257 = load i32, i32* %16, align 4
  %258 = call i32 @skb_reserve(%struct.sk_buff* %256, i32 %257)
  %259 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %260 = load i32, i32* %21, align 4
  %261 = load i32, i32* %22, align 4
  %262 = add i32 %260, %261
  %263 = call i32 @skb_put(%struct.sk_buff* %259, i32 %262)
  %264 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %265 = call i32 @skb_reset_network_header(%struct.sk_buff* %264)
  %266 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %267 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %266, i32 0, i32 5
  %268 = load i64, i64* %267, align 8
  %269 = load i32, i32* %21, align 4
  %270 = zext i32 %269 to i64
  %271 = add nsw i64 %268, %270
  %272 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %273 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %272, i32 0, i32 6
  store i64 %271, i64* %273, align 8
  %274 = load i32, i32* %22, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %297

276:                                              ; preds = %250
  %277 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %278 = load i32, i32* %20, align 4
  %279 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %280 = call i32 @skb_transport_header(%struct.sk_buff* %279)
  %281 = load i32, i32* %22, align 4
  %282 = call i64 @skb_copy_and_csum_bits(%struct.sk_buff* %277, i32 %278, i32 %280, i32 %281, i32 0)
  %283 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %284 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %283, i32 0, i32 4
  store i64 %282, i64* %284, align 8
  %285 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %286 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %285, i32 0, i32 4
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %289 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %288, i32 0, i32 4
  %290 = load i64, i64* %289, align 8
  %291 = call i64 @csum_sub(i64 %287, i64 %290)
  %292 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %293 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %292, i32 0, i32 4
  store i64 %291, i64* %293, align 8
  %294 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %295 = load i32, i32* %20, align 4
  %296 = call i32 @pskb_trim_unique(%struct.sk_buff* %294, i32 %295)
  br label %297

297:                                              ; preds = %276, %250
  %298 = load %struct.sock*, %struct.sock** %7, align 8
  %299 = getelementptr inbounds %struct.sock, %struct.sock* %298, i32 0, i32 2
  %300 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %301 = call i32 @__skb_queue_tail(i32* %299, %struct.sk_buff* %300)
  br label %186

302:                                              ; preds = %217
  %303 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %304 = call %struct.TYPE_11__* @skb_shinfo(%struct.sk_buff* %303)
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  store i32 %306, i32* %23, align 4
  %307 = load i32, i32* %18, align 4
  %308 = sext i32 %307 to i64
  %309 = load i64, i64* %10, align 8
  %310 = icmp ugt i64 %308, %309
  br i1 %310, label %311, label %314

311:                                              ; preds = %302
  %312 = load i64, i64* %10, align 8
  %313 = trunc i64 %312 to i32
  store i32 %313, i32* %18, align 4
  br label %314

314:                                              ; preds = %311, %302
  %315 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %316 = load i32, i32* %23, align 4
  %317 = load %struct.page*, %struct.page** %8, align 8
  %318 = load i32, i32* %9, align 4
  %319 = call i64 @skb_can_coalesce(%struct.sk_buff* %315, i32 %316, %struct.page* %317, i32 %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %334

321:                                              ; preds = %314
  %322 = load i32, i32* %18, align 4
  %323 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %324 = call %struct.TYPE_11__* @skb_shinfo(%struct.sk_buff* %323)
  %325 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %324, i32 0, i32 2
  %326 = load %struct.TYPE_9__*, %struct.TYPE_9__** %325, align 8
  %327 = load i32, i32* %23, align 4
  %328 = sub nsw i32 %327, 1
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %326, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 4
  %333 = add nsw i32 %332, %322
  store i32 %333, i32* %331, align 4
  br label %351

334:                                              ; preds = %314
  %335 = load i32, i32* %23, align 4
  %336 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %337 = icmp slt i32 %335, %336
  br i1 %337, label %338, label %347

338:                                              ; preds = %334
  %339 = load %struct.page*, %struct.page** %8, align 8
  %340 = call i32 @get_page(%struct.page* %339)
  %341 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %342 = load i32, i32* %23, align 4
  %343 = load %struct.page*, %struct.page** %8, align 8
  %344 = load i32, i32* %9, align 4
  %345 = load i32, i32* %18, align 4
  %346 = call i32 @skb_fill_page_desc(%struct.sk_buff* %341, i32 %342, %struct.page* %343, i32 %344, i32 %345)
  br label %350

347:                                              ; preds = %334
  %348 = load i32, i32* @EMSGSIZE, align 4
  %349 = sub nsw i32 0, %348
  store i32 %349, i32* %19, align 4
  br label %402

350:                                              ; preds = %338
  br label %351

351:                                              ; preds = %350, %321
  %352 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %353 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %352, i32 0, i32 1
  %354 = load i64, i64* %353, align 8
  %355 = load i64, i64* @CHECKSUM_NONE, align 8
  %356 = icmp eq i64 %354, %355
  br i1 %356, label %357, label %373

357:                                              ; preds = %351
  %358 = load %struct.page*, %struct.page** %8, align 8
  %359 = load i32, i32* %9, align 4
  %360 = load i32, i32* %18, align 4
  %361 = call i32 @csum_page(%struct.page* %358, i32 %359, i32 %360)
  store i32 %361, i32* %26, align 4
  %362 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %363 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %362, i32 0, i32 4
  %364 = load i64, i64* %363, align 8
  %365 = load i32, i32* %26, align 4
  %366 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %367 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %366, i32 0, i32 0
  %368 = load i64, i64* %367, align 8
  %369 = trunc i64 %368 to i32
  %370 = call i64 @csum_block_add(i64 %364, i32 %365, i32 %369)
  %371 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %372 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %371, i32 0, i32 4
  store i64 %370, i64* %372, align 8
  br label %373

373:                                              ; preds = %357, %351
  %374 = load i32, i32* %18, align 4
  %375 = sext i32 %374 to i64
  %376 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %377 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %376, i32 0, i32 0
  %378 = load i64, i64* %377, align 8
  %379 = add i64 %378, %375
  store i64 %379, i64* %377, align 8
  %380 = load i32, i32* %18, align 4
  %381 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %382 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %381, i32 0, i32 2
  %383 = load i32, i32* %382, align 8
  %384 = add nsw i32 %383, %380
  store i32 %384, i32* %382, align 8
  %385 = load i32, i32* %18, align 4
  %386 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %387 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %386, i32 0, i32 3
  %388 = load i32, i32* %387, align 4
  %389 = add nsw i32 %388, %385
  store i32 %389, i32* %387, align 4
  %390 = load i32, i32* %18, align 4
  %391 = load %struct.sock*, %struct.sock** %7, align 8
  %392 = getelementptr inbounds %struct.sock, %struct.sock* %391, i32 0, i32 1
  %393 = call i32 @atomic_add(i32 %390, i32* %392)
  %394 = load i32, i32* %18, align 4
  %395 = load i32, i32* %9, align 4
  %396 = add nsw i32 %395, %394
  store i32 %396, i32* %9, align 4
  %397 = load i32, i32* %18, align 4
  %398 = sext i32 %397 to i64
  %399 = load i64, i64* %10, align 8
  %400 = sub i64 %399, %398
  store i64 %400, i64* %10, align 8
  br label %186

401:                                              ; preds = %186
  store i32 0, i32* %6, align 4
  br label %414

402:                                              ; preds = %347, %247
  %403 = load i64, i64* %10, align 8
  %404 = load %struct.inet_sock*, %struct.inet_sock** %12, align 8
  %405 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %405, i32 0, i32 2
  %407 = load i64, i64* %406, align 8
  %408 = sub i64 %407, %403
  store i64 %408, i64* %406, align 8
  %409 = load %struct.sock*, %struct.sock** %7, align 8
  %410 = call i32 @sock_net(%struct.sock* %409)
  %411 = load i32, i32* @IPSTATS_MIB_OUTDISCARDS, align 4
  %412 = call i32 @IP_INC_STATS(i32 %410, i32 %411)
  %413 = load i32, i32* %19, align 4
  store i32 %413, i32* %6, align 4
  br label %414

414:                                              ; preds = %402, %401, %139, %121, %79, %47, %41, %33
  %415 = load i32, i32* %6, align 4
  ret i32 %415
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local i32 @LL_RESERVED_SPACE(%struct.TYPE_12__*) #1

declare dso_local i32 @ip_local_error(%struct.sock*, i32, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @skb_peek_tail(i32*) #1

declare dso_local %struct.TYPE_11__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @sock_wmalloc(%struct.sock*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i64 @skb_copy_and_csum_bits(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i64 @csum_sub(i64, i64) #1

declare dso_local i32 @pskb_trim_unique(%struct.sk_buff*, i32) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i64 @skb_can_coalesce(%struct.sk_buff*, i32, %struct.page*, i32) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @skb_fill_page_desc(%struct.sk_buff*, i32, %struct.page*, i32, i32) #1

declare dso_local i32 @csum_page(%struct.page*, i32, i32) #1

declare dso_local i64 @csum_block_add(i64, i32, i32) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @IP_INC_STATS(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
