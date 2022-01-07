; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_finalize_imm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_finalize_imm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i64, i64*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@i = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@Imm8 = common dso_local global i32 0, align 4
@Imm8S = common dso_local global i32 0, align 4
@Imm16 = common dso_local global i32 0, align 4
@Imm32 = common dso_local global i32 0, align 4
@Imm32S = common dso_local global i32 0, align 4
@Imm64 = common dso_local global i32 0, align 4
@BYTE_MNEM_SUFFIX = common dso_local global i64 0, align 8
@WORD_MNEM_SUFFIX = common dso_local global i64 0, align 8
@QWORD_MNEM_SUFFIX = common dso_local global i64 0, align 8
@flag_code = common dso_local global i64 0, align 8
@CODE_16BIT = common dso_local global i64 0, align 8
@DATA_PREFIX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [69 x i8] c"no instruction mnemonic suffix given; can't determine immediate size\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"no instruction mnemonic suffix given; can't determine immediate size %x %c\00", align 1
@Imm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @finalize_imm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @finalize_imm() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @i, i32 0, i32 0), align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @i, i32 0, i32 3, i32 0), align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %7, %10
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @Imm8, align 4
  %14 = load i32, i32* @Imm8S, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @Imm16, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @Imm32, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @Imm32S, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @Imm64, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %12, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %153

26:                                               ; preds = %0
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @Imm8, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %153

30:                                               ; preds = %26
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @Imm8S, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %153

34:                                               ; preds = %30
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @Imm16, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %153

38:                                               ; preds = %34
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* @Imm32S, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %153

42:                                               ; preds = %38
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* @Imm32, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %153

46:                                               ; preds = %42
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* @Imm64, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %153

50:                                               ; preds = %46
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @i, i32 0, i32 1), align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %85

53:                                               ; preds = %50
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @i, i32 0, i32 1), align 8
  %55 = load i64, i64* @BYTE_MNEM_SUFFIX, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* @Imm8, align 4
  %59 = load i32, i32* @Imm8S, align 4
  %60 = or i32 %58, %59
  br label %81

61:                                               ; preds = %53
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @i, i32 0, i32 1), align 8
  %63 = load i64, i64* @WORD_MNEM_SUFFIX, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* @Imm16, align 4
  br label %79

67:                                               ; preds = %61
  %68 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @i, i32 0, i32 1), align 8
  %69 = load i64, i64* @QWORD_MNEM_SUFFIX, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i32, i32* @Imm64, align 4
  %73 = load i32, i32* @Imm32S, align 4
  %74 = or i32 %72, %73
  br label %77

75:                                               ; preds = %67
  %76 = load i32, i32* @Imm32, align 4
  br label %77

77:                                               ; preds = %75, %71
  %78 = phi i32 [ %74, %71 ], [ %76, %75 ]
  br label %79

79:                                               ; preds = %77, %65
  %80 = phi i32 [ %66, %65 ], [ %78, %77 ]
  br label %81

81:                                               ; preds = %79, %57
  %82 = phi i32 [ %60, %57 ], [ %80, %79 ]
  %83 = load i32, i32* %2, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %2, align 4
  br label %125

85:                                               ; preds = %50
  %86 = load i32, i32* %2, align 4
  %87 = load i32, i32* @Imm16, align 4
  %88 = load i32, i32* @Imm32S, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @Imm32, align 4
  %91 = or i32 %89, %90
  %92 = icmp eq i32 %86, %91
  br i1 %92, label %105, label %93

93:                                               ; preds = %85
  %94 = load i32, i32* %2, align 4
  %95 = load i32, i32* @Imm16, align 4
  %96 = load i32, i32* @Imm32, align 4
  %97 = or i32 %95, %96
  %98 = icmp eq i32 %94, %97
  br i1 %98, label %105, label %99

99:                                               ; preds = %93
  %100 = load i32, i32* %2, align 4
  %101 = load i32, i32* @Imm16, align 4
  %102 = load i32, i32* @Imm32S, align 4
  %103 = or i32 %101, %102
  %104 = icmp eq i32 %100, %103
  br i1 %104, label %105, label %124

105:                                              ; preds = %99, %93, %85
  %106 = load i64, i64* @flag_code, align 8
  %107 = load i64, i64* @CODE_16BIT, align 8
  %108 = icmp eq i64 %106, %107
  %109 = zext i1 %108 to i32
  %110 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @i, i32 0, i32 2), align 8
  %111 = load i64, i64* @DATA_PREFIX, align 8
  %112 = getelementptr inbounds i64, i64* %110, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  %115 = zext i1 %114 to i32
  %116 = xor i32 %109, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %105
  %119 = load i32, i32* @Imm16, align 4
  br label %122

120:                                              ; preds = %105
  %121 = load i32, i32* @Imm32S, align 4
  br label %122

122:                                              ; preds = %120, %118
  %123 = phi i32 [ %119, %118 ], [ %121, %120 ]
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %122, %99
  br label %125

