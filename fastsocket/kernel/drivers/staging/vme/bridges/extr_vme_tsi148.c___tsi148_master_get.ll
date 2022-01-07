; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/bridges/extr_vme_tsi148.c___tsi148_master_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/bridges/extr_vme_tsi148.c___tsi148_master_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.vme_master_resource = type { i32 }

@tsi148_bridge = common dso_local global %struct.TYPE_2__* null, align 8
@TSI148_LCSR_OT = common dso_local global i64* null, align 8
@TSI148_LCSR_OFFSET_OTAT = common dso_local global i64 0, align 8
@TSI148_LCSR_OFFSET_OTSAU = common dso_local global i64 0, align 8
@TSI148_LCSR_OFFSET_OTSAL = common dso_local global i64 0, align 8
@TSI148_LCSR_OFFSET_OTEAU = common dso_local global i64 0, align 8
@TSI148_LCSR_OFFSET_OTEAL = common dso_local global i64 0, align 8
@TSI148_LCSR_OFFSET_OTOFU = common dso_local global i64 0, align 8
@TSI148_LCSR_OFFSET_OTOFL = common dso_local global i64 0, align 8
@TSI148_LCSR_OTAT_EN = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_AMODE_M = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_AMODE_A16 = common dso_local global i32 0, align 4
@VME_A16 = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_AMODE_A24 = common dso_local global i32 0, align 4
@VME_A24 = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_AMODE_A32 = common dso_local global i32 0, align 4
@VME_A32 = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_AMODE_A64 = common dso_local global i32 0, align 4
@VME_A64 = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_AMODE_CRCSR = common dso_local global i32 0, align 4
@VME_CRCSR = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_AMODE_USER1 = common dso_local global i32 0, align 4
@VME_USER1 = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_AMODE_USER2 = common dso_local global i32 0, align 4
@VME_USER2 = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_AMODE_USER3 = common dso_local global i32 0, align 4
@VME_USER3 = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_AMODE_USER4 = common dso_local global i32 0, align 4
@VME_USER4 = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_2eSSTM_M = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_2eSSTM_160 = common dso_local global i32 0, align 4
@VME_2eSST160 = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_2eSSTM_267 = common dso_local global i32 0, align 4
@VME_2eSST267 = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_2eSSTM_320 = common dso_local global i32 0, align 4
@VME_2eSST320 = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_TM_M = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_TM_SCT = common dso_local global i32 0, align 4
@VME_SCT = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_TM_BLT = common dso_local global i32 0, align 4
@VME_BLT = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_TM_MBLT = common dso_local global i32 0, align 4
@VME_MBLT = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_TM_2eVME = common dso_local global i32 0, align 4
@VME_2eVME = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_TM_2eSST = common dso_local global i32 0, align 4
@VME_2eSST = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_TM_2eSSTB = common dso_local global i32 0, align 4
@VME_2eSSTB = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_SUP = common dso_local global i32 0, align 4
@VME_SUPER = common dso_local global i32 0, align 4
@VME_USER = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_PGM = common dso_local global i32 0, align 4
@VME_PROG = common dso_local global i32 0, align 4
@VME_DATA = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_DBW_M = common dso_local global i32 0, align 4
@TSI148_LCSR_OTAT_DBW_16 = common dso_local global i32 0, align 4
@VME_D16 = common dso_local global i64 0, align 8
@TSI148_LCSR_OTAT_DBW_32 = common dso_local global i32 0, align 4
@VME_D32 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__tsi148_master_get(%struct.vme_master_resource* %0, i32* %1, i64* %2, i64* %3, i32* %4, i32* %5, i64* %6) #0 {
  %8 = alloca %struct.vme_master_resource*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store %struct.vme_master_resource* %0, %struct.vme_master_resource** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64* %2, i64** %10, align 8
  store i64* %3, i64** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i64* %6, i64** %14, align 8
  %26 = load %struct.vme_master_resource*, %struct.vme_master_resource** %8, align 8
  %27 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %15, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsi148_bridge, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** @TSI148_LCSR_OT, align 8
  %33 = load i32, i32* %15, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %31, %36
  %38 = load i64, i64* @TSI148_LCSR_OFFSET_OTAT, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @ioread32be(i64 %39)
  store i32 %40, i32* %16, align 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsi148_bridge, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** @TSI148_LCSR_OT, align 8
  %45 = load i32, i32* %15, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %43, %48
  %50 = load i64, i64* @TSI148_LCSR_OFFSET_OTSAU, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @ioread32be(i64 %51)
  store i32 %52, i32* %18, align 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsi148_bridge, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64*, i64** @TSI148_LCSR_OT, align 8
  %57 = load i32, i32* %15, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %55, %60
  %62 = load i64, i64* @TSI148_LCSR_OFFSET_OTSAL, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @ioread32be(i64 %63)
  store i32 %64, i32* %17, align 4
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsi148_bridge, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64*, i64** @TSI148_LCSR_OT, align 8
  %69 = load i32, i32* %15, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %67, %72
  %74 = load i64, i64* @TSI148_LCSR_OFFSET_OTEAU, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @ioread32be(i64 %75)
  store i32 %76, i32* %20, align 4
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsi148_bridge, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64*, i64** @TSI148_LCSR_OT, align 8
  %81 = load i32, i32* %15, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %79, %84
  %86 = load i64, i64* @TSI148_LCSR_OFFSET_OTEAL, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @ioread32be(i64 %87)
  store i32 %88, i32* %19, align 4
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsi148_bridge, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64*, i64** @TSI148_LCSR_OT, align 8
  %93 = load i32, i32* %15, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %91, %96
  %98 = load i64, i64* @TSI148_LCSR_OFFSET_OTOFU, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @ioread32be(i64 %99)
  store i32 %100, i32* %22, align 4
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsi148_bridge, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64*, i64** @TSI148_LCSR_OT, align 8
  %105 = load i32, i32* %15, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %103, %108
  %110 = load i64, i64* @TSI148_LCSR_OFFSET_OTOFL, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @ioread32be(i64 %111)
  store i32 %112, i32* %21, align 4
  %113 = load i32, i32* %18, align 4
  %114 = load i32, i32* %17, align 4
  %115 = call i32 @reg_join(i32 %113, i32 %114, i64* %23)
  %116 = load i32, i32* %20, align 4
  %117 = load i32, i32* %19, align 4
  %118 = call i32 @reg_join(i32 %116, i32 %117, i64* %24)
  %119 = load i32, i32* %22, align 4
  %120 = load i32, i32* %21, align 4
  %121 = call i32 @reg_join(i32 %119, i32 %120, i64* %25)
  %122 = load i64, i64* %23, align 8
  %123 = load i64, i64* %25, align 8
  %124 = add i64 %122, %123
  %125 = load i64*, i64** %10, align 8
  store i64 %124, i64* %125, align 8
  %126 = load i64, i64* %24, align 8
  %127 = load i64, i64* %23, align 8
  %128 = sub i64 %126, %127
  %129 = add i64 %128, 65536
  %130 = load i64*, i64** %11, align 8
  store i64 %129, i64* %130, align 8
  %131 = load i32*, i32** %9, align 8
  store i32 0, i32* %131, align 4
  %132 = load i32*, i32** %12, align 8
  store i32 0, i32* %132, align 4
  %133 = load i32*, i32** %13, align 8
  store i32 0, i32* %133, align 4
  %134 = load i64*, i64** %14, align 8
  store i64 0, i64* %134, align 8
  %135 = load i32, i32* %16, align 4
  %136 = load i32, i32* @TSI148_LCSR_OTAT_EN, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %7
  %140 = load i32*, i32** %9, align 8
  store i32 1, i32* %140, align 4
  br label %141

