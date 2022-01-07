; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_linespec.c_decode_compound.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_linespec.c_decode_compound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtabs_and_lines = type { i32 }
%struct.symbol = type { i32 }
%struct.symtab = type { i32 }
%struct.type = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"malformed template specification in command\00", align 1
@TYPE_CODE_STRUCT = common dso_local global i64 0, align 8
@TYPE_CODE_UNION = common dso_local global i64 0, align 8
@VAR_DOMAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"Can't find member of namespace, class, struct, or union named \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32, i8***, i8*, i8*)* @decode_compound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_compound(i8** %0, i32 %1, i8*** %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.symtabs_and_lines, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8***, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.symtabs_and_lines, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.symbol*, align 8
  %17 = alloca %struct.symtab*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.symbol*, align 8
  %20 = alloca %struct.symbol**, align 8
  %21 = alloca %struct.type*, align 8
  store i8** %0, i8*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8*** %2, i8**** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %22 = load i8**, i8*** %7, align 8
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %14, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 58
  br i1 %28, label %29, label %49

29:                                               ; preds = %5
  %30 = load i8**, i8*** %7, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = icmp eq i8* %31, %32
  br i1 %33, label %46, label %34

34:                                               ; preds = %29
  %35 = load i8*, i8** %11, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 -1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 32
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load i8*, i8** %11, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 -1
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 9
  br i1 %45, label %46, label %49

46:                                               ; preds = %40, %34, %29
  %47 = load i8*, i8** %14, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 2
  store i8* %48, i8** %14, align 8
  br label %49

49:                                               ; preds = %46, %40, %5
  %50 = load i8*, i8** %11, align 8
  store i8* %50, i8** %13, align 8
  br label %51

51:                                               ; preds = %49, %118
  %52 = load i8*, i8** %13, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  store i8* %53, i8** %11, align 8
  br label %54

54:                                               ; preds = %111, %51
  %55 = load i8*, i8** %11, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %54
  %60 = load i8*, i8** %11, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 32
  br i1 %64, label %65, label %77

65:                                               ; preds = %59
  %66 = load i8*, i8** %11, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 9
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load i8*, i8** %11, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 39
  br label %77

77:                                               ; preds = %71, %65, %59, %54
  %78 = phi i1 [ false, %65 ], [ false, %59 ], [ false, %54 ], [ %76, %71 ]
  br i1 %78, label %79, label %112

79:                                               ; preds = %77
  %80 = load i8*, i8** %11, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 60
  br i1 %84, label %85, label %94

85:                                               ; preds = %79
  %86 = load i8*, i8** %11, align 8
  %87 = call i8* @find_template_name_end(i8* %86)
  store i8* %87, i8** %15, align 8
  %88 = load i8*, i8** %15, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %85
  %91 = call i32 @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %85
  %93 = load i8*, i8** %15, align 8
  store i8* %93, i8** %11, align 8
  br label %111

94:                                               ; preds = %79
  %95 = load i8*, i8** %11, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 0
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 58
  br i1 %99, label %100, label %107

100:                                              ; preds = %94
  %101 = load i8*, i8** %11, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 58
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %112

107:                                              ; preds = %100, %94
  %108 = load i8*, i8** %11, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %11, align 8
  br label %110

110:                                              ; preds = %107
  br label %111

111:                                              ; preds = %110, %92
  br label %54

112:                                              ; preds = %106, %77
  %113 = load i8*, i8** %11, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %115, 58
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %122

118:                                              ; preds = %112
  %119 = load i8*, i8** %11, align 8
  store i8* %119, i8** %13, align 8
  %120 = load i8*, i8** %14, align 8
  %121 = load i8**, i8*** %7, align 8
  store i8* %120, i8** %121, align 8
  br label %51

122:                                              ; preds = %117
  %123 = load i8**, i8*** %7, align 8
  %124 = load i8*, i8** %13, align 8
  %125 = call %struct.symbol* @lookup_prefix_sym(i8** %123, i8* %124)
  store %struct.symbol* %125, %struct.symbol** %19, align 8
  %126 = load %struct.symbol*, %struct.symbol** %19, align 8
  %127 = icmp ne %struct.symbol* %126, null
  br i1 %127, label %128, label %296

