; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_options.c_ip_options_compile.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_options.c_ip_options_compile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.ip_options = type { i8*, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.rtable = type { i8 }
%struct.timespec = type { i32, i32 }

@RTN_UNICAST = common dso_local global i32 0, align 4
@CAP_NET_RAW = common dso_local global i32 0, align 4
@MSEC_PER_SEC = common dso_local global i32 0, align 4
@NSEC_PER_MSEC = common dso_local global i32 0, align 4
@ICMP_PARAMETERPROB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_options_compile(%struct.net* %0, %struct.ip_options* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.ip_options*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.rtable*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8, align 1
  %16 = alloca %struct.timespec, align 4
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.ip_options* %1, %struct.ip_options** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i8* null, i8** %12, align 8
  store %struct.rtable* null, %struct.rtable** %13, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = call %struct.rtable* @skb_rtable(%struct.sk_buff* %22)
  store %struct.rtable* %23, %struct.rtable** %13, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = call i32* @ip_hdr(%struct.sk_buff* %24)
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = bitcast i32* %26 to i8*
  store i8* %27, i8** %10, align 8
  br label %32

28:                                               ; preds = %3
  %29 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %30 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %10, align 8
  br label %32

32:                                               ; preds = %28, %21
  %33 = load i8*, i8** %10, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 -4
  store i8* %34, i8** %9, align 8
  %35 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %36 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %574, %69, %32
  %39 = load i32, i32* %8, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %582

41:                                               ; preds = %38
  %42 = load i8*, i8** %10, align 8
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  switch i32 %44, label %74 [
    i32 139, label %45
    i32 137, label %69
  ]

45:                                               ; preds = %41
  %46 = load i8*, i8** %10, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %10, align 8
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %63, %45
  %51 = load i32, i32* %8, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %50
  %54 = load i8*, i8** %10, align 8
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp ne i32 %56, 139
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i8*, i8** %10, align 8
  store i8 -117, i8* %59, align 1
  %60 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %61 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %60, i32 0, i32 2
  store i32 1, i32* %61, align 4
  br label %62

62:                                               ; preds = %58, %53
  br label %63

63:                                               ; preds = %62
  %64 = load i8*, i8** %10, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %10, align 8
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %8, align 4
  br label %50

68:                                               ; preds = %50
  br label %583

69:                                               ; preds = %41
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %8, align 4
  %72 = load i8*, i8** %10, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %10, align 8
  br label %38

74:                                               ; preds = %41
  %75 = load i8*, i8** %10, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp slt i32 %79, 2
  br i1 %80, label %85, label %81

81:                                               ; preds = %74
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81, %74
  %86 = load i8*, i8** %10, align 8
  store i8* %86, i8** %12, align 8
  br label %588

87:                                               ; preds = %81
  %88 = load i8*, i8** %10, align 8
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  switch i32 %90, label %564 [
    i32 132, label %91
    i32 138, label %91
    i32 135, label %167
    i32 131, label %242
    i32 136, label %506
    i32 140, label %534
    i32 134, label %563
    i32 133, label %563
  ]

91:                                               ; preds = %87, %87
  %92 = load i32, i32* %11, align 4
  %93 = icmp slt i32 %92, 3
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i8*, i8** %10, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  store i8* %96, i8** %12, align 8
  br label %588

97:                                               ; preds = %91
  %98 = load i8*, i8** %10, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 2
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = icmp slt i32 %101, 4
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load i8*, i8** %10, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 2
  store i8* %105, i8** %12, align 8
  br label %588

106:                                              ; preds = %97
  %107 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %108 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = load i8*, i8** %10, align 8
  store i8* %112, i8** %12, align 8
  br label %588

113:                                              ; preds = %106
  %114 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %115 = icmp ne %struct.sk_buff* %114, null
  br i1 %115, label %150, label %116

116:                                              ; preds = %113
  %117 = load i8*, i8** %10, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 2
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = icmp ne i32 %120, 4
  br i1 %121, label %130, label %122

122:                                              ; preds = %116
  %123 = load i32, i32* %11, align 4
  %124 = icmp slt i32 %123, 7
  br i1 %124, label %130, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* %11, align 4
  %127 = sub nsw i32 %126, 3
  %128 = and i32 %127, 3
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %125, %122, %116
  %131 = load i8*, i8** %10, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 1
  store i8* %132, i8** %12, align 8
  br label %588

133:                                              ; preds = %125
  %134 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %135 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %134, i32 0, i32 4
  %136 = load i8*, i8** %10, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 3
  %138 = call i32 @memcpy(i8* %135, i8* %137, i32 4)
  %139 = load i32, i32* %11, align 4
  %140 = icmp sgt i32 %139, 7
  br i1 %140, label %141, label %149

141:                                              ; preds = %133
  %142 = load i8*, i8** %10, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 3
  %144 = load i8*, i8** %10, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 7
  %146 = load i32, i32* %11, align 4
  %147 = sub nsw i32 %146, 7
  %148 = call i32 @memmove(i8* %143, i8* %145, i32 %147)
  br label %149

149:                                              ; preds = %141, %133
  br label %150

150:                                              ; preds = %149, %113
  %151 = load i8*, i8** %10, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 0
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i32
  %155 = icmp eq i32 %154, 132
  %156 = zext i1 %155 to i32
  %157 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %158 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %157, i32 0, i32 5
  store i32 %156, i32* %158, align 8
  %159 = load i8*, i8** %10, align 8
  %160 = load i8*, i8** %9, align 8
  %161 = ptrtoint i8* %159 to i64
  %162 = ptrtoint i8* %160 to i64
  %163 = sub i64 %161, %162
  %164 = trunc i64 %163 to i32
  %165 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %166 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %165, i32 0, i32 3
  store i32 %164, i32* %166, align 8
  br label %574

167:                                              ; preds = %87
  %168 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %169 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = load i8*, i8** %10, align 8
  store i8* %173, i8** %12, align 8
  br label %588

174:                                              ; preds = %167
  %175 = load i32, i32* %11, align 4
  %176 = icmp slt i32 %175, 3
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load i8*, i8** %10, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 1
  store i8* %179, i8** %12, align 8
  br label %588

180:                                              ; preds = %174
  %181 = load i8*, i8** %10, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 2
  %183 = load i8, i8* %182, align 1
  %184 = zext i8 %183 to i32
  %185 = icmp slt i32 %184, 4
  br i1 %185, label %186, label %189

186:                                              ; preds = %180
  %187 = load i8*, i8** %10, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 2
  store i8* %188, i8** %12, align 8
  br label %588

189:                                              ; preds = %180
  %190 = load i8*, i8** %10, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 2
  %192 = load i8, i8* %191, align 1
  %193 = zext i8 %192 to i32
  %194 = load i32, i32* %11, align 4
  %195 = icmp sle i32 %193, %194
  br i1 %195, label %196, label %233

196:                                              ; preds = %189
  %197 = load i8*, i8** %10, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 2
  %199 = load i8, i8* %198, align 1
  %200 = zext i8 %199 to i32
  %201 = add nsw i32 %200, 3
  %202 = load i32, i32* %11, align 4
  %203 = icmp sgt i32 %201, %202
  br i1 %203, label %204, label %207

204:                                              ; preds = %196
  %205 = load i8*, i8** %10, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 2
  store i8* %206, i8** %12, align 8
  br label %588

207:                                              ; preds = %196
  %208 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %209 = icmp ne %struct.sk_buff* %208, null
  br i1 %209, label %210, label %224

210:                                              ; preds = %207
  %211 = load i8*, i8** %10, align 8
  %212 = load i8*, i8** %10, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 2
  %214 = load i8, i8* %213, align 1
  %215 = zext i8 %214 to i32
  %216 = sub nsw i32 %215, 1
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8, i8* %211, i64 %217
  %219 = load %struct.rtable*, %struct.rtable** %13, align 8
  %220 = getelementptr inbounds %struct.rtable, %struct.rtable* %219, i32 0, i32 0
  %221 = call i32 @memcpy(i8* %218, i8* %220, i32 4)
  %222 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %223 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %222, i32 0, i32 2
  store i32 1, i32* %223, align 4
  br label %224

224:                                              ; preds = %210, %207
  %225 = load i8*, i8** %10, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 2
  %227 = load i8, i8* %226, align 1
  %228 = zext i8 %227 to i32
  %229 = add nsw i32 %228, 4
  %230 = trunc i32 %229 to i8
  store i8 %230, i8* %226, align 1
  %231 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %232 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %231, i32 0, i32 7
  store i32 1, i32* %232, align 8
  br label %233

233:                                              ; preds = %224, %189
  %234 = load i8*, i8** %10, align 8
  %235 = load i8*, i8** %9, align 8
  %236 = ptrtoint i8* %234 to i64
  %237 = ptrtoint i8* %235 to i64
  %238 = sub i64 %236, %237
  %239 = trunc i64 %238 to i32
  %240 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %241 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %240, i32 0, i32 6
  store i32 %239, i32* %241, align 4
  br label %574

242:                                              ; preds = %87
  %243 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %244 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %243, i32 0, i32 8
  %245 = load i32, i32* %244, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %242
  %248 = load i8*, i8** %10, align 8
  store i8* %248, i8** %12, align 8
  br label %588

249:                                              ; preds = %242
  %250 = load i32, i32* %11, align 4
  %251 = icmp slt i32 %250, 4
  br i1 %251, label %252, label %255

252:                                              ; preds = %249
  %253 = load i8*, i8** %10, align 8
  %254 = getelementptr inbounds i8, i8* %253, i64 1
  store i8* %254, i8** %12, align 8
  br label %588

255:                                              ; preds = %249
  %256 = load i8*, i8** %10, align 8
  %257 = getelementptr inbounds i8, i8* %256, i64 2
  %258 = load i8, i8* %257, align 1
  %259 = zext i8 %258 to i32
  %260 = icmp slt i32 %259, 5
  br i1 %260, label %261, label %264

261:                                              ; preds = %255
  %262 = load i8*, i8** %10, align 8
  %263 = getelementptr inbounds i8, i8* %262, i64 2
  store i8* %263, i8** %12, align 8
  br label %588

264:                                              ; preds = %255
  %265 = load i8*, i8** %10, align 8
  %266 = getelementptr inbounds i8, i8* %265, i64 2
  %267 = load i8, i8* %266, align 1
  %268 = zext i8 %267 to i32
  %269 = load i32, i32* %11, align 4
  %270 = icmp sle i32 %268, %269
  br i1 %270, label %271, label %467

271:                                              ; preds = %264
  store i8* null, i8** %14, align 8
  %272 = load i8*, i8** %10, align 8
  %273 = getelementptr inbounds i8, i8* %272, i64 2
  %274 = load i8, i8* %273, align 1
  %275 = zext i8 %274 to i32
  %276 = add nsw i32 %275, 3
  %277 = load i8*, i8** %10, align 8
  %278 = getelementptr inbounds i8, i8* %277, i64 1
  %279 = load i8, i8* %278, align 1
  %280 = zext i8 %279 to i32
  %281 = icmp sgt i32 %276, %280
  br i1 %281, label %282, label %285

282:                                              ; preds = %271
  %283 = load i8*, i8** %10, align 8
  %284 = getelementptr inbounds i8, i8* %283, i64 2
  store i8* %284, i8** %12, align 8
  br label %588

285:                                              ; preds = %271
  %286 = load i8*, i8** %10, align 8
  %287 = getelementptr inbounds i8, i8* %286, i64 3
  %288 = load i8, i8* %287, align 1
  %289 = zext i8 %288 to i32
  %290 = and i32 %289, 15
  switch i32 %290, label %435 [
    i32 128, label %291
    i32 129, label %320
    i32 130, label %376
  ]

291:                                              ; preds = %285
  %292 = load i8*, i8** %10, align 8
  %293 = load i8*, i8** %9, align 8
  %294 = ptrtoint i8* %292 to i64
  %295 = ptrtoint i8* %293 to i64
  %296 = sub i64 %294, %295
  %297 = trunc i64 %296 to i32
  %298 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %299 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %298, i32 0, i32 8
  store i32 %297, i32* %299, align 4
  %300 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %301 = icmp ne %struct.sk_buff* %300, null
  br i1 %301, label %302, label %311

302:                                              ; preds = %291
  %303 = load i8*, i8** %10, align 8
  %304 = load i8*, i8** %10, align 8
  %305 = getelementptr inbounds i8, i8* %304, i64 2
  %306 = load i8, i8* %305, align 1
  %307 = zext i8 %306 to i32
  %308 = sub nsw i32 %307, 1
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i8, i8* %303, i64 %309
  store i8* %310, i8** %14, align 8
  br label %311

311:                                              ; preds = %302, %291
  %312 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %313 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %312, i32 0, i32 9
  store i32 1, i32* %313, align 8
  %314 = load i8*, i8** %10, align 8
  %315 = getelementptr inbounds i8, i8* %314, i64 2
  %316 = load i8, i8* %315, align 1
  %317 = zext i8 %316 to i32
  %318 = add nsw i32 %317, 4
  %319 = trunc i32 %318 to i8
  store i8 %319, i8* %315, align 1
  br label %446

320:                                              ; preds = %285
  %321 = load i8*, i8** %10, align 8
  %322 = getelementptr inbounds i8, i8* %321, i64 2
  %323 = load i8, i8* %322, align 1
  %324 = zext i8 %323 to i32
  %325 = add nsw i32 %324, 7
  %326 = load i8*, i8** %10, align 8
  %327 = getelementptr inbounds i8, i8* %326, i64 1
  %328 = load i8, i8* %327, align 1
  %329 = zext i8 %328 to i32
  %330 = icmp sgt i32 %325, %329
  br i1 %330, label %331, label %334

331:                                              ; preds = %320
  %332 = load i8*, i8** %10, align 8
  %333 = getelementptr inbounds i8, i8* %332, i64 2
  store i8* %333, i8** %12, align 8
  br label %588

334:                                              ; preds = %320
  %335 = load i8*, i8** %10, align 8
  %336 = load i8*, i8** %9, align 8
  %337 = ptrtoint i8* %335 to i64
  %338 = ptrtoint i8* %336 to i64
  %339 = sub i64 %337, %338
  %340 = trunc i64 %339 to i32
  %341 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %342 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %341, i32 0, i32 8
  store i32 %340, i32* %342, align 4
  %343 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %344 = icmp ne %struct.sk_buff* %343, null
  br i1 %344, label %345, label %365

345:                                              ; preds = %334
  %346 = load i8*, i8** %10, align 8
  %347 = load i8*, i8** %10, align 8
  %348 = getelementptr inbounds i8, i8* %347, i64 2
  %349 = load i8, i8* %348, align 1
  %350 = zext i8 %349 to i32
  %351 = sub nsw i32 %350, 1
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i8, i8* %346, i64 %352
  %354 = load %struct.rtable*, %struct.rtable** %13, align 8
  %355 = getelementptr inbounds %struct.rtable, %struct.rtable* %354, i32 0, i32 0
  %356 = call i32 @memcpy(i8* %353, i8* %355, i32 4)
  %357 = load i8*, i8** %10, align 8
  %358 = load i8*, i8** %10, align 8
  %359 = getelementptr inbounds i8, i8* %358, i64 2
  %360 = load i8, i8* %359, align 1
  %361 = zext i8 %360 to i32
  %362 = add nsw i32 %361, 3
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i8, i8* %357, i64 %363
  store i8* %364, i8** %14, align 8
  br label %365

365:                                              ; preds = %345, %334
  %366 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %367 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %366, i32 0, i32 10
  store i32 1, i32* %367, align 4
  %368 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %369 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %368, i32 0, i32 9
  store i32 1, i32* %369, align 8
  %370 = load i8*, i8** %10, align 8
  %371 = getelementptr inbounds i8, i8* %370, i64 2
  %372 = load i8, i8* %371, align 1
  %373 = zext i8 %372 to i32
  %374 = add nsw i32 %373, 8
  %375 = trunc i32 %374 to i8
  store i8 %375, i8* %371, align 1
  br label %446

376:                                              ; preds = %285
  %377 = load i8*, i8** %10, align 8
  %378 = getelementptr inbounds i8, i8* %377, i64 2
  %379 = load i8, i8* %378, align 1
  %380 = zext i8 %379 to i32
  %381 = add nsw i32 %380, 7
  %382 = load i8*, i8** %10, align 8
  %383 = getelementptr inbounds i8, i8* %382, i64 1
  %384 = load i8, i8* %383, align 1
  %385 = zext i8 %384 to i32
  %386 = icmp sgt i32 %381, %385
  br i1 %386, label %387, label %390

387:                                              ; preds = %376
  %388 = load i8*, i8** %10, align 8
  %389 = getelementptr inbounds i8, i8* %388, i64 2
  store i8* %389, i8** %12, align 8
  br label %588

390:                                              ; preds = %376
  %391 = load i8*, i8** %10, align 8
  %392 = load i8*, i8** %9, align 8
  %393 = ptrtoint i8* %391 to i64
  %394 = ptrtoint i8* %392 to i64
  %395 = sub i64 %393, %394
  %396 = trunc i64 %395 to i32
  %397 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %398 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %397, i32 0, i32 8
  store i32 %396, i32* %398, align 4
  %399 = load i8*, i8** %10, align 8
  %400 = load i8*, i8** %10, align 8
  %401 = getelementptr inbounds i8, i8* %400, i64 2
  %402 = load i8, i8* %401, align 1
  %403 = zext i8 %402 to i32
  %404 = sub nsw i32 %403, 1
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i8, i8* %399, i64 %405
  %407 = call i32 @memcpy(i8* %15, i8* %406, i32 4)
  %408 = load %struct.net*, %struct.net** %5, align 8
  %409 = load i8, i8* %15, align 1
  %410 = call i32 @inet_addr_type(%struct.net* %408, i8 zeroext %409)
  %411 = load i32, i32* @RTN_UNICAST, align 4
  %412 = icmp eq i32 %410, %411
  br i1 %412, label %413, label %414

413:                                              ; preds = %390
  br label %446

414:                                              ; preds = %390
  %415 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %416 = icmp ne %struct.sk_buff* %415, null
  br i1 %416, label %417, label %426

417:                                              ; preds = %414
  %418 = load i8*, i8** %10, align 8
  %419 = load i8*, i8** %10, align 8
  %420 = getelementptr inbounds i8, i8* %419, i64 2
  %421 = load i8, i8* %420, align 1
  %422 = zext i8 %421 to i32
  %423 = add nsw i32 %422, 3
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i8, i8* %418, i64 %424
  store i8* %425, i8** %14, align 8
  br label %426

426:                                              ; preds = %417, %414
  %427 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %428 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %427, i32 0, i32 9
  store i32 1, i32* %428, align 8
  %429 = load i8*, i8** %10, align 8
  %430 = getelementptr inbounds i8, i8* %429, i64 2
  %431 = load i8, i8* %430, align 1
  %432 = zext i8 %431 to i32
  %433 = add nsw i32 %432, 8
  %434 = trunc i32 %433 to i8
  store i8 %434, i8* %430, align 1
  br label %446

435:                                              ; preds = %285
  %436 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %437 = icmp ne %struct.sk_buff* %436, null
  br i1 %437, label %445, label %438

438:                                              ; preds = %435
  %439 = load i32, i32* @CAP_NET_RAW, align 4
  %440 = call i32 @capable(i32 %439)
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %445, label %442

442:                                              ; preds = %438
  %443 = load i8*, i8** %10, align 8
  %444 = getelementptr inbounds i8, i8* %443, i64 3
  store i8* %444, i8** %12, align 8
  br label %588

445:                                              ; preds = %438, %435
  br label %446

446:                                              ; preds = %445, %426, %413, %365, %311
  %447 = load i8*, i8** %14, align 8
  %448 = icmp ne i8* %447, null
  br i1 %448, label %449, label %466

449:                                              ; preds = %446
  %450 = call i32 @getnstimeofday(%struct.timespec* %16)
  %451 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 0
  %452 = load i32, i32* %451, align 4
  %453 = srem i32 %452, 86400
  %454 = load i32, i32* @MSEC_PER_SEC, align 4
  %455 = mul nsw i32 %453, %454
  %456 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 1
  %457 = load i32, i32* %456, align 4
  %458 = load i32, i32* @NSEC_PER_MSEC, align 4
  %459 = sdiv i32 %457, %458
  %460 = add nsw i32 %455, %459
  %461 = call zeroext i8 @htonl(i32 %460)
  store i8 %461, i8* %17, align 1
  %462 = load i8*, i8** %14, align 8
  %463 = call i32 @memcpy(i8* %462, i8* %17, i32 1)
  %464 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %465 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %464, i32 0, i32 2
  store i32 1, i32* %465, align 4
  br label %466

466:                                              ; preds = %449, %446
  br label %505

467:                                              ; preds = %264
  %468 = load i8*, i8** %10, align 8
  %469 = getelementptr inbounds i8, i8* %468, i64 3
  %470 = load i8, i8* %469, align 1
  %471 = zext i8 %470 to i32
  %472 = ashr i32 %471, 4
  store i32 %472, i32* %18, align 4
  %473 = load i32, i32* %18, align 4
  %474 = icmp eq i32 %473, 15
  br i1 %474, label %475, label %478

475:                                              ; preds = %467
  %476 = load i8*, i8** %10, align 8
  %477 = getelementptr inbounds i8, i8* %476, i64 3
  store i8* %477, i8** %12, align 8
  br label %588

478:                                              ; preds = %467
  %479 = load i8*, i8** %10, align 8
  %480 = load i8*, i8** %9, align 8
  %481 = ptrtoint i8* %479 to i64
  %482 = ptrtoint i8* %480 to i64
  %483 = sub i64 %481, %482
  %484 = trunc i64 %483 to i32
  %485 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %486 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %485, i32 0, i32 8
  store i32 %484, i32* %486, align 4
  %487 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %488 = icmp ne %struct.sk_buff* %487, null
  br i1 %488, label %489, label %504

489:                                              ; preds = %478
  %490 = load i8*, i8** %10, align 8
  %491 = getelementptr inbounds i8, i8* %490, i64 3
  %492 = load i8, i8* %491, align 1
  %493 = zext i8 %492 to i32
  %494 = and i32 %493, 15
  %495 = load i32, i32* %18, align 4
  %496 = add i32 %495, 1
  %497 = shl i32 %496, 4
  %498 = or i32 %494, %497
  %499 = trunc i32 %498 to i8
  %500 = load i8*, i8** %10, align 8
  %501 = getelementptr inbounds i8, i8* %500, i64 3
  store i8 %499, i8* %501, align 1
  %502 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %503 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %502, i32 0, i32 2
  store i32 1, i32* %503, align 4
  br label %504

504:                                              ; preds = %489, %478
  br label %505

505:                                              ; preds = %504, %466
  br label %574

506:                                              ; preds = %87
  %507 = load i32, i32* %11, align 4
  %508 = icmp slt i32 %507, 4
  br i1 %508, label %509, label %512

509:                                              ; preds = %506
  %510 = load i8*, i8** %10, align 8
  %511 = getelementptr inbounds i8, i8* %510, i64 1
  store i8* %511, i8** %12, align 8
  br label %588

512:                                              ; preds = %506
  %513 = load i8*, i8** %10, align 8
  %514 = getelementptr inbounds i8, i8* %513, i64 2
  %515 = load i8, i8* %514, align 1
  %516 = zext i8 %515 to i32
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %518, label %533

518:                                              ; preds = %512
  %519 = load i8*, i8** %10, align 8
  %520 = getelementptr inbounds i8, i8* %519, i64 3
  %521 = load i8, i8* %520, align 1
  %522 = zext i8 %521 to i32
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %524, label %533

524:                                              ; preds = %518
  %525 = load i8*, i8** %10, align 8
  %526 = load i8*, i8** %9, align 8
  %527 = ptrtoint i8* %525 to i64
  %528 = ptrtoint i8* %526 to i64
  %529 = sub i64 %527, %528
  %530 = trunc i64 %529 to i32
  %531 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %532 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %531, i32 0, i32 11
  store i32 %530, i32* %532, align 8
  br label %533

533:                                              ; preds = %524, %518, %512
  br label %574

534:                                              ; preds = %87
  %535 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %536 = icmp ne %struct.sk_buff* %535, null
  br i1 %536, label %541, label %537

537:                                              ; preds = %534
  %538 = load i32, i32* @CAP_NET_RAW, align 4
  %539 = call i32 @capable(i32 %538)
  %540 = icmp ne i32 %539, 0
  br i1 %540, label %541, label %546

541:                                              ; preds = %537, %534
  %542 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %543 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %542, i32 0, i32 12
  %544 = load i32, i32* %543, align 4
  %545 = icmp ne i32 %544, 0
  br i1 %545, label %546, label %548

546:                                              ; preds = %541, %537
  %547 = load i8*, i8** %10, align 8
  store i8* %547, i8** %12, align 8
  br label %588

548:                                              ; preds = %541
  %549 = load i8*, i8** %10, align 8
  %550 = load i8*, i8** %9, align 8
  %551 = ptrtoint i8* %549 to i64
  %552 = ptrtoint i8* %550 to i64
  %553 = sub i64 %551, %552
  %554 = trunc i64 %553 to i32
  %555 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %556 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %555, i32 0, i32 12
  store i32 %554, i32* %556, align 4
  %557 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %558 = call i32 @cipso_v4_validate(%struct.sk_buff* %557, i8** %10)
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %560, label %562

560:                                              ; preds = %548
  %561 = load i8*, i8** %10, align 8
  store i8* %561, i8** %12, align 8
  br label %588

562:                                              ; preds = %548
  br label %574

563:                                              ; preds = %87, %87
  br label %564

564:                                              ; preds = %87, %563
  %565 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %566 = icmp ne %struct.sk_buff* %565, null
  br i1 %566, label %573, label %567

567:                                              ; preds = %564
  %568 = load i32, i32* @CAP_NET_RAW, align 4
  %569 = call i32 @capable(i32 %568)
  %570 = icmp ne i32 %569, 0
  br i1 %570, label %573, label %571

571:                                              ; preds = %567
  %572 = load i8*, i8** %10, align 8
  store i8* %572, i8** %12, align 8
  br label %588

573:                                              ; preds = %567, %564
  br label %574

574:                                              ; preds = %573, %562, %533, %505, %233, %150
  %575 = load i32, i32* %11, align 4
  %576 = load i32, i32* %8, align 4
  %577 = sub nsw i32 %576, %575
  store i32 %577, i32* %8, align 4
  %578 = load i32, i32* %11, align 4
  %579 = load i8*, i8** %10, align 8
  %580 = sext i32 %578 to i64
  %581 = getelementptr inbounds i8, i8* %579, i64 %580
  store i8* %581, i8** %10, align 8
  br label %38

582:                                              ; preds = %38
  br label %583

583:                                              ; preds = %582, %68
  %584 = load i8*, i8** %12, align 8
  %585 = icmp ne i8* %584, null
  br i1 %585, label %587, label %586

586:                                              ; preds = %583
  store i32 0, i32* %4, align 4
  br label %606

587:                                              ; preds = %583
  br label %588

588:                                              ; preds = %587, %571, %560, %546, %509, %475, %442, %387, %331, %282, %261, %252, %247, %204, %186, %177, %172, %130, %111, %103, %94, %85
  %589 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %590 = icmp ne %struct.sk_buff* %589, null
  br i1 %590, label %591, label %603

591:                                              ; preds = %588
  %592 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %593 = load i32, i32* @ICMP_PARAMETERPROB, align 4
  %594 = load i8*, i8** %12, align 8
  %595 = load i8*, i8** %9, align 8
  %596 = ptrtoint i8* %594 to i64
  %597 = ptrtoint i8* %595 to i64
  %598 = sub i64 %596, %597
  %599 = shl i64 %598, 24
  %600 = trunc i64 %599 to i32
  %601 = call zeroext i8 @htonl(i32 %600)
  %602 = call i32 @icmp_send(%struct.sk_buff* %592, i32 %593, i32 0, i8 zeroext %601)
  br label %603

603:                                              ; preds = %591, %588
  %604 = load i32, i32* @EINVAL, align 4
  %605 = sub nsw i32 0, %604
  store i32 %605, i32* %4, align 4
  br label %606

606:                                              ; preds = %603, %586
  %607 = load i32, i32* %4, align 4
  ret i32 %607
}

declare dso_local %struct.rtable* @skb_rtable(%struct.sk_buff*) #1

declare dso_local i32* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @inet_addr_type(%struct.net*, i8 zeroext) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @getnstimeofday(%struct.timespec*) #1

declare dso_local zeroext i8 @htonl(i32) #1

declare dso_local i32 @cipso_v4_validate(%struct.sk_buff*, i8**) #1

declare dso_local i32 @icmp_send(%struct.sk_buff*, i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
