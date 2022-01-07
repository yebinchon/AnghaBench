; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_GetCRT2Ptr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_GetCRT2Ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, i64, i32, i16, i32, i32, i64, i32, i64, i64, i64, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i16, i16 }
%struct.TYPE_5__ = type { i16 }
%struct.TYPE_4__ = type { i16 }

@VB_SISVB = common dso_local global i32 0, align 4
@SetCRT2ToLCD = common dso_local global i32 0, align 4
@LCDVESATiming = common dso_local global i32 0, align 4
@Panel_1680x1050 = common dso_local global i16 0, align 2
@SIS_RI_1280x800 = common dso_local global i16 0, align 2
@SIS_RI_1400x1050 = common dso_local global i16 0, align 2
@Panel_1280x800 = common dso_local global i16 0, align 2
@Panel_1280x800_2 = common dso_local global i16 0, align 2
@Panel_1280x854 = common dso_local global i16 0, align 2
@SIS_RI_1280x768 = common dso_local global i16 0, align 2
@DontExpandLCD = common dso_local global i32 0, align 4
@SetCRT2ToHiVision = common dso_local global i32 0, align 4
@SetInSlaveMode = common dso_local global i32 0, align 4
@TVSetTVSimuMode = common dso_local global i32 0, align 4
@SetCRT2ToYPbPr525750 = common dso_local global i32 0, align 4
@TVSetYPbPr750p = common dso_local global i32 0, align 4
@TVSetYPbPr525p = common dso_local global i32 0, align 4
@TVSetPAL = common dso_local global i32 0, align 4
@SetCRT2ToTVNoHiVision = common dso_local global i32 0, align 4
@TVSetPALN = common dso_local global i32 0, align 4
@SetCRT2ToTV = common dso_local global i32 0, align 4
@ModeVGA = common dso_local global i64 0, align 8
@TVSetPALM = common dso_local global i32 0, align 4
@TVSetCHOverScan = common dso_local global i32 0, align 4
@LCDPass11 = common dso_local global i32 0, align 4
@CUT_BARCO1024 = common dso_local global i64 0, align 8
@CUT_COMPAQ1280 = common dso_local global i64 0, align 8
@CUT_PANEL848 = common dso_local global i64 0, align 8
@CUT_PANEL856 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16, i16, i16, i16*, i16*)* @SiS_GetCRT2Ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_GetCRT2Ptr(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3, i16* %4, i16* %5) #0 {
  %7 = alloca %struct.SiS_Private*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16*, align 8
  %12 = alloca i16*, align 8
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %7, align 8
  store i16 %1, i16* %8, align 2
  store i16 %2, i16* %9, align 2
  store i16 %3, i16* %10, align 2
  store i16* %4, i16** %11, align 8
  store i16* %5, i16** %12, align 8
  store i16 0, i16* %13, align 2
  store i16 0, i16* %14, align 2
  store i16 0, i16* %15, align 2
  %16 = load i16, i16* %8, align 2
  %17 = zext i16 %16 to i32
  %18 = icmp sle i32 %17, 19
  br i1 %18, label %19, label %28

19:                                               ; preds = %6
  %20 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %21 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %20, i32 0, i32 13
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i16, i16* %9, align 2
  %24 = zext i16 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i16, i16* %26, align 2
  store i16 %27, i16* %14, align 2
  br label %45

28:                                               ; preds = %6
  %29 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %30 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %29, i32 0, i32 11
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = load i16, i16* %10, align 2
  %33 = zext i16 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i16, i16* %35, align 2
  store i16 %36, i16* %14, align 2
  %37 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %38 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %37, i32 0, i32 12
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load i16, i16* %9, align 2
  %41 = zext i16 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i16, i16* %43, align 2
  store i16 %44, i16* %15, align 2
  br label %45

45:                                               ; preds = %28, %19
  %46 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %47 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @VB_SISVB, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %332

52:                                               ; preds = %45
  %53 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %54 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %332

57:                                               ; preds = %52
  %58 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %59 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @SetCRT2ToLCD, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %158