128:                                              ; preds = %122
  %129 = load %struct.symbol*, %struct.symbol** %19, align 8
  %130 = call i32 @SYMBOL_TYPE(%struct.symbol* %129)
  %131 = call %struct.type* @check_typedef(i32 %130)
  store %struct.type* %131, %struct.type** %21, align 8
  %132 = load %struct.type*, %struct.type** %21, align 8
  %133 = call i64 @TYPE_CODE(%struct.type* %132)
  %134 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %141, label %136

136:                                              ; preds = %128
  %137 = load %struct.type*, %struct.type** %21, align 8
  %138 = call i64 @TYPE_CODE(%struct.type* %137)
  %139 = load i64, i64* @TYPE_CODE_UNION, align 8
  %140 = icmp eq i64 %138, %139
  br label %141

141:                                              ; preds = %136, %128
  %142 = phi i1 [ true, %128 ], [ %140, %136 ]
  br i1 %142, label %143, label %296

143:                                              ; preds = %141
  %144 = load i8**, i8*** %7, align 8
  %145 = load i8*, i8** %144, align 8
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %164

149:                                              ; preds = %143
  %150 = call i32 (...) @get_gdb_completer_quote_characters()
  %151 = load i8**, i8*** %7, align 8
  %152 = load i8*, i8** %151, align 8
  %153 = load i8, i8* %152, align 1
  %154 = call i32* @strchr(i32 %150, i8 signext %153)
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %164

156:                                              ; preds = %149
  %157 = load i8**, i8*** %7, align 8
  %158 = load i8*, i8** %157, align 8
  %159 = call i8* @skip_quoted(i8* %158)
  store i8* %159, i8** %11, align 8
  %160 = load i8**, i8*** %7, align 8
  %161 = load i8*, i8** %160, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 1
  %163 = load i8**, i8*** %7, align 8
  store i8* %162, i8** %163, align 8
  br label %198

164:                                              ; preds = %149, %143
  %165 = load i8**, i8*** %7, align 8
  %166 = load i8*, i8** %165, align 8
  store i8* %166, i8** %11, align 8
  br label %167

167:                                              ; preds = %194, %164
  %168 = load i8*, i8** %11, align 8
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %192

172:                                              ; preds = %167
  %173 = load i8*, i8** %11, align 8
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp ne i32 %175, 32
  br i1 %176, label %177, label %192

177:                                              ; preds = %172
  %178 = load i8*, i8** %11, align 8
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp ne i32 %180, 9
  br i1 %181, label %182, label %192

182:                                              ; preds = %177
  %183 = load i8*, i8** %11, align 8
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp ne i32 %185, 44
  br i1 %186, label %187, label %192

187:                                              ; preds = %182
  %188 = load i8*, i8** %11, align 8
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp ne i32 %190, 58
  br label %192

192:                                              ; preds = %187, %182, %177, %172, %167
  %193 = phi i1 [ false, %182 ], [ false, %177 ], [ false, %172 ], [ false, %167 ], [ %191, %187 ]
  br i1 %193, label %194, label %197

194:                                              ; preds = %192
  %195 = load i8*, i8** %11, align 8
  %196 = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %196, i8** %11, align 8
  br label %167

197:                                              ; preds = %192
  br label %198

198:                                              ; preds = %197, %156
  %199 = load i8*, i8** %11, align 8
  %200 = load i8**, i8*** %7, align 8
  %201 = load i8*, i8** %200, align 8
  %202 = ptrtoint i8* %199 to i64
  %203 = ptrtoint i8* %201 to i64
  %204 = sub i64 %202, %203
  %205 = add nsw i64 %204, 1
  %206 = trunc i64 %205 to i32
  %207 = call i64 @alloca(i32 %206)
  %208 = inttoptr i64 %207 to i8*
  store i8* %208, i8** %18, align 8
  %209 = load i8*, i8** %18, align 8
  %210 = load i8**, i8*** %7, align 8
  %211 = load i8*, i8** %210, align 8
  %212 = load i8*, i8** %11, align 8
  %213 = load i8**, i8*** %7, align 8
  %214 = load i8*, i8** %213, align 8
  %215 = ptrtoint i8* %212 to i64
  %216 = ptrtoint i8* %214 to i64
  %217 = sub i64 %215, %216
  %218 = trunc i64 %217 to i32
  %219 = call i32 @memcpy(i8* %209, i8* %211, i32 %218)
  %220 = load i8*, i8** %18, align 8
  %221 = load i8*, i8** %11, align 8
  %222 = load i8**, i8*** %7, align 8
  %223 = load i8*, i8** %222, align 8
  %224 = ptrtoint i8* %221 to i64
  %225 = ptrtoint i8* %223 to i64
  %226 = sub i64 %224, %225
  %227 = getelementptr inbounds i8, i8* %220, i64 %226
  store i8 0, i8* %227, align 1
  %228 = load i8*, i8** %11, align 8
  %229 = load i8**, i8*** %7, align 8
  %230 = load i8*, i8** %229, align 8
  %231 = icmp ne i8* %228, %230
  br i1 %231, label %232, label %269

