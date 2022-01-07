; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_expand.c_evalvar.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_expand.c_evalvar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nodelist = type { %struct.nodelist* }
%struct.worddest = type { i32 }

@VSTYPE = common dso_local global i32 0, align 4
@VSLINENO = common dso_local global i32 0, align 4
@VSNUL = common dso_local global i32 0, align 4
@expdest = common dso_local global i8* null, align 8
@uflag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"%.*s: parameter not set\00", align 1
@VSQUOTE = common dso_local global i32 0, align 4
@localeisutf8 = common dso_local global i64 0, align 8
@EXP_SPLIT = common dso_local global i32 0, align 4
@EXP_SPLIT_LIT = common dso_local global i32 0, align 4
@EXP_LIT_QUOTED = common dso_local global i32 0, align 4
@WORD_QUOTEMARK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"${%.*s%s}: Bad substitution\00", align 1
@CTLENDVAR = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CTLESC = common dso_local global i32 0, align 4
@CTLBACKQ = common dso_local global i32 0, align 4
@CTLQUOTE = common dso_local global i32 0, align 4
@CTLVAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.nodelist**, i32, %struct.worddest*)* @evalvar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @evalvar(i8* %0, %struct.nodelist** noalias %1, i32 %2, %struct.worddest* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nodelist**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.worddest*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [21 x i8], align 16
  %22 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.nodelist** %1, %struct.nodelist*** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.worddest* %3, %struct.worddest** %9, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %6, align 8
  %25 = load i8, i8* %23, align 1
  %26 = zext i8 %25 to i32
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @VSTYPE, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %10, align 4
  %30 = load i8*, i8** %6, align 8
  store i8* %30, i8** %12, align 8
  store i32 0, i32* %17, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = load i8, i8* %31, align 1
  %33 = call i32 @is_name(i8 signext %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %4
  store i32 1, i32* %17, align 4
  br label %36

36:                                               ; preds = %35, %4
  %37 = load i8*, i8** %6, align 8
  %38 = call i8* @strchr(i8* %37, i8 signext 61)
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  store i8* %39, i8** %6, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @VSLINENO, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 1, i32* %16, align 4
  store i32 1, i32* %17, align 4
  store i8* null, i8** %13, align 8
  br label %74

45:                                               ; preds = %36
  %46 = load i32, i32* %17, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i8*, i8** %12, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @VSNUL, align 4
  %52 = and i32 %50, %51
  %53 = call i32 @varisset(i8* %49, i32 %52)
  store i32 %53, i32* %16, align 4
  store i8* null, i8** %13, align 8
  br label %73

54:                                               ; preds = %45
  %55 = load i8*, i8** %12, align 8
  %56 = call i8* @bltinlookup(i8* %55, i32 1)
  store i8* %56, i8** %13, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %70, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @VSNUL, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load i8*, i8** %13, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64, %54
  store i8* null, i8** %13, align 8
  store i32 0, i32* %16, align 4
  br label %72

71:                                               ; preds = %64, %59
  store i32 1, i32* %16, align 4
  br label %72

72:                                               ; preds = %71, %70
  br label %73

73:                                               ; preds = %72, %48
  br label %74

74:                                               ; preds = %73, %44
  store i32 0, i32* %19, align 4
  %75 = load i8*, i8** @expdest, align 8
  %76 = call i8* (...) @stackblock()
  %77 = ptrtoint i8* %75 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %18, align 4
  %81 = load i32, i32* %16, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %109, label %83

83:                                               ; preds = %74
  %84 = load i64, i64* @uflag, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %109

86:                                               ; preds = %83
  %87 = load i8*, i8** %12, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 64
  br i1 %90, label %91, label %109

91:                                               ; preds = %86
  %92 = load i8*, i8** %12, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 42
  br i1 %95, label %96, label %109

96:                                               ; preds = %91
  %97 = load i32, i32* %10, align 4
  switch i32 %97, label %108 [
    i32 134, label %98
    i32 131, label %98
    i32 130, label %98
    i32 129, label %98
    i32 128, label %98
    i32 136, label %98
  ]

98:                                               ; preds = %96, %96, %96, %96, %96, %96
  %99 = load i8*, i8** %6, align 8
  %100 = load i8*, i8** %12, align 8
  %101 = ptrtoint i8* %99 to i64
  %102 = ptrtoint i8* %100 to i64
  %103 = sub i64 %101, %102
  %104 = sub nsw i64 %103, 1
  %105 = trunc i64 %104 to i32
  %106 = load i8*, i8** %12, align 8
  %107 = call i32 (i8*, i32, i8*, ...) @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %105, i8* %106)
  br label %108

108:                                              ; preds = %98, %96
  br label %109

109:                                              ; preds = %108, %91, %86, %83, %74
  %110 = load i32, i32* %16, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %248

112:                                              ; preds = %109
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 133
  br i1 %114, label %115, label %248

115:                                              ; preds = %112
  %116 = load i32, i32* %17, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %212

118:                                              ; preds = %115
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* @VSLINENO, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %158

123:                                              ; preds = %118
  %124 = load i8*, i8** %6, align 8
  %125 = load i8*, i8** %12, align 8
  %126 = ptrtoint i8* %124 to i64
  %127 = ptrtoint i8* %125 to i64
  %128 = sub i64 %126, %127
  %129 = icmp sgt i64 %128, 21
  br i1 %129, label %130, label %132

130:                                              ; preds = %123
  %131 = call i32 (...) @abort() #3
  unreachable

132:                                              ; preds = %123
  %133 = getelementptr inbounds [21 x i8], [21 x i8]* %21, i64 0, i64 0
  %134 = load i8*, i8** %12, align 8
  %135 = load i8*, i8** %6, align 8
  %136 = load i8*, i8** %12, align 8
  %137 = ptrtoint i8* %135 to i64
  %138 = ptrtoint i8* %136 to i64
  %139 = sub i64 %137, %138
  %140 = sub nsw i64 %139, 1
  %141 = trunc i64 %140 to i32
  %142 = call i32 @memcpy(i8* %133, i8* %134, i32 %141)
  %143 = load i8*, i8** %6, align 8
  %144 = load i8*, i8** %12, align 8
  %145 = ptrtoint i8* %143 to i64
  %146 = ptrtoint i8* %144 to i64
  %147 = sub i64 %145, %146
  %148 = sub nsw i64 %147, 1
  %149 = getelementptr inbounds [21 x i8], [21 x i8]* %21, i64 0, i64 %148
  store i8 0, i8* %149, align 1
  %150 = getelementptr inbounds [21 x i8], [21 x i8]* %21, i64 0, i64 0
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* @VSQUOTE, align 4
  %155 = and i32 %153, %154
  %156 = load %struct.worddest*, %struct.worddest** %9, align 8
  %157 = call i32 @strtodest(i8* %150, i32 %151, i32 %152, i32 %155, %struct.worddest* %156)
  br label %167

158:                                              ; preds = %118
  %159 = load i8*, i8** %12, align 8
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* @VSQUOTE, align 4
  %162 = and i32 %160, %161
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* %8, align 4
  %165 = load %struct.worddest*, %struct.worddest** %9, align 8
  %166 = call i32 @varvalue(i8* %159, i32 %162, i32 %163, i32 %164, %struct.worddest* %165)
  br label %167

167:                                              ; preds = %158, %132
  %168 = load i32, i32* %10, align 4
  %169 = icmp eq i32 %168, 136
  br i1 %169, label %170, label %211

170:                                              ; preds = %167
  %171 = load i8*, i8** @expdest, align 8
  %172 = call i8* (...) @stackblock()
  %173 = ptrtoint i8* %171 to i64
  %174 = ptrtoint i8* %172 to i64
  %175 = sub i64 %173, %174
  %176 = load i32, i32* %18, align 4
  %177 = sext i32 %176 to i64
  %178 = sub nsw i64 %175, %177
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %20, align 4
  %180 = load i32, i32* %20, align 4
  store i32 %180, i32* %19, align 4
  %181 = load i64, i64* @localeisutf8, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %206

183:                                              ; preds = %170
  %184 = call i8* (...) @stackblock()
  %185 = load i32, i32* %18, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %184, i64 %186
  store i8* %187, i8** %13, align 8
  br label %188

188:                                              ; preds = %202, %183
  %189 = load i8*, i8** %13, align 8
  %190 = load i8*, i8** @expdest, align 8
  %191 = icmp ne i8* %189, %190
  br i1 %191, label %192, label %205

192:                                              ; preds = %188
  %193 = load i8*, i8** %13, align 8
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  %196 = and i32 %195, 192
  %197 = icmp eq i32 %196, 128
  br i1 %197, label %198, label %201

198:                                              ; preds = %192
  %199 = load i32, i32* %19, align 4
  %200 = add nsw i32 %199, -1
  store i32 %200, i32* %19, align 4
  br label %201

201:                                              ; preds = %198, %192
  br label %202

202:                                              ; preds = %201
  %203 = load i8*, i8** %13, align 8
  %204 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %204, i8** %13, align 8
  br label %188

205:                                              ; preds = %188
  br label %206

206:                                              ; preds = %205, %170
  %207 = load i32, i32* %20, align 4
  %208 = sub nsw i32 0, %207
  %209 = load i8*, i8** @expdest, align 8
  %210 = call i32 @STADJUST(i32 %208, i8* %209)
  br label %211

211:                                              ; preds = %206, %167
  br label %247

212:                                              ; preds = %115
  %213 = load i32, i32* %10, align 4
  %214 = icmp eq i32 %213, 136
  br i1 %214, label %215, label %237

215:                                              ; preds = %212
  br label %216

216:                                              ; preds = %233, %215
  %217 = load i8*, i8** %13, align 8
  %218 = load i8, i8* %217, align 1
  %219 = icmp ne i8 %218, 0
  br i1 %219, label %220, label %236

220:                                              ; preds = %216
  %221 = load i64, i64* @localeisutf8, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %220
  %224 = load i8*, i8** %13, align 8
  %225 = load i8, i8* %224, align 1
  %226 = sext i8 %225 to i32
  %227 = and i32 %226, 192
  %228 = icmp ne i32 %227, 128
  br i1 %228, label %229, label %232

229:                                              ; preds = %223, %220
  %230 = load i32, i32* %19, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %19, align 4
  br label %232

232:                                              ; preds = %229, %223
  br label %233

233:                                              ; preds = %232
  %234 = load i8*, i8** %13, align 8
  %235 = getelementptr inbounds i8, i8* %234, i32 1
  store i8* %235, i8** %13, align 8
  br label %216

236:                                              ; preds = %216
  br label %246

237:                                              ; preds = %212
  %238 = load i8*, i8** %13, align 8
  %239 = load i32, i32* %8, align 4
  %240 = load i32, i32* %10, align 4
  %241 = load i32, i32* %11, align 4
  %242 = load i32, i32* @VSQUOTE, align 4
  %243 = and i32 %241, %242
  %244 = load %struct.worddest*, %struct.worddest** %9, align 8
  %245 = call i32 @strtodest(i8* %238, i32 %239, i32 %240, i32 %243, %struct.worddest* %244)
  br label %246

246:                                              ; preds = %237, %236
  br label %247

247:                                              ; preds = %246, %211
  br label %248

248:                                              ; preds = %247, %112, %109
  %249 = load i32, i32* %10, align 4
  %250 = icmp eq i32 %249, 133
  br i1 %250, label %251, label %256

251:                                              ; preds = %248
  %252 = load i32, i32* %16, align 4
  %253 = icmp ne i32 %252, 0
  %254 = xor i1 %253, true
  %255 = zext i1 %254 to i32
  store i32 %255, i32* %16, align 4
  br label %256

256:                                              ; preds = %251, %248
  %257 = load i32, i32* %10, align 4
  switch i32 %257, label %394 [
    i32 136, label %258
    i32 134, label %269
    i32 133, label %271
    i32 135, label %271
    i32 131, label %301
    i32 130, label %301
    i32 129, label %301
    i32 128, label %301
    i32 138, label %347
    i32 132, label %347
    i32 137, label %370
  ]

258:                                              ; preds = %256
  %259 = load i32, i32* %19, align 4
  %260 = getelementptr inbounds [21 x i8], [21 x i8]* %21, i64 0, i64 0
  %261 = call i32 @cvtnum(i32 %259, i8* %260)
  %262 = getelementptr inbounds [21 x i8], [21 x i8]* %21, i64 0, i64 0
  %263 = load i32, i32* %8, align 4
  %264 = load i32, i32* %11, align 4
  %265 = load i32, i32* @VSQUOTE, align 4
  %266 = and i32 %264, %265
  %267 = load %struct.worddest*, %struct.worddest** %9, align 8
  %268 = call i32 @strtodest(i8* %262, i32 %263, i32 134, i32 %266, %struct.worddest* %267)
  br label %396

269:                                              ; preds = %256
  %270 = load i8*, i8** %6, align 8
  store i8* %270, i8** %5, align 8
  br label %456

271:                                              ; preds = %256, %256
  %272 = load i32, i32* %16, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %300, label %274

274:                                              ; preds = %271
  %275 = load i8*, i8** %6, align 8
  %276 = load %struct.nodelist**, %struct.nodelist*** %7, align 8
  %277 = load i32, i32* %8, align 4
  %278 = load i32, i32* %8, align 4
  %279 = load i32, i32* @EXP_SPLIT, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %274
  %283 = load i32, i32* @EXP_SPLIT_LIT, align 4
  br label %285

284:                                              ; preds = %274
  br label %285

285:                                              ; preds = %284, %282
  %286 = phi i32 [ %283, %282 ], [ 0, %284 ]
  %287 = or i32 %277, %286
  %288 = load i32, i32* %11, align 4
  %289 = load i32, i32* @VSQUOTE, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %285
  %293 = load i32, i32* @EXP_LIT_QUOTED, align 4
  br label %295

294:                                              ; preds = %285
  br label %295

295:                                              ; preds = %294, %292
  %296 = phi i32 [ %293, %292 ], [ 0, %294 ]
  %297 = or i32 %287, %296
  %298 = load %struct.worddest*, %struct.worddest** %9, align 8
  %299 = call i8* @argstr(i8* %275, %struct.nodelist** %276, i32 %297, %struct.worddest* %298)
  store i8* %299, i8** %5, align 8
  br label %456

300:                                              ; preds = %271
  br label %396

301:                                              ; preds = %256, %256, %256, %256
  %302 = load i32, i32* %16, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %305, label %304

304:                                              ; preds = %301
  br label %396

305:                                              ; preds = %301
  %306 = load i8*, i8** @expdest, align 8
  %307 = call i32 @STPUTC(i8 signext 0, i8* %306)
  %308 = load i8*, i8** @expdest, align 8
  %309 = call i8* (...) @stackblock()
  %310 = ptrtoint i8* %308 to i64
  %311 = ptrtoint i8* %309 to i64
  %312 = sub i64 %310, %311
  %313 = trunc i64 %312 to i32
  store i32 %313, i32* %14, align 4
  %314 = load i8*, i8** %6, align 8
  %315 = load %struct.nodelist**, %struct.nodelist*** %7, align 8
  %316 = load i32, i32* %14, align 4
  %317 = load i32, i32* %10, align 4
  %318 = load i32, i32* %18, align 4
  %319 = call i8* @subevalvar_trim(i8* %314, %struct.nodelist** %315, i32 %316, i32 %317, i32 %318)
  store i8* %319, i8** %6, align 8
  %320 = load i32, i32* %18, align 4
  %321 = load i32, i32* %8, align 4
  %322 = load i32, i32* %11, align 4
  %323 = load i32, i32* @VSQUOTE, align 4
  %324 = and i32 %322, %323
  %325 = load %struct.worddest*, %struct.worddest** %9, align 8
  %326 = call i32 @reprocess(i32 %320, i32 %321, i32 134, i32 %324, %struct.worddest* %325)
  %327 = load i32, i32* %8, align 4
  %328 = load i32, i32* @EXP_SPLIT, align 4
  %329 = and i32 %327, %328
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %345

331:                                              ; preds = %305
  %332 = load i8*, i8** %12, align 8
  %333 = load i8, i8* %332, align 1
  %334 = sext i8 %333 to i32
  %335 = icmp eq i32 %334, 64
  br i1 %335, label %336, label %345

336:                                              ; preds = %331
  %337 = load i32, i32* %11, align 4
  %338 = load i32, i32* @VSQUOTE, align 4
  %339 = and i32 %337, %338
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %345

341:                                              ; preds = %336
  %342 = load i32, i32* @WORD_QUOTEMARK, align 4
  %343 = load %struct.worddest*, %struct.worddest** %9, align 8
  %344 = getelementptr inbounds %struct.worddest, %struct.worddest* %343, i32 0, i32 0
  store i32 %342, i32* %344, align 4
  br label %345

345:                                              ; preds = %341, %336, %331, %305
  %346 = load i8*, i8** %6, align 8
  store i8* %346, i8** %5, align 8
  br label %456

347:                                              ; preds = %256, %256
  %348 = load i32, i32* %16, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %369, label %350

350:                                              ; preds = %347
  %351 = load i8*, i8** %6, align 8
  %352 = load %struct.nodelist**, %struct.nodelist*** %7, align 8
  %353 = load i8*, i8** %12, align 8
  %354 = load i32, i32* %10, align 4
  %355 = load i32, i32* %18, align 4
  %356 = load i32, i32* %11, align 4
  %357 = call i8* @subevalvar_misc(i8* %351, %struct.nodelist** %352, i8* %353, i32 %354, i32 %355, i32 %356)
  store i8* %357, i8** %6, align 8
  %358 = load i8*, i8** %12, align 8
  %359 = call i8* @lookupvar(i8* %358)
  store i8* %359, i8** %13, align 8
  %360 = load i8*, i8** %13, align 8
  %361 = load i32, i32* %8, align 4
  %362 = load i32, i32* %10, align 4
  %363 = load i32, i32* %11, align 4
  %364 = load i32, i32* @VSQUOTE, align 4
  %365 = and i32 %363, %364
  %366 = load %struct.worddest*, %struct.worddest** %9, align 8
  %367 = call i32 @strtodest(i8* %360, i32 %361, i32 %362, i32 %365, %struct.worddest* %366)
  %368 = load i8*, i8** %6, align 8
  store i8* %368, i8** %5, align 8
  br label %456

369:                                              ; preds = %347
  br label %396

370:                                              ; preds = %256
  %371 = load i8*, i8** %6, align 8
  %372 = load i8*, i8** %12, align 8
  %373 = ptrtoint i8* %371 to i64
  %374 = ptrtoint i8* %372 to i64
  %375 = sub i64 %373, %374
  %376 = sub nsw i64 %375, 1
  %377 = trunc i64 %376 to i32
  store i32 %377, i32* %15, align 4
  %378 = load i32, i32* %15, align 4
  %379 = load i8*, i8** %12, align 8
  %380 = load i32, i32* %15, align 4
  %381 = icmp sgt i32 %380, 0
  br i1 %381, label %382, label %389

382:                                              ; preds = %370
  %383 = load i8*, i8** %6, align 8
  %384 = load i8, i8* %383, align 1
  %385 = sext i8 %384 to i32
  %386 = load i8, i8* @CTLENDVAR, align 1
  %387 = sext i8 %386 to i32
  %388 = icmp ne i32 %385, %387
  br label %389

389:                                              ; preds = %382, %370
  %390 = phi i1 [ false, %370 ], [ %388, %382 ]
  %391 = zext i1 %390 to i64
  %392 = select i1 %390, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %393 = call i32 (i8*, i32, i8*, ...) @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %378, i8* %379, i8* %392)
  br label %394

