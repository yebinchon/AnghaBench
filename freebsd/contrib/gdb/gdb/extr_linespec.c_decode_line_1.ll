; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_linespec.c_decode_line_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_linespec.c_decode_line_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab = type { i32 }
%struct.symtabs_and_lines = type { i32* }

@.str = private unnamed_addr constant [24 x i8] c"Unmatched single quote.\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@VAR_DOMAIN = common dso_local global i32 0, align 4
@sym = common dso_local global i64 0, align 8
@sym_symtab = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @decode_line_1(i8** %0, i32 %1, %struct.symtab* %2, i32 %3, i8*** %4, i32* %5) #0 {
  %7 = alloca %struct.symtabs_and_lines, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.symtab*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8***, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.symtab*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca %struct.symtabs_and_lines, align 8
  store i8** %0, i8*** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.symtab* %2, %struct.symtab** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8*** %4, i8**** %12, align 8
  store i32* %5, i32** %13, align 8
  store %struct.symtab* null, %struct.symtab** %16, align 8
  store i32 0, i32* %21, align 4
  %24 = load i8**, i8*** %8, align 8
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %22, align 8
  %26 = load i32*, i32** %13, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %6
  %29 = load i32*, i32** %13, align 8
  store i32 0, i32* %29, align 4
  br label %30

30:                                               ; preds = %28, %6
  %31 = call i32 @initialize_defaults(%struct.symtab** %10, i32* %11)
  %32 = load i8**, i8*** %8, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 42
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i8**, i8*** %8, align 8
  %39 = call i32* @decode_indirect(i8** %38)
  %40 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %7, i32 0, i32 0
  store i32* %39, i32** %40, align 8
  br label %348

41:                                               ; preds = %30
  %42 = load i8**, i8*** %8, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @set_flags(i8* %43, i32* %19, i8** %18)
  %45 = load i8**, i8*** %8, align 8
  %46 = call i8* @locate_first_half(i8** %45, i32* %20)
  store i8* %46, i8** %14, align 8
  %47 = load i8*, i8** %14, align 8
  %48 = call i64 @is_objc_method_format(i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  store i32 1, i32* %21, align 4
  store i8* null, i8** %18, align 8
  br label %51

51:                                               ; preds = %50, %41
  %52 = load i8**, i8*** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i8***, i8**** %12, align 8
  %55 = load i8*, i8** %22, align 8
  %56 = call i32* @decode_objc(i8** %52, i32 %53, i32* null, i8*** %54, i8* %55)
  %57 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %23, i32 0, i32 0
  store i32* %56, i32** %57, align 8
  %58 = bitcast %struct.symtabs_and_lines* %7 to i8*
  %59 = bitcast %struct.symtabs_and_lines* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 8, i1 false)
  %60 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %7, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  br label %348

64:                                               ; preds = %51
  %65 = load i8*, i8** %14, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 58
  br i1 %69, label %76, label %70

70:                                               ; preds = %64
  %71 = load i8*, i8** %14, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 46
  br i1 %75, label %76, label %113

76:                                               ; preds = %70, %64
  %77 = load i8*, i8** %18, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %113

79:                                               ; preds = %76
  %80 = load i32, i32* %19, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load i8**, i8*** %8, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  %86 = load i8**, i8*** %8, align 8
  store i8* %85, i8** %86, align 8
  br label %87

87:                                               ; preds = %82, %79
  %88 = load i8*, i8** %14, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 0
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 46
  br i1 %92, label %99, label %93

93:                                               ; preds = %87
  %94 = load i8*, i8** %14, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 58
  br i1 %98, label %99, label %107

99:                                               ; preds = %93, %87
  %100 = load i8**, i8*** %8, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load i8***, i8**** %12, align 8
  %103 = load i8*, i8** %22, align 8
  %104 = load i8*, i8** %14, align 8
  %105 = call i32* @decode_compound(i8** %100, i32 %101, i8*** %102, i8* %103, i8* %104)
  %106 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %7, i32 0, i32 0
  store i32* %105, i32** %106, align 8
  br label %348

107:                                              ; preds = %93
  %108 = load i8**, i8*** %8, align 8
  %109 = load i8*, i8** %14, align 8
  %110 = load i32, i32* %20, align 4
  %111 = load i32*, i32** %13, align 8
  %112 = call %struct.symtab* @symtab_from_filename(i8** %108, i8* %109, i32 %110, i32* %111)
  store %struct.symtab* %112, %struct.symtab** %16, align 8
  br label %113