232:                                              ; preds = %198
  %233 = load i8*, i8** %18, align 8
  %234 = load i8*, i8** %11, align 8
  %235 = load i8**, i8*** %7, align 8
  %236 = load i8*, i8** %235, align 8
  %237 = ptrtoint i8* %234 to i64
  %238 = ptrtoint i8* %236 to i64
  %239 = sub i64 %237, %238
  %240 = sub nsw i64 %239, 1
  %241 = getelementptr inbounds i8, i8* %233, i64 %240
  %242 = load i8, i8* %241, align 1
  %243 = sext i8 %242 to i32
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %269

245:                                              ; preds = %232
  %246 = call i32 (...) @get_gdb_completer_quote_characters()
  %247 = load i8*, i8** %18, align 8
  %248 = load i8*, i8** %11, align 8
  %249 = load i8**, i8*** %7, align 8
  %250 = load i8*, i8** %249, align 8
  %251 = ptrtoint i8* %248 to i64
  %252 = ptrtoint i8* %250 to i64
  %253 = sub i64 %251, %252
  %254 = sub nsw i64 %253, 1
  %255 = getelementptr inbounds i8, i8* %247, i64 %254
  %256 = load i8, i8* %255, align 1
  %257 = call i32* @strchr(i32 %246, i8 signext %256)
  %258 = icmp ne i32* %257, null
  br i1 %258, label %259, label %269

259:                                              ; preds = %245
  %260 = load i8*, i8** %18, align 8
  %261 = load i8*, i8** %11, align 8
  %262 = load i8**, i8*** %7, align 8
  %263 = load i8*, i8** %262, align 8
  %264 = ptrtoint i8* %261 to i64
  %265 = ptrtoint i8* %263 to i64
  %266 = sub i64 %264, %265
  %267 = sub nsw i64 %266, 1
  %268 = getelementptr inbounds i8, i8* %260, i64 %267
  store i8 0, i8* %268, align 1
  br label %269

269:                                              ; preds = %259, %245, %232, %198
  br label %270

270:                                              ; preds = %282, %269
  %271 = load i8*, i8** %11, align 8
  %272 = load i8, i8* %271, align 1
  %273 = sext i8 %272 to i32
  %274 = icmp eq i32 %273, 32
  br i1 %274, label %280, label %275

275:                                              ; preds = %270
  %276 = load i8*, i8** %11, align 8
  %277 = load i8, i8* %276, align 1
  %278 = sext i8 %277 to i32
  %279 = icmp eq i32 %278, 9
  br label %280

280:                                              ; preds = %275, %270
  %281 = phi i1 [ true, %270 ], [ %279, %275 ]
  br i1 %281, label %282, label %285

282:                                              ; preds = %280
  %283 = load i8*, i8** %11, align 8
  %284 = getelementptr inbounds i8, i8* %283, i32 1
  store i8* %284, i8** %11, align 8
  br label %270

285:                                              ; preds = %280
  %286 = load i8*, i8** %11, align 8
  %287 = load i8**, i8*** %7, align 8
  store i8* %286, i8** %287, align 8
  %288 = load i32, i32* %8, align 4
  %289 = load i8***, i8**** %9, align 8
  %290 = load i8*, i8** %10, align 8
  %291 = load i8*, i8** %18, align 8
  %292 = load %struct.type*, %struct.type** %21, align 8
  %293 = load %struct.symbol*, %struct.symbol** %19, align 8
  %294 = call i32 @find_method(i32 %288, i8*** %289, i8* %290, i8* %291, %struct.type* %292, %struct.symbol* %293)
  %295 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %6, i32 0, i32 0
  store i32 %294, i32* %295, align 4
  br label %351

