; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_parse.c_parse_nested_classes_for_hpacc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_parse.c_parse_nested_classes_for_hpacc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.type = type { i32 }
%struct.symtab = type { i32 }

@hp_som_som_object_present = common dso_local global i32 0, align 4
@coloncolon = common dso_local global i8* null, align 8
@STRUCT_DOMAIN = common dso_local global i32 0, align 4
@VAR_DOMAIN = common dso_local global i32 0, align 4
@TYPE_CODE_STRUCT = common dso_local global i64 0, align 8
@TYPE_CODE_UNION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.symbol* @parse_nested_classes_for_hpacc(i8* %0, i32 %1, i8** %2, i32* %3, i8** %4) #0 {
  %6 = alloca %struct.symbol*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.symbol*, align 8
  %18 = alloca %struct.symbol*, align 8
  %19 = alloca %struct.type*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8** %2, i8*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8** %4, i8*** %11, align 8
  store i8* null, i8** %15, align 8
  store %struct.symbol* null, %struct.symbol** %17, align 8
  store %struct.symbol* null, %struct.symbol** %18, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %23 = load i32, i32* @hp_som_som_object_present, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %5
  store %struct.symbol* null, %struct.symbol** %6, align 8
  br label %390

26:                                               ; preds = %5
  %27 = load i8*, i8** %7, align 8
  store i8* %27, i8** %12, align 8
  br label %28

28:                                               ; preds = %47, %26
  %29 = load i8*, i8** %12, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load i8*, i8** %12, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 32
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load i8*, i8** %12, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 9
  br label %43

43:                                               ; preds = %38, %33
  %44 = phi i1 [ true, %33 ], [ %42, %38 ]
  br label %45

45:                                               ; preds = %43, %28
  %46 = phi i1 [ false, %28 ], [ %44, %43 ]
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = load i8*, i8** %12, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %12, align 8
  br label %28

50:                                               ; preds = %45
  %51 = load i8*, i8** %12, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 58
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  %57 = load i8*, i8** %12, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 58
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i8*, i8** %12, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 2
  store i8* %64, i8** %12, align 8
  br label %65

65:                                               ; preds = %62, %56, %50
  br label %66

66:                                               ; preds = %85, %65
  %67 = load i8*, i8** %12, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %66
  %72 = load i8*, i8** %12, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 32
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load i8*, i8** %12, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 9
  br label %81

81:                                               ; preds = %76, %71
  %82 = phi i1 [ true, %71 ], [ %80, %76 ]
  br label %83

83:                                               ; preds = %81, %66
  %84 = phi i1 [ false, %66 ], [ %82, %81 ]
  br i1 %84, label %85, label %88

85:                                               ; preds = %83
  %86 = load i8*, i8** %12, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %12, align 8
  br label %66

88:                                               ; preds = %83
  br label %89