64:                                               ; preds = %57
  %65 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %66 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %65, i32 0, i32 3
  %67 = load i16, i16* %66, align 4
  store i16 %67, i16* %13, align 2
  %68 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %69 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @LCDVESATiming, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %64
  %75 = load i16, i16* %13, align 2
  %76 = zext i16 %75 to i32
  %77 = add nsw i32 %76, 32
  %78 = trunc i32 %77 to i16
  store i16 %78, i16* %13, align 2
  br label %79

79:                                               ; preds = %74, %64
  %80 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %81 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %80, i32 0, i32 3
  %82 = load i16, i16* %81, align 4
  %83 = zext i16 %82 to i32
  %84 = load i16, i16* @Panel_1680x1050, align 2
  %85 = zext i16 %84 to i32
  %86 = icmp eq i32 %83, %85
  br i1 %86, label %87, label %103

87:                                               ; preds = %79
  %88 = load i16, i16* %15, align 2
  %89 = zext i16 %88 to i32
  %90 = load i16, i16* @SIS_RI_1280x800, align 2
  %91 = zext i16 %90 to i32
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  store i16 9, i16* %14, align 2
  br label %102

94:                                               ; preds = %87
  %95 = load i16, i16* %15, align 2
  %96 = zext i16 %95 to i32
  %97 = load i16, i16* @SIS_RI_1400x1050, align 2
  %98 = zext i16 %97 to i32
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  store i16 11, i16* %14, align 2
  br label %101

101:                                              ; preds = %100, %94
  br label %102

102:                                              ; preds = %101, %93
  br label %136

103:                                              ; preds = %79
  %104 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %105 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %104, i32 0, i32 3
  %106 = load i16, i16* %105, align 4
  %107 = zext i16 %106 to i32
  %108 = load i16, i16* @Panel_1280x800, align 2
  %109 = zext i16 %108 to i32
  %110 = icmp eq i32 %107, %109
  br i1 %110, label %127, label %111

111:                                              ; preds = %103
  %112 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %113 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %112, i32 0, i32 3
  %114 = load i16, i16* %113, align 4
  %115 = zext i16 %114 to i32
  %116 = load i16, i16* @Panel_1280x800_2, align 2
  %117 = zext i16 %116 to i32
  %118 = icmp eq i32 %115, %117
  br i1 %118, label %127, label %119

119:                                              ; preds = %111
  %120 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %121 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %120, i32 0, i32 3
  %122 = load i16, i16* %121, align 4
  %123 = zext i16 %122 to i32
  %124 = load i16, i16* @Panel_1280x854, align 2
  %125 = zext i16 %124 to i32
  %126 = icmp eq i32 %123, %125
  br i1 %126, label %127, label %135

127:                                              ; preds = %119, %111, %103
  %128 = load i16, i16* %15, align 2
  %129 = zext i16 %128 to i32
  %130 = load i16, i16* @SIS_RI_1280x768, align 2
  %131 = zext i16 %130 to i32
  %132 = icmp eq i32 %129, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  store i16 9, i16* %14, align 2
  br label %134

134:                                              ; preds = %133, %127
  br label %135

135:                                              ; preds = %134, %119
  br label %136

136:                                              ; preds = %135, %102
  %137 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %138 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @DontExpandLCD, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %157

143:                                              ; preds = %136
  store i16 100, i16* %13, align 2
  %144 = load i16, i16* %8, align 2
  %145 = zext i16 %144 to i32
  %146 = icmp sge i32 %145, 19
  br i1 %146, label %147, label %156

147:                                              ; preds = %143
  %148 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %149 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %148, i32 0, i32 11
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = load i16, i16* %10, align 2
  %152 = zext i16 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  %155 = load i16, i16* %154, align 2
  store i16 %155, i16* %14, align 2
  br label %156

156:                                              ; preds = %147, %143
  br label %157

157:                                              ; preds = %156, %136
  br label %244

158:                                              ; preds = %57
  %159 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %160 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @SetCRT2ToHiVision, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %182