296:                                              ; preds = %141, %122
  %297 = load i8*, i8** %11, align 8
  %298 = load i8*, i8** %14, align 8
  %299 = ptrtoint i8* %297 to i64
  %300 = ptrtoint i8* %298 to i64
  %301 = sub i64 %299, %300
  %302 = add nsw i64 %301, 1
  %303 = trunc i64 %302 to i32
  %304 = call i64 @alloca(i32 %303)
  %305 = inttoptr i64 %304 to i8*
  store i8* %305, i8** %18, align 8
  %306 = load i8*, i8** %18, align 8
  %307 = load i8*, i8** %14, align 8
  %308 = load i8*, i8** %11, align 8
  %309 = load i8*, i8** %14, align 8
  %310 = ptrtoint i8* %308 to i64
  %311 = ptrtoint i8* %309 to i64
  %312 = sub i64 %310, %311
  %313 = trunc i64 %312 to i32
  %314 = call i32 @memcpy(i8* %306, i8* %307, i32 %313)
  %315 = load i8*, i8** %18, align 8
  %316 = load i8*, i8** %11, align 8
  %317 = load i8*, i8** %14, align 8
  %318 = ptrtoint i8* %316 to i64
  %319 = ptrtoint i8* %317 to i64
  %320 = sub i64 %318, %319
  %321 = getelementptr inbounds i8, i8* %315, i64 %320
  store i8 0, i8* %321, align 1
  %322 = load i8*, i8** %11, align 8
  %323 = load i8, i8* %322, align 1
  %324 = sext i8 %323 to i32
  %325 = icmp eq i32 %324, 39
  br i1 %325, label %326, label %329

326:                                              ; preds = %296
  %327 = load i8*, i8** %11, align 8
  %328 = getelementptr inbounds i8, i8* %327, i64 1
  br label %331

329:                                              ; preds = %296
  %330 = load i8*, i8** %11, align 8
  br label %331

331:                                              ; preds = %329, %326
  %332 = phi i8* [ %328, %326 ], [ %330, %329 ]
  %333 = load i8**, i8*** %7, align 8
  store i8* %332, i8** %333, align 8
  %334 = load i8*, i8** %18, align 8
  %335 = load i32, i32* @VAR_DOMAIN, align 4
  %336 = call %struct.symbol* @lookup_symbol(i8* %334, i32 0, i32 %335, i32 0, %struct.symtab** %17)
  store %struct.symbol* %336, %struct.symbol** %16, align 8
  %337 = load %struct.symbol*, %struct.symbol** %16, align 8
  %338 = icmp ne %struct.symbol* %337, null
  br i1 %338, label %339, label %347

339:                                              ; preds = %331
  %340 = load i32, i32* %8, align 4
  %341 = load i8***, i8**** %9, align 8
  %342 = load i8*, i8** %18, align 8
  %343 = load %struct.symbol*, %struct.symbol** %16, align 8
  %344 = load %struct.symtab*, %struct.symtab** %17, align 8
  %345 = call i32 @symbol_found(i32 %340, i8*** %341, i8* %342, %struct.symbol* %343, i32* null, %struct.symtab* %344)
  %346 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %6, i32 0, i32 0
  store i32 %345, i32* %346, align 4
  br label %351

347:                                              ; preds = %331
  %348 = load i8*, i8** %10, align 8
  %349 = load i8*, i8** %18, align 8
  %350 = call i32 @cplusplus_error(i8* %348, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i8* %349)
  br label %351

351:                                              ; preds = %347, %339, %285
  %352 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %6, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  ret i32 %353
}

declare dso_local i8* @find_template_name_end(i8*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.symbol* @lookup_prefix_sym(i8**, i8*) #1

declare dso_local %struct.type* @check_typedef(i32) #1

declare dso_local i32 @SYMBOL_TYPE(%struct.symbol*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i32* @strchr(i32, i8 signext) #1

declare dso_local i32 @get_gdb_completer_quote_characters(...) #1

declare dso_local i8* @skip_quoted(i8*) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @find_method(i32, i8***, i8*, i8*, %struct.type*, %struct.symbol*) #1

declare dso_local %struct.symbol* @lookup_symbol(i8*, i32, i32, i32, %struct.symtab**) #1

declare dso_local i32 @symbol_found(i32, i8***, i8*, %struct.symbol*, i32*, %struct.symtab*) #1

declare dso_local i32 @cplusplus_error(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
