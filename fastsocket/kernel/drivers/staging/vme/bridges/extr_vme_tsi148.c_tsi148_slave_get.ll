; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/bridges/extr_vme_tsi148.c_tsi148_slave_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/bridges/extr_vme_tsi148.c_tsi148_slave_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.vme_slave_resource = type { i32 }

@tsi148_bridge = common dso_local global %struct.TYPE_2__* null, align 8
@TSI148_LCSR_IT = common dso_local global i64* null, align 8
@TSI148_LCSR_OFFSET_ITAT = common dso_local global i64 0, align 8
@TSI148_LCSR_OFFSET_ITSAU = common dso_local global i64 0, align 8
@TSI148_LCSR_OFFSET_ITSAL = common dso_local global i64 0, align 8
@TSI148_LCSR_OFFSET_ITEAU = common dso_local global i64 0, align 8
@TSI148_LCSR_OFFSET_ITEAL = common dso_local global i64 0, align 8
@TSI148_LCSR_OFFSET_ITOFU = common dso_local global i64 0, align 8
@TSI148_LCSR_OFFSET_ITOFL = common dso_local global i64 0, align 8
@TSI148_LCSR_ITAT_EN = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_AS_M = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_AS_A16 = common dso_local global i32 0, align 4
@VME_A16 = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_AS_A24 = common dso_local global i32 0, align 4
@VME_A24 = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_AS_A32 = common dso_local global i32 0, align 4
@VME_A32 = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_AS_A64 = common dso_local global i32 0, align 4
@VME_A64 = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_2eSSTM_M = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_2eSSTM_160 = common dso_local global i32 0, align 4
@VME_2eSST160 = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_2eSSTM_267 = common dso_local global i32 0, align 4
@VME_2eSST267 = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_2eSSTM_320 = common dso_local global i32 0, align 4
@VME_2eSST320 = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_BLT = common dso_local global i32 0, align 4
@VME_BLT = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_MBLT = common dso_local global i32 0, align 4
@VME_MBLT = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_2eVME = common dso_local global i32 0, align 4
@VME_2eVME = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_2eSST = common dso_local global i32 0, align 4
@VME_2eSST = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_2eSSTB = common dso_local global i32 0, align 4
@VME_2eSSTB = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_SUPR = common dso_local global i32 0, align 4
@VME_SUPER = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_NPRIV = common dso_local global i32 0, align 4
@VME_USER = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_PGM = common dso_local global i32 0, align 4
@VME_PROG = common dso_local global i32 0, align 4
@TSI148_LCSR_ITAT_DATA = common dso_local global i32 0, align 4
@VME_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tsi148_slave_get(%struct.vme_slave_resource* %0, i32* %1, i64* %2, i64* %3, i64* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.vme_slave_resource*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store %struct.vme_slave_resource* %0, %struct.vme_slave_resource** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64* %2, i64** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %26 = load %struct.vme_slave_resource*, %struct.vme_slave_resource** %8, align 8
  %27 = getelementptr inbounds %struct.vme_slave_resource, %struct.vme_slave_resource* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %15, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsi148_bridge, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** @TSI148_LCSR_IT, align 8
  %33 = load i32, i32* %15, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %31, %36
  %38 = load i64, i64* @TSI148_LCSR_OFFSET_ITAT, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @ioread32be(i64 %39)
  store i32 %40, i32* %17, align 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsi148_bridge, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** @TSI148_LCSR_IT, align 8
  %45 = load i32, i32* %15, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %43, %48
  %50 = load i64, i64* @TSI148_LCSR_OFFSET_ITSAU, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @ioread32be(i64 %51)
  store i32 %52, i32* %19, align 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsi148_bridge, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64*, i64** @TSI148_LCSR_IT, align 8
  %57 = load i32, i32* %15, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %55, %60
  %62 = load i64, i64* @TSI148_LCSR_OFFSET_ITSAL, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @ioread32be(i64 %63)
  store i32 %64, i32* %18, align 4
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsi148_bridge, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64*, i64** @TSI148_LCSR_IT, align 8
  %69 = load i32, i32* %15, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %67, %72
  %74 = load i64, i64* @TSI148_LCSR_OFFSET_ITEAU, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @ioread32be(i64 %75)
  store i32 %76, i32* %21, align 4
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsi148_bridge, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64*, i64** @TSI148_LCSR_IT, align 8
  %81 = load i32, i32* %15, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %79, %84
  %86 = load i64, i64* @TSI148_LCSR_OFFSET_ITEAL, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @ioread32be(i64 %87)
  store i32 %88, i32* %20, align 4
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsi148_bridge, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64*, i64** @TSI148_LCSR_IT, align 8
  %93 = load i32, i32* %15, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %91, %96
  %98 = load i64, i64* @TSI148_LCSR_OFFSET_ITOFU, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @ioread32be(i64 %99)
  store i32 %100, i32* %23, align 4
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsi148_bridge, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64*, i64** @TSI148_LCSR_IT, align 8
  %105 = load i32, i32* %15, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %103, %108
  %110 = load i64, i64* @TSI148_LCSR_OFFSET_ITOFL, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @ioread32be(i64 %111)
  store i32 %112, i32* %22, align 4
  %113 = load i32, i32* %19, align 4
  %114 = load i32, i32* %18, align 4
  %115 = load i64*, i64** %10, align 8
  %116 = call i32 @reg_join(i32 %113, i32 %114, i64* %115)
  %117 = load i32, i32* %21, align 4
  %118 = load i32, i32* %20, align 4
  %119 = call i32 @reg_join(i32 %117, i32 %118, i64* %24)
  %120 = load i32, i32* %23, align 4
  %121 = load i32, i32* %22, align 4
  %122 = call i32 @reg_join(i32 %120, i32 %121, i64* %25)
  %123 = load i64*, i64** %10, align 8
  %124 = ptrtoint i64* %123 to i64
  %125 = load i64, i64* %25, align 8
  %126 = add i64 %124, %125
  %127 = load i64*, i64** %12, align 8
  store i64 %126, i64* %127, align 8
  %128 = load i32*, i32** %9, align 8
  store i32 0, i32* %128, align 4
  %129 = load i32*, i32** %13, align 8
  store i32 0, i32* %129, align 4
  %130 = load i32*, i32** %14, align 8
  store i32 0, i32* %130, align 4
  %131 = load i32, i32* %17, align 4
  %132 = load i32, i32* @TSI148_LCSR_ITAT_EN, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %7
  %136 = load i32*, i32** %9, align 8
  store i32 1, i32* %136, align 4
  br label %137

137:                                              ; preds = %135, %7
  %138 = load i32, i32* %17, align 4
  %139 = load i32, i32* @TSI148_LCSR_ITAT_AS_M, align 4
  %140 = and i32 %138, %139
  %141 = load i32, i32* @TSI148_LCSR_ITAT_AS_A16, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %137
  store i32 16, i32* %16, align 4
  %144 = load i32, i32* @VME_A16, align 4
  %145 = load i32*, i32** %13, align 8
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %144
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %143, %137
  %149 = load i32, i32* %17, align 4
  %150 = load i32, i32* @TSI148_LCSR_ITAT_AS_M, align 4
  %151 = and i32 %149, %150
  %152 = load i32, i32* @TSI148_LCSR_ITAT_AS_A24, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %159

154:                                              ; preds = %148
  store i32 4096, i32* %16, align 4
  %155 = load i32, i32* @VME_A24, align 4
  %156 = load i32*, i32** %13, align 8
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %155
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %154, %148
  %160 = load i32, i32* %17, align 4
  %161 = load i32, i32* @TSI148_LCSR_ITAT_AS_M, align 4
  %162 = and i32 %160, %161
  %163 = load i32, i32* @TSI148_LCSR_ITAT_AS_A32, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %170

165:                                              ; preds = %159
  store i32 65536, i32* %16, align 4
  %166 = load i32, i32* @VME_A32, align 4
  %167 = load i32*, i32** %13, align 8
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %168, %166
  store i32 %169, i32* %167, align 4
  br label %170

170:                                              ; preds = %165, %159
  %171 = load i32, i32* %17, align 4
  %172 = load i32, i32* @TSI148_LCSR_ITAT_AS_M, align 4
  %173 = and i32 %171, %172
  %174 = load i32, i32* @TSI148_LCSR_ITAT_AS_A64, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %181

176:                                              ; preds = %170
  store i32 65536, i32* %16, align 4
  %177 = load i32, i32* @VME_A64, align 4
  %178 = load i32*, i32** %13, align 8
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %177
  store i32 %180, i32* %178, align 4
  br label %181

181:                                              ; preds = %176, %170
  %182 = load i64, i64* %24, align 8
  %183 = load i64*, i64** %10, align 8
  %184 = load i64, i64* %183, align 8
  %185 = sub i64 %182, %184
  %186 = load i32, i32* %16, align 4
  %187 = zext i32 %186 to i64
  %188 = add i64 %185, %187
  %189 = load i64*, i64** %11, align 8
  store i64 %188, i64* %189, align 8
  %190 = load i32, i32* %17, align 4
  %191 = load i32, i32* @TSI148_LCSR_ITAT_2eSSTM_M, align 4
  %192 = and i32 %190, %191
  %193 = load i32, i32* @TSI148_LCSR_ITAT_2eSSTM_160, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %200

195:                                              ; preds = %181
  %196 = load i32, i32* @VME_2eSST160, align 4
  %197 = load i32*, i32** %14, align 8
  %198 = load i32, i32* %197, align 4
  %199 = or i32 %198, %196
  store i32 %199, i32* %197, align 4
  br label %200

200:                                              ; preds = %195, %181
  %201 = load i32, i32* %17, align 4
  %202 = load i32, i32* @TSI148_LCSR_ITAT_2eSSTM_M, align 4
  %203 = and i32 %201, %202
  %204 = load i32, i32* @TSI148_LCSR_ITAT_2eSSTM_267, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %211

206:                                              ; preds = %200
  %207 = load i32, i32* @VME_2eSST267, align 4
  %208 = load i32*, i32** %14, align 8
  %209 = load i32, i32* %208, align 4
  %210 = or i32 %209, %207
  store i32 %210, i32* %208, align 4
  br label %211

211:                                              ; preds = %206, %200
  %212 = load i32, i32* %17, align 4
  %213 = load i32, i32* @TSI148_LCSR_ITAT_2eSSTM_M, align 4
  %214 = and i32 %212, %213
  %215 = load i32, i32* @TSI148_LCSR_ITAT_2eSSTM_320, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %222

217:                                              ; preds = %211
  %218 = load i32, i32* @VME_2eSST320, align 4
  %219 = load i32*, i32** %14, align 8
  %220 = load i32, i32* %219, align 4
  %221 = or i32 %220, %218
  store i32 %221, i32* %219, align 4
  br label %222

222:                                              ; preds = %217, %211
  %223 = load i32, i32* %17, align 4
  %224 = load i32, i32* @TSI148_LCSR_ITAT_BLT, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %232

227:                                              ; preds = %222
  %228 = load i32, i32* @VME_BLT, align 4
  %229 = load i32*, i32** %14, align 8
  %230 = load i32, i32* %229, align 4
  %231 = or i32 %230, %228
  store i32 %231, i32* %229, align 4
  br label %232

232:                                              ; preds = %227, %222
  %233 = load i32, i32* %17, align 4
  %234 = load i32, i32* @TSI148_LCSR_ITAT_MBLT, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %242

237:                                              ; preds = %232
  %238 = load i32, i32* @VME_MBLT, align 4
  %239 = load i32*, i32** %14, align 8
  %240 = load i32, i32* %239, align 4
  %241 = or i32 %240, %238
  store i32 %241, i32* %239, align 4
  br label %242

242:                                              ; preds = %237, %232
  %243 = load i32, i32* %17, align 4
  %244 = load i32, i32* @TSI148_LCSR_ITAT_2eVME, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %252

247:                                              ; preds = %242
  %248 = load i32, i32* @VME_2eVME, align 4
  %249 = load i32*, i32** %14, align 8
  %250 = load i32, i32* %249, align 4
  %251 = or i32 %250, %248
  store i32 %251, i32* %249, align 4
  br label %252

252:                                              ; preds = %247, %242
  %253 = load i32, i32* %17, align 4
  %254 = load i32, i32* @TSI148_LCSR_ITAT_2eSST, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %262

257:                                              ; preds = %252
  %258 = load i32, i32* @VME_2eSST, align 4
  %259 = load i32*, i32** %14, align 8
  %260 = load i32, i32* %259, align 4
  %261 = or i32 %260, %258
  store i32 %261, i32* %259, align 4
  br label %262

262:                                              ; preds = %257, %252
  %263 = load i32, i32* %17, align 4
  %264 = load i32, i32* @TSI148_LCSR_ITAT_2eSSTB, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %272

267:                                              ; preds = %262
  %268 = load i32, i32* @VME_2eSSTB, align 4
  %269 = load i32*, i32** %14, align 8
  %270 = load i32, i32* %269, align 4
  %271 = or i32 %270, %268
  store i32 %271, i32* %269, align 4
  br label %272

272:                                              ; preds = %267, %262
  %273 = load i32, i32* %17, align 4
  %274 = load i32, i32* @TSI148_LCSR_ITAT_SUPR, align 4
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %282

277:                                              ; preds = %272
  %278 = load i32, i32* @VME_SUPER, align 4
  %279 = load i32*, i32** %14, align 8
  %280 = load i32, i32* %279, align 4
  %281 = or i32 %280, %278
  store i32 %281, i32* %279, align 4
  br label %282

282:                                              ; preds = %277, %272
  %283 = load i32, i32* %17, align 4
  %284 = load i32, i32* @TSI148_LCSR_ITAT_NPRIV, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %292

287:                                              ; preds = %282
  %288 = load i32, i32* @VME_USER, align 4
  %289 = load i32*, i32** %14, align 8
  %290 = load i32, i32* %289, align 4
  %291 = or i32 %290, %288
  store i32 %291, i32* %289, align 4
  br label %292

292:                                              ; preds = %287, %282
  %293 = load i32, i32* %17, align 4
  %294 = load i32, i32* @TSI148_LCSR_ITAT_PGM, align 4
  %295 = and i32 %293, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %302

297:                                              ; preds = %292
  %298 = load i32, i32* @VME_PROG, align 4
  %299 = load i32*, i32** %14, align 8
  %300 = load i32, i32* %299, align 4
  %301 = or i32 %300, %298
  store i32 %301, i32* %299, align 4
  br label %302

302:                                              ; preds = %297, %292
  %303 = load i32, i32* %17, align 4
  %304 = load i32, i32* @TSI148_LCSR_ITAT_DATA, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %312

307:                                              ; preds = %302
  %308 = load i32, i32* @VME_DATA, align 4
  %309 = load i32*, i32** %14, align 8
  %310 = load i32, i32* %309, align 4
  %311 = or i32 %310, %308
  store i32 %311, i32* %309, align 4
  br label %312

312:                                              ; preds = %307, %302
  ret i32 0
}

declare dso_local i32 @ioread32be(i64) #1

declare dso_local i32 @reg_join(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