165:                                              ; preds = %158
  store i16 2, i16* %13, align 2
  %166 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %167 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @SetInSlaveMode, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %181

172:                                              ; preds = %165
  store i16 13, i16* %13, align 2
  %173 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %174 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %173, i32 0, i32 7
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @TVSetTVSimuMode, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %172
  store i16 14, i16* %13, align 2
  br label %180

180:                                              ; preds = %179, %172
  br label %181

181:                                              ; preds = %180, %165
  br label %243

182:                                              ; preds = %158
  %183 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %184 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @SetCRT2ToYPbPr525750, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %220

189:                                              ; preds = %182
  %190 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %191 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %190, i32 0, i32 7
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @TVSetYPbPr750p, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %189
  store i16 7, i16* %13, align 2
  br label %207

197:                                              ; preds = %189
  %198 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %199 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %198, i32 0, i32 7
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @TVSetYPbPr525p, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %197
  store i16 6, i16* %13, align 2
  br label %206

205:                                              ; preds = %197
  store i16 5, i16* %13, align 2
  br label %206

206:                                              ; preds = %205, %204
  br label %207

207:                                              ; preds = %206, %196
  %208 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %209 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %208, i32 0, i32 7
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @TVSetTVSimuMode, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %207
  %215 = load i16, i16* %13, align 2
  %216 = zext i16 %215 to i32
  %217 = add nsw i32 %216, 5
  %218 = trunc i32 %217 to i16
  store i16 %218, i16* %13, align 2
  br label %219

219:                                              ; preds = %214, %207
  br label %242

220:                                              ; preds = %182
  %221 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %222 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %221, i32 0, i32 7
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @TVSetPAL, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %220
  store i16 3, i16* %13, align 2
  br label %229

228:                                              ; preds = %220
  store i16 4, i16* %13, align 2
  br label %229

229:                                              ; preds = %228, %227
  %230 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %231 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %230, i32 0, i32 7
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @TVSetTVSimuMode, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %241

236:                                              ; preds = %229
  %237 = load i16, i16* %13, align 2
  %238 = zext i16 %237 to i32
  %239 = add nsw i32 %238, 5
  %240 = trunc i32 %239 to i16
  store i16 %240, i16* %13, align 2
  br label %241

241:                                              ; preds = %236, %229
  br label %242

242:                                              ; preds = %241, %219
  br label %243

243:                                              ; preds = %242, %181
  br label %244

244:                                              ; preds = %243, %157
  %245 = load i16, i16* %14, align 2
  %246 = zext i16 %245 to i32
  %247 = and i32 %246, 63
  %248 = trunc i32 %247 to i16
  store i16 %248, i16* %14, align 2
  %249 = load i16, i16* %8, align 2
  %250 = zext i16 %249 to i32
  %251 = icmp sgt i32 %250, 19
  br i1 %251, label %252, label %327

252:                                              ; preds = %244
  %253 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %254 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @SetCRT2ToTVNoHiVision, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %326

259:                                              ; preds = %252
  %260 = load i16, i16* %15, align 2
  %261 = zext i16 %260 to i32
  switch i32 %261, label %325 [
    i32 131, label %262
    i32 130, label %273
    i32 129, label %273
    i32 135, label %273
    i32 128, label %290
    i32 132, label %291
    i32 134, label %291
    i32 133, label %308
  ]

262:                                              ; preds = %259
  store i16 6, i16* %14, align 2
  %263 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %264 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %263, i32 0, i32 7
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* @TVSetPAL, align 4
  %267 = load i32, i32* @TVSetPALN, align 4
  %268 = or i32 %266, %267
  %269 = and i32 %265, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %262
  store i16 9, i16* %14, align 2
  br label %272

272:                                              ; preds = %271, %262
  br label %325

273:                                              ; preds = %259, %259, %259
  store i16 6, i16* %14, align 2
  %274 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %275 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @SetCRT2ToYPbPr525750, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %289