141:                                              ; preds = %139, %7
  %142 = load i32, i32* %16, align 4
  %143 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_M, align 4
  %144 = and i32 %142, %143
  %145 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_A16, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %141
  %148 = load i32, i32* @VME_A16, align 4
  %149 = load i32*, i32** %12, align 8
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %148
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %147, %141
  %153 = load i32, i32* %16, align 4
  %154 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_M, align 4
  %155 = and i32 %153, %154
  %156 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_A24, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %152
  %159 = load i32, i32* @VME_A24, align 4
  %160 = load i32*, i32** %12, align 8
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %159
  store i32 %162, i32* %160, align 4
  br label %163

163:                                              ; preds = %158, %152
  %164 = load i32, i32* %16, align 4
  %165 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_M, align 4
  %166 = and i32 %164, %165
  %167 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_A32, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %174

169:                                              ; preds = %163
  %170 = load i32, i32* @VME_A32, align 4
  %171 = load i32*, i32** %12, align 8
  %172 = load i32, i32* %171, align 4
  %173 = or i32 %172, %170
  store i32 %173, i32* %171, align 4
  br label %174

174:                                              ; preds = %169, %163
  %175 = load i32, i32* %16, align 4
  %176 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_M, align 4
  %177 = and i32 %175, %176
  %178 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_A64, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %185

