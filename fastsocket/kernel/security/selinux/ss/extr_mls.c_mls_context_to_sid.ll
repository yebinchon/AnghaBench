; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_mls.c_mls_context_to_sid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_mls.c_mls_context_to_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.context = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.sidtab = type { i32 }
%struct.level_datum = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.cat_datum = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@selinux_mls_enabled = common dso_local global i32 0, align 4
@SECSID_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mls_context_to_sid(%struct.policydb* %0, i8 signext %1, i8** %2, %struct.context* %3, %struct.sidtab* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.policydb*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8**, align 8
  %11 = alloca %struct.context*, align 8
  %12 = alloca %struct.sidtab*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8, align 1
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.level_datum*, align 8
  %19 = alloca %struct.cat_datum*, align 8
  %20 = alloca %struct.cat_datum*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.context*, align 8
  %24 = alloca i32, align 4
  store %struct.policydb* %0, %struct.policydb** %8, align 8
  store i8 %1, i8* %9, align 1
  store i8** %2, i8*** %10, align 8
  store %struct.context* %3, %struct.context** %11, align 8
  store %struct.sidtab* %4, %struct.sidtab** %12, align 8
  store i64 %5, i64* %13, align 8
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %22, align 4
  %27 = load i32, i32* @selinux_mls_enabled, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %46, label %29

29:                                               ; preds = %6
  %30 = load i64, i64* %13, align 8
  %31 = load i64, i64* @SECSID_NULL, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = load i8, i8* %9, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load i8**, i8*** %10, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @strlen(i8* %39)
  %41 = add nsw i64 %40, 1
  %42 = load i8**, i8*** %10, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 %41
  store i8* %44, i8** %42, align 8
  br label %45

45:                                               ; preds = %37, %33, %29
  store i32 0, i32* %7, align 4
  br label %340

46:                                               ; preds = %6
  %47 = load i8, i8* %9, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %65, label %49

49:                                               ; preds = %46
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* @SECSID_NULL, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %338

54:                                               ; preds = %49
  %55 = load %struct.sidtab*, %struct.sidtab** %12, align 8
  %56 = load i64, i64* %13, align 8
  %57 = call %struct.context* @sidtab_search(%struct.sidtab* %55, i64 %56)
  store %struct.context* %57, %struct.context** %23, align 8
  %58 = load %struct.context*, %struct.context** %23, align 8
  %59 = icmp ne %struct.context* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  br label %338

61:                                               ; preds = %54
  %62 = load %struct.context*, %struct.context** %11, align 8
  %63 = load %struct.context*, %struct.context** %23, align 8
  %64 = call i32 @mls_context_cpy(%struct.context* %62, %struct.context* %63)
  store i32 %64, i32* %22, align 4
  br label %338

65:                                               ; preds = %46
  %66 = load i8**, i8*** %10, align 8
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %16, align 8
  store i8* %67, i8** %15, align 8
  br label %68

68:                                               ; preds = %85, %65
  %69 = load i8*, i8** %16, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  %74 = load i8*, i8** %16, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 58
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load i8*, i8** %16, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 45
  br label %83

83:                                               ; preds = %78, %73, %68
  %84 = phi i1 [ false, %73 ], [ false, %68 ], [ %82, %78 ]
  br i1 %84, label %85, label %88

85:                                               ; preds = %83
  %86 = load i8*, i8** %16, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %16, align 8
  br label %68

88:                                               ; preds = %83
  %89 = load i8*, i8** %16, align 8
  %90 = load i8, i8* %89, align 1
  store i8 %90, i8* %14, align 1
  %91 = load i8, i8* %14, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load i8*, i8** %16, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %16, align 8
  store i8 0, i8* %95, align 1
  br label %97

97:                                               ; preds = %94, %88
  store i32 0, i32* %21, align 4
  br label %98

98:                                               ; preds = %297, %97
  %99 = load i32, i32* %21, align 4
  %100 = icmp slt i32 %99, 2
  br i1 %100, label %101, label %300

101:                                              ; preds = %98
  %102 = load %struct.policydb*, %struct.policydb** %8, align 8
  %103 = getelementptr inbounds %struct.policydb, %struct.policydb* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i8*, i8** %15, align 8
  %107 = call i8* @hashtab_search(i32 %105, i8* %106)
  %108 = bitcast i8* %107 to %struct.level_datum*
  store %struct.level_datum* %108, %struct.level_datum** %18, align 8
  %109 = load %struct.level_datum*, %struct.level_datum** %18, align 8
  %110 = icmp ne %struct.level_datum* %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %101
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %22, align 4
  br label %338

114:                                              ; preds = %101
  %115 = load %struct.level_datum*, %struct.level_datum** %18, align 8
  %116 = getelementptr inbounds %struct.level_datum, %struct.level_datum* %115, i32 0, i32 0
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.context*, %struct.context** %11, align 8
  %121 = getelementptr inbounds %struct.context, %struct.context* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = load i32, i32* %21, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  store i32 %119, i32* %127, align 4
  %128 = load i8, i8* %14, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 58
  br i1 %130, label %131, label %264

131:                                              ; preds = %114
  br label %132

132:                                              ; preds = %131, %262
  %133 = load i8*, i8** %16, align 8
  store i8* %133, i8** %15, align 8
  br label %134

134:                                              ; preds = %151, %132
  %135 = load i8*, i8** %16, align 8
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %134
  %140 = load i8*, i8** %16, align 8
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp ne i32 %142, 44
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  %145 = load i8*, i8** %16, align 8
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp ne i32 %147, 45
  br label %149

149:                                              ; preds = %144, %139, %134
  %150 = phi i1 [ false, %139 ], [ false, %134 ], [ %148, %144 ]
  br i1 %150, label %151, label %154

151:                                              ; preds = %149
  %152 = load i8*, i8** %16, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %16, align 8
  br label %134

154:                                              ; preds = %149
  %155 = load i8*, i8** %16, align 8
  %156 = load i8, i8* %155, align 1
  store i8 %156, i8* %14, align 1
  %157 = load i8, i8* %14, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %154
  %161 = load i8*, i8** %16, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %16, align 8
  store i8 0, i8* %161, align 1
  br label %163

163:                                              ; preds = %160, %154
  %164 = load i8*, i8** %15, align 8
  %165 = call i8* @strchr(i8* %164, i8 signext 46)
  store i8* %165, i8** %17, align 8
  %166 = load i8*, i8** %17, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %171

168:                                              ; preds = %163
  %169 = load i8*, i8** %17, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %17, align 8
  store i8 0, i8* %169, align 1
  br label %171

171:                                              ; preds = %168, %163
  %172 = load %struct.policydb*, %struct.policydb** %8, align 8
  %173 = getelementptr inbounds %struct.policydb, %struct.policydb* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i8*, i8** %15, align 8
  %177 = call i8* @hashtab_search(i32 %175, i8* %176)
  %178 = bitcast i8* %177 to %struct.cat_datum*
  store %struct.cat_datum* %178, %struct.cat_datum** %19, align 8
  %179 = load %struct.cat_datum*, %struct.cat_datum** %19, align 8
  %180 = icmp ne %struct.cat_datum* %179, null
  br i1 %180, label %184, label %181

181:                                              ; preds = %171
  %182 = load i32, i32* @EINVAL, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %22, align 4
  br label %338

184:                                              ; preds = %171
  %185 = load %struct.context*, %struct.context** %11, align 8
  %186 = getelementptr inbounds %struct.context, %struct.context* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %187, align 8
  %189 = load i32, i32* %21, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 0
  %193 = load %struct.cat_datum*, %struct.cat_datum** %19, align 8
  %194 = getelementptr inbounds %struct.cat_datum, %struct.cat_datum* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = sub nsw i32 %195, 1
  %197 = call i32 @ebitmap_set_bit(i32* %192, i32 %196, i32 1)
  store i32 %197, i32* %22, align 4
  %198 = load i32, i32* %22, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %184
  br label %338

201:                                              ; preds = %184
  %202 = load i8*, i8** %17, align 8
  %203 = icmp ne i8* %202, null
  br i1 %203, label %204, label %257

204:                                              ; preds = %201
  %205 = load %struct.policydb*, %struct.policydb** %8, align 8
  %206 = getelementptr inbounds %struct.policydb, %struct.policydb* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i8*, i8** %17, align 8
  %210 = call i8* @hashtab_search(i32 %208, i8* %209)
  %211 = bitcast i8* %210 to %struct.cat_datum*
  store %struct.cat_datum* %211, %struct.cat_datum** %20, align 8
  %212 = load %struct.cat_datum*, %struct.cat_datum** %20, align 8
  %213 = icmp ne %struct.cat_datum* %212, null
  br i1 %213, label %217, label %214

214:                                              ; preds = %204
  %215 = load i32, i32* @EINVAL, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %22, align 4
  br label %338

217:                                              ; preds = %204
  %218 = load %struct.cat_datum*, %struct.cat_datum** %19, align 8
  %219 = getelementptr inbounds %struct.cat_datum, %struct.cat_datum* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.cat_datum*, %struct.cat_datum** %20, align 8
  %222 = getelementptr inbounds %struct.cat_datum, %struct.cat_datum* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = icmp sge i32 %220, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %217
  %226 = load i32, i32* @EINVAL, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %22, align 4
  br label %338

228:                                              ; preds = %217
  %229 = load %struct.cat_datum*, %struct.cat_datum** %19, align 8
  %230 = getelementptr inbounds %struct.cat_datum, %struct.cat_datum* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  store i32 %231, i32* %24, align 4
  br label %232

232:                                              ; preds = %253, %228
  %233 = load i32, i32* %24, align 4
  %234 = load %struct.cat_datum*, %struct.cat_datum** %20, align 8
  %235 = getelementptr inbounds %struct.cat_datum, %struct.cat_datum* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = icmp slt i32 %233, %236
  br i1 %237, label %238, label %256

238:                                              ; preds = %232
  %239 = load %struct.context*, %struct.context** %11, align 8
  %240 = getelementptr inbounds %struct.context, %struct.context* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 0
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %241, align 8
  %243 = load i32, i32* %21, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 0
  %247 = load i32, i32* %24, align 4
  %248 = call i32 @ebitmap_set_bit(i32* %246, i32 %247, i32 1)
  store i32 %248, i32* %22, align 4
  %249 = load i32, i32* %22, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %238
  br label %338

252:                                              ; preds = %238
  br label %253

253:                                              ; preds = %252
  %254 = load i32, i32* %24, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %24, align 4
  br label %232

256:                                              ; preds = %232
  br label %257

257:                                              ; preds = %256, %201
  %258 = load i8, i8* %14, align 1
  %259 = sext i8 %258 to i32
  %260 = icmp ne i32 %259, 44
  br i1 %260, label %261, label %262

261:                                              ; preds = %257
  br label %263

262:                                              ; preds = %257
  br label %132

263:                                              ; preds = %261
  br label %264

264:                                              ; preds = %263, %114
  %265 = load i8, i8* %14, align 1
  %266 = sext i8 %265 to i32
  %267 = icmp eq i32 %266, 45
  br i1 %267, label %268, label %295

268:                                              ; preds = %264
  %269 = load i8*, i8** %16, align 8
  store i8* %269, i8** %15, align 8
  br label %270

270:                                              ; preds = %282, %268
  %271 = load i8*, i8** %16, align 8
  %272 = load i8, i8* %271, align 1
  %273 = sext i8 %272 to i32
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %280

275:                                              ; preds = %270
  %276 = load i8*, i8** %16, align 8
  %277 = load i8, i8* %276, align 1
  %278 = sext i8 %277 to i32
  %279 = icmp ne i32 %278, 58
  br label %280

280:                                              ; preds = %275, %270
  %281 = phi i1 [ false, %270 ], [ %279, %275 ]
  br i1 %281, label %282, label %285

282:                                              ; preds = %280
  %283 = load i8*, i8** %16, align 8
  %284 = getelementptr inbounds i8, i8* %283, i32 1
  store i8* %284, i8** %16, align 8
  br label %270

285:                                              ; preds = %280
  %286 = load i8*, i8** %16, align 8
  %287 = load i8, i8* %286, align 1
  store i8 %287, i8* %14, align 1
  %288 = load i8, i8* %14, align 1
  %289 = sext i8 %288 to i32
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %294

291:                                              ; preds = %285
  %292 = load i8*, i8** %16, align 8
  %293 = getelementptr inbounds i8, i8* %292, i32 1
  store i8* %293, i8** %16, align 8
  store i8 0, i8* %292, align 1
  br label %294

294:                                              ; preds = %291, %285
  br label %296

295:                                              ; preds = %264
  br label %300

296:                                              ; preds = %294
  br label %297

297:                                              ; preds = %296
  %298 = load i32, i32* %21, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %21, align 4
  br label %98

300:                                              ; preds = %295, %98
  %301 = load i32, i32* %21, align 4
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %334

303:                                              ; preds = %300
  %304 = load %struct.context*, %struct.context** %11, align 8
  %305 = getelementptr inbounds %struct.context, %struct.context* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i32 0, i32 0
  %307 = load %struct.TYPE_9__*, %struct.TYPE_9__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %307, i64 0
  %309 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.context*, %struct.context** %11, align 8
  %312 = getelementptr inbounds %struct.context, %struct.context* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %312, i32 0, i32 0
  %314 = load %struct.TYPE_9__*, %struct.TYPE_9__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %314, i64 1
  %316 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %315, i32 0, i32 1
  store i32 %310, i32* %316, align 4
  %317 = load %struct.context*, %struct.context** %11, align 8
  %318 = getelementptr inbounds %struct.context, %struct.context* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %318, i32 0, i32 0
  %320 = load %struct.TYPE_9__*, %struct.TYPE_9__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %320, i64 1
  %322 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %321, i32 0, i32 0
  %323 = load %struct.context*, %struct.context** %11, align 8
  %324 = getelementptr inbounds %struct.context, %struct.context* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %324, i32 0, i32 0
  %326 = load %struct.TYPE_9__*, %struct.TYPE_9__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %326, i64 0
  %328 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %327, i32 0, i32 0
  %329 = call i32 @ebitmap_cpy(i32* %322, i32* %328)
  store i32 %329, i32* %22, align 4
  %330 = load i32, i32* %22, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %333

332:                                              ; preds = %303
  br label %338

333:                                              ; preds = %303
  br label %334

334:                                              ; preds = %333, %300
  %335 = load i8*, i8** %16, align 8
  %336 = getelementptr inbounds i8, i8* %335, i32 1
  store i8* %336, i8** %16, align 8
  %337 = load i8**, i8*** %10, align 8
  store i8* %336, i8** %337, align 8
  store i32 0, i32* %22, align 4
  br label %338

338:                                              ; preds = %334, %332, %251, %225, %214, %200, %181, %111, %61, %60, %53
  %339 = load i32, i32* %22, align 4
  store i32 %339, i32* %7, align 4
  br label %340

340:                                              ; preds = %338, %45
  %341 = load i32, i32* %7, align 4
  ret i32 %341
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.context* @sidtab_search(%struct.sidtab*, i64) #1

declare dso_local i32 @mls_context_cpy(%struct.context*, %struct.context*) #1

declare dso_local i8* @hashtab_search(i32, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @ebitmap_set_bit(i32*, i32, i32) #1

declare dso_local i32 @ebitmap_cpy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
