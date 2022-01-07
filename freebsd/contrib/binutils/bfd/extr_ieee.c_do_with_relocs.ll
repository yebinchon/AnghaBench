; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ieee.c_do_with_relocs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ieee.c_do_with_relocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { i32, i64, i64, i64, i32*, %struct.TYPE_24__** }
%struct.TYPE_24__ = type { i64, i64, %struct.TYPE_21__*, i32** }
%struct.TYPE_21__ = type { i32, i64, i32, i32 }
%struct.TYPE_25__ = type { i32* }

@comp = common dso_local global i32 0, align 4
@ieee_set_current_section_enum = common dso_local global i32 0, align 4
@IEEE_SECTION_NUMBER_BASE = common dso_local global i64 0, align 8
@ieee_set_current_pc_enum = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@EXEC_P = common dso_local global i32 0, align 4
@ieee_load_constant_bytes_enum = common dso_local global i32 0, align 4
@ieee_load_with_relocation_enum = common dso_local global i32 0, align 4
@ieee_function_either_open_b_enum = common dso_local global i32 0, align 4
@ieee_function_either_close_b_enum = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_23__*)* @do_with_relocs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_with_relocs(%struct.TYPE_22__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_24__**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_24__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %19 = call i32 @bfd_arch_bits_per_address(%struct.TYPE_22__* %18)
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %21 = call i32 @bfd_arch_bits_per_byte(%struct.TYPE_22__* %20)
  %22 = udiv i32 %19, %21
  store i32 %22, i32* %6, align 4
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %7, align 4
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %27 = call %struct.TYPE_25__* @ieee_per_section(%struct.TYPE_23__* %26)
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %8, align 8
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 5
  %32 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %31, align 8
  store %struct.TYPE_24__** %32, %struct.TYPE_24__*** %9, align 8
  store i64 0, i64* %10, align 8
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 5
  %35 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @comp, align 4
  %38 = call i32 @qsort(%struct.TYPE_24__** %35, i32 %36, i32 8, i32 %37)
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %40 = load i32, i32* @ieee_set_current_section_enum, align 4
  %41 = call i32 @ieee_write_byte(%struct.TYPE_22__* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %68

43:                                               ; preds = %2
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @IEEE_SECTION_NUMBER_BASE, align 8
  %49 = add nsw i64 %47, %48
  %50 = trunc i64 %49 to i32
  %51 = call i32 @ieee_write_byte(%struct.TYPE_22__* %44, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %43
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %55 = load i32, i32* @ieee_set_current_pc_enum, align 4
  %56 = call i32 @ieee_write_2bytes(%struct.TYPE_22__* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @IEEE_SECTION_NUMBER_BASE, align 8
  %64 = add nsw i64 %62, %63
  %65 = trunc i64 %64 to i32
  %66 = call i32 @ieee_write_byte(%struct.TYPE_22__* %59, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %58, %53, %43, %2
  %69 = load i32, i32* @FALSE, align 4
  store i32 %69, i32* %3, align 4
  br label %442

70:                                               ; preds = %58
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @EXEC_P, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %70
  %78 = load i32, i32* %7, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %77
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @ieee_write_int(%struct.TYPE_22__* %81, i64 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %80
  %88 = load i32, i32* @FALSE, align 4
  store i32 %88, i32* %3, align 4
  br label %442

89:                                               ; preds = %80
  br label %100

90:                                               ; preds = %77, %70
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 4
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @ieee_write_expression(%struct.TYPE_22__* %91, i64 0, i32* %94, i64 0, i32 0)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %90
  %98 = load i32, i32* @FALSE, align 4
  store i32 %98, i32* %3, align 4
  br label %442

99:                                               ; preds = %90
  br label %100

100:                                              ; preds = %99, %89
  %101 = load i32, i32* %7, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %161

103:                                              ; preds = %100
  br label %104

104:                                              ; preds = %159, %103
  %105 = load i64, i64* %10, align 8
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp slt i64 %105, %108
  br i1 %109, label %110, label %160

110:                                              ; preds = %104
  store i32 127, i32* %12, align 4
  %111 = load i32, i32* %12, align 4
  %112 = zext i32 %111 to i64
  store i64 %112, i64* %11, align 8
  %113 = load i64, i64* %11, align 8
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %10, align 8
  %118 = sub nsw i64 %116, %117
  %119 = icmp sgt i64 %113, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %110
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %10, align 8
  %125 = sub nsw i64 %123, %124
  store i64 %125, i64* %11, align 8
  br label %126

126:                                              ; preds = %120, %110
  %127 = load i64, i64* %11, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %159

129:                                              ; preds = %126
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %131 = load i32, i32* @ieee_load_constant_bytes_enum, align 4
  %132 = call i32 @ieee_write_byte(%struct.TYPE_22__* %130, i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %129
  %135 = load i32, i32* @FALSE, align 4
  store i32 %135, i32* %3, align 4
  br label %442

136:                                              ; preds = %129
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %138 = load i64, i64* %11, align 8
  %139 = call i32 @ieee_write_int(%struct.TYPE_22__* %137, i64 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %136
  %142 = load i32, i32* @FALSE, align 4
  store i32 %142, i32* %3, align 4
  br label %442

143:                                              ; preds = %136
  %144 = load i32*, i32** %8, align 8
  %145 = load i64, i64* %10, align 8
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  %147 = bitcast i32* %146 to i8*
  %148 = load i64, i64* %11, align 8
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %150 = call i64 @bfd_bwrite(i8* %147, i64 %148, %struct.TYPE_22__* %149)
  %151 = load i64, i64* %11, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %143
  %154 = load i32, i32* @FALSE, align 4
  store i32 %154, i32* %3, align 4
  br label %442

155:                                              ; preds = %143
  %156 = load i64, i64* %11, align 8
  %157 = load i64, i64* %10, align 8
  %158 = add nsw i64 %157, %156
  store i64 %158, i64* %10, align 8
  br label %159

159:                                              ; preds = %155, %126
  br label %104

160:                                              ; preds = %104
  br label %440

161:                                              ; preds = %100
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %163 = load i32, i32* @ieee_load_with_relocation_enum, align 4
  %164 = call i32 @ieee_write_byte(%struct.TYPE_22__* %162, i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %161
  %167 = load i32, i32* @FALSE, align 4
  store i32 %167, i32* %3, align 4
  br label %442

168:                                              ; preds = %161
  %169 = load i32*, i32** %8, align 8
  %170 = icmp eq i32* %169, null
  br i1 %170, label %171, label %182

171:                                              ; preds = %168
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %173 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = call i32* @bfd_zalloc(%struct.TYPE_22__* %172, i64 %175)
  store i32* %176, i32** %8, align 8
  %177 = load i32*, i32** %8, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %181, label %179

179:                                              ; preds = %171
  %180 = load i32, i32* @FALSE, align 4
  store i32 %180, i32* %3, align 4
  br label %442

181:                                              ; preds = %171
  br label %182

182:                                              ; preds = %181, %168
  br label %183

183:                                              ; preds = %438, %182
  %184 = load i64, i64* %10, align 8
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = icmp slt i64 %184, %187
  br i1 %188, label %189, label %439

189:                                              ; preds = %183
  store i32 127, i32* %14, align 4
  %190 = load i32, i32* %7, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %207

192:                                              ; preds = %189
  %193 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %9, align 8
  %194 = load %struct.TYPE_24__*, %struct.TYPE_24__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* %10, align 8
  %198 = sub nsw i64 %196, %197
  store i64 %198, i64* %13, align 8
  %199 = load i64, i64* %13, align 8
  %200 = load i32, i32* %14, align 4
  %201 = zext i32 %200 to i64
  %202 = icmp sgt i64 %199, %201
  br i1 %202, label %203, label %206

203:                                              ; preds = %192
  %204 = load i32, i32* %14, align 4
  %205 = zext i32 %204 to i64
  store i64 %205, i64* %13, align 8
  br label %206

206:                                              ; preds = %203, %192
  br label %210

207:                                              ; preds = %189
  %208 = load i32, i32* %14, align 4
  %209 = zext i32 %208 to i64
  store i64 %209, i64* %13, align 8
  br label %210

210:                                              ; preds = %207, %206
  %211 = load i64, i64* %13, align 8
  %212 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* %10, align 8
  %216 = sub nsw i64 %214, %215
  %217 = icmp sgt i64 %211, %216
  br i1 %217, label %218, label %224

218:                                              ; preds = %210
  %219 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* %10, align 8
  %223 = sub nsw i64 %221, %222
  store i64 %223, i64* %13, align 8
  br label %224

224:                                              ; preds = %218, %210
  %225 = load i64, i64* %13, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %250

227:                                              ; preds = %224
  %228 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %229 = load i64, i64* %13, align 8
  %230 = call i32 @ieee_write_int(%struct.TYPE_22__* %228, i64 %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %234, label %232

232:                                              ; preds = %227
  %233 = load i32, i32* @FALSE, align 4
  store i32 %233, i32* %3, align 4
  br label %442

234:                                              ; preds = %227
  %235 = load i32*, i32** %8, align 8
  %236 = load i64, i64* %10, align 8
  %237 = getelementptr inbounds i32, i32* %235, i64 %236
  %238 = bitcast i32* %237 to i8*
  %239 = load i64, i64* %13, align 8
  %240 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %241 = call i64 @bfd_bwrite(i8* %238, i64 %239, %struct.TYPE_22__* %240)
  %242 = load i64, i64* %13, align 8
  %243 = icmp ne i64 %241, %242
  br i1 %243, label %244, label %246

244:                                              ; preds = %234
  %245 = load i32, i32* @FALSE, align 4
  store i32 %245, i32* %3, align 4
  br label %442

246:                                              ; preds = %234
  %247 = load i64, i64* %13, align 8
  %248 = load i64, i64* %10, align 8
  %249 = add nsw i64 %248, %247
  store i64 %249, i64* %10, align 8
  br label %250

250:                                              ; preds = %246, %224
  %251 = load i32, i32* %7, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %438

253:                                              ; preds = %250
  %254 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %9, align 8
  %255 = load %struct.TYPE_24__*, %struct.TYPE_24__** %254, align 8
  %256 = icmp ne %struct.TYPE_24__* %255, null
  br i1 %256, label %257, label %438

257:                                              ; preds = %253
  %258 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %9, align 8
  %259 = load %struct.TYPE_24__*, %struct.TYPE_24__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* %10, align 8
  %263 = icmp eq i64 %261, %262
  br i1 %263, label %264, label %438

264:                                              ; preds = %257
  br label %265

265:                                              ; preds = %432, %264
  %266 = load i32, i32* %7, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %279

268:                                              ; preds = %265
  %269 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %9, align 8
  %270 = load %struct.TYPE_24__*, %struct.TYPE_24__** %269, align 8
  %271 = icmp ne %struct.TYPE_24__* %270, null
  br i1 %271, label %272, label %279

272:                                              ; preds = %268
  %273 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %9, align 8
  %274 = load %struct.TYPE_24__*, %struct.TYPE_24__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = load i64, i64* %10, align 8
  %278 = icmp eq i64 %276, %277
  br label %279

279:                                              ; preds = %272, %268, %265
  %280 = phi i1 [ false, %268 ], [ false, %265 ], [ %278, %272 ]
  br i1 %280, label %281, label %437

281:                                              ; preds = %279
  %282 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %9, align 8
  %283 = load %struct.TYPE_24__*, %struct.TYPE_24__** %282, align 8
  store %struct.TYPE_24__* %283, %struct.TYPE_24__** %15, align 8
  %284 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %285 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %284, i32 0, i32 2
  %286 = load %struct.TYPE_21__*, %struct.TYPE_21__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  switch i32 %288, label %313 [
    i32 2, label %289
    i32 1, label %297
    i32 0, label %305
  ]

289:                                              ; preds = %281
  %290 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %291 = load i32*, i32** %8, align 8
  %292 = load i64, i64* %10, align 8
  %293 = getelementptr inbounds i32, i32* %291, i64 %292
  %294 = call i32 @bfd_get_signed_32(%struct.TYPE_22__* %290, i32* %293)
  store i32 %294, i32* %16, align 4
  %295 = load i64, i64* %10, align 8
  %296 = add nsw i64 %295, 4
  store i64 %296, i64* %10, align 8
  br label %316

297:                                              ; preds = %281
  %298 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %299 = load i32*, i32** %8, align 8
  %300 = load i64, i64* %10, align 8
  %301 = getelementptr inbounds i32, i32* %299, i64 %300
  %302 = call i32 @bfd_get_signed_16(%struct.TYPE_22__* %298, i32* %301)
  store i32 %302, i32* %16, align 4
  %303 = load i64, i64* %10, align 8
  %304 = add nsw i64 %303, 2
  store i64 %304, i64* %10, align 8
  br label %316

305:                                              ; preds = %281
  %306 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %307 = load i32*, i32** %8, align 8
  %308 = load i64, i64* %10, align 8
  %309 = getelementptr inbounds i32, i32* %307, i64 %308
  %310 = call i32 @bfd_get_signed_8(%struct.TYPE_22__* %306, i32* %309)
  store i32 %310, i32* %16, align 4
  %311 = load i64, i64* %10, align 8
  %312 = add nsw i64 %311, 1
  store i64 %312, i64* %10, align 8
  br label %316

313:                                              ; preds = %281
  store i32 0, i32* %16, align 4
  %314 = call i32 (...) @BFD_FAIL()
  %315 = load i32, i32* @FALSE, align 4
  store i32 %315, i32* %3, align 4
  br label %442

316:                                              ; preds = %305, %297, %289
  %317 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %318 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %317, i32 0, i32 2
  %319 = load %struct.TYPE_21__*, %struct.TYPE_21__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %319, i32 0, i32 3
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* %16, align 4
  %323 = and i32 %322, %321
  store i32 %323, i32* %16, align 4
  %324 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %325 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %324, i32 0, i32 2
  %326 = load %struct.TYPE_21__*, %struct.TYPE_21__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %326, i32 0, i32 1
  %328 = load i64, i64* %327, align 8
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %345

330:                                              ; preds = %316
  %331 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %332 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %331, i32 0, i32 2
  %333 = load %struct.TYPE_21__*, %struct.TYPE_21__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 8
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %345, label %337

337:                                              ; preds = %330
  %338 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %339 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = load i32, i32* %16, align 4
  %342 = sext i32 %341 to i64
  %343 = add nsw i64 %342, %340
  %344 = trunc i64 %343 to i32
  store i32 %344, i32* %16, align 4
  br label %345

345:                                              ; preds = %337, %330, %316
  %346 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %347 = load i32, i32* @ieee_function_either_open_b_enum, align 4
  %348 = call i32 @ieee_write_byte(%struct.TYPE_22__* %346, i32 %347)
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %352, label %350

350:                                              ; preds = %345
  %351 = load i32, i32* @FALSE, align 4
  store i32 %351, i32* %3, align 4
  br label %442

352:                                              ; preds = %345
  %353 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %354 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %353, i32 0, i32 3
  %355 = load i32**, i32*** %354, align 8
  %356 = icmp ne i32** %355, null
  br i1 %356, label %357, label %383

357:                                              ; preds = %352
  %358 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %359 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %360 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %359, i32 0, i32 1
  %361 = load i64, i64* %360, align 8
  %362 = load i32, i32* %16, align 4
  %363 = sext i32 %362 to i64
  %364 = add nsw i64 %361, %363
  %365 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %366 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %365, i32 0, i32 3
  %367 = load i32**, i32*** %366, align 8
  %368 = load i32*, i32** %367, align 8
  %369 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %370 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %369, i32 0, i32 2
  %371 = load %struct.TYPE_21__*, %struct.TYPE_21__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %371, i32 0, i32 1
  %373 = load i64, i64* %372, align 8
  %374 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %375 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %374, i32 0, i32 3
  %376 = load i64, i64* %375, align 8
  %377 = trunc i64 %376 to i32
  %378 = call i32 @ieee_write_expression(%struct.TYPE_22__* %358, i64 %364, i32* %368, i64 %373, i32 %377)
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %382, label %380

380:                                              ; preds = %357
  %381 = load i32, i32* @FALSE, align 4
  store i32 %381, i32* %3, align 4
  br label %442

382:                                              ; preds = %357
  br label %405

383:                                              ; preds = %352
  %384 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %385 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %386 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %385, i32 0, i32 1
  %387 = load i64, i64* %386, align 8
  %388 = load i32, i32* %16, align 4
  %389 = sext i32 %388 to i64
  %390 = add nsw i64 %387, %389
  %391 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %392 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %391, i32 0, i32 2
  %393 = load %struct.TYPE_21__*, %struct.TYPE_21__** %392, align 8
  %394 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %393, i32 0, i32 1
  %395 = load i64, i64* %394, align 8
  %396 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %397 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %396, i32 0, i32 3
  %398 = load i64, i64* %397, align 8
  %399 = trunc i64 %398 to i32
  %400 = call i32 @ieee_write_expression(%struct.TYPE_22__* %384, i64 %390, i32* null, i64 %395, i32 %399)
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %404, label %402

402:                                              ; preds = %383
  %403 = load i32, i32* @FALSE, align 4
  store i32 %403, i32* %3, align 4
  br label %442

404:                                              ; preds = %383
  br label %405

405:                                              ; preds = %404, %382
  %406 = load i32, i32* %6, align 4
  %407 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %408 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %407, i32 0, i32 2
  %409 = load %struct.TYPE_21__*, %struct.TYPE_21__** %408, align 8
  %410 = call i32 @bfd_get_reloc_size(%struct.TYPE_21__* %409)
  %411 = icmp ne i32 %406, %410
  br i1 %411, label %412, label %425

412:                                              ; preds = %405
  %413 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %414 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %413, i32 0, i32 2
  %415 = load %struct.TYPE_21__*, %struct.TYPE_21__** %414, align 8
  %416 = call i32 @bfd_get_reloc_size(%struct.TYPE_21__* %415)
  %417 = zext i32 %416 to i64
  store i64 %417, i64* %17, align 8
  %418 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %419 = load i64, i64* %17, align 8
  %420 = call i32 @ieee_write_int(%struct.TYPE_22__* %418, i64 %419)
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %424, label %422

422:                                              ; preds = %412
  %423 = load i32, i32* @FALSE, align 4
  store i32 %423, i32* %3, align 4
  br label %442

424:                                              ; preds = %412
  br label %425

425:                                              ; preds = %424, %405
  %426 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %427 = load i32, i32* @ieee_function_either_close_b_enum, align 4
  %428 = call i32 @ieee_write_byte(%struct.TYPE_22__* %426, i32 %427)
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %432, label %430

430:                                              ; preds = %425
  %431 = load i32, i32* @FALSE, align 4
  store i32 %431, i32* %3, align 4
  br label %442

432:                                              ; preds = %425
  %433 = load i32, i32* %7, align 4
  %434 = add i32 %433, -1
  store i32 %434, i32* %7, align 4
  %435 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %9, align 8
  %436 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %435, i32 1
  store %struct.TYPE_24__** %436, %struct.TYPE_24__*** %9, align 8
  br label %265

437:                                              ; preds = %279
  br label %438

438:                                              ; preds = %437, %257, %253, %250
  br label %183

439:                                              ; preds = %183
  br label %440

440:                                              ; preds = %439, %160
  %441 = load i32, i32* @TRUE, align 4
  store i32 %441, i32* %3, align 4
  br label %442

442:                                              ; preds = %440, %430, %422, %402, %380, %350, %313, %244, %232, %179, %166, %153, %141, %134, %97, %87, %68
  %443 = load i32, i32* %3, align 4
  ret i32 %443
}

declare dso_local i32 @bfd_arch_bits_per_address(%struct.TYPE_22__*) #1

declare dso_local i32 @bfd_arch_bits_per_byte(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_25__* @ieee_per_section(%struct.TYPE_23__*) #1

declare dso_local i32 @qsort(%struct.TYPE_24__**, i32, i32, i32) #1

declare dso_local i32 @ieee_write_byte(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ieee_write_2bytes(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ieee_write_int(%struct.TYPE_22__*, i64) #1

declare dso_local i32 @ieee_write_expression(%struct.TYPE_22__*, i64, i32*, i64, i32) #1

declare dso_local i64 @bfd_bwrite(i8*, i64, %struct.TYPE_22__*) #1

declare dso_local i32* @bfd_zalloc(%struct.TYPE_22__*, i64) #1

declare dso_local i32 @bfd_get_signed_32(%struct.TYPE_22__*, i32*) #1

declare dso_local i32 @bfd_get_signed_16(%struct.TYPE_22__*, i32*) #1

declare dso_local i32 @bfd_get_signed_8(%struct.TYPE_22__*, i32*) #1

declare dso_local i32 @BFD_FAIL(...) #1

declare dso_local i32 @bfd_get_reloc_size(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