394:                                              ; preds = %256, %389
  %395 = call i32 (...) @abort() #3
  unreachable

396:                                              ; preds = %369, %304, %300, %258
  store i32 1, i32* %22, align 4
  br label %397

397:                                              ; preds = %453, %396
  %398 = load i8*, i8** %6, align 8
  %399 = getelementptr inbounds i8, i8* %398, i32 1
  store i8* %399, i8** %6, align 8
  %400 = load i8, i8* %398, align 1
  %401 = sext i8 %400 to i32
  store i32 %401, i32* %15, align 4
  %402 = load i32, i32* @CTLESC, align 4
  %403 = icmp eq i32 %401, %402
  br i1 %403, label %404, label %407

404:                                              ; preds = %397
  %405 = load i8*, i8** %6, align 8
  %406 = getelementptr inbounds i8, i8* %405, i32 1
  store i8* %406, i8** %6, align 8
  br label %453

407:                                              ; preds = %397
  %408 = load i32, i32* %15, align 4
  %409 = load i32, i32* @CTLBACKQ, align 4
  %410 = icmp eq i32 %408, %409
  br i1 %410, label %417, label %411

411:                                              ; preds = %407
  %412 = load i32, i32* %15, align 4
  %413 = load i32, i32* @CTLBACKQ, align 4
  %414 = load i32, i32* @CTLQUOTE, align 4
  %415 = or i32 %413, %414
  %416 = icmp eq i32 %412, %415
  br i1 %416, label %417, label %423