180:                                              ; preds = %174
  %181 = load i32, i32* @VME_A64, align 4
  %182 = load i32*, i32** %12, align 8
  %183 = load i32, i32* %182, align 4
  %184 = or i32 %183, %181
  store i32 %184, i32* %182, align 4
  br label %185

185:                                              ; preds = %180, %174
  %186 = load i32, i32* %16, align 4
  %187 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_M, align 4
  %188 = and i32 %186, %187
  %189 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_CRCSR, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %196

191:                                              ; preds = %185
  %192 = load i32, i32* @VME_CRCSR, align 4
  %193 = load i32*, i32** %12, align 8
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %194, %192
  store i32 %195, i32* %193, align 4
  br label %196

196:                                              ; preds = %191, %185
  %197 = load i32, i32* %16, align 4
  %198 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_M, align 4
  %199 = and i32 %197, %198
  %200 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_USER1, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %207

202:                                              ; preds = %196
  %203 = load i32, i32* @VME_USER1, align 4
  %204 = load i32*, i32** %12, align 8
  %205 = load i32, i32* %204, align 4
  %206 = or i32 %205, %203
  store i32 %206, i32* %204, align 4
  br label %207

207:                                              ; preds = %202, %196
  %208 = load i32, i32* %16, align 4
  %209 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_M, align 4
  %210 = and i32 %208, %209
  %211 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_USER2, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %218

213:                                              ; preds = %207
  %214 = load i32, i32* @VME_USER2, align 4
  %215 = load i32*, i32** %12, align 8
  %216 = load i32, i32* %215, align 4
  %217 = or i32 %216, %214
  store i32 %217, i32* %215, align 4
  br label %218

218:                                              ; preds = %213, %207
  %219 = load i32, i32* %16, align 4
  %220 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_M, align 4
  %221 = and i32 %219, %220
  %222 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_USER3, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %229

224:                                              ; preds = %218
  %225 = load i32, i32* @VME_USER3, align 4
  %226 = load i32*, i32** %12, align 8
  %227 = load i32, i32* %226, align 4
  %228 = or i32 %227, %225
  store i32 %228, i32* %226, align 4
  br label %229

229:                                              ; preds = %224, %218
  %230 = load i32, i32* %16, align 4
  %231 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_M, align 4
  %232 = and i32 %230, %231
  %233 = load i32, i32* @TSI148_LCSR_OTAT_AMODE_USER4, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %240

235:                                              ; preds = %229
  %236 = load i32, i32* @VME_USER4, align 4
  %237 = load i32*, i32** %12, align 8
  %238 = load i32, i32* %237, align 4
  %239 = or i32 %238, %236
  store i32 %239, i32* %237, align 4
  br label %240

240:                                              ; preds = %235, %229
  %241 = load i32, i32* %16, align 4
  %242 = load i32, i32* @TSI148_LCSR_OTAT_2eSSTM_M, align 4
  %243 = and i32 %241, %242
  %244 = load i32, i32* @TSI148_LCSR_OTAT_2eSSTM_160, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %251

246:                                              ; preds = %240
  %247 = load i32, i32* @VME_2eSST160, align 4
  %248 = load i32*, i32** %13, align 8
  %249 = load i32, i32* %248, align 4
  %250 = or i32 %249, %247
  store i32 %250, i32* %248, align 4
  br label %251

