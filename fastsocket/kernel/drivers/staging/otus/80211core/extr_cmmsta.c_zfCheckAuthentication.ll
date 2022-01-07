; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfCheckAuthentication.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfCheckAuthentication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32, i8* }
%struct.zsBssInfo = type { i32*, i32*, i32, i32* }

@TRUE = common dso_local global i32 0, align 4
@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_ENCRYPTION_TKIP = common dso_local global i8* null, align 8
@ZM_ENCRYPTION_AES = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@ZM_SECURITY_TYPE_WPA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfCheckAuthentication(i32* %0, %struct.zsBssInfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.zsBssInfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.zsBssInfo* %1, %struct.zsBssInfo** %5, align 8
  %15 = load i32, i32* @TRUE, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @zmw_get_wlan_dev(i32* %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %289

25:                                               ; preds = %2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %286 [
    i32 129, label %30
    i32 130, label %30
    i32 134, label %256
    i32 131, label %256
    i32 128, label %256
    i32 133, label %256
    i32 132, label %256
    i32 136, label %268
    i32 135, label %268
    i32 137, label %268
  ]

30:                                               ; preds = %25, %25
  store i32 0, i32* %7, align 4
  %31 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %32 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %141

37:                                               ; preds = %30
  %38 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %39 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 8
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %44 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 9
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 8
  %49 = add nsw i32 %42, %48
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %58

52:                                               ; preds = %37
  %53 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %54 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 13
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %7, align 4
  br label %93

58:                                               ; preds = %37
  store i32 0, i32* %10, align 4
  store i32 13, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %88, %58
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %91

63:                                               ; preds = %59
  %64 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %65 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %9, align 4
  %69 = mul nsw i32 %68, 4
  %70 = add nsw i32 %67, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %66, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %63
  %77 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %78 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %9, align 4
  %82 = mul nsw i32 %81, 4
  %83 = add nsw i32 %80, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %79, i64 %84
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %10, align 4
  br label %87

87:                                               ; preds = %76, %63
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %59

91:                                               ; preds = %59
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %91, %52
  %94 = load i32, i32* %7, align 4
  %95 = icmp eq i32 %94, 2
  br i1 %95, label %96, label %115

96:                                               ; preds = %93
  %97 = load i8*, i8** @ZM_ENCRYPTION_TKIP, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 3
  store i8* %97, i8** %100, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 129
  br i1 %105, label %106, label %110

106:                                              ; preds = %96
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  store i32 133, i32* %109, align 4
  br label %114

110:                                              ; preds = %96
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  store i32 132, i32* %113, align 4
  br label %114

114:                                              ; preds = %110, %106
  br label %140

115:                                              ; preds = %93
  %116 = load i32, i32* %7, align 4
  %117 = icmp eq i32 %116, 4
  br i1 %117, label %118, label %137

118:                                              ; preds = %115
  %119 = load i8*, i8** @ZM_ENCRYPTION_AES, align 8
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 3
  store i8* %119, i8** %122, align 8
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %126, 129
  br i1 %127, label %128, label %132

128:                                              ; preds = %118
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 2
  store i32 133, i32* %131, align 4
  br label %136

132:                                              ; preds = %118
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 2
  store i32 132, i32* %135, align 4
  br label %136

136:                                              ; preds = %132, %128
  br label %139

137:                                              ; preds = %115
  %138 = load i32, i32* @FALSE, align 4
  store i32 %138, i32* %6, align 4
  br label %139

139:                                              ; preds = %137, %136
  br label %140

140:                                              ; preds = %139, %114
  br label %255

141:                                              ; preds = %30
  %142 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %143 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %252

148:                                              ; preds = %141
  %149 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %150 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 12
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %155 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 13
  %158 = load i32, i32* %157, align 4
  %159 = shl i32 %158, 8
  %160 = add nsw i32 %153, %159
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %8, align 4
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %163, label %169

163:                                              ; preds = %148
  %164 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %165 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 17
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %7, align 4
  br label %204

169:                                              ; preds = %148
  store i32 0, i32* %13, align 4
  store i32 17, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %170

170:                                              ; preds = %199, %169
  %171 = load i32, i32* %12, align 4
  %172 = load i32, i32* %8, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %202

174:                                              ; preds = %170
  %175 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %176 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %14, align 4
  %179 = load i32, i32* %12, align 4
  %180 = mul nsw i32 %179, 4
  %181 = add nsw i32 %178, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %177, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %13, align 4
  %186 = icmp sgt i32 %184, %185
  br i1 %186, label %187, label %198

187:                                              ; preds = %174
  %188 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %189 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %14, align 4
  %192 = load i32, i32* %12, align 4
  %193 = mul nsw i32 %192, 4
  %194 = add nsw i32 %191, %193
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %190, i64 %195
  %197 = load i32, i32* %196, align 4
  store i32 %197, i32* %13, align 4
  br label %198

198:                                              ; preds = %187, %174
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %12, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %12, align 4
  br label %170

202:                                              ; preds = %170
  %203 = load i32, i32* %13, align 4
  store i32 %203, i32* %7, align 4
  br label %204

204:                                              ; preds = %202, %163
  %205 = load i32, i32* %7, align 4
  %206 = icmp eq i32 %205, 2
  br i1 %206, label %207, label %226

207:                                              ; preds = %204
  %208 = load i8*, i8** @ZM_ENCRYPTION_TKIP, align 8
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 3
  store i8* %208, i8** %211, align 8
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = icmp eq i32 %215, 129
  br i1 %216, label %217, label %221

217:                                              ; preds = %207
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 2
  store i32 134, i32* %220, align 4
  br label %225

221:                                              ; preds = %207
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 2
  store i32 131, i32* %224, align 4
  br label %225

225:                                              ; preds = %221, %217
  br label %251

226:                                              ; preds = %204
  %227 = load i32, i32* %7, align 4
  %228 = icmp eq i32 %227, 4
  br i1 %228, label %229, label %248

229:                                              ; preds = %226
  %230 = load i8*, i8** @ZM_ENCRYPTION_AES, align 8
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 3
  store i8* %230, i8** %233, align 8
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = icmp eq i32 %237, 129
  br i1 %238, label %239, label %243

239:                                              ; preds = %229
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 2
  store i32 134, i32* %242, align 4
  br label %247

243:                                              ; preds = %229
  %244 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 2
  store i32 131, i32* %246, align 4
  br label %247

247:                                              ; preds = %243, %239
  br label %250

248:                                              ; preds = %226
  %249 = load i32, i32* @FALSE, align 4
  store i32 %249, i32* %6, align 4
  br label %250

250:                                              ; preds = %248, %247
  br label %251

251:                                              ; preds = %250, %225
  br label %254

252:                                              ; preds = %141
  %253 = load i32, i32* @FALSE, align 4
  store i32 %253, i32* %6, align 4
  br label %254

254:                                              ; preds = %252, %251
  br label %255

255:                                              ; preds = %254, %140
  br label %287

256:                                              ; preds = %25, %25, %25, %25, %25
  %257 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %258 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* @ZM_SECURITY_TYPE_WPA, align 4
  %261 = icmp ne i32 %259, %260
  br i1 %261, label %262, label %264

262:                                              ; preds = %256
  %263 = load i32, i32* @FALSE, align 4
  store i32 %263, i32* %6, align 4
  br label %264

264:                                              ; preds = %262, %256
  %265 = load i32*, i32** %4, align 8
  %266 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %267 = call i32 @zfCheckWPAAuth(i32* %265, %struct.zsBssInfo* %266)
  store i32 %267, i32* %6, align 4
  br label %287

268:                                              ; preds = %25, %25, %25
  %269 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %270 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %269, i32 0, i32 3
  %271 = load i32*, i32** %270, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 1
  %273 = load i32, i32* %272, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %268
  br label %287

276:                                              ; preds = %268
  %277 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %278 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* @ZM_SECURITY_TYPE_WPA, align 4
  %281 = icmp eq i32 %279, %280
  br i1 %281, label %282, label %284

282:                                              ; preds = %276
  %283 = load i32, i32* @FALSE, align 4
  store i32 %283, i32* %6, align 4
  br label %284

284:                                              ; preds = %282, %276
  br label %285

285:                                              ; preds = %284
  br label %287

286:                                              ; preds = %25
  br label %287

287:                                              ; preds = %286, %285, %275, %264, %255
  %288 = load i32, i32* %6, align 4
  store i32 %288, i32* %3, align 4
  br label %289

289:                                              ; preds = %287, %23
  %290 = load i32, i32* %3, align 4
  ret i32 %290
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zfCheckWPAAuth(i32*, %struct.zsBssInfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