417:                                              ; preds = %411, %407
  %418 = load %struct.nodelist**, %struct.nodelist*** %7, align 8
  %419 = load %struct.nodelist*, %struct.nodelist** %418, align 8
  %420 = getelementptr inbounds %struct.nodelist, %struct.nodelist* %419, i32 0, i32 0
  %421 = load %struct.nodelist*, %struct.nodelist** %420, align 8
  %422 = load %struct.nodelist**, %struct.nodelist*** %7, align 8
  store %struct.nodelist* %421, %struct.nodelist** %422, align 8
  br label %452

423:                                              ; preds = %411
  %424 = load i32, i32* %15, align 4
  %425 = load i32, i32* @CTLVAR, align 4
  %426 = icmp eq i32 %424, %425
  br i1 %426, label %427, label %439

427:                                              ; preds = %423
  %428 = load i8*, i8** %6, align 8
  %429 = getelementptr inbounds i8, i8* %428, i32 1
  store i8* %429, i8** %6, align 8
  %430 = load i8, i8* %428, align 1
  %431 = sext i8 %430 to i32
  %432 = load i32, i32* @VSTYPE, align 4
  %433 = and i32 %431, %432
  %434 = icmp ne i32 %433, 134
  br i1 %434, label %435, label %438

435:                                              ; preds = %427
  %436 = load i32, i32* %22, align 4
  %437 = add nsw i32 %436, 1
  store i32 %437, i32* %22, align 4
  br label %438

