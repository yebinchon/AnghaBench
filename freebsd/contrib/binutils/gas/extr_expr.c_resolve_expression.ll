; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_expr.c_resolve_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_expr.c_resolve_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32*, i32* }

@absolute_section = common dso_local global i64 0, align 8
@finalize_syms = common dso_local global i32 0, align 4
@reg_section = common dso_local global i64 0, align 8
@undefined_section = common dso_local global i64 0, align 8
@OCTETS_PER_BYTE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @resolve_expression(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %4, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %5, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %6, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  switch i32 %27, label %28 [
    i32 147, label %29
    i32 133, label %29
    i32 130, label %30
    i32 129, label %30
    i32 128, label %35
    i32 149, label %35
    i32 139, label %35
    i32 135, label %64
    i32 146, label %64
    i32 136, label %64
    i32 141, label %64
    i32 132, label %64
    i32 150, label %64
    i32 148, label %64
    i32 151, label %64
    i32 152, label %64
    i32 153, label %64
    i32 131, label %64
    i32 145, label %64
    i32 134, label %64
    i32 137, label %64
    i32 142, label %64
    i32 144, label %64
    i32 143, label %64
    i32 140, label %64
    i32 138, label %64
  ]

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %489

29:                                               ; preds = %1, %1
  store i64 0, i64* %8, align 8
  br label %440

30:                                               ; preds = %1, %1
  %31 = call i32 @snapshot_symbol(i32** %5, i64* %8, i64* %10, i32** %12)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %489

34:                                               ; preds = %30
  br label %440

35:                                               ; preds = %1, %1, %1
  %36 = call i32 @snapshot_symbol(i32** %5, i64* %8, i64* %10, i32** %12)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %489

39:                                               ; preds = %35
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* @absolute_section, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %489

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %45, 139
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i64, i64* %8, align 8
  %49 = icmp ne i64 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %8, align 8
  br label %63

53:                                               ; preds = %44
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, 128
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i64, i64* %8, align 8
  %58 = sub nsw i64 0, %57
  store i64 %58, i64* %8, align 8
  br label %62

59:                                               ; preds = %53
  %60 = load i64, i64* %8, align 8
  %61 = xor i64 %60, -1
  store i64 %61, i64* %8, align 8
  br label %62

62:                                               ; preds = %59, %56
  br label %63

63:                                               ; preds = %62, %47
  store i32 147, i32* %7, align 4
  br label %440

64:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %65 = call i32 @snapshot_symbol(i32** %5, i64* %8, i64* %10, i32** %12)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = call i32 @snapshot_symbol(i32** %6, i64* %9, i64* %11, i32** %13)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67, %64
  store i32 0, i32* %2, align 4
  br label %489

71:                                               ; preds = %67
  %72 = load i32, i32* %7, align 4
  %73 = icmp eq i32 %72, 153
  br i1 %73, label %74, label %95

74:                                               ; preds = %71
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* @absolute_section, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i64, i64* %9, align 8
  %80 = load i64, i64* %4, align 8
  %81 = add nsw i64 %80, %79
  store i64 %81, i64* %4, align 8
  store i32 130, i32* %7, align 4
  br label %440

82:                                               ; preds = %74
  %83 = load i64, i64* %10, align 8
  %84 = load i64, i64* @absolute_section, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* %4, align 8
  %89 = add nsw i64 %88, %87
  store i64 %89, i64* %4, align 8
  %90 = load i64, i64* %9, align 8
  store i64 %90, i64* %8, align 8
  %91 = load i64, i64* %11, align 8
  store i64 %91, i64* %10, align 8
  %92 = load i32*, i32** %6, align 8
  store i32* %92, i32** %5, align 8
  store i32 130, i32* %7, align 4
  br label %440

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %93
  br label %108

95:                                               ; preds = %71
  %96 = load i32, i32* %7, align 4
  %97 = icmp eq i32 %96, 131
  br i1 %97, label %98, label %107

98:                                               ; preds = %95
  %99 = load i64, i64* %11, align 8
  %100 = load i64, i64* @absolute_section, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load i64, i64* %9, align 8
  %104 = load i64, i64* %4, align 8
  %105 = sub nsw i64 %104, %103
  store i64 %105, i64* %4, align 8
  store i32 130, i32* %7, align 4
  br label %440

106:                                              ; preds = %98
  br label %107

107:                                              ; preds = %106, %95
  br label %108

108:                                              ; preds = %107, %94
  store i64 0, i64* %14, align 8
  %109 = load i64, i64* %10, align 8
  %110 = load i64, i64* @absolute_section, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load i64, i64* %11, align 8
  %114 = load i64, i64* @absolute_section, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %298, label %116

116:                                              ; preds = %112, %108
  %117 = load i32, i32* %7, align 4
  %118 = icmp eq i32 %117, 145
  br i1 %118, label %298, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %7, align 4
  %121 = icmp eq i32 %120, 134
  br i1 %121, label %298, label %122

122:                                              ; preds = %119
  %123 = load i32, i32* %7, align 4
  %124 = icmp eq i32 %123, 131
  br i1 %124, label %137, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* %7, align 4
  %127 = icmp eq i32 %126, 137
  br i1 %127, label %137, label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %7, align 4
  %130 = icmp eq i32 %129, 142
  br i1 %130, label %137, label %131

131:                                              ; preds = %128
  %132 = load i32, i32* %7, align 4
  %133 = icmp eq i32 %132, 144
  br i1 %133, label %137, label %134

134:                                              ; preds = %131
  %135 = load i32, i32* %7, align 4
  %136 = icmp eq i32 %135, 143
  br i1 %136, label %137, label %165

137:                                              ; preds = %134, %131, %128, %125, %122
  %138 = load i64, i64* %10, align 8
  %139 = load i64, i64* %11, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %165

141:                                              ; preds = %137
  %142 = load i32, i32* @finalize_syms, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %141
  %145 = load i32*, i32** %12, align 8
  %146 = load i32*, i32** %13, align 8
  %147 = call i32 @frag_offset_fixed_p(i32* %145, i32* %146, i64* %14)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %165

149:                                              ; preds = %144, %141
  %150 = load i64, i64* %10, align 8
  %151 = load i64, i64* @reg_section, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %157, label %153

153:                                              ; preds = %149
  %154 = load i64, i64* %8, align 8
  %155 = load i64, i64* %9, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %165

157:                                              ; preds = %153, %149
  %158 = load i64, i64* %10, align 8
  %159 = load i64, i64* @undefined_section, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %298, label %161

161:                                              ; preds = %157
  %162 = load i32*, i32** %5, align 8
  %163 = load i32*, i32** %6, align 8
  %164 = icmp eq i32* %162, %163
  br i1 %164, label %298, label %165

165:                                              ; preds = %161, %153, %144, %137, %134
  %166 = load i64, i64* %10, align 8
  %167 = load i64, i64* @absolute_section, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %165
  %170 = load i64, i64* %8, align 8
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %179, label %172

172:                                              ; preds = %169, %165
  %173 = load i64, i64* %11, align 8
  %174 = load i64, i64* @absolute_section, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %225

176:                                              ; preds = %172
  %177 = load i64, i64* %9, align 8
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %225

179:                                              ; preds = %176, %169
  %180 = load i32, i32* %7, align 4
  %181 = icmp eq i32 %180, 151
  br i1 %181, label %185, label %182

182:                                              ; preds = %179
  %183 = load i32, i32* %7, align 4
  %184 = icmp eq i32 %183, 150
  br i1 %184, label %185, label %197

185:                                              ; preds = %182, %179
  %186 = load i64, i64* %11, align 8
  %187 = load i64, i64* @absolute_section, align 8
  %188 = icmp ne i64 %186, %187
  br i1 %188, label %192, label %189

189:                                              ; preds = %185
  %190 = load i64, i64* %9, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %189, %185
  %193 = load i64, i64* %11, align 8
  store i64 %193, i64* %10, align 8
  %194 = load i64, i64* %9, align 8
  store i64 %194, i64* %8, align 8
  %195 = load i32*, i32** %6, align 8
  store i32* %195, i32** %5, align 8
  br label %196

196:                                              ; preds = %192, %189
  store i32 130, i32* %7, align 4
  br label %440

197:                                              ; preds = %182
  %198 = load i32, i32* %7, align 4
  %199 = icmp eq i32 %198, 141
  br i1 %199, label %203, label %200

200:                                              ; preds = %197
  %201 = load i32, i32* %7, align 4
  %202 = icmp eq i32 %201, 132
  br i1 %202, label %203, label %212

203:                                              ; preds = %200, %197
  %204 = load i64, i64* %10, align 8
  %205 = load i64, i64* @absolute_section, align 8
  %206 = icmp ne i64 %204, %205
  br i1 %206, label %210, label %207

207:                                              ; preds = %203
  %208 = load i64, i64* %8, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %207, %203
  store i32 130, i32* %7, align 4
  br label %440

211:                                              ; preds = %207
  br label %223

212:                                              ; preds = %200
  %213 = load i32, i32* %7, align 4
  %214 = icmp ne i32 %213, 135
  br i1 %214, label %215, label %222

215:                                              ; preds = %212
  %216 = load i32, i32* %7, align 4
  %217 = icmp ne i32 %216, 148
  br i1 %217, label %218, label %222

218:                                              ; preds = %215
  %219 = load i32, i32* %7, align 4
  %220 = icmp ne i32 %219, 152
  br i1 %220, label %221, label %222

221:                                              ; preds = %218
  store i32 0, i32* %2, align 4
  br label %489

222:                                              ; preds = %218, %215, %212
  br label %223

223:                                              ; preds = %222, %211
  br label %224

224:                                              ; preds = %223
  br label %297

225:                                              ; preds = %176, %172
  %226 = load i32, i32* %7, align 4
  %227 = icmp eq i32 %226, 135
  br i1 %227, label %228, label %239

228:                                              ; preds = %225
  %229 = load i64, i64* %10, align 8
  %230 = load i64, i64* @absolute_section, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %239

232:                                              ; preds = %228
  %233 = load i64, i64* %8, align 8
  %234 = icmp eq i64 %233, 1
  br i1 %234, label %235, label %239

235:                                              ; preds = %232
  %236 = load i64, i64* %11, align 8
  store i64 %236, i64* %10, align 8
  %237 = load i64, i64* %9, align 8
  store i64 %237, i64* %8, align 8
  %238 = load i32*, i32** %6, align 8
  store i32* %238, i32** %5, align 8
  store i32 130, i32* %7, align 4
  br label %440

239:                                              ; preds = %232, %228, %225
  %240 = load i32, i32* %7, align 4
  %241 = icmp eq i32 %240, 135
  br i1 %241, label %245, label %242

242:                                              ; preds = %239
  %243 = load i32, i32* %7, align 4
  %244 = icmp eq i32 %243, 146
  br i1 %244, label %245, label %253

245:                                              ; preds = %242, %239
  %246 = load i64, i64* %11, align 8
  %247 = load i64, i64* @absolute_section, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %249, label %253

249:                                              ; preds = %245
  %250 = load i64, i64* %9, align 8
  %251 = icmp eq i64 %250, 1
  br i1 %251, label %252, label %253

252:                                              ; preds = %249
  store i32 130, i32* %7, align 4
  br label %440

253:                                              ; preds = %249, %245, %242
  %254 = load i64, i64* %8, align 8
  %255 = load i64, i64* %9, align 8
  %256 = icmp ne i64 %254, %255
  br i1 %256, label %277, label %257

257:                                              ; preds = %253
  %258 = load i64, i64* %10, align 8
  %259 = load i64, i64* @reg_section, align 8
  %260 = icmp ne i64 %258, %259
  br i1 %260, label %265, label %261

261:                                              ; preds = %257
  %262 = load i64, i64* %11, align 8
  %263 = load i64, i64* @reg_section, align 8
  %264 = icmp ne i64 %262, %263
  br i1 %264, label %265, label %278

265:                                              ; preds = %261, %257
  %266 = load i64, i64* %10, align 8
  %267 = load i64, i64* @undefined_section, align 8
  %268 = icmp ne i64 %266, %267
  br i1 %268, label %277, label %269

269:                                              ; preds = %265
  %270 = load i64, i64* %11, align 8
  %271 = load i64, i64* @undefined_section, align 8
  %272 = icmp ne i64 %270, %271
  br i1 %272, label %277, label %273

273:                                              ; preds = %269
  %274 = load i32*, i32** %5, align 8
  %275 = load i32*, i32** %6, align 8
  %276 = icmp ne i32* %274, %275
  br i1 %276, label %277, label %278

277:                                              ; preds = %273, %269, %265, %253
  store i32 0, i32* %2, align 4
  br label %489

278:                                              ; preds = %273, %261
  %279 = load i32, i32* %7, align 4
  %280 = icmp eq i32 %279, 152
  br i1 %280, label %284, label %281

281:                                              ; preds = %278
  %282 = load i32, i32* %7, align 4
  %283 = icmp eq i32 %282, 150
  br i1 %283, label %284, label %285

284:                                              ; preds = %281, %278
  store i32 130, i32* %7, align 4
  br label %440

285:                                              ; preds = %281
  %286 = load i32, i32* %7, align 4
  %287 = icmp ne i32 %286, 151
  br i1 %287, label %288, label %292

288:                                              ; preds = %285
  %289 = load i32, i32* %7, align 4
  %290 = icmp ne i32 %289, 148
  br i1 %290, label %291, label %292

291:                                              ; preds = %288
  store i32 0, i32* %2, align 4
  br label %489

292:                                              ; preds = %288, %285
  br label %293

293:                                              ; preds = %292
  br label %294

294:                                              ; preds = %293
  br label %295

295:                                              ; preds = %294
  br label %296

296:                                              ; preds = %295
  br label %297

297:                                              ; preds = %296, %224
  br label %298

298:                                              ; preds = %297, %161, %157, %119, %116, %112
  %299 = load i64, i64* %14, align 8
  %300 = load i64, i64* @OCTETS_PER_BYTE, align 8
  %301 = sdiv i64 %299, %300
  %302 = load i64, i64* %9, align 8
  %303 = add nsw i64 %302, %301
  store i64 %303, i64* %9, align 8
  %304 = load i32, i32* %7, align 4
  switch i32 %304, label %437 [
    i32 153, label %305
    i32 131, label %309
    i32 135, label %313
    i32 146, label %317
    i32 136, label %325
    i32 141, label %333
    i32 132, label %337
    i32 150, label %341
    i32 148, label %345
    i32 151, label %350
    i32 152, label %354
    i32 145, label %358
    i32 134, label %358
    i32 137, label %393
    i32 142, label %399
    i32 144, label %405
    i32 143, label %411
    i32 140, label %417
    i32 138, label %427
  ]

305:                                              ; preds = %298
  %306 = load i64, i64* %9, align 8
  %307 = load i64, i64* %8, align 8
  %308 = add nsw i64 %307, %306
  store i64 %308, i64* %8, align 8
  br label %439

309:                                              ; preds = %298
  %310 = load i64, i64* %9, align 8
  %311 = load i64, i64* %8, align 8
  %312 = sub nsw i64 %311, %310
  store i64 %312, i64* %8, align 8
  br label %439

313:                                              ; preds = %298
  %314 = load i64, i64* %9, align 8
  %315 = load i64, i64* %8, align 8
  %316 = mul nsw i64 %315, %314
  store i64 %316, i64* %8, align 8
  br label %439

317:                                              ; preds = %298
  %318 = load i64, i64* %9, align 8
  %319 = icmp eq i64 %318, 0
  br i1 %319, label %320, label %321

320:                                              ; preds = %317
  store i32 0, i32* %2, align 4
  br label %489

321:                                              ; preds = %317
  %322 = load i64, i64* %8, align 8
  %323 = load i64, i64* %9, align 8
  %324 = sdiv i64 %322, %323
  store i64 %324, i64* %8, align 8
  br label %439

325:                                              ; preds = %298
  %326 = load i64, i64* %9, align 8
  %327 = icmp eq i64 %326, 0
  br i1 %327, label %328, label %329

328:                                              ; preds = %325
  store i32 0, i32* %2, align 4
  br label %489

329:                                              ; preds = %325
  %330 = load i64, i64* %8, align 8
  %331 = load i64, i64* %9, align 8
  %332 = srem i64 %330, %331
  store i64 %332, i64* %8, align 8
  br label %439

333:                                              ; preds = %298
  %334 = load i64, i64* %9, align 8
  %335 = load i64, i64* %8, align 8
  %336 = shl i64 %335, %334
  store i64 %336, i64* %8, align 8
  br label %439

337:                                              ; preds = %298
  %338 = load i64, i64* %9, align 8
  %339 = load i64, i64* %8, align 8
  %340 = ashr i64 %339, %338
  store i64 %340, i64* %8, align 8
  br label %439

341:                                              ; preds = %298
  %342 = load i64, i64* %9, align 8
  %343 = load i64, i64* %8, align 8
  %344 = or i64 %343, %342
  store i64 %344, i64* %8, align 8
  br label %439

345:                                              ; preds = %298
  %346 = load i64, i64* %9, align 8
  %347 = xor i64 %346, -1
  %348 = load i64, i64* %8, align 8
  %349 = or i64 %348, %347
  store i64 %349, i64* %8, align 8
  br label %439

350:                                              ; preds = %298
  %351 = load i64, i64* %9, align 8
  %352 = load i64, i64* %8, align 8
  %353 = xor i64 %352, %351
  store i64 %353, i64* %8, align 8
  br label %439

354:                                              ; preds = %298
  %355 = load i64, i64* %9, align 8
  %356 = load i64, i64* %8, align 8
  %357 = and i64 %356, %355
  store i64 %357, i64* %8, align 8
  br label %439

358:                                              ; preds = %298, %298
  %359 = load i64, i64* %8, align 8
  %360 = load i64, i64* %9, align 8
  %361 = icmp eq i64 %359, %360
  br i1 %361, label %362, label %383

362:                                              ; preds = %358
  %363 = load i64, i64* %10, align 8
  %364 = load i64, i64* %11, align 8
  %365 = icmp eq i64 %363, %364
  br i1 %365, label %366, label %383

366:                                              ; preds = %362
  %367 = load i32, i32* @finalize_syms, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %373, label %369

369:                                              ; preds = %366
  %370 = load i32*, i32** %12, align 8
  %371 = load i32*, i32** %13, align 8
  %372 = icmp eq i32* %370, %371
  br i1 %372, label %373, label %383

373:                                              ; preds = %369, %366
  %374 = load i64, i64* %10, align 8
  %375 = load i64, i64* @undefined_section, align 8
  %376 = icmp ne i64 %374, %375
  br i1 %376, label %381, label %377

377:                                              ; preds = %373
  %378 = load i32*, i32** %5, align 8
  %379 = load i32*, i32** %6, align 8
  %380 = icmp eq i32* %378, %379
  br label %381

381:                                              ; preds = %377, %373
  %382 = phi i1 [ true, %373 ], [ %380, %377 ]
  br label %383

383:                                              ; preds = %381, %369, %362, %358
  %384 = phi i1 [ false, %369 ], [ false, %362 ], [ false, %358 ], [ %382, %381 ]
  %385 = zext i1 %384 to i64
  %386 = select i1 %384, i64 -1, i64 0
  store i64 %386, i64* %8, align 8
  %387 = load i32, i32* %7, align 4
  %388 = icmp eq i32 %387, 134
  br i1 %388, label %389, label %392

389:                                              ; preds = %383
  %390 = load i64, i64* %8, align 8
  %391 = xor i64 %390, -1
  store i64 %391, i64* %8, align 8
  br label %392

392:                                              ; preds = %389, %383
  br label %439

393:                                              ; preds = %298
  %394 = load i64, i64* %8, align 8
  %395 = load i64, i64* %9, align 8
  %396 = icmp slt i64 %394, %395
  %397 = zext i1 %396 to i64
  %398 = select i1 %396, i64 -1, i64 0
  store i64 %398, i64* %8, align 8
  br label %439

399:                                              ; preds = %298
  %400 = load i64, i64* %8, align 8
  %401 = load i64, i64* %9, align 8
  %402 = icmp sle i64 %400, %401
  %403 = zext i1 %402 to i64
  %404 = select i1 %402, i64 -1, i64 0
  store i64 %404, i64* %8, align 8
  br label %439

405:                                              ; preds = %298
  %406 = load i64, i64* %8, align 8
  %407 = load i64, i64* %9, align 8
  %408 = icmp sge i64 %406, %407
  %409 = zext i1 %408 to i64
  %410 = select i1 %408, i64 -1, i64 0
  store i64 %410, i64* %8, align 8
  br label %439

411:                                              ; preds = %298
  %412 = load i64, i64* %8, align 8
  %413 = load i64, i64* %9, align 8
  %414 = icmp sgt i64 %412, %413
  %415 = zext i1 %414 to i64
  %416 = select i1 %414, i64 -1, i64 0
  store i64 %416, i64* %8, align 8
  br label %439

417:                                              ; preds = %298
  %418 = load i64, i64* %8, align 8
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %420, label %423

420:                                              ; preds = %417
  %421 = load i64, i64* %9, align 8
  %422 = icmp ne i64 %421, 0
  br label %423

423:                                              ; preds = %420, %417
  %424 = phi i1 [ false, %417 ], [ %422, %420 ]
  %425 = zext i1 %424 to i32
  %426 = sext i32 %425 to i64
  store i64 %426, i64* %8, align 8
  br label %439

427:                                              ; preds = %298
  %428 = load i64, i64* %8, align 8
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %433, label %430

430:                                              ; preds = %427
  %431 = load i64, i64* %9, align 8
  %432 = icmp ne i64 %431, 0
  br label %433

433:                                              ; preds = %430, %427
  %434 = phi i1 [ true, %427 ], [ %432, %430 ]
  %435 = zext i1 %434 to i32
  %436 = sext i32 %435 to i64
  store i64 %436, i64* %8, align 8
  br label %439

437:                                              ; preds = %298
  %438 = call i32 (...) @abort() #3
  unreachable

439:                                              ; preds = %433, %423, %411, %405, %399, %393, %392, %354, %350, %345, %341, %337, %333, %329, %321, %313, %309, %305
  store i32 147, i32* %7, align 4
  br label %440

440:                                              ; preds = %439, %284, %252, %235, %210, %196, %102, %86, %78, %63, %34, %29
  %441 = load i32, i32* %7, align 4
  %442 = icmp eq i32 %441, 130
  br i1 %442, label %443, label %472

443:                                              ; preds = %440
  %444 = load i64, i64* %10, align 8
  %445 = load i64, i64* @absolute_section, align 8
  %446 = icmp eq i64 %444, %445
  br i1 %446, label %447, label %448

447:                                              ; preds = %443
  store i32 147, i32* %7, align 4
  br label %468

448:                                              ; preds = %443
  %449 = load i64, i64* %10, align 8
  %450 = load i64, i64* @reg_section, align 8
  %451 = icmp eq i64 %449, %450
  br i1 %451, label %452, label %456

452:                                              ; preds = %448
  %453 = load i64, i64* %4, align 8
  %454 = icmp eq i64 %453, 0
  br i1 %454, label %455, label %456

455:                                              ; preds = %452
  store i32 133, i32* %7, align 4
  br label %467

456:                                              ; preds = %452, %448
  %457 = load i32*, i32** %5, align 8
  %458 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %459 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %458, i32 0, i32 2
  %460 = load i32*, i32** %459, align 8
  %461 = icmp ne i32* %457, %460
  br i1 %461, label %462, label %466

462:                                              ; preds = %456
  %463 = load i64, i64* %8, align 8
  %464 = load i64, i64* %4, align 8
  %465 = add nsw i64 %464, %463
  store i64 %465, i64* %4, align 8
  br label %466

466:                                              ; preds = %462, %456
  br label %467

467:                                              ; preds = %466, %455
  br label %468

468:                                              ; preds = %467, %447
  %469 = load i32*, i32** %5, align 8
  %470 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %471 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %470, i32 0, i32 2
  store i32* %469, i32** %471, align 8
  br label %472

472:                                              ; preds = %468, %440
  %473 = load i32, i32* %7, align 4
  %474 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %475 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %474, i32 0, i32 1
  store i32 %473, i32* %475, align 8
  %476 = load i32, i32* %7, align 4
  %477 = icmp eq i32 %476, 147
  br i1 %477, label %481, label %478

478:                                              ; preds = %472
  %479 = load i32, i32* %7, align 4
  %480 = icmp eq i32 %479, 133
  br i1 %480, label %481, label %485

481:                                              ; preds = %478, %472
  %482 = load i64, i64* %8, align 8
  %483 = load i64, i64* %4, align 8
  %484 = add nsw i64 %483, %482
  store i64 %484, i64* %4, align 8
  br label %485

485:                                              ; preds = %481, %478
  %486 = load i64, i64* %4, align 8
  %487 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %488 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %487, i32 0, i32 0
  store i64 %486, i64* %488, align 8
  store i32 1, i32* %2, align 4
  br label %489

489:                                              ; preds = %485, %328, %320, %291, %277, %221, %70, %43, %38, %33, %28
  %490 = load i32, i32* %2, align 4
  ret i32 %490
}

declare dso_local i32 @snapshot_symbol(i32**, i64*, i64*, i32**) #1

declare dso_local i32 @frag_offset_fixed_p(i32*, i32*, i64*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