251:                                              ; preds = %246, %240
  %252 = load i32, i32* %16, align 4
  %253 = load i32, i32* @TSI148_LCSR_OTAT_2eSSTM_M, align 4
  %254 = and i32 %252, %253
  %255 = load i32, i32* @TSI148_LCSR_OTAT_2eSSTM_267, align 4
  %256 = icmp eq i32 %254, %255
  br i1 %256, label %257, label %262

257:                                              ; preds = %251
  %258 = load i32, i32* @VME_2eSST267, align 4
  %259 = load i32*, i32** %13, align 8
  %260 = load i32, i32* %259, align 4
  %261 = or i32 %260, %258
  store i32 %261, i32* %259, align 4
  br label %262

262:                                              ; preds = %257, %251
  %263 = load i32, i32* %16, align 4
  %264 = load i32, i32* @TSI148_LCSR_OTAT_2eSSTM_M, align 4
  %265 = and i32 %263, %264
  %266 = load i32, i32* @TSI148_LCSR_OTAT_2eSSTM_320, align 4
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %268, label %273

268:                                              ; preds = %262
  %269 = load i32, i32* @VME_2eSST320, align 4
  %270 = load i32*, i32** %13, align 8
  %271 = load i32, i32* %270, align 4
  %272 = or i32 %271, %269
  store i32 %272, i32* %270, align 4
  br label %273

273:                                              ; preds = %268, %262
  %274 = load i32, i32* %16, align 4
  %275 = load i32, i32* @TSI148_LCSR_OTAT_TM_M, align 4
  %276 = and i32 %274, %275
  %277 = load i32, i32* @TSI148_LCSR_OTAT_TM_SCT, align 4
  %278 = icmp eq i32 %276, %277
  br i1 %278, label %279, label %284

279:                                              ; preds = %273
  %280 = load i32, i32* @VME_SCT, align 4
  %281 = load i32*, i32** %13, align 8
  %282 = load i32, i32* %281, align 4
  %283 = or i32 %282, %280
  store i32 %283, i32* %281, align 4
  br label %284

284:                                              ; preds = %279, %273
  %285 = load i32, i32* %16, align 4
  %286 = load i32, i32* @TSI148_LCSR_OTAT_TM_M, align 4
  %287 = and i32 %285, %286
  %288 = load i32, i32* @TSI148_LCSR_OTAT_TM_BLT, align 4
  %289 = icmp eq i32 %287, %288
  br i1 %289, label %290, label %295

290:                                              ; preds = %284
  %291 = load i32, i32* @VME_BLT, align 4
  %292 = load i32*, i32** %13, align 8
  %293 = load i32, i32* %292, align 4
  %294 = or i32 %293, %291
  store i32 %294, i32* %292, align 4
  br label %295

295:                                              ; preds = %290, %284
  %296 = load i32, i32* %16, align 4
  %297 = load i32, i32* @TSI148_LCSR_OTAT_TM_M, align 4
  %298 = and i32 %296, %297
  %299 = load i32, i32* @TSI148_LCSR_OTAT_TM_MBLT, align 4
  %300 = icmp eq i32 %298, %299
  br i1 %300, label %301, label %306

301:                                              ; preds = %295
  %302 = load i32, i32* @VME_MBLT, align 4
  %303 = load i32*, i32** %13, align 8
  %304 = load i32, i32* %303, align 4
  %305 = or i32 %304, %302
  store i32 %305, i32* %303, align 4
  br label %306

306:                                              ; preds = %301, %295
  %307 = load i32, i32* %16, align 4
  %308 = load i32, i32* @TSI148_LCSR_OTAT_TM_M, align 4
  %309 = and i32 %307, %308
  %310 = load i32, i32* @TSI148_LCSR_OTAT_TM_2eVME, align 4
  %311 = icmp eq i32 %309, %310
  br i1 %311, label %312, label %317

312:                                              ; preds = %306
  %313 = load i32, i32* @VME_2eVME, align 4
  %314 = load i32*, i32** %13, align 8
  %315 = load i32, i32* %314, align 4
  %316 = or i32 %315, %313
  store i32 %316, i32* %314, align 4
  br label %317