89:                                               ; preds = %88, %360
  %90 = load i8*, i8** %12, align 8
  store i8* %90, i8** %13, align 8
  %91 = load i8*, i8** %12, align 8
  %92 = load i8, i8* %91, align 1
  %93 = call i64 @isalpha(i8 signext %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %106, label %95

95:                                               ; preds = %89
  %96 = load i8*, i8** %12, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 36
  br i1 %99, label %106, label %100

100:                                              ; preds = %95
  %101 = load i8*, i8** %12, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 95
  br i1 %104, label %106, label %105

105:                                              ; preds = %100
  store %struct.symbol* null, %struct.symbol** %6, align 8
  br label %390

106:                                              ; preds = %100, %95, %89
  %107 = load i8*, i8** %12, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %12, align 8
  br label %109

109:                                              ; preds = %133, %106
  %110 = load i8*, i8** %12, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %131

114:                                              ; preds = %109
  %115 = load i8*, i8** %12, align 8
  %116 = load i8, i8* %115, align 1
  %117 = call i64 @isalnum(i8 signext %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %129, label %119

119:                                              ; preds = %114
  %120 = load i8*, i8** %12, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 36
  br i1 %123, label %129, label %124

124:                                              ; preds = %119
  %125 = load i8*, i8** %12, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 95
  br label %129

129:                                              ; preds = %124, %119, %114
  %130 = phi i1 [ true, %119 ], [ true, %114 ], [ %128, %124 ]
  br label %131

131:                                              ; preds = %129, %109
  %132 = phi i1 [ false, %109 ], [ %130, %129 ]
  br i1 %132, label %133, label %136

133:                                              ; preds = %131
  %134 = load i8*, i8** %12, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %12, align 8
  br label %109

136:                                              ; preds = %131
  %137 = load i8*, i8** %12, align 8
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 60
  br i1 %140, label %141, label %149

141:                                              ; preds = %136
  %142 = load i8*, i8** %12, align 8
  %143 = call i8* @find_template_name_end(i8* %142)
  store i8* %143, i8** %22, align 8
  %144 = load i8*, i8** %22, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %148

146:                                              ; preds = %141
  %147 = load i8*, i8** %22, align 8
  store i8* %147, i8** %12, align 8
  br label %148

148:                                              ; preds = %146, %141
  br label %149

149:                                              ; preds = %148, %136
  %150 = load i8*, i8** %12, align 8
  store i8* %150, i8** %14, align 8
  br label %151

151:                                              ; preds = %170, %149
  %152 = load i8*, i8** %12, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %168

156:                                              ; preds = %151
  %157 = load i8*, i8** %12, align 8
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp eq i32 %159, 32
  br i1 %160, label %166, label %161

161:                                              ; preds = %156
  %162 = load i8*, i8** %12, align 8
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %164, 9
  br label %166

166:                                              ; preds = %161, %156
  %167 = phi i1 [ true, %156 ], [ %165, %161 ]
  br label %168

168:                                              ; preds = %166, %151
  %169 = phi i1 [ false, %151 ], [ %167, %166 ]
  br i1 %169, label %170, label %173

170:                                              ; preds = %168
  %171 = load i8*, i8** %12, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %172, i8** %12, align 8
  br label %151

173:                                              ; preds = %168
  %174 = load i8*, i8** %12, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 0
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp eq i32 %177, 58
  br i1 %178, label %179, label %188

179:                                              ; preds = %173
  %180 = load i8*, i8** %12, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 1
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp eq i32 %183, 58
  br i1 %184, label %185, label %188

185:                                              ; preds = %179
  %186 = load i8*, i8** %12, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 2
  store i8* %187, i8** %12, align 8
  br label %188

188:                                              ; preds = %185, %179, %173
  br label %189

189:                                              ; preds = %208, %188
  %190 = load i8*, i8** %12, align 8
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %206

194:                                              ; preds = %189
  %195 = load i8*, i8** %12, align 8
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp eq i32 %197, 32
  br i1 %198, label %204, label %199

199:                                              ; preds = %194
  %200 = load i8*, i8** %12, align 8
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp eq i32 %202, 9
  br label %204

204:                                              ; preds = %199, %194
  %205 = phi i1 [ true, %194 ], [ %203, %199 ]
  br label %206

206:                                              ; preds = %204, %189
  %207 = phi i1 [ false, %189 ], [ %205, %204 ]
  br i1 %207, label %208, label %211

208:                                              ; preds = %206
  %209 = load i8*, i8** %12, align 8
  %210 = getelementptr inbounds i8, i8* %209, i32 1
  store i8* %210, i8** %12, align 8
  br label %189

211:                                              ; preds = %206
  %212 = load i8*, i8** %12, align 8
  %213 = load i8, i8* %212, align 1
  %214 = icmp ne i8 %213, 0
  br i1 %214, label %215, label %230

215:                                              ; preds = %211
  %216 = load i8*, i8** %12, align 8
  %217 = load i8, i8* %216, align 1
  %218 = call i64 @isalpha(i8 signext %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %231, label %220

220:                                              ; preds = %215
  %221 = load i8*, i8** %12, align 8
  %222 = load i8, i8* %221, align 1
  %223 = sext i8 %222 to i32
  %224 = icmp eq i32 %223, 36
  br i1 %224, label %231, label %225

225:                                              ; preds = %220
  %226 = load i8*, i8** %12, align 8
  %227 = load i8, i8* %226, align 1
  %228 = sext i8 %227 to i32
  %229 = icmp eq i32 %228, 95
  br i1 %229, label %231, label %230

230:                                              ; preds = %225, %211
  store i32 1, i32* %21, align 4
  br label %231

231:                                              ; preds = %230, %225, %220, %215
  %232 = load i32, i32* %20, align 4
  %233 = load i8*, i8** %14, align 8
  %234 = sext i32 %232 to i64
  %235 = getelementptr inbounds i8, i8* %233, i64 %234
  %236 = load i8*, i8** %13, align 8
  %237 = ptrtoint i8* %235 to i64
  %238 = ptrtoint i8* %236 to i64
  %239 = sub i64 %237, %238
  %240 = add nsw i64 %239, 3
  %241 = trunc i64 %240 to i32
  %242 = call i64 @alloca(i32 %241)
  %243 = inttoptr i64 %242 to i8*
  store i8* %243, i8** %16, align 8
  %244 = load i8*, i8** %15, align 8
  %245 = icmp ne i8* %244, null
  br i1 %245, label %246, label %281

246:                                              ; preds = %231
  %247 = load i8*, i8** %16, align 8
  %248 = load i8*, i8** %15, align 8
  %249 = load i32, i32* %20, align 4
  %250 = call i32 @memcpy(i8* %247, i8* %248, i32 %249)
  %251 = load i8*, i8** %16, align 8
  %252 = load i32, i32* %20, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i8, i8* %251, i64 %253
  %255 = load i8*, i8** @coloncolon, align 8
  %256 = call i32 @memcpy(i8* %254, i8* %255, i32 2)
  %257 = load i8*, i8** %16, align 8
  %258 = load i32, i32* %20, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8, i8* %257, i64 %259
  %261 = getelementptr inbounds i8, i8* %260, i64 2
  %262 = load i8*, i8** %13, align 8
  %263 = load i8*, i8** %14, align 8
  %264 = load i8*, i8** %13, align 8
  %265 = ptrtoint i8* %263 to i64
  %266 = ptrtoint i8* %264 to i64
  %267 = sub i64 %265, %266
  %268 = trunc i64 %267 to i32
  %269 = call i32 @memcpy(i8* %261, i8* %262, i32 %268)
  %270 = load i8*, i8** %16, align 8
  %271 = load i32, i32* %20, align 4
  %272 = add nsw i32 %271, 2
  %273 = load i8*, i8** %14, align 8
  %274 = sext i32 %272 to i64
  %275 = getelementptr inbounds i8, i8* %273, i64 %274
  %276 = load i8*, i8** %13, align 8
  %277 = ptrtoint i8* %275 to i64
  %278 = ptrtoint i8* %276 to i64
  %279 = sub i64 %277, %278
  %280 = getelementptr inbounds i8, i8* %270, i64 %279
  store i8 0, i8* %280, align 1
  br label %298

281:                                              ; preds = %231
  %282 = load i8*, i8** %16, align 8
  %283 = load i8*, i8** %13, align 8
  %284 = load i8*, i8** %14, align 8
  %285 = load i8*, i8** %13, align 8
  %286 = ptrtoint i8* %284 to i64
  %287 = ptrtoint i8* %285 to i64
  %288 = sub i64 %286, %287
  %289 = trunc i64 %288 to i32
  %290 = call i32 @memcpy(i8* %282, i8* %283, i32 %289)
  %291 = load i8*, i8** %16, align 8
  %292 = load i8*, i8** %14, align 8
  %293 = load i8*, i8** %13, align 8
  %294 = ptrtoint i8* %292 to i64
  %295 = ptrtoint i8* %293 to i64
  %296 = sub i64 %294, %295
  %297 = getelementptr inbounds i8, i8* %291, i64 %296
  store i8 0, i8* %297, align 1
  br label %298

298:                                              ; preds = %281, %246
  %299 = load i8*, i8** %16, align 8
  store i8* %299, i8** %15, align 8
  %300 = load i8*, i8** %15, align 8
  %301 = call i32 @strlen(i8* %300)
  store i32 %301, i32* %20, align 4
  %302 = load i32, i32* %21, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %308, label %304

304:                                              ; preds = %298
  %305 = load i8*, i8** %15, align 8
  %306 = load i32, i32* @STRUCT_DOMAIN, align 4
  %307 = call %struct.symbol* @lookup_symbol(i8* %305, i32 0, i32 %306, i32 0, %struct.symtab** null)
  store %struct.symbol* %307, %struct.symbol** %17, align 8
  br label %319

308:                                              ; preds = %298
  %309 = load i8*, i8** %15, align 8
  %310 = load i32, i32* @VAR_DOMAIN, align 4
  %311 = call %struct.symbol* @lookup_symbol(i8* %309, i32 0, i32 %310, i32 0, %struct.symtab** null)
  store %struct.symbol* %311, %struct.symbol** %18, align 8
  %312 = load %struct.symbol*, %struct.symbol** %18, align 8
  %313 = icmp ne %struct.symbol* %312, null
  br i1 %313, label %318, label %314

314:                                              ; preds = %308
  %315 = load i8*, i8** %15, align 8
  %316 = load i32, i32* @STRUCT_DOMAIN, align 4
  %317 = call %struct.symbol* @lookup_symbol(i8* %315, i32 0, i32 %316, i32 0, %struct.symtab** null)
  store %struct.symbol* %317, %struct.symbol** %17, align 8
  br label %318

318:                                              ; preds = %314, %308
  br label %319

319:                                              ; preds = %318, %304
  %320 = load %struct.symbol*, %struct.symbol** %18, align 8
  %321 = icmp ne %struct.symbol* %320, null
  br i1 %321, label %340, label %322

322:                                              ; preds = %319
  %323 = load %struct.symbol*, %struct.symbol** %17, align 8
  %324 = icmp ne %struct.symbol* %323, null
  br i1 %324, label %325, label %356

325:                                              ; preds = %322
  %326 = load %struct.symbol*, %struct.symbol** %17, align 8
  %327 = call i32 @SYMBOL_TYPE(%struct.symbol* %326)
  %328 = call %struct.type* @check_typedef(i32 %327)
  store %struct.type* %328, %struct.type** %19, align 8
  %329 = load %struct.type*, %struct.type** %19, align 8
  %330 = call i64 @TYPE_CODE(%struct.type* %329)
  %331 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %332 = icmp eq i64 %330, %331
  br i1 %332, label %338, label %333

333:                                              ; preds = %325
  %334 = load %struct.type*, %struct.type** %19, align 8
  %335 = call i64 @TYPE_CODE(%struct.type* %334)
  %336 = load i64, i64* @TYPE_CODE_UNION, align 8
  %337 = icmp eq i64 %335, %336
  br label %338

338:                                              ; preds = %333, %325
  %339 = phi i1 [ true, %325 ], [ %337, %333 ]
  br i1 %339, label %340, label %356

340:                                              ; preds = %338, %319
  %341 = load i32, i32* %20, align 4
  %342 = add nsw i32 %341, 1
  %343 = call i64 @xmalloc(i32 %342)
  %344 = inttoptr i64 %343 to i8*
  %345 = load i8**, i8*** %9, align 8
  store i8* %344, i8** %345, align 8
  %346 = load i8**, i8*** %9, align 8
  %347 = load i8*, i8** %346, align 8
  %348 = load i8*, i8** %15, align 8
  %349 = load i32, i32* %20, align 4
  %350 = call i32 @memcpy(i8* %347, i8* %348, i32 %349)
  %351 = load i8**, i8*** %9, align 8
  %352 = load i8*, i8** %351, align 8
  %353 = load i32, i32* %20, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i8, i8* %352, i64 %354
  store i8 0, i8* %355, align 1
  br label %361

356:                                              ; preds = %338, %322
  %357 = load i32, i32* %21, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %360

359:                                              ; preds = %356
  store %struct.symbol* null, %struct.symbol** %6, align 8
  br label %390

360:                                              ; preds = %356
  br label %89

361:                                              ; preds = %340
  %362 = load %struct.symbol*, %struct.symbol** %18, align 8
  %363 = icmp ne %struct.symbol* %362, null
  br i1 %363, label %364, label %366

364:                                              ; preds = %361
  %365 = load i32*, i32** %10, align 8
  store i32 0, i32* %365, align 4
  br label %368

366:                                              ; preds = %361
  %367 = load i32*, i32** %10, align 8
  store i32 1, i32* %367, align 4
  br label %368

368:                                              ; preds = %366, %364
  %369 = load i8**, i8*** %11, align 8
  %370 = icmp ne i8** %369, null
  br i1 %370, label %371, label %381

371:                                              ; preds = %368
  %372 = load i32, i32* %21, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %376

374:                                              ; preds = %371
  %375 = load i8*, i8** %12, align 8
  br label %378

376:                                              ; preds = %371
  %377 = load i8*, i8** %14, align 8
  br label %378

378:                                              ; preds = %376, %374
  %379 = phi i8* [ %375, %374 ], [ %377, %376 ]
  %380 = load i8**, i8*** %11, align 8
  store i8* %379, i8** %380, align 8
  br label %381

381:                                              ; preds = %378, %368
  %382 = load %struct.symbol*, %struct.symbol** %18, align 8
  %383 = icmp ne %struct.symbol* %382, null
  br i1 %383, label %384, label %386

384:                                              ; preds = %381
  %385 = load %struct.symbol*, %struct.symbol** %18, align 8
  br label %388

386:                                              ; preds = %381
  %387 = load %struct.symbol*, %struct.symbol** %17, align 8
  br label %388

388:                                              ; preds = %386, %384
  %389 = phi %struct.symbol* [ %385, %384 ], [ %387, %386 ]
  store %struct.symbol* %389, %struct.symbol** %6, align 8
  br label %390

390:                                              ; preds = %388, %359, %105, %25
  %391 = load %struct.symbol*, %struct.symbol** %6, align 8
  ret %struct.symbol* %391
}

declare dso_local i64 @isalpha(i8 signext) #1

declare dso_local i64 @isalnum(i8 signext) #1

declare dso_local i8* @find_template_name_end(i8*) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.symbol* @lookup_symbol(i8*, i32, i32, i32, %struct.symtab**) #1

declare dso_local %struct.type* @check_typedef(i32) #1

declare dso_local i32 @SYMBOL_TYPE(%struct.symbol*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i64 @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