113:                                              ; preds = %107, %76, %70
  %114 = load i8**, i8*** %8, align 8
  %115 = load i8*, i8** %114, align 8
  store i8* %115, i8** %15, align 8
  %116 = load i8*, i8** %15, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 45
  br i1 %119, label %125, label %120

120:                                              ; preds = %113
  %121 = load i8*, i8** %15, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 43
  br i1 %124, label %125, label %128

125:                                              ; preds = %120, %113
  %126 = load i8*, i8** %15, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %15, align 8
  br label %128

128:                                              ; preds = %125, %120
  br label %129

129:                                              ; preds = %141, %128
  %130 = load i8*, i8** %15, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp sge i32 %132, 48
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load i8*, i8** %15, align 8
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp sle i32 %137, 57
  br label %139

139:                                              ; preds = %134, %129
  %140 = phi i1 [ false, %129 ], [ %138, %134 ]
  br i1 %140, label %141, label %144

141:                                              ; preds = %139
  %142 = load i8*, i8** %15, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %15, align 8
  br label %129

144:                                              ; preds = %139
  %145 = load i8*, i8** %15, align 8
  %146 = load i8**, i8*** %8, align 8
  %147 = load i8*, i8** %146, align 8
  %148 = icmp ne i8* %145, %147
  br i1 %148, label %149, label %178

149:                                              ; preds = %144
  %150 = load i8*, i8** %15, align 8
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %169, label %154

154:                                              ; preds = %149
  %155 = load i8*, i8** %15, align 8
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp eq i32 %157, 32
  br i1 %158, label %169, label %159

159:                                              ; preds = %154
  %160 = load i8*, i8** %15, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %162, 9
  br i1 %163, label %169, label %164

164:                                              ; preds = %159
  %165 = load i8*, i8** %15, align 8
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 44
  br i1 %168, label %169, label %178

169:                                              ; preds = %164, %159, %154, %149
  %170 = load i8**, i8*** %8, align 8
  %171 = load %struct.symtab*, %struct.symtab** %10, align 8
  %172 = load i32, i32* %11, align 4
  %173 = load i8***, i8**** %12, align 8
  %174 = load %struct.symtab*, %struct.symtab** %16, align 8
  %175 = load i8*, i8** %15, align 8
  %176 = call i32* @decode_all_digits(i8** %170, %struct.symtab* %171, i32 %172, i8*** %173, %struct.symtab* %174, i8* %175)
  %177 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %7, i32 0, i32 0
  store i32* %176, i32** %177, align 8
  br label %348

178:                                              ; preds = %164, %144
  %179 = load i8**, i8*** %8, align 8
  %180 = load i8*, i8** %179, align 8
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %182, 36
  br i1 %183, label %184, label %198

184:                                              ; preds = %178
  %185 = load i8**, i8*** %8, align 8
  %186 = load i8*, i8** %185, align 8
  %187 = load i8**, i8*** %8, align 8
  %188 = load i8*, i8** %187, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 1
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp eq i32 %191, 36
  %193 = zext i1 %192 to i64
  %194 = select i1 %192, i32 2, i32 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, i8* %186, i64 %195
  %197 = call i8* @skip_quoted(i8* %196)
  store i8* %197, i8** %14, align 8
  br label %233

198:                                              ; preds = %178
  %199 = load i32, i32* %19, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %213

201:                                              ; preds = %198
  %202 = load i8**, i8*** %8, align 8
  %203 = load i8*, i8** %202, align 8
  %204 = call i8* @skip_quoted(i8* %203)
  store i8* %204, i8** %14, align 8
  %205 = load i8*, i8** %14, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 -1
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = icmp ne i32 %208, 39
  br i1 %209, label %210, label %212

210:                                              ; preds = %201
  %211 = call i32 @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %212

212:                                              ; preds = %210, %201
  br label %232