125:                                              ; preds = %124, %81
  %126 = load i32, i32* %2, align 4
  %127 = load i32, i32* @Imm8, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %152

129:                                              ; preds = %125
  %130 = load i32, i32* %2, align 4
  %131 = load i32, i32* @Imm8S, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %152

133:                                              ; preds = %129
  %134 = load i32, i32* %2, align 4
  %135 = load i32, i32* @Imm16, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %152

137:                                              ; preds = %133
  %138 = load i32, i32* %2, align 4
  %139 = load i32, i32* @Imm32S, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %152

141:                                              ; preds = %137
  %142 = load i32, i32* %2, align 4
  %143 = load i32, i32* @Imm32, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %152

145:                                              ; preds = %141
  %146 = load i32, i32* %2, align 4
  %147 = load i32, i32* @Imm64, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = call i32 @_(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %151 = call i32 (i32, ...) @as_bad(i32 %150)
  store i32 0, i32* %1, align 4
  br label %327

152:                                              ; preds = %145, %141, %137, %133, %129, %125
  br label %153

153:                                              ; preds = %152, %46, %42, %38, %34, %30, %26, %0
  %154 = load i32, i32* %2, align 4
  %155 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @i, i32 0, i32 0), align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  store i32 %154, i32* %156, align 4
  %157 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @i, i32 0, i32 0), align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @i, i32 0, i32 3, i32 0), align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 1
  %162 = load i32, i32* %161, align 4
  %163 = and i32 %159, %162
  store i32 %163, i32* %3, align 4
  %164 = load i32, i32* %3, align 4
  %165 = load i32, i32* @Imm8, align 4
  %166 = load i32, i32* @Imm8S, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @Imm16, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @Imm32S, align 4
  %171 = or i32 %169, %170
  %172 = load i32, i32* @Imm32, align 4
  %173 = or i32 %171, %172
  %174 = load i32, i32* @Imm64, align 4
  %175 = or i32 %173, %174
  %176 = and i32 %164, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %307

178:                                              ; preds = %153
  %179 = load i32, i32* %3, align 4
  %180 = load i32, i32* @Imm8, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %182, label %307

182:                                              ; preds = %178
  %183 = load i32, i32* %3, align 4
  %184 = load i32, i32* @Imm8S, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %186, label %307

186:                                              ; preds = %182
  %187 = load i32, i32* %3, align 4
  %188 = load i32, i32* @Imm16, align 4
  %189 = icmp ne i32 %187, %188
  br i1 %189, label %190, label %307

190:                                              ; preds = %186
  %191 = load i32, i32* %3, align 4
  %192 = load i32, i32* @Imm32S, align 4
  %193 = icmp ne i32 %191, %192
  br i1 %193, label %194, label %307

194:                                              ; preds = %190
  %195 = load i32, i32* %3, align 4
  %196 = load i32, i32* @Imm32, align 4
  %197 = icmp ne i32 %195, %196
  br i1 %197, label %198, label %307

198:                                              ; preds = %194
  %199 = load i32, i32* %3, align 4
  %200 = load i32, i32* @Imm64, align 4
  %201 = icmp ne i32 %199, %200
  br i1 %201, label %202, label %307

202:                                              ; preds = %198
  %203 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @i, i32 0, i32 1), align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %237

205:                                              ; preds = %202
  %206 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @i, i32 0, i32 1), align 8
  %207 = load i64, i64* @BYTE_MNEM_SUFFIX, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %213

209:                                              ; preds = %205
  %210 = load i32, i32* @Imm8, align 4
  %211 = load i32, i32* @Imm8S, align 4
  %212 = or i32 %210, %211
  br label %233

213:                                              ; preds = %205
  %214 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @i, i32 0, i32 1), align 8
  %215 = load i64, i64* @WORD_MNEM_SUFFIX, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %219

217:                                              ; preds = %213
  %218 = load i32, i32* @Imm16, align 4
  br label %231

219:                                              ; preds = %213
  %220 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @i, i32 0, i32 1), align 8
  %221 = load i64, i64* @QWORD_MNEM_SUFFIX, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %227

223:                                              ; preds = %219
  %224 = load i32, i32* @Imm64, align 4
  %225 = load i32, i32* @Imm32S, align 4
  %226 = or i32 %224, %225
  br label %229

227:                                              ; preds = %219
  %228 = load i32, i32* @Imm32, align 4
  br label %229

229:                                              ; preds = %227, %223
  %230 = phi i32 [ %226, %223 ], [ %228, %227 ]
  br label %231

231:                                              ; preds = %229, %217
  %232 = phi i32 [ %218, %217 ], [ %230, %229 ]
  br label %233

233:                                              ; preds = %231, %209
  %234 = phi i32 [ %212, %209 ], [ %232, %231 ]
  %235 = load i32, i32* %3, align 4
  %236 = and i32 %235, %234
  store i32 %236, i32* %3, align 4
  br label %277