438:                                              ; preds = %435, %427
  br label %451

439:                                              ; preds = %423
  %440 = load i32, i32* %15, align 4
  %441 = load i8, i8* @CTLENDVAR, align 1
  %442 = sext i8 %441 to i32
  %443 = icmp eq i32 %440, %442
  br i1 %443, label %444, label %450

444:                                              ; preds = %439
  %445 = load i32, i32* %22, align 4
  %446 = add nsw i32 %445, -1
  store i32 %446, i32* %22, align 4
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %448, label %449

448:                                              ; preds = %444
  br label %454

449:                                              ; preds = %444
  br label %450

450:                                              ; preds = %449, %439
  br label %451

451:                                              ; preds = %450, %438
  br label %452

452:                                              ; preds = %451, %417
  br label %453

453:                                              ; preds = %452, %404
  br label %397

454:                                              ; preds = %448
  %455 = load i8*, i8** %6, align 8
  store i8* %455, i8** %5, align 8
  br label %456

456:                                              ; preds = %454, %350, %345, %295, %269
  %457 = load i8*, i8** %5, align 8
  ret i8* %457
}

declare dso_local i32 @is_name(i8 signext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @varisset(i8*, i32) #1

declare dso_local i8* @bltinlookup(i8*, i32) #1

declare dso_local i8* @stackblock(...) #1

declare dso_local i32 @error(i8*, i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strtodest(i8*, i32, i32, i32, %struct.worddest*) #1

declare dso_local i32 @varvalue(i8*, i32, i32, i32, %struct.worddest*) #1

declare dso_local i32 @STADJUST(i32, i8*) #1

declare dso_local i32 @cvtnum(i32, i8*) #1

declare dso_local i8* @argstr(i8*, %struct.nodelist**, i32, %struct.worddest*) #1

declare dso_local i32 @STPUTC(i8 signext, i8*) #1

declare dso_local i8* @subevalvar_trim(i8*, %struct.nodelist**, i32, i32, i32) #1

declare dso_local i32 @reprocess(i32, i32, i32, i32, %struct.worddest*) #1

declare dso_local i8* @subevalvar_misc(i8*, %struct.nodelist**, i8*, i32, i32, i32) #1

declare dso_local i8* @lookupvar(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