317:                                              ; preds = %312, %306
  %318 = load i32, i32* %16, align 4
  %319 = load i32, i32* @TSI148_LCSR_OTAT_TM_M, align 4
  %320 = and i32 %318, %319
  %321 = load i32, i32* @TSI148_LCSR_OTAT_TM_2eSST, align 4
  %322 = icmp eq i32 %320, %321
  br i1 %322, label %323, label %328

323:                                              ; preds = %317
  %324 = load i32, i32* @VME_2eSST, align 4
  %325 = load i32*, i32** %13, align 8
  %326 = load i32, i32* %325, align 4
  %327 = or i32 %326, %324
  store i32 %327, i32* %325, align 4
  br label %328

328:                                              ; preds = %323, %317
  %329 = load i32, i32* %16, align 4
  %330 = load i32, i32* @TSI148_LCSR_OTAT_TM_M, align 4
  %331 = and i32 %329, %330
  %332 = load i32, i32* @TSI148_LCSR_OTAT_TM_2eSSTB, align 4
  %333 = icmp eq i32 %331, %332
  br i1 %333, label %334, label %339

334:                                              ; preds = %328
  %335 = load i32, i32* @VME_2eSSTB, align 4
  %336 = load i32*, i32** %13, align 8
  %337 = load i32, i32* %336, align 4
  %338 = or i32 %337, %335
  store i32 %338, i32* %336, align 4
  br label %339

339:                                              ; preds = %334, %328
  %340 = load i32, i32* %16, align 4
  %341 = load i32, i32* @TSI148_LCSR_OTAT_SUP, align 4
  %342 = and i32 %340, %341
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %349

344:                                              ; preds = %339
  %345 = load i32, i32* @VME_SUPER, align 4
  %346 = load i32*, i32** %13, align 8
  %347 = load i32, i32* %346, align 4
  %348 = or i32 %347, %345
  store i32 %348, i32* %346, align 4
  br label %354

349:                                              ; preds = %339
  %350 = load i32, i32* @VME_USER, align 4
  %351 = load i32*, i32** %13, align 8
  %352 = load i32, i32* %351, align 4
  %353 = or i32 %352, %350
  store i32 %353, i32* %351, align 4
  br label %354

354:                                              ; preds = %349, %344
  %355 = load i32, i32* %16, align 4
  %356 = load i32, i32* @TSI148_LCSR_OTAT_PGM, align 4
  %357 = and i32 %355, %356
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %364

359:                                              ; preds = %354
  %360 = load i32, i32* @VME_PROG, align 4
  %361 = load i32*, i32** %13, align 8
  %362 = load i32, i32* %361, align 4
  %363 = or i32 %362, %360
  store i32 %363, i32* %361, align 4
  br label %369

364:                                              ; preds = %354
  %365 = load i32, i32* @VME_DATA, align 4
  %366 = load i32*, i32** %13, align 8
  %367 = load i32, i32* %366, align 4
  %368 = or i32 %367, %365
  store i32 %368, i32* %366, align 4
  br label %369

369:                                              ; preds = %364, %359
  %370 = load i32, i32* %16, align 4
  %371 = load i32, i32* @TSI148_LCSR_OTAT_DBW_M, align 4
  %372 = and i32 %370, %371
  %373 = load i32, i32* @TSI148_LCSR_OTAT_DBW_16, align 4
  %374 = icmp eq i32 %372, %373
  br i1 %374, label %375, label %378

375:                                              ; preds = %369
  %376 = load i64, i64* @VME_D16, align 8
  %377 = load i64*, i64** %14, align 8
  store i64 %376, i64* %377, align 8
  br label %378

378:                                              ; preds = %375, %369
  %379 = load i32, i32* %16, align 4
  %380 = load i32, i32* @TSI148_LCSR_OTAT_DBW_M, align 4
  %381 = and i32 %379, %380
  %382 = load i32, i32* @TSI148_LCSR_OTAT_DBW_32, align 4
  %383 = icmp eq i32 %381, %382
  br i1 %383, label %384, label %387

384:                                              ; preds = %378
  %385 = load i64, i64* @VME_D32, align 8
  %386 = load i64*, i64** %14, align 8
  store i64 %385, i64* %386, align 8
  br label %387

387:                                              ; preds = %384, %378
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