280:                                              ; preds = %273
  %281 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %282 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %281, i32 0, i32 7
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* @TVSetYPbPr750p, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %280
  store i16 8, i16* %14, align 2
  br label %288

288:                                              ; preds = %287, %280
  br label %289

289:                                              ; preds = %288, %273
  br label %325

290:                                              ; preds = %259
  store i16 4, i16* %14, align 2
  br label %325

291:                                              ; preds = %259, %259
  store i16 7, i16* %14, align 2
  %292 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %293 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @SetCRT2ToYPbPr525750, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %307

298:                                              ; preds = %291
  %299 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %300 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %299, i32 0, i32 7
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* @TVSetYPbPr525p, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %306

305:                                              ; preds = %298
  store i16 8, i16* %14, align 2
  br label %306

306:                                              ; preds = %305, %298
  br label %307

307:                                              ; preds = %306, %291
  br label %325

308:                                              ; preds = %259
  %309 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %310 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* @SetCRT2ToYPbPr525750, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %324

315:                                              ; preds = %308
  %316 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %317 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %316, i32 0, i32 7
  %318 = load i32, i32* %317, align 8
  %319 = load i32, i32* @TVSetYPbPr750p, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %315
  store i16 9, i16* %14, align 2
  br label %323

323:                                              ; preds = %322, %315
  br label %324

324:                                              ; preds = %323, %308
  br label %325

325:                                              ; preds = %259, %324, %307, %290, %289, %272
  br label %326

326:                                              ; preds = %325, %252
  br label %327

327:                                              ; preds = %326, %244
  %328 = load i16, i16* %13, align 2
  %329 = load i16*, i16** %11, align 8
  store i16 %328, i16* %329, align 2
  %330 = load i16, i16* %14, align 2
  %331 = load i16*, i16** %12, align 8
  store i16 %330, i16* %331, align 2
  br label %447

332:                                              ; preds = %52, %45
  store i16 0, i16* %13, align 2
  %333 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %334 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %333, i32 0, i32 10
  %335 = load i64, i64* %334, align 8
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %398

337:                                              ; preds = %332
  %338 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %339 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 8
  %341 = load i32, i32* @SetCRT2ToTV, align 4
  %342 = and i32 %340, %341
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %398

344:                                              ; preds = %337
  store i16 90, i16* %13, align 2
  %345 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %346 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %345, i32 0, i32 7
  %347 = load i32, i32* %346, align 8
  %348 = load i32, i32* @TVSetPAL, align 4
  %349 = and i32 %347, %348
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %382

351:                                              ; preds = %344
  store i16 92, i16* %13, align 2
  %352 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %353 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %352, i32 0, i32 8
  %354 = load i64, i64* %353, align 8
  %355 = load i64, i64* @ModeVGA, align 8
  %356 = icmp sgt i64 %354, %355
  br i1 %356, label %357, label %364

357:                                              ; preds = %351
  %358 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %359 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %358, i32 0, i32 9
  %360 = load i64, i64* %359, align 8
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %363

362:                                              ; preds = %357
  store i16 99, i16* %13, align 2
  br label %363

363:                                              ; preds = %362, %357
  br label %364

364:                                              ; preds = %363, %351
  %365 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %366 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %365, i32 0, i32 7
  %367 = load i32, i32* %366, align 8
  %368 = load i32, i32* @TVSetPALM, align 4
  %369 = and i32 %367, %368
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %372

371:                                              ; preds = %364
  store i16 94, i16* %13, align 2
  br label %381

372:                                              ; preds = %364
  %373 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %374 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %373, i32 0, i32 7
  %375 = load i32, i32* %374, align 8
  %376 = load i32, i32* @TVSetPALN, align 4
  %377 = and i32 %375, %376
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %380

379:                                              ; preds = %372
  store i16 96, i16* %13, align 2
  br label %380

380:                                              ; preds = %379, %372
  br label %381

381:                                              ; preds = %380, %371
  br label %382