213:                                              ; preds = %198
  %214 = load i32, i32* %21, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %213
  %217 = load i8**, i8*** %8, align 8
  %218 = load i8*, i8** %217, align 8
  %219 = call i8* @skip_quoted_chars(i8* %218, i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %219, i8** %14, align 8
  br label %231

220:                                              ; preds = %213
  %221 = load i8*, i8** %18, align 8
  %222 = icmp ne i8* %221, null
  br i1 %222, label %223, label %226

223:                                              ; preds = %220
  %224 = load i8*, i8** %18, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 1
  store i8* %225, i8** %14, align 8
  br label %230

226:                                              ; preds = %220
  %227 = load i8**, i8*** %8, align 8
  %228 = load i8*, i8** %227, align 8
  %229 = call i8* @skip_quoted(i8* %228)
  store i8* %229, i8** %14, align 8
  br label %230

230:                                              ; preds = %226, %223
  br label %231

231:                                              ; preds = %230, %216
  br label %232

232:                                              ; preds = %231, %212
  br label %233

233:                                              ; preds = %232, %184
  %234 = load i8*, i8** %14, align 8
  %235 = load i8**, i8*** %8, align 8
  %236 = load i8*, i8** %235, align 8
  %237 = ptrtoint i8* %234 to i64
  %238 = ptrtoint i8* %236 to i64
  %239 = sub i64 %237, %238
  %240 = add nsw i64 %239, 1
  %241 = trunc i64 %240 to i32
  %242 = call i64 @alloca(i32 %241)
  %243 = inttoptr i64 %242 to i8*
  store i8* %243, i8** %17, align 8
  %244 = load i8*, i8** %17, align 8
  %245 = load i8**, i8*** %8, align 8
  %246 = load i8*, i8** %245, align 8
  %247 = load i8*, i8** %14, align 8
  %248 = load i8**, i8*** %8, align 8
  %249 = load i8*, i8** %248, align 8
  %250 = ptrtoint i8* %247 to i64
  %251 = ptrtoint i8* %249 to i64
  %252 = sub i64 %250, %251
  %253 = trunc i64 %252 to i32
  %254 = call i32 @memcpy(i8* %244, i8* %246, i32 %253)
  %255 = load i8*, i8** %17, align 8
  %256 = load i8*, i8** %14, align 8
  %257 = load i8**, i8*** %8, align 8
  %258 = load i8*, i8** %257, align 8
  %259 = ptrtoint i8* %256 to i64
  %260 = ptrtoint i8* %258 to i64
  %261 = sub i64 %259, %260
  %262 = getelementptr inbounds i8, i8* %255, i64 %261
  store i8 0, i8* %262, align 1
  %263 = load i8*, i8** %14, align 8
  %264 = load i8**, i8*** %8, align 8
  %265 = load i8*, i8** %264, align 8
  %266 = icmp ne i8* %263, %265
  br i1 %266, label %267, label %309

267:                                              ; preds = %233
  %268 = load i8*, i8** %17, align 8
  %269 = getelementptr inbounds i8, i8* %268, i64 0
  %270 = load i8, i8* %269, align 1
  %271 = sext i8 %270 to i32
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %309

273:                                              ; preds = %267
  %274 = load i8*, i8** %17, align 8
  %275 = getelementptr inbounds i8, i8* %274, i64 0
  %276 = load i8, i8* %275, align 1
  %277 = sext i8 %276 to i32
  %278 = load i8*, i8** %17, align 8
  %279 = load i8*, i8** %14, align 8
  %280 = load i8**, i8*** %8, align 8
  %281 = load i8*, i8** %280, align 8
  %282 = ptrtoint i8* %279 to i64
  %283 = ptrtoint i8* %281 to i64
  %284 = sub i64 %282, %283
  %285 = sub nsw i64 %284, 1
  %286 = getelementptr inbounds i8, i8* %278, i64 %285
  %287 = load i8, i8* %286, align 1
  %288 = sext i8 %287 to i32
  %289 = icmp eq i32 %277, %288
  br i1 %289, label %290, label %309

290:                                              ; preds = %273
  %291 = call i32 (...) @get_gdb_completer_quote_characters()
  %292 = load i8*, i8** %17, align 8
  %293 = getelementptr inbounds i8, i8* %292, i64 0
  %294 = load i8, i8* %293, align 1
  %295 = call i32* @strchr(i32 %291, i8 signext %294)
  %296 = icmp ne i32* %295, null
  br i1 %296, label %297, label %309

297:                                              ; preds = %290
  %298 = load i8*, i8** %17, align 8
  %299 = load i8*, i8** %14, align 8
  %300 = load i8**, i8*** %8, align 8
  %301 = load i8*, i8** %300, align 8
  %302 = ptrtoint i8* %299 to i64
  %303 = ptrtoint i8* %301 to i64
  %304 = sub i64 %302, %303
  %305 = sub nsw i64 %304, 1
  %306 = getelementptr inbounds i8, i8* %298, i64 %305
  store i8 0, i8* %306, align 1
  %307 = load i8*, i8** %17, align 8
  %308 = getelementptr inbounds i8, i8* %307, i32 1
  store i8* %308, i8** %17, align 8
  br label %309

309:                                              ; preds = %297, %290, %273, %267, %233
  br label %310

310:                                              ; preds = %322, %309
  %311 = load i8*, i8** %14, align 8
  %312 = load i8, i8* %311, align 1
  %313 = sext i8 %312 to i32
  %314 = icmp eq i32 %313, 32
  br i1 %314, label %320, label %315

315:                                              ; preds = %310
  %316 = load i8*, i8** %14, align 8
  %317 = load i8, i8* %316, align 1
  %318 = sext i8 %317 to i32
  %319 = icmp eq i32 %318, 9
  br label %320

320:                                              ; preds = %315, %310
  %321 = phi i1 [ true, %310 ], [ %319, %315 ]
  br i1 %321, label %322, label %325

322:                                              ; preds = %320
  %323 = load i8*, i8** %14, align 8
  %324 = getelementptr inbounds i8, i8* %323, i32 1
  store i8* %324, i8** %14, align 8
  br label %310

325:                                              ; preds = %320
  %326 = load i8*, i8** %14, align 8
  %327 = load i8**, i8*** %8, align 8
  store i8* %326, i8** %327, align 8
  %328 = load i8*, i8** %17, align 8
  %329 = load i8, i8* %328, align 1
  %330 = sext i8 %329 to i32
  %331 = icmp eq i32 %330, 36
  br i1 %331, label %332, label %340

332:                                              ; preds = %325
  %333 = load i8*, i8** %17, align 8
  %334 = load i32, i32* %9, align 4
  %335 = load %struct.symtab*, %struct.symtab** %10, align 8
  %336 = load i8***, i8**** %12, align 8
  %337 = load %struct.symtab*, %struct.symtab** %16, align 8
  %338 = call i32* @decode_dollar(i8* %333, i32 %334, %struct.symtab* %335, i8*** %336, %struct.symtab* %337)
  %339 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %7, i32 0, i32 0
  store i32* %338, i32** %339, align 8
  br label %348

340:                                              ; preds = %325
  %341 = load i8*, i8** %17, align 8
  %342 = load i32, i32* %9, align 4
  %343 = load i8***, i8**** %12, align 8
  %344 = load %struct.symtab*, %struct.symtab** %16, align 8
  %345 = load i32*, i32** %13, align 8
  %346 = call i32* @decode_variable(i8* %341, i32 %342, i8*** %343, %struct.symtab* %344, i32* %345)
  %347 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %7, i32 0, i32 0
  store i32* %346, i32** %347, align 8
  br label %348

348:                                              ; preds = %340, %332, %169, %99, %63, %37
  %349 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %7, i32 0, i32 0
  %350 = load i32*, i32** %349, align 8
  ret i32* %350
}

declare dso_local i32 @initialize_defaults(%struct.symtab**, i32*) #1

declare dso_local i32* @decode_indirect(i8**) #1

declare dso_local i32 @set_flags(i8*, i32*, i8**) #1

declare dso_local i8* @locate_first_half(i8**, i32*) #1

declare dso_local i64 @is_objc_method_format(i8*) #1

declare dso_local i32* @decode_objc(i8**, i32, i32*, i8***, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @decode_compound(i8**, i32, i8***, i8*, i8*) #1

declare dso_local %struct.symtab* @symtab_from_filename(i8**, i8*, i32, i32*) #1

declare dso_local i32* @decode_all_digits(i8**, %struct.symtab*, i32, i8***, %struct.symtab*, i8*) #1

declare dso_local i8* @skip_quoted(i8*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i8* @skip_quoted_chars(i8*, i32*, i8*) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32* @strchr(i32, i8 signext) #1

declare dso_local i32 @get_gdb_completer_quote_characters(...) #1

declare dso_local i32* @decode_dollar(i8*, i32, %struct.symtab*, i8***, %struct.symtab*) #1

declare dso_local i32* @decode_variable(i8*, i32, i8***, %struct.symtab*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
