; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_demangle.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_demangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8* }

@ada_demangle.demangling_buffer = internal global i8* null, align 8
@ada_demangle.demangling_buffer_size = internal global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"_ada_\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"___\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"TKB\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@ada_opname_table = common dso_local global %struct.TYPE_2__* null, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"TK__\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"<%s>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ada_demangle(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i64 @DEPRECATED_STREQN(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 5
  store i8* %17, i8** %3, align 8
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 95
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 60
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %18
  br label %433

31:                                               ; preds = %24
  %32 = load i8*, i8** %3, align 8
  %33 = call i8* @strstr(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %33, i8** %7, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 @strlen(i8* %37)
  store i32 %38, i32* %6, align 4
  br label %54

39:                                               ; preds = %31
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 3
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 88
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load i8*, i8** %7, align 8
  %47 = load i8*, i8** %3, align 8
  %48 = ptrtoint i8* %46 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %6, align 4
  br label %53

52:                                               ; preds = %39
  br label %433

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %36
  %55 = load i32, i32* %6, align 4
  %56 = icmp sgt i32 %55, 3
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load i8*, i8** %3, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = getelementptr inbounds i8, i8* %61, i64 -3
  %63 = call i64 @DEPRECATED_STREQ(i8* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load i32, i32* %6, align 4
  %67 = sub nsw i32 %66, 3
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %65, %57, %54
  %69 = load i32, i32* %6, align 4
  %70 = icmp sgt i32 %69, 1
  br i1 %70, label %71, label %82

71:                                               ; preds = %68
  %72 = load i8*, i8** %3, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = getelementptr inbounds i8, i8* %75, i64 -1
  %77 = call i64 @DEPRECATED_STREQ(i8* %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  %80 = load i32, i32* %6, align 4
  %81 = sub nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %79, %71, %68
  %83 = load i8*, i8** @ada_demangle.demangling_buffer, align 8
  %84 = load i64, i64* @ada_demangle.demangling_buffer_size, align 8
  %85 = load i32, i32* %6, align 4
  %86 = mul nsw i32 2, %85
  %87 = add nsw i32 %86, 1
  %88 = call i32 @GROW_VECT(i8* %83, i64 %84, i32 %87)
  %89 = load i8*, i8** @ada_demangle.demangling_buffer, align 8
  store i8* %89, i8** %8, align 8
  %90 = load i8*, i8** %3, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %90, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = call i64 @isdigit(i8 signext %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %153

98:                                               ; preds = %82
  %99 = load i32, i32* %6, align 4
  %100 = sub nsw i32 %99, 2
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %115, %98
  %102 = load i32, i32* %4, align 4
  %103 = icmp sge i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %101
  %105 = load i8*, i8** %3, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = call i64 @isdigit(i8 signext %109)
  %111 = icmp ne i64 %110, 0
  br label %112

112:                                              ; preds = %104, %101
  %113 = phi i1 [ false, %101 ], [ %111, %104 ]
  br i1 %113, label %114, label %118

114:                                              ; preds = %112
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %4, align 4
  %117 = sub nsw i32 %116, 1
  store i32 %117, i32* %4, align 4
  br label %101

118:                                              ; preds = %112
  %119 = load i32, i32* %4, align 4
  %120 = icmp sgt i32 %119, 1
  br i1 %120, label %121, label %141

121:                                              ; preds = %118
  %122 = load i8*, i8** %3, align 8
  %123 = load i32, i32* %4, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 95
  br i1 %128, label %129, label %141

129:                                              ; preds = %121
  %130 = load i8*, i8** %3, align 8
  %131 = load i32, i32* %4, align 4
  %132 = sub nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %130, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 95
  br i1 %137, label %138, label %141

138:                                              ; preds = %129
  %139 = load i32, i32* %4, align 4
  %140 = sub nsw i32 %139, 1
  store i32 %140, i32* %6, align 4
  br label %152

141:                                              ; preds = %129, %121, %118
  %142 = load i8*, i8** %3, align 8
  %143 = load i32, i32* %4, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 36
  br i1 %148, label %149, label %151

149:                                              ; preds = %141
  %150 = load i32, i32* %4, align 4
  store i32 %150, i32* %6, align 4
  br label %151

151:                                              ; preds = %149, %141
  br label %152

152:                                              ; preds = %151, %138
  br label %153

153:                                              ; preds = %152, %82
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %154

154:                                              ; preds = %179, %153
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* %6, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %167

158:                                              ; preds = %154
  %159 = load i8*, i8** %3, align 8
  %160 = load i32, i32* %4, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = call i32 @isalpha(i8 signext %163)
  %165 = icmp ne i32 %164, 0
  %166 = xor i1 %165, true
  br label %167

167:                                              ; preds = %158, %154
  %168 = phi i1 [ false, %154 ], [ %166, %158 ]
  br i1 %168, label %169, label %184

169:                                              ; preds = %167
  %170 = load i8*, i8** %3, align 8
  %171 = load i32, i32* %4, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %170, i64 %172
  %174 = load i8, i8* %173, align 1
  %175 = load i8*, i8** %8, align 8
  %176 = load i32, i32* %5, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %175, i64 %177
  store i8 %174, i8* %178, align 1
  br label %179

179:                                              ; preds = %169
  %180 = load i32, i32* %4, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %4, align 4
  %182 = load i32, i32* %5, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %5, align 4
  br label %154

184:                                              ; preds = %167
  store i32 1, i32* %9, align 4
  br label %185

185:                                              ; preds = %396, %279, %184
  %186 = load i32, i32* %4, align 4
  %187 = load i32, i32* %6, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %397

189:                                              ; preds = %185
  %190 = load i32, i32* %9, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %281

192:                                              ; preds = %189
  %193 = load i8*, i8** %3, align 8
  %194 = load i32, i32* %4, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, i8* %193, i64 %195
  %197 = load i8, i8* %196, align 1
  %198 = sext i8 %197 to i32
  %199 = icmp eq i32 %198, 79
  br i1 %199, label %200, label %281

200:                                              ; preds = %192
  store i32 0, i32* %10, align 4
  br label %201

201:                                              ; preds = %268, %200
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ada_opname_table, align 8
  %203 = load i32, i32* %10, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8
  %208 = icmp ne i8* %207, null
  br i1 %208, label %209, label %271

209:                                              ; preds = %201
  %210 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ada_opname_table, align 8
  %211 = load i32, i32* %10, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 0
  %215 = load i8*, i8** %214, align 8
  %216 = call i32 @strlen(i8* %215)
  store i32 %216, i32* %11, align 4
  %217 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ada_opname_table, align 8
  %218 = load i32, i32* %10, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 1
  %224 = load i8*, i8** %3, align 8
  %225 = load i32, i32* %4, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i8, i8* %224, i64 %226
  %228 = getelementptr inbounds i8, i8* %227, i64 1
  %229 = load i32, i32* %11, align 4
  %230 = sub nsw i32 %229, 1
  %231 = call i64 @DEPRECATED_STREQN(i8* %223, i8* %228, i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %267

233:                                              ; preds = %209
  %234 = load i8*, i8** %3, align 8
  %235 = load i32, i32* %4, align 4
  %236 = load i32, i32* %11, align 4
  %237 = add nsw i32 %235, %236
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8, i8* %234, i64 %238
  %240 = load i8, i8* %239, align 1
  %241 = call i64 @isalnum(i8 signext %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %267, label %243

243:                                              ; preds = %233
  %244 = load i8*, i8** %8, align 8
  %245 = load i32, i32* %5, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8, i8* %244, i64 %246
  %248 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ada_opname_table, align 8
  %249 = load i32, i32* %10, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i32 0, i32 1
  %253 = load i8*, i8** %252, align 8
  %254 = call i32 @strcpy(i8* %247, i8* %253)
  store i32 0, i32* %9, align 4
  %255 = load i32, i32* %11, align 4
  %256 = load i32, i32* %4, align 4
  %257 = add nsw i32 %256, %255
  store i32 %257, i32* %4, align 4
  %258 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ada_opname_table, align 8
  %259 = load i32, i32* %10, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i32 0, i32 1
  %263 = load i8*, i8** %262, align 8
  %264 = call i32 @strlen(i8* %263)
  %265 = load i32, i32* %5, align 4
  %266 = add nsw i32 %265, %264
  store i32 %266, i32* %5, align 4
  br label %271

267:                                              ; preds = %233, %209
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %10, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %10, align 4
  br label %201

271:                                              ; preds = %243, %201
  %272 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ada_opname_table, align 8
  %273 = load i32, i32* %10, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i32 0, i32 0
  %277 = load i8*, i8** %276, align 8
  %278 = icmp ne i8* %277, null
  br i1 %278, label %279, label %280

279:                                              ; preds = %271
  br label %185

280:                                              ; preds = %271
  br label %281

281:                                              ; preds = %280, %192, %189
  store i32 0, i32* %9, align 4
  %282 = load i32, i32* %4, align 4
  %283 = load i32, i32* %6, align 4
  %284 = sub nsw i32 %283, 4
  %285 = icmp slt i32 %282, %284
  br i1 %285, label %286, label %296

286:                                              ; preds = %281
  %287 = load i8*, i8** %3, align 8
  %288 = load i32, i32* %4, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i8, i8* %287, i64 %289
  %291 = call i64 @DEPRECATED_STREQN(i8* %290, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %296

293:                                              ; preds = %286
  %294 = load i32, i32* %4, align 4
  %295 = add nsw i32 %294, 2
  store i32 %295, i32* %4, align 4
  br label %296

296:                                              ; preds = %293, %286, %281
  %297 = load i8*, i8** %3, align 8
  %298 = load i32, i32* %4, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i8, i8* %297, i64 %299
  %301 = load i8, i8* %300, align 1
  %302 = sext i8 %301 to i32
  %303 = icmp eq i32 %302, 88
  br i1 %303, label %304, label %350

304:                                              ; preds = %296
  %305 = load i32, i32* %4, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %350

307:                                              ; preds = %304
  %308 = load i8*, i8** %3, align 8
  %309 = load i32, i32* %4, align 4
  %310 = sub nsw i32 %309, 1
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i8, i8* %308, i64 %311
  %313 = load i8, i8* %312, align 1
  %314 = call i64 @isalnum(i8 signext %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %350

316:                                              ; preds = %307
  br label %317

317:                                              ; preds = %342, %316
  %318 = load i32, i32* %4, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %4, align 4
  br label %320

320:                                              ; preds = %317
  %321 = load i32, i32* %4, align 4
  %322 = load i32, i32* %6, align 4
  %323 = icmp slt i32 %321, %322
  br i1 %323, label %324, label %342

324:                                              ; preds = %320
  %325 = load i8*, i8** %3, align 8
  %326 = load i32, i32* %4, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i8, i8* %325, i64 %327
  %329 = load i8, i8* %328, align 1
  %330 = sext i8 %329 to i32
  %331 = icmp eq i32 %330, 98
  br i1 %331, label %340, label %332

332:                                              ; preds = %324
  %333 = load i8*, i8** %3, align 8
  %334 = load i32, i32* %4, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i8, i8* %333, i64 %335
  %337 = load i8, i8* %336, align 1
  %338 = sext i8 %337 to i32
  %339 = icmp eq i32 %338, 110
  br label %340

340:                                              ; preds = %332, %324
  %341 = phi i1 [ true, %324 ], [ %339, %332 ]
  br label %342

342:                                              ; preds = %340, %320
  %343 = phi i1 [ false, %320 ], [ %341, %340 ]
  br i1 %343, label %317, label %344

344:                                              ; preds = %342
  %345 = load i32, i32* %4, align 4
  %346 = load i32, i32* %6, align 4
  %347 = icmp slt i32 %345, %346
  br i1 %347, label %348, label %349

348:                                              ; preds = %344
  br label %433

349:                                              ; preds = %344
  br label %396

350:                                              ; preds = %307, %304, %296
  %351 = load i32, i32* %4, align 4
  %352 = load i32, i32* %6, align 4
  %353 = sub nsw i32 %352, 2
  %354 = icmp slt i32 %351, %353
  br i1 %354, label %355, label %381

355:                                              ; preds = %350
  %356 = load i8*, i8** %3, align 8
  %357 = load i32, i32* %4, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i8, i8* %356, i64 %358
  %360 = load i8, i8* %359, align 1
  %361 = sext i8 %360 to i32
  %362 = icmp eq i32 %361, 95
  br i1 %362, label %363, label %381

363:                                              ; preds = %355
  %364 = load i8*, i8** %3, align 8
  %365 = load i32, i32* %4, align 4
  %366 = add nsw i32 %365, 1
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i8, i8* %364, i64 %367
  %369 = load i8, i8* %368, align 1
  %370 = sext i8 %369 to i32
  %371 = icmp eq i32 %370, 95
  br i1 %371, label %372, label %381

372:                                              ; preds = %363
  %373 = load i8*, i8** %8, align 8
  %374 = load i32, i32* %5, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i8, i8* %373, i64 %375
  store i8 46, i8* %376, align 1
  store i32 1, i32* %9, align 4
  %377 = load i32, i32* %4, align 4
  %378 = add nsw i32 %377, 2
  store i32 %378, i32* %4, align 4
  %379 = load i32, i32* %5, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %5, align 4
  br label %395

381:                                              ; preds = %363, %355, %350
  %382 = load i8*, i8** %3, align 8
  %383 = load i32, i32* %4, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i8, i8* %382, i64 %384
  %386 = load i8, i8* %385, align 1
  %387 = load i8*, i8** %8, align 8
  %388 = load i32, i32* %5, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i8, i8* %387, i64 %389
  store i8 %386, i8* %390, align 1
  %391 = load i32, i32* %4, align 4
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %4, align 4
  %393 = load i32, i32* %5, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %5, align 4
  br label %395

395:                                              ; preds = %381, %372
  br label %396

396:                                              ; preds = %395, %349
  br label %185

397:                                              ; preds = %185
  %398 = load i8*, i8** %8, align 8
  %399 = load i32, i32* %5, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i8, i8* %398, i64 %400
  store i8 0, i8* %401, align 1
  store i32 0, i32* %4, align 4
  br label %402

402:                                              ; preds = %428, %397
  %403 = load i8*, i8** %8, align 8
  %404 = load i32, i32* %4, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i8, i8* %403, i64 %405
  %407 = load i8, i8* %406, align 1
  %408 = sext i8 %407 to i32
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %431

410:                                              ; preds = %402
  %411 = load i8*, i8** %8, align 8
  %412 = load i32, i32* %4, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i8, i8* %411, i64 %413
  %415 = load i8, i8* %414, align 1
  %416 = call i64 @isupper(i8 signext %415)
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %426, label %418

418:                                              ; preds = %410
  %419 = load i8*, i8** %8, align 8
  %420 = load i32, i32* %4, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i8, i8* %419, i64 %421
  %423 = load i8, i8* %422, align 1
  %424 = sext i8 %423 to i32
  %425 = icmp eq i32 %424, 32
  br i1 %425, label %426, label %427

426:                                              ; preds = %418, %410
  br label %433

427:                                              ; preds = %418
  br label %428

428:                                              ; preds = %427
  %429 = load i32, i32* %4, align 4
  %430 = add nsw i32 %429, 1
  store i32 %430, i32* %4, align 4
  br label %402

431:                                              ; preds = %402
  %432 = load i8*, i8** %8, align 8
  store i8* %432, i8** %2, align 8
  br label %456

433:                                              ; preds = %426, %348, %52, %30
  %434 = load i8*, i8** @ada_demangle.demangling_buffer, align 8
  %435 = load i64, i64* @ada_demangle.demangling_buffer_size, align 8
  %436 = load i8*, i8** %3, align 8
  %437 = call i32 @strlen(i8* %436)
  %438 = add nsw i32 %437, 3
  %439 = call i32 @GROW_VECT(i8* %434, i64 %435, i32 %438)
  %440 = load i8*, i8** @ada_demangle.demangling_buffer, align 8
  store i8* %440, i8** %8, align 8
  %441 = load i8*, i8** %3, align 8
  %442 = getelementptr inbounds i8, i8* %441, i64 0
  %443 = load i8, i8* %442, align 1
  %444 = sext i8 %443 to i32
  %445 = icmp eq i32 %444, 60
  br i1 %445, label %446, label %450

446:                                              ; preds = %433
  %447 = load i8*, i8** %8, align 8
  %448 = load i8*, i8** %3, align 8
  %449 = call i32 @strcpy(i8* %447, i8* %448)
  br label %454

450:                                              ; preds = %433
  %451 = load i8*, i8** %8, align 8
  %452 = load i8*, i8** %3, align 8
  %453 = call i32 @sprintf(i8* %451, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %452)
  br label %454

454:                                              ; preds = %450, %446
  %455 = load i8*, i8** %8, align 8
  store i8* %455, i8** %2, align 8
  br label %456

456:                                              ; preds = %454, %431
  %457 = load i8*, i8** %2, align 8
  ret i8* %457
}

declare dso_local i64 @DEPRECATED_STREQN(i8*, i8*, i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @DEPRECATED_STREQ(i8*, i8*) #1

declare dso_local i32 @GROW_VECT(i8*, i64, i32) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @isalpha(i8 signext) #1

declare dso_local i64 @isalnum(i8 signext) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @isupper(i8 signext) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
