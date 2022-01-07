; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_options.c_ip_options_echo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_options.c_ip_options_echo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_options = type { i64, i8*, i32, i32, i32, i32, i32, i32, i8, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_8__ = type { %struct.ip_options }
%struct.TYPE_5__ = type { i8 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IPOPT_TS_PRESPEC = common dso_local global i8 0, align 1
@RTN_LOCAL = common dso_local global i64 0, align 8
@IPOPT_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_options_echo(%struct.ip_options* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ip_options*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ip_options*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8*, align 8
  %15 = alloca i8, align 1
  store %struct.ip_options* %0, %struct.ip_options** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %16 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %17 = call i32 @memset(%struct.ip_options* %16, i32 0, i32 56)
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call %struct.TYPE_8__* @IPCB(%struct.sk_buff* %18)
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store %struct.ip_options* %20, %struct.ip_options** %6, align 8
  %21 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %22 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %428

26:                                               ; preds = %2
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = call i8* @skb_network_header(%struct.sk_buff* %27)
  store i8* %28, i8** %7, align 8
  %29 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %30 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %8, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = call %struct.TYPE_5__* @skb_rtable(%struct.sk_buff* %32)
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i8, i8* %34, align 1
  store i8 %35, i8* %12, align 1
  %36 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %37 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %110

40:                                               ; preds = %26
  %41 = load i8*, i8** %7, align 8
  %42 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %43 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %41, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  store i32 %49, i32* %11, align 4
  %50 = load i8*, i8** %7, align 8
  %51 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %52 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 2
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %50, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  store i32 %58, i32* %9, align 4
  %59 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %60 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, 4
  %63 = trunc i64 %62 to i32
  %64 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %65 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %69 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %67, i64 %71
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @memcpy(i8* %66, i8* %72, i32 %73)
  %75 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %76 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %99

79:                                               ; preds = %40
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp sle i32 %80, %81
  br i1 %82, label %83, label %99

83:                                               ; preds = %79
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 3
  %86 = load i32, i32* %11, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %428

91:                                               ; preds = %83
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 4
  %94 = trunc i32 %93 to i8
  %95 = load i8*, i8** %8, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 2
  store i8 %94, i8* %96, align 1
  %97 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %98 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %97, i32 0, i32 3
  store i32 1, i32* %98, align 4
  br label %99

99:                                               ; preds = %91, %79, %40
  %100 = load i32, i32* %11, align 4
  %101 = load i8*, i8** %8, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  store i8* %103, i8** %8, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %107 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, %105
  store i64 %109, i64* %107, align 8
  br label %110

110:                                              ; preds = %99, %26
  %111 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %112 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %245

115:                                              ; preds = %110
  %116 = load i8*, i8** %7, align 8
  %117 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %118 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %116, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  store i32 %124, i32* %11, align 4
  %125 = load i8*, i8** %7, align 8
  %126 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %127 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, 2
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %125, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  store i32 %133, i32* %9, align 4
  %134 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %135 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = add i64 %136, 4
  %138 = trunc i64 %137 to i32
  %139 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %140 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %139, i32 0, i32 4
  store i32 %138, i32* %140, align 8
  %141 = load i8*, i8** %8, align 8
  %142 = load i8*, i8** %7, align 8
  %143 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %144 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %142, i64 %146
  %148 = load i32, i32* %11, align 4
  %149 = call i32 @memcpy(i8* %141, i8* %147, i32 %148)
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %11, align 4
  %152 = icmp sle i32 %150, %151
  br i1 %152, label %153, label %234

153:                                              ; preds = %115
  %154 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %155 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %171

158:                                              ; preds = %153
  %159 = load i32, i32* %9, align 4
  %160 = add nsw i32 %159, 3
  %161 = load i32, i32* %11, align 4
  %162 = icmp sgt i32 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %158
  %164 = load i32, i32* @EINVAL, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %3, align 4
  br label %428

166:                                              ; preds = %158
  %167 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %168 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %167, i32 0, i32 5
  store i32 1, i32* %168, align 4
  %169 = load i32, i32* %9, align 4
  %170 = add nsw i32 %169, 4
  store i32 %170, i32* %9, align 4
  br label %171

171:                                              ; preds = %166, %153
  %172 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %173 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 8
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %229

176:                                              ; preds = %171
  %177 = load i32, i32* %9, align 4
  %178 = add nsw i32 %177, 3
  %179 = load i32, i32* %11, align 4
  %180 = icmp sgt i32 %178, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = load i32, i32* @EINVAL, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %3, align 4
  br label %428

184:                                              ; preds = %176
  %185 = load i8*, i8** %8, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 3
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i32
  %189 = and i32 %188, 15
  %190 = load i8, i8* @IPOPT_TS_PRESPEC, align 1
  %191 = zext i8 %190 to i32
  %192 = icmp ne i32 %189, %191
  br i1 %192, label %193, label %198

193:                                              ; preds = %184
  %194 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %195 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %194, i32 0, i32 6
  store i32 1, i32* %195, align 8
  %196 = load i32, i32* %9, align 4
  %197 = add nsw i32 %196, 4
  store i32 %197, i32* %9, align 4
  br label %228

198:                                              ; preds = %184
  %199 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %200 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %199, i32 0, i32 6
  store i32 0, i32* %200, align 8
  %201 = load i32, i32* %9, align 4
  %202 = add nsw i32 %201, 8
  %203 = load i32, i32* %11, align 4
  %204 = icmp sle i32 %202, %203
  br i1 %204, label %205, label %227

205:                                              ; preds = %198
  %206 = load i8*, i8** %7, align 8
  %207 = load i32, i32* %9, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %206, i64 %208
  %210 = getelementptr inbounds i8, i8* %209, i64 -1
  %211 = call i32 @memcpy(i8* %13, i8* %210, i32 4)
  %212 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %213 = call %struct.TYPE_6__* @skb_dst(%struct.sk_buff* %212)
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @dev_net(i32 %215)
  %217 = load i8, i8* %13, align 1
  %218 = call i64 @inet_addr_type(i32 %216, i8 zeroext %217)
  %219 = load i64, i64* @RTN_LOCAL, align 8
  %220 = icmp ne i64 %218, %219
  br i1 %220, label %221, label %226

221:                                              ; preds = %205
  %222 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %223 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %222, i32 0, i32 6
  store i32 1, i32* %223, align 8
  %224 = load i32, i32* %9, align 4
  %225 = add nsw i32 %224, 8
  store i32 %225, i32* %9, align 4
  br label %226

226:                                              ; preds = %221, %205
  br label %227

227:                                              ; preds = %226, %198
  br label %228

228:                                              ; preds = %227, %193
  br label %229

229:                                              ; preds = %228, %171
  %230 = load i32, i32* %9, align 4
  %231 = trunc i32 %230 to i8
  %232 = load i8*, i8** %8, align 8
  %233 = getelementptr inbounds i8, i8* %232, i64 2
  store i8 %231, i8* %233, align 1
  br label %234

234:                                              ; preds = %229, %115
  %235 = load i32, i32* %11, align 4
  %236 = load i8*, i8** %8, align 8
  %237 = sext i32 %235 to i64
  %238 = getelementptr inbounds i8, i8* %236, i64 %237
  store i8* %238, i8** %8, align 8
  %239 = load i32, i32* %11, align 4
  %240 = sext i32 %239 to i64
  %241 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %242 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = add nsw i64 %243, %240
  store i64 %244, i64* %242, align 8
  br label %245

245:                                              ; preds = %234, %110
  %246 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %247 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %246, i32 0, i32 7
  %248 = load i32, i32* %247, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %370

250:                                              ; preds = %245
  %251 = load i8*, i8** %7, align 8
  %252 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %253 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %252, i32 0, i32 7
  %254 = load i32, i32* %253, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i8, i8* %251, i64 %255
  store i8* %256, i8** %14, align 8
  %257 = load i8*, i8** %14, align 8
  %258 = getelementptr inbounds i8, i8* %257, i64 1
  %259 = load i8, i8* %258, align 1
  %260 = zext i8 %259 to i32
  store i32 %260, i32* %11, align 4
  %261 = load i8*, i8** %14, align 8
  %262 = getelementptr inbounds i8, i8* %261, i64 2
  %263 = load i8, i8* %262, align 1
  %264 = zext i8 %263 to i32
  store i32 %264, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %265 = load i32, i32* %9, align 4
  %266 = load i32, i32* %11, align 4
  %267 = icmp sgt i32 %265, %266
  br i1 %267, label %268, label %271

268:                                              ; preds = %250
  %269 = load i32, i32* %11, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %9, align 4
  br label %271

271:                                              ; preds = %268, %250
  %272 = load i32, i32* %9, align 4
  %273 = sub nsw i32 %272, 4
  store i32 %273, i32* %9, align 4
  %274 = load i32, i32* %9, align 4
  %275 = icmp sgt i32 %274, 3
  br i1 %275, label %276, label %320

276:                                              ; preds = %271
  %277 = load i8*, i8** %14, align 8
  %278 = load i32, i32* %9, align 4
  %279 = sub nsw i32 %278, 1
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i8, i8* %277, i64 %280
  %282 = call i32 @memcpy(i8* %15, i8* %281, i32 4)
  %283 = load i32, i32* %9, align 4
  %284 = sub nsw i32 %283, 4
  store i32 %284, i32* %9, align 4
  store i32 4, i32* %10, align 4
  br label %285

285:                                              ; preds = %300, %276
  %286 = load i32, i32* %9, align 4
  %287 = icmp sgt i32 %286, 3
  br i1 %287, label %288, label %305

288:                                              ; preds = %285
  %289 = load i8*, i8** %8, align 8
  %290 = load i32, i32* %10, align 4
  %291 = sub nsw i32 %290, 1
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i8, i8* %289, i64 %292
  %294 = load i8*, i8** %14, align 8
  %295 = load i32, i32* %9, align 4
  %296 = sub nsw i32 %295, 1
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i8, i8* %294, i64 %297
  %299 = call i32 @memcpy(i8* %293, i8* %298, i32 4)
  br label %300

300:                                              ; preds = %288
  %301 = load i32, i32* %9, align 4
  %302 = sub nsw i32 %301, 4
  store i32 %302, i32* %9, align 4
  %303 = load i32, i32* %10, align 4
  %304 = add nsw i32 %303, 4
  store i32 %304, i32* %10, align 4
  br label %285

305:                                              ; preds = %285
  %306 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %307 = call %struct.TYPE_7__* @ip_hdr(%struct.sk_buff* %306)
  %308 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %307, i32 0, i32 0
  %309 = load i8*, i8** %14, align 8
  %310 = load i32, i32* %9, align 4
  %311 = add nsw i32 %310, 3
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i8, i8* %309, i64 %312
  %314 = call i64 @memcmp(i32* %308, i8* %313, i32 4)
  %315 = icmp eq i64 %314, 0
  br i1 %315, label %316, label %319

316:                                              ; preds = %305
  %317 = load i32, i32* %10, align 4
  %318 = sub nsw i32 %317, 4
  store i32 %318, i32* %10, align 4
  br label %319

319:                                              ; preds = %316, %305
  br label %320

320:                                              ; preds = %319, %271
  %321 = load i32, i32* %10, align 4
  %322 = icmp sgt i32 %321, 3
  br i1 %322, label %323, label %369

323:                                              ; preds = %320
  %324 = load i8*, i8** %14, align 8
  %325 = load i32, i32* %10, align 4
  %326 = sub nsw i32 %325, 1
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i8, i8* %324, i64 %327
  %329 = call i32 @memcpy(i8* %328, i8* %12, i32 4)
  %330 = load i8, i8* %15, align 1
  %331 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %332 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %331, i32 0, i32 8
  store i8 %330, i8* %332, align 8
  %333 = load i8*, i8** %14, align 8
  %334 = getelementptr inbounds i8, i8* %333, i64 0
  %335 = load i8, i8* %334, align 1
  %336 = load i8*, i8** %8, align 8
  %337 = getelementptr inbounds i8, i8* %336, i64 0
  store i8 %335, i8* %337, align 1
  %338 = load i32, i32* %10, align 4
  %339 = add nsw i32 %338, 3
  %340 = trunc i32 %339 to i8
  %341 = load i8*, i8** %8, align 8
  %342 = getelementptr inbounds i8, i8* %341, i64 1
  store i8 %340, i8* %342, align 1
  %343 = load i8*, i8** %8, align 8
  %344 = getelementptr inbounds i8, i8* %343, i64 2
  store i8 4, i8* %344, align 1
  %345 = load i32, i32* %10, align 4
  %346 = add nsw i32 %345, 3
  %347 = load i8*, i8** %8, align 8
  %348 = sext i32 %346 to i64
  %349 = getelementptr inbounds i8, i8* %347, i64 %348
  store i8* %349, i8** %8, align 8
  %350 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %351 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %350, i32 0, i32 0
  %352 = load i64, i64* %351, align 8
  %353 = add i64 %352, 4
  %354 = trunc i64 %353 to i32
  %355 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %356 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %355, i32 0, i32 7
  store i32 %354, i32* %356, align 4
  %357 = load i32, i32* %10, align 4
  %358 = add nsw i32 %357, 3
  %359 = sext i32 %358 to i64
  %360 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %361 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %360, i32 0, i32 0
  %362 = load i64, i64* %361, align 8
  %363 = add nsw i64 %362, %359
  store i64 %363, i64* %361, align 8
  %364 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %365 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %364, i32 0, i32 10
  %366 = load i32, i32* %365, align 8
  %367 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %368 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %367, i32 0, i32 10
  store i32 %366, i32* %368, align 8
  br label %369

369:                                              ; preds = %323, %320
  br label %370

370:                                              ; preds = %369, %245
  %371 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %372 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %371, i32 0, i32 9
  %373 = load i32, i32* %372, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %411

375:                                              ; preds = %370
  %376 = load i8*, i8** %7, align 8
  %377 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %378 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %377, i32 0, i32 9
  %379 = load i32, i32* %378, align 4
  %380 = add nsw i32 %379, 1
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i8, i8* %376, i64 %381
  %383 = load i8, i8* %382, align 1
  %384 = zext i8 %383 to i32
  store i32 %384, i32* %11, align 4
  %385 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %386 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = add i64 %387, 4
  %389 = trunc i64 %388 to i32
  %390 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %391 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %390, i32 0, i32 9
  store i32 %389, i32* %391, align 4
  %392 = load i8*, i8** %8, align 8
  %393 = load i8*, i8** %7, align 8
  %394 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %395 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %394, i32 0, i32 9
  %396 = load i32, i32* %395, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i8, i8* %393, i64 %397
  %399 = load i32, i32* %11, align 4
  %400 = call i32 @memcpy(i8* %392, i8* %398, i32 %399)
  %401 = load i32, i32* %11, align 4
  %402 = load i8*, i8** %8, align 8
  %403 = sext i32 %401 to i64
  %404 = getelementptr inbounds i8, i8* %402, i64 %403
  store i8* %404, i8** %8, align 8
  %405 = load i32, i32* %11, align 4
  %406 = sext i32 %405 to i64
  %407 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %408 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %407, i32 0, i32 0
  %409 = load i64, i64* %408, align 8
  %410 = add nsw i64 %409, %406
  store i64 %410, i64* %408, align 8
  br label %411

411:                                              ; preds = %375, %370
  br label %412

412:                                              ; preds = %418, %411
  %413 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %414 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %413, i32 0, i32 0
  %415 = load i64, i64* %414, align 8
  %416 = and i64 %415, 3
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %418, label %427

418:                                              ; preds = %412
  %419 = load i32, i32* @IPOPT_END, align 4
  %420 = trunc i32 %419 to i8
  %421 = load i8*, i8** %8, align 8
  %422 = getelementptr inbounds i8, i8* %421, i32 1
  store i8* %422, i8** %8, align 8
  store i8 %420, i8* %421, align 1
  %423 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %424 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %423, i32 0, i32 0
  %425 = load i64, i64* %424, align 8
  %426 = add nsw i64 %425, 1
  store i64 %426, i64* %424, align 8
  br label %412

427:                                              ; preds = %412
  store i32 0, i32* %3, align 4
  br label %428

428:                                              ; preds = %427, %181, %163, %88, %25
  %429 = load i32, i32* %3, align 4
  ret i32 %429
}

declare dso_local i32 @memset(%struct.ip_options*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @IPCB(%struct.sk_buff*) #1

declare dso_local i8* @skb_network_header(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_5__* @skb_rtable(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @inet_addr_type(i32, i8 zeroext) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local %struct.TYPE_6__* @skb_dst(%struct.sk_buff*) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local %struct.TYPE_7__* @ip_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
