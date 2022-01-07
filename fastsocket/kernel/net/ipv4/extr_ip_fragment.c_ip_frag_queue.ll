; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_fragment.c_ip_frag_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_fragment.c_ip_frag_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.ipq = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, %struct.TYPE_10__*, i32, i32, %struct.sk_buff* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.sk_buff = type { i32, i64, i32, i32, %struct.net_device*, %struct.sk_buff* }
%struct.net_device = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@INET_FRAG_COMPLETE = common dso_local global i32 0, align 4
@IPSKB_FRAG_COMPLETE = common dso_local global i32 0, align 4
@IP_OFFSET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IP_MF = common dso_local global i32 0, align 4
@INET_FRAG_LAST_IN = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i64 0, align 8
@CHECKSUM_NONE = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@INET_FRAG_FIRST_IN = common dso_local global i32 0, align 4
@IP_DF = common dso_local global i32 0, align 4
@ip4_frags = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipq*, %struct.sk_buff*)* @ip_frag_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_frag_queue(%struct.ipq* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipq*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sk_buff*, align 8
  store %struct.ipq* %0, %struct.ipq** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %13, align 4
  %19 = load %struct.ipq*, %struct.ipq** %4, align 8
  %20 = getelementptr inbounds %struct.ipq, %struct.ipq* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @INET_FRAG_COMPLETE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %465

27:                                               ; preds = %2
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = call %struct.TYPE_11__* @IPCB(%struct.sk_buff* %28)
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IPSKB_FRAG_COMPLETE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %27
  %36 = load %struct.ipq*, %struct.ipq** %4, align 8
  %37 = call i32 @ip_frag_too_far(%struct.ipq* %36)
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load %struct.ipq*, %struct.ipq** %4, align 8
  %42 = call i32 @ip_frag_reinit(%struct.ipq* %41)
  store i32 %42, i32* %13, align 4
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.ipq*, %struct.ipq** %4, align 8
  %47 = call i32 @ipq_kill(%struct.ipq* %46)
  br label %465

48:                                               ; preds = %40, %35, %27
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = call %struct.TYPE_8__* @ip_hdr(%struct.sk_buff* %49)
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ntohs(i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @IP_OFFSET, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %54, %56
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* @IP_OFFSET, align 4
  %59 = load i32, i32* %10, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = shl i32 %61, 3
  store i32 %62, i32* %10, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = call i32 @ip_hdrlen(%struct.sk_buff* %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %65, %68
  %70 = load i32, i32* %11, align 4
  %71 = sub nsw i32 %69, %70
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @IP_MF, align 4
  %76 = and i32 %74, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %112

78:                                               ; preds = %48
  %79 = load i32, i32* %12, align 4
  %80 = load %struct.ipq*, %struct.ipq** %4, align 8
  %81 = getelementptr inbounds %struct.ipq, %struct.ipq* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %79, %83
  br i1 %84, label %100, label %85

85:                                               ; preds = %78
  %86 = load %struct.ipq*, %struct.ipq** %4, align 8
  %87 = getelementptr inbounds %struct.ipq, %struct.ipq* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @INET_FRAG_LAST_IN, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %85
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.ipq*, %struct.ipq** %4, align 8
  %96 = getelementptr inbounds %struct.ipq, %struct.ipq* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %94, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %93, %78
  br label %465

101:                                              ; preds = %93, %85
  %102 = load i32, i32* @INET_FRAG_LAST_IN, align 4
  %103 = load %struct.ipq*, %struct.ipq** %4, align 8
  %104 = getelementptr inbounds %struct.ipq, %struct.ipq* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %102
  store i32 %107, i32* %105, align 8
  %108 = load i32, i32* %12, align 4
  %109 = load %struct.ipq*, %struct.ipq** %4, align 8
  %110 = getelementptr inbounds %struct.ipq, %struct.ipq* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  store i32 %108, i32* %111, align 4
  br label %152

112:                                              ; preds = %48
  %113 = load i32, i32* %12, align 4
  %114 = and i32 %113, 7
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %130

116:                                              ; preds = %112
  %117 = load i32, i32* %12, align 4
  %118 = and i32 %117, -8
  store i32 %118, i32* %12, align 4
  %119 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %120 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @CHECKSUM_UNNECESSARY, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %116
  %125 = load i8*, i8** @CHECKSUM_NONE, align 8
  %126 = ptrtoint i8* %125 to i64
  %127 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %128 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %127, i32 0, i32 1
  store i64 %126, i64* %128, align 8
  br label %129

129:                                              ; preds = %124, %116
  br label %130

130:                                              ; preds = %129, %112
  %131 = load i32, i32* %12, align 4
  %132 = load %struct.ipq*, %struct.ipq** %4, align 8
  %133 = getelementptr inbounds %struct.ipq, %struct.ipq* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp sgt i32 %131, %135
  br i1 %136, label %137, label %151

137:                                              ; preds = %130
  %138 = load %struct.ipq*, %struct.ipq** %4, align 8
  %139 = getelementptr inbounds %struct.ipq, %struct.ipq* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @INET_FRAG_LAST_IN, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %137
  br label %465

146:                                              ; preds = %137
  %147 = load i32, i32* %12, align 4
  %148 = load %struct.ipq*, %struct.ipq** %4, align 8
  %149 = getelementptr inbounds %struct.ipq, %struct.ipq* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  store i32 %147, i32* %150, align 4
  br label %151

151:                                              ; preds = %146, %130
  br label %152

152:                                              ; preds = %151, %101
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* %10, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %152
  br label %465

157:                                              ; preds = %152
  %158 = load i32, i32* @ENOMEM, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %13, align 4
  %160 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %161 = load i32, i32* %11, align 4
  %162 = call i32* @pskb_pull(%struct.sk_buff* %160, i32 %161)
  %163 = icmp eq i32* %162, null
  br i1 %163, label %164, label %165

164:                                              ; preds = %157
  br label %465

165:                                              ; preds = %157
  %166 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %167 = load i32, i32* %12, align 4
  %168 = load i32, i32* %10, align 4
  %169 = sub nsw i32 %167, %168
  %170 = call i32 @pskb_trim_rcsum(%struct.sk_buff* %166, i32 %169)
  store i32 %170, i32* %13, align 4
  %171 = load i32, i32* %13, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %165
  br label %465

174:                                              ; preds = %165
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  %175 = load %struct.ipq*, %struct.ipq** %4, align 8
  %176 = getelementptr inbounds %struct.ipq, %struct.ipq* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 7
  %178 = load %struct.sk_buff*, %struct.sk_buff** %177, align 8
  store %struct.sk_buff* %178, %struct.sk_buff** %7, align 8
  br label %179

179:                                              ; preds = %192, %174
  %180 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %181 = icmp ne %struct.sk_buff* %180, null
  br i1 %181, label %182, label %196

182:                                              ; preds = %179
  %183 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %184 = call %struct.TYPE_12__* @FRAG_CB(%struct.sk_buff* %183)
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %10, align 4
  %188 = icmp sge i32 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %182
  br label %196

190:                                              ; preds = %182
  %191 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %191, %struct.sk_buff** %6, align 8
  br label %192

192:                                              ; preds = %190
  %193 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %194 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %193, i32 0, i32 5
  %195 = load %struct.sk_buff*, %struct.sk_buff** %194, align 8
  store %struct.sk_buff* %195, %struct.sk_buff** %7, align 8
  br label %179

196:                                              ; preds = %189, %179
  %197 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %198 = icmp ne %struct.sk_buff* %197, null
  br i1 %198, label %199, label %243

199:                                              ; preds = %196
  %200 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %201 = call %struct.TYPE_12__* @FRAG_CB(%struct.sk_buff* %200)
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %205 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = add nsw i32 %203, %206
  %208 = load i32, i32* %10, align 4
  %209 = sub nsw i32 %207, %208
  store i32 %209, i32* %14, align 4
  %210 = load i32, i32* %14, align 4
  %211 = icmp sgt i32 %210, 0
  br i1 %211, label %212, label %242

212:                                              ; preds = %199
  %213 = load i32, i32* %14, align 4
  %214 = load i32, i32* %10, align 4
  %215 = add nsw i32 %214, %213
  store i32 %215, i32* %10, align 4
  %216 = load i32, i32* @EINVAL, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %13, align 4
  %218 = load i32, i32* %12, align 4
  %219 = load i32, i32* %10, align 4
  %220 = icmp sle i32 %218, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %212
  br label %465

222:                                              ; preds = %212
  %223 = load i32, i32* @ENOMEM, align 4
  %224 = sub nsw i32 0, %223
  store i32 %224, i32* %13, align 4
  %225 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %226 = load i32, i32* %14, align 4
  %227 = call i32* @pskb_pull(%struct.sk_buff* %225, i32 %226)
  %228 = icmp ne i32* %227, null
  br i1 %228, label %230, label %229

229:                                              ; preds = %222
  br label %465

230:                                              ; preds = %222
  %231 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %232 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @CHECKSUM_UNNECESSARY, align 8
  %235 = icmp ne i64 %233, %234
  br i1 %235, label %236, label %241

236:                                              ; preds = %230
  %237 = load i8*, i8** @CHECKSUM_NONE, align 8
  %238 = ptrtoint i8* %237 to i64
  %239 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %240 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %239, i32 0, i32 1
  store i64 %238, i64* %240, align 8
  br label %241

241:                                              ; preds = %236, %230
  br label %242

242:                                              ; preds = %241, %199
  br label %243

243:                                              ; preds = %242, %196
  %244 = load i32, i32* @ENOMEM, align 4
  %245 = sub nsw i32 0, %244
  store i32 %245, i32* %13, align 4
  br label %246

246:                                              ; preds = %331, %243
  %247 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %248 = icmp ne %struct.sk_buff* %247, null
  br i1 %248, label %249, label %256

249:                                              ; preds = %246
  %250 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %251 = call %struct.TYPE_12__* @FRAG_CB(%struct.sk_buff* %250)
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* %12, align 4
  %255 = icmp slt i32 %253, %254
  br label %256

256:                                              ; preds = %249, %246
  %257 = phi i1 [ false, %246 ], [ %255, %249 ]
  br i1 %257, label %258, label %332

258:                                              ; preds = %256
  %259 = load i32, i32* %12, align 4
  %260 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %261 = call %struct.TYPE_12__* @FRAG_CB(%struct.sk_buff* %260)
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = sub nsw i32 %259, %263
  store i32 %264, i32* %15, align 4
  %265 = load i32, i32* %15, align 4
  %266 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %267 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = icmp slt i32 %265, %268
  br i1 %269, label %270, label %300

270:                                              ; preds = %258
  %271 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %272 = load i32, i32* %15, align 4
  %273 = call i32* @pskb_pull(%struct.sk_buff* %271, i32 %272)
  %274 = icmp ne i32* %273, null
  br i1 %274, label %276, label %275

275:                                              ; preds = %270
  br label %465

276:                                              ; preds = %270
  %277 = load i32, i32* %15, align 4
  %278 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %279 = call %struct.TYPE_12__* @FRAG_CB(%struct.sk_buff* %278)
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = add nsw i32 %281, %277
  store i32 %282, i32* %280, align 4
  %283 = load i32, i32* %15, align 4
  %284 = load %struct.ipq*, %struct.ipq** %4, align 8
  %285 = getelementptr inbounds %struct.ipq, %struct.ipq* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 8
  %288 = sub nsw i32 %287, %283
  store i32 %288, i32* %286, align 8
  %289 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %290 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %289, i32 0, i32 1
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* @CHECKSUM_UNNECESSARY, align 8
  %293 = icmp ne i64 %291, %292
  br i1 %293, label %294, label %299

294:                                              ; preds = %276
  %295 = load i8*, i8** @CHECKSUM_NONE, align 8
  %296 = ptrtoint i8* %295 to i64
  %297 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %298 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %297, i32 0, i32 1
  store i64 %296, i64* %298, align 8
  br label %299

299:                                              ; preds = %294, %276
  br label %332

300:                                              ; preds = %258
  %301 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %301, %struct.sk_buff** %16, align 8
  %302 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %303 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %302, i32 0, i32 5
  %304 = load %struct.sk_buff*, %struct.sk_buff** %303, align 8
  store %struct.sk_buff* %304, %struct.sk_buff** %7, align 8
  %305 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %306 = icmp ne %struct.sk_buff* %305, null
  br i1 %306, label %307, label %311

307:                                              ; preds = %300
  %308 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %309 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %310 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %309, i32 0, i32 5
  store %struct.sk_buff* %308, %struct.sk_buff** %310, align 8
  br label %316

311:                                              ; preds = %300
  %312 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %313 = load %struct.ipq*, %struct.ipq** %4, align 8
  %314 = getelementptr inbounds %struct.ipq, %struct.ipq* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %314, i32 0, i32 7
  store %struct.sk_buff* %312, %struct.sk_buff** %315, align 8
  br label %316

316:                                              ; preds = %311, %307
  %317 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %318 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.ipq*, %struct.ipq** %4, align 8
  %321 = getelementptr inbounds %struct.ipq, %struct.ipq* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 8
  %324 = sub nsw i32 %323, %319
  store i32 %324, i32* %322, align 8
  %325 = load %struct.ipq*, %struct.ipq** %4, align 8
  %326 = getelementptr inbounds %struct.ipq, %struct.ipq* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %326, i32 0, i32 4
  %328 = load %struct.TYPE_10__*, %struct.TYPE_10__** %327, align 8
  %329 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %330 = call i32 @frag_kfree_skb(%struct.TYPE_10__* %328, %struct.sk_buff* %329, i32* null)
  br label %331

331:                                              ; preds = %316
  br label %246

332:                                              ; preds = %299, %256
  %333 = load i32, i32* %10, align 4
  %334 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %335 = call %struct.TYPE_12__* @FRAG_CB(%struct.sk_buff* %334)
  %336 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %335, i32 0, i32 0
  store i32 %333, i32* %336, align 4
  %337 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %338 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %339 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %338, i32 0, i32 5
  store %struct.sk_buff* %337, %struct.sk_buff** %339, align 8
  %340 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %341 = icmp ne %struct.sk_buff* %340, null
  br i1 %341, label %342, label %346

342:                                              ; preds = %332
  %343 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %344 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %345 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %344, i32 0, i32 5
  store %struct.sk_buff* %343, %struct.sk_buff** %345, align 8
  br label %351

346:                                              ; preds = %332
  %347 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %348 = load %struct.ipq*, %struct.ipq** %4, align 8
  %349 = getelementptr inbounds %struct.ipq, %struct.ipq* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %349, i32 0, i32 7
  store %struct.sk_buff* %347, %struct.sk_buff** %350, align 8
  br label %351

351:                                              ; preds = %346, %342
  %352 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %353 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %352, i32 0, i32 4
  %354 = load %struct.net_device*, %struct.net_device** %353, align 8
  store %struct.net_device* %354, %struct.net_device** %8, align 8
  %355 = load %struct.net_device*, %struct.net_device** %8, align 8
  %356 = icmp ne %struct.net_device* %355, null
  br i1 %356, label %357, label %365

357:                                              ; preds = %351
  %358 = load %struct.net_device*, %struct.net_device** %8, align 8
  %359 = getelementptr inbounds %struct.net_device, %struct.net_device* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  %361 = load %struct.ipq*, %struct.ipq** %4, align 8
  %362 = getelementptr inbounds %struct.ipq, %struct.ipq* %361, i32 0, i32 1
  store i32 %360, i32* %362, align 8
  %363 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %364 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %363, i32 0, i32 4
  store %struct.net_device* null, %struct.net_device** %364, align 8
  br label %365

365:                                              ; preds = %357, %351
  %366 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %367 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %366, i32 0, i32 3
  %368 = load i32, i32* %367, align 4
  %369 = load %struct.ipq*, %struct.ipq** %4, align 8
  %370 = getelementptr inbounds %struct.ipq, %struct.ipq* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %370, i32 0, i32 6
  store i32 %368, i32* %371, align 4
  %372 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %373 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = load %struct.ipq*, %struct.ipq** %4, align 8
  %376 = getelementptr inbounds %struct.ipq, %struct.ipq* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 8
  %379 = add nsw i32 %378, %374
  store i32 %379, i32* %377, align 8
  %380 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %381 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %380, i32 0, i32 2
  %382 = load i32, i32* %381, align 8
  %383 = load %struct.ipq*, %struct.ipq** %4, align 8
  %384 = getelementptr inbounds %struct.ipq, %struct.ipq* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %384, i32 0, i32 4
  %386 = load %struct.TYPE_10__*, %struct.TYPE_10__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %386, i32 0, i32 1
  %388 = call i32 @atomic_add(i32 %382, i32* %387)
  %389 = load i32, i32* %10, align 4
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %391, label %398

391:                                              ; preds = %365
  %392 = load i32, i32* @INET_FRAG_FIRST_IN, align 4
  %393 = load %struct.ipq*, %struct.ipq** %4, align 8
  %394 = getelementptr inbounds %struct.ipq, %struct.ipq* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = or i32 %396, %392
  store i32 %397, i32* %395, align 8
  br label %398

398:                                              ; preds = %391, %365
  %399 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %400 = call %struct.TYPE_8__* @ip_hdr(%struct.sk_buff* %399)
  %401 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 4
  %403 = load i32, i32* @IP_DF, align 4
  %404 = call i32 @htons(i32 %403)
  %405 = and i32 %402, %404
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %427

407:                                              ; preds = %398
  %408 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %409 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = load i32, i32* %11, align 4
  %412 = add nsw i32 %410, %411
  %413 = load %struct.ipq*, %struct.ipq** %4, align 8
  %414 = getelementptr inbounds %struct.ipq, %struct.ipq* %413, i32 0, i32 0
  %415 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %414, i32 0, i32 3
  %416 = load i32, i32* %415, align 4
  %417 = icmp sgt i32 %412, %416
  br i1 %417, label %418, label %427

418:                                              ; preds = %407
  %419 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %420 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 8
  %422 = load i32, i32* %11, align 4
  %423 = add nsw i32 %421, %422
  %424 = load %struct.ipq*, %struct.ipq** %4, align 8
  %425 = getelementptr inbounds %struct.ipq, %struct.ipq* %424, i32 0, i32 0
  %426 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %425, i32 0, i32 3
  store i32 %423, i32* %426, align 4
  br label %427

427:                                              ; preds = %418, %407, %398
  %428 = load %struct.ipq*, %struct.ipq** %4, align 8
  %429 = getelementptr inbounds %struct.ipq, %struct.ipq* %428, i32 0, i32 0
  %430 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 8
  %432 = load i32, i32* @INET_FRAG_FIRST_IN, align 4
  %433 = load i32, i32* @INET_FRAG_LAST_IN, align 4
  %434 = or i32 %432, %433
  %435 = icmp eq i32 %431, %434
  br i1 %435, label %436, label %451

436:                                              ; preds = %427
  %437 = load %struct.ipq*, %struct.ipq** %4, align 8
  %438 = getelementptr inbounds %struct.ipq, %struct.ipq* %437, i32 0, i32 0
  %439 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %438, i32 0, i32 2
  %440 = load i32, i32* %439, align 8
  %441 = load %struct.ipq*, %struct.ipq** %4, align 8
  %442 = getelementptr inbounds %struct.ipq, %struct.ipq* %441, i32 0, i32 0
  %443 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %442, i32 0, i32 1
  %444 = load i32, i32* %443, align 4
  %445 = icmp eq i32 %440, %444
  br i1 %445, label %446, label %451

446:                                              ; preds = %436
  %447 = load %struct.ipq*, %struct.ipq** %4, align 8
  %448 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %449 = load %struct.net_device*, %struct.net_device** %8, align 8
  %450 = call i32 @ip_frag_reasm(%struct.ipq* %447, %struct.sk_buff* %448, %struct.net_device* %449)
  store i32 %450, i32* %3, align 4
  br label %469

451:                                              ; preds = %436, %427
  %452 = call i32 @write_lock(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ip4_frags, i32 0, i32 0))
  %453 = load %struct.ipq*, %struct.ipq** %4, align 8
  %454 = getelementptr inbounds %struct.ipq, %struct.ipq* %453, i32 0, i32 0
  %455 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %454, i32 0, i32 5
  %456 = load %struct.ipq*, %struct.ipq** %4, align 8
  %457 = getelementptr inbounds %struct.ipq, %struct.ipq* %456, i32 0, i32 0
  %458 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %457, i32 0, i32 4
  %459 = load %struct.TYPE_10__*, %struct.TYPE_10__** %458, align 8
  %460 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %459, i32 0, i32 0
  %461 = call i32 @list_move_tail(i32* %455, i32* %460)
  %462 = call i32 @write_unlock(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ip4_frags, i32 0, i32 0))
  %463 = load i32, i32* @EINPROGRESS, align 4
  %464 = sub nsw i32 0, %463
  store i32 %464, i32* %3, align 4
  br label %469

465:                                              ; preds = %275, %229, %221, %173, %164, %156, %145, %100, %45, %26
  %466 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %467 = call i32 @kfree_skb(%struct.sk_buff* %466)
  %468 = load i32, i32* %13, align 4
  store i32 %468, i32* %3, align 4
  br label %469

469:                                              ; preds = %465, %451, %446
  %470 = load i32, i32* %3, align 4
  ret i32 %470
}

declare dso_local %struct.TYPE_11__* @IPCB(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ip_frag_too_far(%struct.ipq*) #1

declare dso_local i32 @ip_frag_reinit(%struct.ipq*) #1

declare dso_local i32 @ipq_kill(%struct.ipq*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.TYPE_8__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local i32* @pskb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @pskb_trim_rcsum(%struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_12__* @FRAG_CB(%struct.sk_buff*) #1

declare dso_local i32 @frag_kfree_skb(%struct.TYPE_10__*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ip_frag_reasm(%struct.ipq*, %struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
