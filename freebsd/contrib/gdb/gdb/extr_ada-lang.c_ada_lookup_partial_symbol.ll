; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_lookup_partial_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_lookup_partial_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.partial_symbol = type { i32 }
%struct.partial_symtab = type { i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.partial_symbol** }
%struct.TYPE_4__ = type { %struct.partial_symbol** }

@.str = private unnamed_addr constant [6 x i8] c"_ada_\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.partial_symbol* (%struct.partial_symtab*, i8*, i32, i64, i32)* @ada_lookup_partial_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.partial_symbol* @ada_lookup_partial_symbol(%struct.partial_symtab* %0, i8* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.partial_symbol*, align 8
  %7 = alloca %struct.partial_symtab*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.partial_symbol**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.partial_symbol*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.partial_symbol*, align 8
  %20 = alloca %struct.partial_symbol*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.partial_symbol*, align 8
  %25 = alloca %struct.partial_symbol*, align 8
  %26 = alloca i32, align 4
  store %struct.partial_symtab* %0, %struct.partial_symtab** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @strlen(i8* %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %5
  %32 = load %struct.partial_symtab*, %struct.partial_symtab** %7, align 8
  %33 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  br label %39

35:                                               ; preds = %5
  %36 = load %struct.partial_symtab*, %struct.partial_symtab** %7, align 8
  %37 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i32 [ %34, %31 ], [ %38, %35 ]
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store %struct.partial_symbol* null, %struct.partial_symbol** %6, align 8
  br label %336

44:                                               ; preds = %39
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %44
  %48 = load %struct.partial_symtab*, %struct.partial_symtab** %7, align 8
  %49 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %48, i32 0, i32 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.partial_symbol**, %struct.partial_symbol*** %52, align 8
  %54 = load %struct.partial_symtab*, %struct.partial_symtab** %7, align 8
  %55 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.partial_symbol*, %struct.partial_symbol** %53, i64 %57
  br label %71

59:                                               ; preds = %44
  %60 = load %struct.partial_symtab*, %struct.partial_symtab** %7, align 8
  %61 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %60, i32 0, i32 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load %struct.partial_symbol**, %struct.partial_symbol*** %64, align 8
  %66 = load %struct.partial_symtab*, %struct.partial_symtab** %7, align 8
  %67 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.partial_symbol*, %struct.partial_symbol** %65, i64 %69
  br label %71

71:                                               ; preds = %59, %47
  %72 = phi %struct.partial_symbol** [ %58, %47 ], [ %70, %59 ]
  store %struct.partial_symbol** %72, %struct.partial_symbol*** %12, align 8
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %104

75:                                               ; preds = %71
  store i32 0, i32* %15, align 4
  br label %76

76:                                               ; preds = %100, %75
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %103

80:                                               ; preds = %76
  %81 = load %struct.partial_symbol**, %struct.partial_symbol*** %12, align 8
  %82 = load i32, i32* %15, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.partial_symbol*, %struct.partial_symbol** %81, i64 %83
  %85 = load %struct.partial_symbol*, %struct.partial_symbol** %84, align 8
  store %struct.partial_symbol* %85, %struct.partial_symbol** %16, align 8
  %86 = load %struct.partial_symbol*, %struct.partial_symbol** %16, align 8
  %87 = call i64 @SYMBOL_DOMAIN(%struct.partial_symbol* %86)
  %88 = load i64, i64* %10, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %80
  %91 = load i8*, i8** %8, align 8
  %92 = load i32, i32* %13, align 4
  %93 = load %struct.partial_symbol*, %struct.partial_symbol** %16, align 8
  %94 = call i8* @DEPRECATED_SYMBOL_NAME(%struct.partial_symbol* %93)
  %95 = call i64 @wild_match(i8* %91, i32 %92, i8* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load %struct.partial_symbol*, %struct.partial_symbol** %16, align 8
  store %struct.partial_symbol* %98, %struct.partial_symbol** %6, align 8
  br label %336

99:                                               ; preds = %90, %80
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %15, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %15, align 4
  br label %76

103:                                              ; preds = %76
  store %struct.partial_symbol* null, %struct.partial_symbol** %6, align 8
  br label %336

104:                                              ; preds = %71
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %167

107:                                              ; preds = %104
  store i32 0, i32* %15, align 4
  %108 = load i32, i32* %14, align 4
  %109 = sub nsw i32 %108, 1
  store i32 %109, i32* %17, align 4
  br label %110

110:                                              ; preds = %165, %107
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* %15, align 4
  %113 = sub nsw i32 %111, %112
  %114 = icmp sgt i32 %113, 4
  br i1 %114, label %115, label %166

115:                                              ; preds = %110
  %116 = load i32, i32* %17, align 4
  %117 = load i32, i32* %15, align 4
  %118 = add nsw i32 %116, %117
  %119 = ashr i32 %118, 1
  store i32 %119, i32* %18, align 4
  %120 = load %struct.partial_symbol**, %struct.partial_symbol*** %12, align 8
  %121 = load i32, i32* %18, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.partial_symbol*, %struct.partial_symbol** %120, i64 %122
  %124 = load %struct.partial_symbol*, %struct.partial_symbol** %123, align 8
  store %struct.partial_symbol* %124, %struct.partial_symbol** %19, align 8
  %125 = load %struct.partial_symbol*, %struct.partial_symbol** %19, align 8
  %126 = call i8* @DEPRECATED_SYMBOL_NAME(%struct.partial_symbol* %125)
  %127 = getelementptr inbounds i8, i8* %126, i64 0
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = load i8*, i8** %8, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 0
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp slt i32 %129, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %115
  %136 = load i32, i32* %18, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %15, align 4
  br label %165

138:                                              ; preds = %115
  %139 = load %struct.partial_symbol*, %struct.partial_symbol** %19, align 8
  %140 = call i8* @DEPRECATED_SYMBOL_NAME(%struct.partial_symbol* %139)
  %141 = getelementptr inbounds i8, i8* %140, i64 0
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = load i8*, i8** %8, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 0
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp sgt i32 %143, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %138
  %150 = load i32, i32* %18, align 4
  %151 = sub nsw i32 %150, 1
  store i32 %151, i32* %17, align 4
  br label %164

152:                                              ; preds = %138
  %153 = load %struct.partial_symbol*, %struct.partial_symbol** %19, align 8
  %154 = call i8* @DEPRECATED_SYMBOL_NAME(%struct.partial_symbol* %153)
  %155 = load i8*, i8** %8, align 8
  %156 = call i64 @strcmp(i8* %154, i8* %155)
  %157 = icmp slt i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %152
  %159 = load i32, i32* %18, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %15, align 4
  br label %163

161:                                              ; preds = %152
  %162 = load i32, i32* %18, align 4
  store i32 %162, i32* %17, align 4
  br label %163

163:                                              ; preds = %161, %158
  br label %164

164:                                              ; preds = %163, %149
  br label %165

165:                                              ; preds = %164, %135
  br label %110

166:                                              ; preds = %110
  br label %168

167:                                              ; preds = %104
  store i32 0, i32* %15, align 4
  br label %168

168:                                              ; preds = %167, %166
  br label %169

169:                                              ; preds = %211, %168
  %170 = load i32, i32* %15, align 4
  %171 = load i32, i32* %14, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %214

173:                                              ; preds = %169
  %174 = load %struct.partial_symbol**, %struct.partial_symbol*** %12, align 8
  %175 = load i32, i32* %15, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.partial_symbol*, %struct.partial_symbol** %174, i64 %176
  %178 = load %struct.partial_symbol*, %struct.partial_symbol** %177, align 8
  store %struct.partial_symbol* %178, %struct.partial_symbol** %20, align 8
  %179 = load %struct.partial_symbol*, %struct.partial_symbol** %20, align 8
  %180 = call i64 @SYMBOL_DOMAIN(%struct.partial_symbol* %179)
  %181 = load i64, i64* %10, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %211

183:                                              ; preds = %173
  %184 = load i8*, i8** %8, align 8
  %185 = load %struct.partial_symbol*, %struct.partial_symbol** %20, align 8
  %186 = call i8* @DEPRECATED_SYMBOL_NAME(%struct.partial_symbol* %185)
  %187 = load i32, i32* %13, align 4
  %188 = call i32 @strncmp(i8* %184, i8* %186, i32 %187)
  store i32 %188, i32* %21, align 4
  %189 = load i32, i32* %21, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %183
  %192 = load i32, i32* %9, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %191
  br label %214

195:                                              ; preds = %191
  br label %210

196:                                              ; preds = %183
  %197 = load i32, i32* %21, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %209

199:                                              ; preds = %196
  %200 = load %struct.partial_symbol*, %struct.partial_symbol** %20, align 8
  %201 = call i8* @DEPRECATED_SYMBOL_NAME(%struct.partial_symbol* %200)
  %202 = load i32, i32* %13, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %201, i64 %203
  %205 = call i64 @is_name_suffix(i8* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %199
  %208 = load %struct.partial_symbol*, %struct.partial_symbol** %20, align 8
  store %struct.partial_symbol* %208, %struct.partial_symbol** %6, align 8
  br label %336

209:                                              ; preds = %199, %196
  br label %210

210:                                              ; preds = %209, %195
  br label %211

211:                                              ; preds = %210, %173
  %212 = load i32, i32* %15, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %15, align 4
  br label %169

214:                                              ; preds = %194, %169
  %215 = load i32, i32* %9, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %268

217:                                              ; preds = %214
  store i32 0, i32* %15, align 4
  %218 = load i32, i32* %14, align 4
  %219 = sub nsw i32 %218, 1
  store i32 %219, i32* %22, align 4
  br label %220

220:                                              ; preds = %266, %217
  %221 = load i32, i32* %22, align 4
  %222 = load i32, i32* %15, align 4
  %223 = sub nsw i32 %221, %222
  %224 = icmp sgt i32 %223, 4
  br i1 %224, label %225, label %267

225:                                              ; preds = %220
  %226 = load i32, i32* %22, align 4
  %227 = load i32, i32* %15, align 4
  %228 = add nsw i32 %226, %227
  %229 = ashr i32 %228, 1
  store i32 %229, i32* %23, align 4
  %230 = load %struct.partial_symbol**, %struct.partial_symbol*** %12, align 8
  %231 = load i32, i32* %23, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.partial_symbol*, %struct.partial_symbol** %230, i64 %232
  %234 = load %struct.partial_symbol*, %struct.partial_symbol** %233, align 8
  store %struct.partial_symbol* %234, %struct.partial_symbol** %24, align 8
  %235 = load %struct.partial_symbol*, %struct.partial_symbol** %24, align 8
  %236 = call i8* @DEPRECATED_SYMBOL_NAME(%struct.partial_symbol* %235)
  %237 = getelementptr inbounds i8, i8* %236, i64 0
  %238 = load i8, i8* %237, align 1
  %239 = sext i8 %238 to i32
  %240 = icmp slt i32 %239, 95
  br i1 %240, label %241, label %244

241:                                              ; preds = %225
  %242 = load i32, i32* %23, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %15, align 4
  br label %266

244:                                              ; preds = %225
  %245 = load %struct.partial_symbol*, %struct.partial_symbol** %24, align 8
  %246 = call i8* @DEPRECATED_SYMBOL_NAME(%struct.partial_symbol* %245)
  %247 = getelementptr inbounds i8, i8* %246, i64 0
  %248 = load i8, i8* %247, align 1
  %249 = sext i8 %248 to i32
  %250 = icmp sgt i32 %249, 95
  br i1 %250, label %251, label %254

251:                                              ; preds = %244
  %252 = load i32, i32* %23, align 4
  %253 = sub nsw i32 %252, 1
  store i32 %253, i32* %22, align 4
  br label %265

254:                                              ; preds = %244
  %255 = load %struct.partial_symbol*, %struct.partial_symbol** %24, align 8
  %256 = call i8* @DEPRECATED_SYMBOL_NAME(%struct.partial_symbol* %255)
  %257 = call i64 @strcmp(i8* %256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %258 = icmp slt i64 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %254
  %260 = load i32, i32* %23, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %15, align 4
  br label %264

262:                                              ; preds = %254
  %263 = load i32, i32* %23, align 4
  store i32 %263, i32* %22, align 4
  br label %264

264:                                              ; preds = %262, %259
  br label %265

265:                                              ; preds = %264, %251
  br label %266

266:                                              ; preds = %265, %241
  br label %220

267:                                              ; preds = %220
  br label %269

268:                                              ; preds = %214
  store i32 0, i32* %15, align 4
  br label %269

269:                                              ; preds = %268, %267
  br label %270

270:                                              ; preds = %331, %269
  %271 = load i32, i32* %15, align 4
  %272 = load i32, i32* %14, align 4
  %273 = icmp slt i32 %271, %272
  br i1 %273, label %274, label %334

274:                                              ; preds = %270
  %275 = load %struct.partial_symbol**, %struct.partial_symbol*** %12, align 8
  %276 = load i32, i32* %15, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.partial_symbol*, %struct.partial_symbol** %275, i64 %277
  %279 = load %struct.partial_symbol*, %struct.partial_symbol** %278, align 8
  store %struct.partial_symbol* %279, %struct.partial_symbol** %25, align 8
  %280 = load %struct.partial_symbol*, %struct.partial_symbol** %25, align 8
  %281 = call i64 @SYMBOL_DOMAIN(%struct.partial_symbol* %280)
  %282 = load i64, i64* %10, align 8
  %283 = icmp eq i64 %281, %282
  br i1 %283, label %284, label %331

284:                                              ; preds = %274
  %285 = load %struct.partial_symbol*, %struct.partial_symbol** %25, align 8
  %286 = call i8* @DEPRECATED_SYMBOL_NAME(%struct.partial_symbol* %285)
  %287 = getelementptr inbounds i8, i8* %286, i64 0
  %288 = load i8, i8* %287, align 1
  %289 = sext i8 %288 to i32
  %290 = sub nsw i32 95, %289
  store i32 %290, i32* %26, align 4
  %291 = load i32, i32* %26, align 4
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %307

293:                                              ; preds = %284
  %294 = load %struct.partial_symbol*, %struct.partial_symbol** %25, align 8
  %295 = call i8* @DEPRECATED_SYMBOL_NAME(%struct.partial_symbol* %294)
  %296 = call i32 @strncmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %295, i32 5)
  store i32 %296, i32* %26, align 4
  %297 = load i32, i32* %26, align 4
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %306

299:                                              ; preds = %293
  %300 = load i8*, i8** %8, align 8
  %301 = load %struct.partial_symbol*, %struct.partial_symbol** %25, align 8
  %302 = call i8* @DEPRECATED_SYMBOL_NAME(%struct.partial_symbol* %301)
  %303 = getelementptr inbounds i8, i8* %302, i64 5
  %304 = load i32, i32* %13, align 4
  %305 = call i32 @strncmp(i8* %300, i8* %303, i32 %304)
  store i32 %305, i32* %26, align 4
  br label %306

306:                                              ; preds = %299, %293
  br label %307

307:                                              ; preds = %306, %284
  %308 = load i32, i32* %26, align 4
  %309 = icmp slt i32 %308, 0
  br i1 %309, label %310, label %315

310:                                              ; preds = %307
  %311 = load i32, i32* %9, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %310
  br label %334

314:                                              ; preds = %310
  br label %330

315:                                              ; preds = %307
  %316 = load i32, i32* %26, align 4
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %329

318:                                              ; preds = %315
  %319 = load %struct.partial_symbol*, %struct.partial_symbol** %25, align 8
  %320 = call i8* @DEPRECATED_SYMBOL_NAME(%struct.partial_symbol* %319)
  %321 = load i32, i32* %13, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i8, i8* %320, i64 %322
  %324 = getelementptr inbounds i8, i8* %323, i64 5
  %325 = call i64 @is_name_suffix(i8* %324)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %329

327:                                              ; preds = %318
  %328 = load %struct.partial_symbol*, %struct.partial_symbol** %25, align 8
  store %struct.partial_symbol* %328, %struct.partial_symbol** %6, align 8
  br label %336

329:                                              ; preds = %318, %315
  br label %330

330:                                              ; preds = %329, %314
  br label %331

331:                                              ; preds = %330, %274
  %332 = load i32, i32* %15, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %15, align 4
  br label %270

334:                                              ; preds = %313, %270
  br label %335

335:                                              ; preds = %334
  store %struct.partial_symbol* null, %struct.partial_symbol** %6, align 8
  br label %336

336:                                              ; preds = %335, %327, %207, %103, %97, %43
  %337 = load %struct.partial_symbol*, %struct.partial_symbol** %6, align 8
  ret %struct.partial_symbol* %337
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @SYMBOL_DOMAIN(%struct.partial_symbol*) #1

declare dso_local i64 @wild_match(i8*, i32, i8*) #1

declare dso_local i8* @DEPRECATED_SYMBOL_NAME(%struct.partial_symbol*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @is_name_suffix(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