382:                                              ; preds = %381, %344
  %383 = load i16, i16* %13, align 2
  %384 = zext i16 %383 to i32
  %385 = icmp ne i32 %384, 99
  br i1 %385, label %386, label %397

386:                                              ; preds = %382
  %387 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %388 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %387, i32 0, i32 7
  %389 = load i32, i32* %388, align 8
  %390 = load i32, i32* @TVSetCHOverScan, align 4
  %391 = and i32 %389, %390
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %396

393:                                              ; preds = %386
  %394 = load i16, i16* %13, align 2
  %395 = add i16 %394, 1
  store i16 %395, i16* %13, align 2
  br label %396

396:                                              ; preds = %393, %386
  br label %397

397:                                              ; preds = %396, %382
  br label %439

398:                                              ; preds = %337, %332
  %399 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %400 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %399, i32 0, i32 3
  %401 = load i16, i16* %400, align 4
  %402 = zext i16 %401 to i32
  switch i32 %402, label %413 [
    i32 138, label %403
    i32 141, label %404
    i32 140, label %405
    i32 139, label %405
    i32 137, label %406
    i32 148, label %407
    i32 146, label %408
    i32 147, label %408
    i32 144, label %409
    i32 145, label %410
    i32 143, label %411
    i32 142, label %412
  ]

403:                                              ; preds = %398
  store i16 12, i16* %13, align 2
  br label %413

404:                                              ; preds = %398
  store i16 10, i16* %13, align 2
  br label %413

405:                                              ; preds = %398, %398
  store i16 14, i16* %13, align 2
  br label %413

406:                                              ; preds = %398
  store i16 16, i16* %13, align 2
  br label %413

407:                                              ; preds = %398
  store i16 18, i16* %13, align 2
  br label %413

408:                                              ; preds = %398, %398
  store i16 20, i16* %13, align 2
  br label %413

409:                                              ; preds = %398
  store i16 22, i16* %13, align 2
  br label %413

410:                                              ; preds = %398
  store i16 24, i16* %13, align 2
  br label %413

411:                                              ; preds = %398
  store i16 26, i16* %13, align 2
  br label %413

412:                                              ; preds = %398
  store i16 28, i16* %13, align 2
  br label %413

413:                                              ; preds = %398, %412, %411, %410, %409, %408, %407, %406, %405, %404, %403
  %414 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %415 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %414, i32 0, i32 3
  %416 = load i16, i16* %415, align 4
  %417 = zext i16 %416 to i32
  switch i32 %417, label %419 [
    i32 141, label %418
    i32 140, label %418
    i32 139, label %418
    i32 138, label %418
  ]

418:                                              ; preds = %413, %413, %413, %413
  br label %430

419:                                              ; preds = %413
  %420 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %421 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %420, i32 0, i32 5
  %422 = load i32, i32* %421, align 4
  %423 = load i32, i32* @DontExpandLCD, align 4
  %424 = and i32 %422, %423
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %429

426:                                              ; preds = %419
  %427 = load i16, i16* %13, align 2
  %428 = add i16 %427, 1
  store i16 %428, i16* %13, align 2
  br label %429

429:                                              ; preds = %426, %419
  br label %430

430:                                              ; preds = %429, %418
  %431 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %432 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %431, i32 0, i32 5
  %433 = load i32, i32* %432, align 4
  %434 = load i32, i32* @LCDPass11, align 4
  %435 = and i32 %433, %434
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %438

437:                                              ; preds = %430
  store i16 30, i16* %13, align 2
  br label %438

438:                                              ; preds = %437, %430
  br label %439

439:                                              ; preds = %438, %397
  %440 = load i16, i16* %13, align 2
  %441 = load i16*, i16** %11, align 8
  store i16 %440, i16* %441, align 2
  %442 = load i16, i16* %14, align 2
  %443 = zext i16 %442 to i32
  %444 = and i32 %443, 31
  %445 = trunc i32 %444 to i16
  %446 = load i16*, i16** %12, align 8
  store i16 %445, i16* %446, align 2
  br label %447

447:                                              ; preds = %439, %327
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
