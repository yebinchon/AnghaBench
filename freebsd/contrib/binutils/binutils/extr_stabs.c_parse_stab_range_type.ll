; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_parse_stab_range_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_parse_stab_range_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_handle = type { i32 }

@DEBUG_TYPE_NULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"01000000000000000000000;\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"0777777777777777777777;\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"01777777777777777777777;\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"numeric overflow\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"long long int\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"long long unsigned int\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"missing index type\00", align 1
@LLHIGH = common dso_local global i32 0, align 4
@LLLOW = common dso_local global i32 0, align 4
@ULLHIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, %struct.stab_handle*, i8*, i8**, i32*)* @parse_stab_range_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_stab_range_type(i8* %0, %struct.stab_handle* %1, i8* %2, i8** %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stab_handle*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [2 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store %struct.stab_handle* %1, %struct.stab_handle** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  %22 = load i8**, i8*** %10, align 8
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %12, align 8
  %24 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %24, i64* %15, align 8
  %25 = load i8**, i8*** %10, align 8
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %27 = call i32 @parse_stab_type_number(i8** %25, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %5
  %30 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %30, i64* %6, align 8
  br label %355

31:                                               ; preds = %5
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %11, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %11, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %40, %43
  br label %45

45:                                               ; preds = %38, %31
  %46 = phi i1 [ false, %31 ], [ %44, %38 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %14, align 4
  %48 = load i8**, i8*** %10, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 61
  br i1 %52, label %53, label %66

53:                                               ; preds = %45
  %54 = load i8*, i8** %12, align 8
  %55 = load i8**, i8*** %10, align 8
  store i8* %54, i8** %55, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load %struct.stab_handle*, %struct.stab_handle** %8, align 8
  %58 = load i8**, i8*** %10, align 8
  %59 = call i64 @parse_stab_type(i8* %56, %struct.stab_handle* %57, i8* null, i8** %58, i64** null)
  store i64 %59, i64* %15, align 8
  %60 = load i64, i64* %15, align 8
  %61 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %64, i64* %6, align 8
  br label %355

65:                                               ; preds = %53
  br label %66

66:                                               ; preds = %65, %45
  %67 = load i8**, i8*** %10, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 59
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load i8**, i8*** %10, align 8
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %73, align 8
  br label %76

76:                                               ; preds = %72, %66
  %77 = load i8**, i8*** %10, align 8
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %16, align 8
  %79 = load i8**, i8*** %10, align 8
  %80 = call i32 @parse_number(i8** %79, i32* %20)
  store i32 %80, i32* %18, align 4
  %81 = load i8**, i8*** %10, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 59
  br i1 %85, label %86, label %90

86:                                               ; preds = %76
  %87 = load i8*, i8** %12, align 8
  %88 = call i32 @bad_stab(i8* %87)
  %89 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %89, i64* %6, align 8
  br label %355

90:                                               ; preds = %76
  %91 = load i8**, i8*** %10, align 8
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %91, align 8
  %94 = load i8**, i8*** %10, align 8
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %17, align 8
  %96 = load i8**, i8*** %10, align 8
  %97 = call i32 @parse_number(i8** %96, i32* %21)
  store i32 %97, i32* %19, align 4
  %98 = load i8**, i8*** %10, align 8
  %99 = load i8*, i8** %98, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 59
  br i1 %102, label %103, label %107

103:                                              ; preds = %90
  %104 = load i8*, i8** %12, align 8
  %105 = call i32 @bad_stab(i8* %104)
  %106 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %106, i64* %6, align 8
  br label %355

107:                                              ; preds = %90
  %108 = load i8**, i8*** %10, align 8
  %109 = load i8*, i8** %108, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %108, align 8
  %111 = load i32, i32* %20, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %107
  %114 = load i32, i32* %21, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %151

116:                                              ; preds = %113, %107
  %117 = load i64, i64* %15, align 8
  %118 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %147

120:                                              ; preds = %116
  %121 = load i8*, i8** %16, align 8
  %122 = call i64 @CONST_STRNEQ(i8* %121, i32 ptrtoint ([25 x i8]* @.str to i32))
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %120
  %125 = load i8*, i8** %17, align 8
  %126 = call i64 @CONST_STRNEQ(i8* %125, i32 ptrtoint ([24 x i8]* @.str.1 to i32))
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = load i8*, i8** %7, align 8
  %130 = load i32, i32* @FALSE, align 4
  %131 = call i64 @debug_make_int_type(i8* %129, i32 8, i32 %130)
  store i64 %131, i64* %6, align 8
  br label %355

132:                                              ; preds = %124, %120
  %133 = load i32, i32* %20, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %146, label %135

135:                                              ; preds = %132
  %136 = load i32, i32* %18, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %135
  %139 = load i8*, i8** %17, align 8
  %140 = call i64 @CONST_STRNEQ(i8* %139, i32 ptrtoint ([25 x i8]* @.str.2 to i32))
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = load i8*, i8** %7, align 8
  %144 = load i32, i32* @TRUE, align 4
  %145 = call i64 @debug_make_int_type(i8* %143, i32 8, i32 %144)
  store i64 %145, i64* %6, align 8
  br label %355

146:                                              ; preds = %138, %135, %132
  br label %147

147:                                              ; preds = %146, %116
  %148 = load i8*, i8** %12, align 8
  %149 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %150 = call i32 @warn_stab(i8* %148, i32 %149)
  br label %151

151:                                              ; preds = %147, %113
  %152 = load i64, i64* %15, align 8
  %153 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %327

155:                                              ; preds = %151
  %156 = load i32, i32* %14, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %155
  %159 = load i32, i32* %18, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %158
  %162 = load i32, i32* %19, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i8*, i8** %7, align 8
  %166 = call i64 @debug_make_void_type(i8* %165)
  store i64 %166, i64* %6, align 8
  br label %355

167:                                              ; preds = %161, %158, %155
  %168 = load i32, i32* %14, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %180

170:                                              ; preds = %167
  %171 = load i32, i32* %19, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %170
  %174 = load i32, i32* %18, align 4
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %173
  %177 = load i8*, i8** %7, align 8
  %178 = load i32, i32* %18, align 4
  %179 = call i64 @debug_make_complex_type(i8* %177, i32 %178)
  store i64 %179, i64* %6, align 8
  br label %355

180:                                              ; preds = %173, %170, %167
  %181 = load i32, i32* %19, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %190

183:                                              ; preds = %180
  %184 = load i32, i32* %18, align 4
  %185 = icmp sgt i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %183
  %187 = load i8*, i8** %7, align 8
  %188 = load i32, i32* %18, align 4
  %189 = call i64 @debug_make_float_type(i8* %187, i32 %188)
  store i64 %189, i64* %6, align 8
  br label %355

190:                                              ; preds = %183, %180
  %191 = load i32, i32* %18, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %221

193:                                              ; preds = %190
  %194 = load i32, i32* %19, align 4
  %195 = icmp eq i32 %194, -1
  br i1 %195, label %196, label %221

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %199, label %217

199:                                              ; preds = %196
  %200 = load i8*, i8** %9, align 8
  %201 = call i64 @strcmp(i8* %200, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %199
  %204 = load i8*, i8** %7, align 8
  %205 = load i32, i32* @FALSE, align 4
  %206 = call i64 @debug_make_int_type(i8* %204, i32 8, i32 %205)
  store i64 %206, i64* %6, align 8
  br label %355

207:                                              ; preds = %199
  %208 = load i8*, i8** %9, align 8
  %209 = call i64 @strcmp(i8* %208, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %207
  %212 = load i8*, i8** %7, align 8
  %213 = load i32, i32* @TRUE, align 4
  %214 = call i64 @debug_make_int_type(i8* %212, i32 8, i32 %213)
  store i64 %214, i64* %6, align 8
  br label %355

215:                                              ; preds = %207
  br label %216

216:                                              ; preds = %215
  br label %217

217:                                              ; preds = %216, %196
  %218 = load i8*, i8** %7, align 8
  %219 = load i32, i32* @TRUE, align 4
  %220 = call i64 @debug_make_int_type(i8* %218, i32 4, i32 %219)
  store i64 %220, i64* %6, align 8
  br label %355

221:                                              ; preds = %193, %190
  %222 = load i32, i32* %14, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %234

224:                                              ; preds = %221
  %225 = load i32, i32* %18, align 4
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %234

227:                                              ; preds = %224
  %228 = load i32, i32* %19, align 4
  %229 = icmp eq i32 %228, 127
  br i1 %229, label %230, label %234

230:                                              ; preds = %227
  %231 = load i8*, i8** %7, align 8
  %232 = load i32, i32* @FALSE, align 4
  %233 = call i64 @debug_make_int_type(i8* %231, i32 1, i32 %232)
  store i64 %233, i64* %6, align 8
  br label %355

234:                                              ; preds = %227, %224, %221
  %235 = load i32, i32* %18, align 4
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %271

237:                                              ; preds = %234
  %238 = load i32, i32* %19, align 4
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %237
  %241 = load i8*, i8** %7, align 8
  %242 = load i32, i32* %19, align 4
  %243 = sub nsw i32 0, %242
  %244 = load i32, i32* @TRUE, align 4
  %245 = call i64 @debug_make_int_type(i8* %241, i32 %243, i32 %244)
  store i64 %245, i64* %6, align 8
  br label %355

246:                                              ; preds = %237
  %247 = load i32, i32* %19, align 4
  %248 = icmp eq i32 %247, 255
  br i1 %248, label %249, label %253

249:                                              ; preds = %246
  %250 = load i8*, i8** %7, align 8
  %251 = load i32, i32* @TRUE, align 4
  %252 = call i64 @debug_make_int_type(i8* %250, i32 1, i32 %251)
  store i64 %252, i64* %6, align 8
  br label %355

253:                                              ; preds = %246
  %254 = load i32, i32* %19, align 4
  %255 = icmp eq i32 %254, 65535
  br i1 %255, label %256, label %260

256:                                              ; preds = %253
  %257 = load i8*, i8** %7, align 8
  %258 = load i32, i32* @TRUE, align 4
  %259 = call i64 @debug_make_int_type(i8* %257, i32 2, i32 %258)
  store i64 %259, i64* %6, align 8
  br label %355

260:                                              ; preds = %253
  %261 = load i32, i32* %19, align 4
  %262 = icmp eq i32 %261, -1
  br i1 %262, label %263, label %267

263:                                              ; preds = %260
  %264 = load i8*, i8** %7, align 8
  %265 = load i32, i32* @TRUE, align 4
  %266 = call i64 @debug_make_int_type(i8* %264, i32 4, i32 %265)
  store i64 %266, i64* %6, align 8
  br label %355

267:                                              ; preds = %260
  br label %268

268:                                              ; preds = %267
  br label %269

269:                                              ; preds = %268
  br label %270

270:                                              ; preds = %269
  br label %326

271:                                              ; preds = %234
  %272 = load i32, i32* %19, align 4
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %289

274:                                              ; preds = %271
  %275 = load i32, i32* %18, align 4
  %276 = icmp slt i32 %275, 0
  br i1 %276, label %277, label %289

277:                                              ; preds = %274
  %278 = load i32, i32* %14, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %283, label %280

280:                                              ; preds = %277
  %281 = load i32, i32* %18, align 4
  %282 = icmp eq i32 %281, -8
  br i1 %282, label %283, label %289

283:                                              ; preds = %280, %277
  %284 = load i8*, i8** %7, align 8
  %285 = load i32, i32* %18, align 4
  %286 = sub nsw i32 0, %285
  %287 = load i32, i32* @TRUE, align 4
  %288 = call i64 @debug_make_int_type(i8* %284, i32 %286, i32 %287)
  store i64 %288, i64* %6, align 8
  br label %355

289:                                              ; preds = %280, %274, %271
  %290 = load i32, i32* %18, align 4
  %291 = load i32, i32* %19, align 4
  %292 = sub nsw i32 0, %291
  %293 = sub nsw i32 %292, 1
  %294 = icmp eq i32 %290, %293
  br i1 %294, label %300, label %295

295:                                              ; preds = %289
  %296 = load i32, i32* %18, align 4
  %297 = load i32, i32* %19, align 4
  %298 = add nsw i32 %297, 1
  %299 = icmp eq i32 %296, %298
  br i1 %299, label %300, label %324

300:                                              ; preds = %295, %289
  %301 = load i32, i32* %19, align 4
  %302 = icmp eq i32 %301, 127
  br i1 %302, label %303, label %307

303:                                              ; preds = %300
  %304 = load i8*, i8** %7, align 8
  %305 = load i32, i32* @FALSE, align 4
  %306 = call i64 @debug_make_int_type(i8* %304, i32 1, i32 %305)
  store i64 %306, i64* %6, align 8
  br label %355

307:                                              ; preds = %300
  %308 = load i32, i32* %19, align 4
  %309 = icmp eq i32 %308, 32767
  br i1 %309, label %310, label %314

310:                                              ; preds = %307
  %311 = load i8*, i8** %7, align 8
  %312 = load i32, i32* @FALSE, align 4
  %313 = call i64 @debug_make_int_type(i8* %311, i32 2, i32 %312)
  store i64 %313, i64* %6, align 8
  br label %355

314:                                              ; preds = %307
  %315 = load i32, i32* %19, align 4
  %316 = icmp eq i32 %315, 2147483647
  br i1 %316, label %317, label %321

317:                                              ; preds = %314
  %318 = load i8*, i8** %7, align 8
  %319 = load i32, i32* @FALSE, align 4
  %320 = call i64 @debug_make_int_type(i8* %318, i32 4, i32 %319)
  store i64 %320, i64* %6, align 8
  br label %355

321:                                              ; preds = %314
  br label %322

322:                                              ; preds = %321
  br label %323

323:                                              ; preds = %322
  br label %324

324:                                              ; preds = %323, %295
  br label %325

325:                                              ; preds = %324
  br label %326

326:                                              ; preds = %325, %270
  br label %327

327:                                              ; preds = %326, %151
  %328 = load i32, i32* %14, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %334

330:                                              ; preds = %327
  %331 = load i8*, i8** %12, align 8
  %332 = call i32 @bad_stab(i8* %331)
  %333 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %333, i64* %6, align 8
  br label %355

334:                                              ; preds = %327
  %335 = load i8*, i8** %7, align 8
  %336 = load %struct.stab_handle*, %struct.stab_handle** %8, align 8
  %337 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %338 = call i64 @stab_find_type(i8* %335, %struct.stab_handle* %336, i32* %337)
  store i64 %338, i64* %15, align 8
  %339 = load i64, i64* %15, align 8
  %340 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  %341 = icmp eq i64 %339, %340
  br i1 %341, label %342, label %349

342:                                              ; preds = %334
  %343 = load i8*, i8** %12, align 8
  %344 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %345 = call i32 @warn_stab(i8* %343, i32 %344)
  %346 = load i8*, i8** %7, align 8
  %347 = load i32, i32* @FALSE, align 4
  %348 = call i64 @debug_make_int_type(i8* %346, i32 4, i32 %347)
  store i64 %348, i64* %15, align 8
  br label %349

349:                                              ; preds = %342, %334
  %350 = load i8*, i8** %7, align 8
  %351 = load i64, i64* %15, align 8
  %352 = load i32, i32* %18, align 4
  %353 = load i32, i32* %19, align 4
  %354 = call i64 @debug_make_range_type(i8* %350, i64 %351, i32 %352, i32 %353)
  store i64 %354, i64* %6, align 8
  br label %355

355:                                              ; preds = %349, %330, %317, %310, %303, %283, %263, %256, %249, %240, %230, %217, %211, %203, %186, %176, %164, %142, %128, %103, %86, %63, %29
  %356 = load i64, i64* %6, align 8
  ret i64 %356
}

declare dso_local i32 @parse_stab_type_number(i8**, i32*) #1

declare dso_local i64 @parse_stab_type(i8*, %struct.stab_handle*, i8*, i8**, i64**) #1

declare dso_local i32 @parse_number(i8**, i32*) #1

declare dso_local i32 @bad_stab(i8*) #1

declare dso_local i64 @CONST_STRNEQ(i8*, i32) #1

declare dso_local i64 @debug_make_int_type(i8*, i32, i32) #1

declare dso_local i32 @warn_stab(i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @debug_make_void_type(i8*) #1

declare dso_local i64 @debug_make_complex_type(i8*, i32) #1

declare dso_local i64 @debug_make_float_type(i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @stab_find_type(i8*, %struct.stab_handle*, i32*) #1

declare dso_local i64 @debug_make_range_type(i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