237:                                              ; preds = %202
  %238 = load i32, i32* %3, align 4
  %239 = load i32, i32* @Imm16, align 4
  %240 = load i32, i32* @Imm32, align 4
  %241 = or i32 %239, %240
  %242 = load i32, i32* @Imm32S, align 4
  %243 = or i32 %241, %242
  %244 = icmp eq i32 %238, %243
  br i1 %244, label %257, label %245

245:                                              ; preds = %237
  %246 = load i32, i32* %3, align 4
  %247 = load i32, i32* @Imm16, align 4
  %248 = load i32, i32* @Imm32, align 4
  %249 = or i32 %247, %248
  %250 = icmp eq i32 %246, %249
  br i1 %250, label %257, label %251

251:                                              ; preds = %245
  %252 = load i32, i32* %3, align 4
  %253 = load i32, i32* @Imm16, align 4
  %254 = load i32, i32* @Imm32S, align 4
  %255 = or i32 %253, %254
  %256 = icmp eq i32 %252, %255
  br i1 %256, label %257, label %276

257:                                              ; preds = %251, %245, %237
  %258 = load i64, i64* @flag_code, align 8
  %259 = load i64, i64* @CODE_16BIT, align 8
  %260 = icmp eq i64 %258, %259
  %261 = zext i1 %260 to i32
  %262 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @i, i32 0, i32 2), align 8
  %263 = load i64, i64* @DATA_PREFIX, align 8
  %264 = getelementptr inbounds i64, i64* %262, i64 %263
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  %267 = zext i1 %266 to i32
  %268 = xor i32 %261, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %272

270:                                              ; preds = %257
  %271 = load i32, i32* @Imm16, align 4
  br label %274

272:                                              ; preds = %257
  %273 = load i32, i32* @Imm32S, align 4
  br label %274

274:                                              ; preds = %272, %270
  %275 = phi i32 [ %271, %270 ], [ %273, %272 ]
  store i32 %275, i32* %3, align 4
  br label %276

276:                                              ; preds = %274, %251
  br label %277

277:                                              ; preds = %276, %233
  %278 = load i32, i32* %3, align 4
  %279 = load i32, i32* @Imm8, align 4
  %280 = icmp ne i32 %278, %279
  br i1 %280, label %281, label %306

281:                                              ; preds = %277
  %282 = load i32, i32* %3, align 4
  %283 = load i32, i32* @Imm8S, align 4
  %284 = icmp ne i32 %282, %283
  br i1 %284, label %285, label %306

285:                                              ; preds = %281
  %286 = load i32, i32* %3, align 4
  %287 = load i32, i32* @Imm16, align 4
  %288 = icmp ne i32 %286, %287
  br i1 %288, label %289, label %306

289:                                              ; preds = %285
  %290 = load i32, i32* %3, align 4
  %291 = load i32, i32* @Imm32S, align 4
  %292 = icmp ne i32 %290, %291
  br i1 %292, label %293, label %306

293:                                              ; preds = %289
  %294 = load i32, i32* %3, align 4
  %295 = load i32, i32* @Imm32, align 4
  %296 = icmp ne i32 %294, %295
  br i1 %296, label %297, label %306

297:                                              ; preds = %293
  %298 = load i32, i32* %3, align 4
  %299 = load i32, i32* @Imm64, align 4
  %300 = icmp ne i32 %298, %299
  br i1 %300, label %301, label %306

301:                                              ; preds = %297
  %302 = call i32 @_(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0))
  %303 = load i32, i32* %3, align 4
  %304 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @i, i32 0, i32 1), align 8
  %305 = call i32 (i32, ...) @as_bad(i32 %302, i32 %303, i64 %304)
  store i32 0, i32* %1, align 4
  br label %327

306:                                              ; preds = %297, %293, %289, %285, %281, %277
  br label %307

307:                                              ; preds = %306, %198, %194, %190, %186, %182, %178, %153
  %308 = load i32, i32* %3, align 4
  %309 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @i, i32 0, i32 0), align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 1
  store i32 %308, i32* %310, align 4
  %311 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @i, i32 0, i32 0), align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 2
  %313 = load i32, i32* %312, align 4
  %314 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @i, i32 0, i32 3, i32 0), align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 2
  %316 = load i32, i32* %315, align 4
  %317 = and i32 %313, %316
  store i32 %317, i32* %4, align 4
  %318 = load i32, i32* %4, align 4
  %319 = load i32, i32* @Imm, align 4
  %320 = and i32 %318, %319
  %321 = icmp eq i32 %320, 0
  %322 = zext i1 %321 to i32
  %323 = call i32 @assert(i32 %322)
  %324 = load i32, i32* %4, align 4
  %325 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @i, i32 0, i32 0), align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 2
  store i32 %324, i32* %326, align 4
  store i32 1, i32* %1, align 4
  br label %327

327:                                              ; preds = %307, %301, %149
  %328 = load i32, i32* %1, align 4
  ret i32 %328
}

declare dso_local i32 @as_bad(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
