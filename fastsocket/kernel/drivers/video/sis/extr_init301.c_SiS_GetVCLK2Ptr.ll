; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_GetVCLK2Ptr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_GetVCLK2Ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, i32, i32, i64, i16, i32, i16, i32, i32, i64, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64, i64, %struct.TYPE_6__*, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__*, i64 }
%struct.TYPE_6__ = type { i16, i16, i16 }
%struct.TYPE_5__ = type { i16, i16 }
%struct.TYPE_4__ = type { i16, i16 }

@ProgrammingCRT2 = common dso_local global i32 0, align 4
@VB_SISVB = common dso_local global i32 0, align 4
@SetCRT2ToLCD = common dso_local global i32 0, align 4
@SetCRT2ToLCDA = common dso_local global i32 0, align 4
@SIS_315H = common dso_local global i64 0, align 8
@DontExpandLCD = common dso_local global i32 0, align 4
@LCDPass11 = common dso_local global i32 0, align 4
@VCLK_720x480 = common dso_local global i16 0, align 2
@VCLK_720x576 = common dso_local global i16 0, align 2
@VCLK_768x576 = common dso_local global i16 0, align 2
@VCLK_848x480 = common dso_local global i16 0, align 2
@VCLK_856x480 = common dso_local global i16 0, align 2
@VCLK_800x480 = common dso_local global i16 0, align 2
@VCLK_1024x576 = common dso_local global i16 0, align 2
@VCLK_1152x864 = common dso_local global i16 0, align 2
@VCLK_1280x720 = common dso_local global i16 0, align 2
@VCLK_1360x768 = common dso_local global i16 0, align 2
@SIS_315PRO = common dso_local global i64 0, align 8
@SetCRT2ToTV = common dso_local global i32 0, align 4
@SetCRT2ToHiVision = common dso_local global i32 0, align 4
@TVRPLLDIV2XO = common dso_local global i32 0, align 4
@HiTVVCLKDIV2 = common dso_local global i16 0, align 2
@HiTVVCLK = common dso_local global i16 0, align 2
@TVSetTVSimuMode = common dso_local global i32 0, align 4
@HiTVSimuVCLK = common dso_local global i16 0, align 2
@TVSetYPbPr750p = common dso_local global i32 0, align 4
@YPbPr750pVCLK = common dso_local global i16 0, align 2
@TVSetYPbPr525p = common dso_local global i32 0, align 4
@TVVCLKDIV2 = common dso_local global i16 0, align 2
@TVVCLK = common dso_local global i16 0, align 2
@TVCLKBASE_300 = common dso_local global i64 0, align 8
@TVCLKBASE_315 = common dso_local global i64 0, align 8
@SIS_630 = common dso_local global i64 0, align 8
@SIS_300 = common dso_local global i64 0, align 8
@TVSetCHOverScan = common dso_local global i32 0, align 4
@TVSetPAL = common dso_local global i32 0, align 4
@ModeVGA = common dso_local global i64 0, align 8
@TVSetPALM = common dso_local global i32 0, align 4
@TVSetPALN = common dso_local global i32 0, align 4
@CUT_BARCO1366 = common dso_local global i64 0, align 8
@CUT_PANEL848 = common dso_local global i64 0, align 8
@CUT_PANEL856 = common dso_local global i64 0, align 8
@SIS_730 = common dso_local global i64 0, align 8
@VCLK34_300 = common dso_local global i16 0, align 2
@VCLK34_315 = common dso_local global i16 0, align 2
@X_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @SiS_GetVCLK2Ptr(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.SiS_Private*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i8*, align 8
  store %struct.SiS_Private* %0, %struct.SiS_Private** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  store i16 %3, i16* %8, align 2
  store i16 0, i16* %10, align 2
  store i16 0, i16* %11, align 2
  store i16 0, i16* %12, align 2
  store i8* null, i8** %16, align 8
  %17 = load i16, i16* %6, align 2
  %18 = zext i16 %17 to i32
  %19 = icmp sle i32 %18, 19
  br i1 %19, label %20, label %54

20:                                               ; preds = %4
  %21 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %22 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %21, i32 0, i32 22
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = load i16, i16* %7, align 2
  %25 = zext i16 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i16, i16* %27, align 2
  store i16 %28, i16* %13, align 2
  %29 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %30 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %29, i32 0, i32 22
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = load i16, i16* %7, align 2
  %33 = zext i16 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i16, i16* %35, align 2
  store i16 %36, i16* %14, align 2
  %37 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %38 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %37, i32 0, i32 22
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load i16, i16* %7, align 2
  %41 = zext i16 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i16, i16* %43, align 2
  store i16 %44, i16* %9, align 2
  %45 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %46 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %45, i32 0, i32 27
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 2
  %49 = call i32 @SiS_GetRegByte(i64 %48)
  %50 = ashr i32 %49, 2
  %51 = and i32 %50, 3
  %52 = trunc i32 %51 to i16
  store i16 %52, i16* %11, align 2
  %53 = load i16, i16* %11, align 2
  store i16 %53, i16* %12, align 2
  br label %106

54:                                               ; preds = %4
  %55 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %56 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %55, i32 0, i32 26
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i16, i16* %7, align 2
  %59 = zext i16 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i16, i16* %61, align 2
  store i16 %62, i16* %13, align 2
  %63 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %64 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %63, i32 0, i32 26
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i16, i16* %7, align 2
  %67 = zext i16 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i16, i16* %69, align 2
  store i16 %70, i16* %14, align 2
  %71 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %72 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %71, i32 0, i32 25
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = load i16, i16* %8, align 2
  %75 = zext i16 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i16, i16* %77, align 2
  store i16 %78, i16* %9, align 2
  %79 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %80 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %79, i32 0, i32 25
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = load i16, i16* %8, align 2
  %83 = zext i16 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i16, i16* %85, align 2
  store i16 %86, i16* %11, align 2
  %87 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %88 = load i16, i16* %8, align 2
  %89 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %90 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @ProgrammingCRT2, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %54
  %96 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %97 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %96, i32 0, i32 24
  %98 = load i32, i32* %97, align 4
  br label %103

99:                                               ; preds = %54
  %100 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %101 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %100, i32 0, i32 23
  %102 = load i32, i32* %101, align 8
  br label %103

103:                                              ; preds = %99, %95
  %104 = phi i32 [ %98, %95 ], [ %102, %99 ]
  %105 = call zeroext i16 @SiS_GetRefCRTVCLK(%struct.SiS_Private* %87, i16 zeroext %88, i32 %104)
  store i16 %105, i16* %12, align 2
  br label %106

106:                                              ; preds = %103, %20
  %107 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %108 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @VB_SISVB, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %420

113:                                              ; preds = %106
  %114 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %115 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @ProgrammingCRT2, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %387

120:                                              ; preds = %113
  %121 = load i16, i16* %9, align 2
  %122 = zext i16 %121 to i32
  %123 = ashr i32 %122, 6
  %124 = trunc i32 %123 to i16
  store i16 %124, i16* %9, align 2
  %125 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %126 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @SetCRT2ToLCD, align 4
  %129 = load i32, i32* @SetCRT2ToLCDA, align 4
  %130 = or i32 %128, %129
  %131 = and i32 %127, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %263

133:                                              ; preds = %120
  %134 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %135 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @SIS_315H, align 8
  %138 = icmp slt i64 %136, %137
  br i1 %138, label %139, label %159

139:                                              ; preds = %133
  %140 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %141 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %140, i32 0, i32 4
  %142 = load i16, i16* %141, align 8
  store i16 %142, i16* %10, align 2
  %143 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %144 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @DontExpandLCD, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %139
  %150 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %151 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @LCDPass11, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %149
  %157 = load i16, i16* %11, align 2
  store i16 %157, i16* %10, align 2
  br label %158

158:                                              ; preds = %156, %149, %139
  br label %262

159:                                              ; preds = %133
  %160 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %161 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %160, i32 0, i32 6
  %162 = load i16, i16* %161, align 8
  store i16 %162, i16* %10, align 2
  %163 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %164 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @DontExpandLCD, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %261

169:                                              ; preds = %159
  %170 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %171 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @LCDPass11, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %261

176:                                              ; preds = %169
  %177 = load i16, i16* %14, align 2
  %178 = zext i16 %177 to i32
  switch i32 %178, label %199 [
    i32 133, label %179
    i32 132, label %181
    i32 131, label %183
    i32 129, label %185
    i32 128, label %187
    i32 130, label %189
    i32 137, label %191
    i32 136, label %193
    i32 135, label %195
    i32 134, label %197
  ]

179:                                              ; preds = %176
  %180 = load i16, i16* @VCLK_720x480, align 2
  store i16 %180, i16* %10, align 2
  br label %201

181:                                              ; preds = %176
  %182 = load i16, i16* @VCLK_720x576, align 2
  store i16 %182, i16* %10, align 2
  br label %201

183:                                              ; preds = %176
  %184 = load i16, i16* @VCLK_768x576, align 2
  store i16 %184, i16* %10, align 2
  br label %201

185:                                              ; preds = %176
  %186 = load i16, i16* @VCLK_848x480, align 2
  store i16 %186, i16* %10, align 2
  br label %201

187:                                              ; preds = %176
  %188 = load i16, i16* @VCLK_856x480, align 2
  store i16 %188, i16* %10, align 2
  br label %201

189:                                              ; preds = %176
  %190 = load i16, i16* @VCLK_800x480, align 2
  store i16 %190, i16* %10, align 2
  br label %201

191:                                              ; preds = %176
  %192 = load i16, i16* @VCLK_1024x576, align 2
  store i16 %192, i16* %10, align 2
  br label %201

193:                                              ; preds = %176
  %194 = load i16, i16* @VCLK_1152x864, align 2
  store i16 %194, i16* %10, align 2
  br label %201

195:                                              ; preds = %176
  %196 = load i16, i16* @VCLK_1280x720, align 2
  store i16 %196, i16* %10, align 2
  br label %201

197:                                              ; preds = %176
  %198 = load i16, i16* @VCLK_1360x768, align 2
  store i16 %198, i16* %10, align 2
  br label %201

199:                                              ; preds = %176
  %200 = load i16, i16* %11, align 2
  store i16 %200, i16* %10, align 2
  br label %201

201:                                              ; preds = %199, %197, %195, %193, %191, %189, %187, %185, %183, %181, %179
  %202 = load i16, i16* %6, align 2
  %203 = zext i16 %202 to i32
  %204 = icmp sle i32 %203, 19
  br i1 %204, label %205, label %238

205:                                              ; preds = %201
  %206 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %207 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %206, i32 0, i32 3
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @SIS_315PRO, align 8
  %210 = icmp sle i64 %208, %209
  br i1 %210, label %211, label %224

211:                                              ; preds = %205
  %212 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %213 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %212, i32 0, i32 22
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %213, align 8
  %215 = load i16, i16* %7, align 2
  %216 = zext i16 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 2
  %219 = load i16, i16* %218, align 2
  %220 = zext i16 %219 to i32
  %221 = icmp eq i32 %220, 1
  br i1 %221, label %222, label %223

222:                                              ; preds = %211
  store i16 66, i16* %10, align 2
  br label %223

223:                                              ; preds = %222, %211
  br label %237

224:                                              ; preds = %205
  %225 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %226 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %225, i32 0, i32 22
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %226, align 8
  %228 = load i16, i16* %7, align 2
  %229 = zext i16 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 2
  %232 = load i16, i16* %231, align 2
  %233 = zext i16 %232 to i32
  %234 = icmp eq i32 %233, 1
  br i1 %234, label %235, label %236

235:                                              ; preds = %224
  store i16 0, i16* %10, align 2
  br label %236

236:                                              ; preds = %235, %224
  br label %237

237:                                              ; preds = %236, %223
  br label %238

238:                                              ; preds = %237, %201
  %239 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %240 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %239, i32 0, i32 3
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @SIS_315PRO, align 8
  %243 = icmp sle i64 %241, %242
  br i1 %243, label %244, label %260

244:                                              ; preds = %238
  %245 = load i16, i16* %10, align 2
  %246 = zext i16 %245 to i32
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %244
  store i16 65, i16* %10, align 2
  br label %249

249:                                              ; preds = %248, %244
  %250 = load i16, i16* %10, align 2
  %251 = zext i16 %250 to i32
  %252 = icmp eq i32 %251, 1
  br i1 %252, label %253, label %254

253:                                              ; preds = %249
  store i16 67, i16* %10, align 2
  br label %254

254:                                              ; preds = %253, %249
  %255 = load i16, i16* %10, align 2
  %256 = zext i16 %255 to i32
  %257 = icmp eq i32 %256, 4
  br i1 %257, label %258, label %259

258:                                              ; preds = %254
  store i16 68, i16* %10, align 2
  br label %259

259:                                              ; preds = %258, %254
  br label %260

260:                                              ; preds = %259, %238
  br label %261

261:                                              ; preds = %260, %169, %159
  br label %262

262:                                              ; preds = %261, %158
  br label %386

263:                                              ; preds = %120
  %264 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %265 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* @SetCRT2ToTV, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %349

270:                                              ; preds = %263
  %271 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %272 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* @SetCRT2ToHiVision, align 4
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %298

277:                                              ; preds = %270
  %278 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %279 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %278, i32 0, i32 7
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @TVRPLLDIV2XO, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %277
  %285 = load i16, i16* @HiTVVCLKDIV2, align 2
  store i16 %285, i16* %10, align 2
  br label %288

286:                                              ; preds = %277
  %287 = load i16, i16* @HiTVVCLK, align 2
  store i16 %287, i16* %10, align 2
  br label %288

288:                                              ; preds = %286, %284
  %289 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %290 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %289, i32 0, i32 7
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @TVSetTVSimuMode, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %297

295:                                              ; preds = %288
  %296 = load i16, i16* @HiTVSimuVCLK, align 2
  store i16 %296, i16* %10, align 2
  br label %297

297:                                              ; preds = %295, %288
  br label %330

298:                                              ; preds = %270
  %299 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %300 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %299, i32 0, i32 7
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* @TVSetYPbPr750p, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %307

305:                                              ; preds = %298
  %306 = load i16, i16* @YPbPr750pVCLK, align 2
  store i16 %306, i16* %10, align 2
  br label %329

307:                                              ; preds = %298
  %308 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %309 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %308, i32 0, i32 7
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* @TVSetYPbPr525p, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %316

314:                                              ; preds = %307
  %315 = load i16, i16* @TVVCLKDIV2, align 2
  store i16 %315, i16* %10, align 2
  br label %328

316:                                              ; preds = %307
  %317 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %318 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %317, i32 0, i32 7
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* @TVRPLLDIV2XO, align 4
  %321 = and i32 %319, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %316
  %324 = load i16, i16* @TVVCLKDIV2, align 2
  store i16 %324, i16* %10, align 2
  br label %327

325:                                              ; preds = %316
  %326 = load i16, i16* @TVVCLK, align 2
  store i16 %326, i16* %10, align 2
  br label %327

327:                                              ; preds = %325, %323
  br label %328

328:                                              ; preds = %327, %314
  br label %329

329:                                              ; preds = %328, %305
  br label %330

330:                                              ; preds = %329, %297
  %331 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %332 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %331, i32 0, i32 3
  %333 = load i64, i64* %332, align 8
  %334 = load i64, i64* @SIS_315H, align 8
  %335 = icmp slt i64 %333, %334
  br i1 %335, label %336, label %342

336:                                              ; preds = %330
  %337 = load i64, i64* @TVCLKBASE_300, align 8
  %338 = load i16, i16* %10, align 2
  %339 = zext i16 %338 to i64
  %340 = add nsw i64 %339, %337
  %341 = trunc i64 %340 to i16
  store i16 %341, i16* %10, align 2
  br label %348

342:                                              ; preds = %330
  %343 = load i64, i64* @TVCLKBASE_315, align 8
  %344 = load i16, i16* %10, align 2
  %345 = zext i16 %344 to i64
  %346 = add nsw i64 %345, %343
  %347 = trunc i64 %346 to i16
  store i16 %347, i16* %10, align 2
  br label %348

348:                                              ; preds = %342, %336
  br label %385

349:                                              ; preds = %263
  %350 = load i16, i16* %12, align 2
  store i16 %350, i16* %10, align 2
  %351 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %352 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %351, i32 0, i32 3
  %353 = load i64, i64* %352, align 8
  %354 = load i64, i64* @SIS_315H, align 8
  %355 = icmp slt i64 %353, %354
  br i1 %355, label %356, label %384

356:                                              ; preds = %349
  %357 = load i16, i16* %6, align 2
  %358 = zext i16 %357 to i32
  %359 = icmp sgt i32 %358, 19
  br i1 %359, label %360, label %383

360:                                              ; preds = %356
  %361 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %362 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %361, i32 0, i32 3
  %363 = load i64, i64* %362, align 8
  %364 = load i64, i64* @SIS_630, align 8
  %365 = icmp eq i64 %363, %364
  br i1 %365, label %366, label %377

366:                                              ; preds = %360
  %367 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %368 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %367, i32 0, i32 8
  %369 = load i32, i32* %368, align 8
  %370 = icmp sge i32 %369, 48
  br i1 %370, label %371, label %377

371:                                              ; preds = %366
  %372 = load i16, i16* %10, align 2
  %373 = zext i16 %372 to i32
  %374 = icmp eq i32 %373, 20
  br i1 %374, label %375, label %376

375:                                              ; preds = %371
  store i16 52, i16* %10, align 2
  br label %376

376:                                              ; preds = %375, %371
  br label %377

377:                                              ; preds = %376, %366, %360
  %378 = load i16, i16* %10, align 2
  %379 = zext i16 %378 to i32
  %380 = icmp eq i32 %379, 23
  br i1 %380, label %381, label %382

381:                                              ; preds = %377
  store i16 69, i16* %10, align 2
  br label %382

382:                                              ; preds = %381, %377
  br label %383

383:                                              ; preds = %382, %356
  br label %384

384:                                              ; preds = %383, %349
  br label %385

385:                                              ; preds = %384, %348
  br label %386

386:                                              ; preds = %385, %262
  br label %419

387:                                              ; preds = %113
  %388 = load i16, i16* %12, align 2
  store i16 %388, i16* %10, align 2
  %389 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %390 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %389, i32 0, i32 3
  %391 = load i64, i64* %390, align 8
  %392 = load i64, i64* @SIS_315H, align 8
  %393 = icmp slt i64 %391, %392
  br i1 %393, label %394, label %418

394:                                              ; preds = %387
  %395 = load i16, i16* %6, align 2
  %396 = zext i16 %395 to i32
  %397 = icmp sgt i32 %396, 19
  br i1 %397, label %398, label %417

398:                                              ; preds = %394
  %399 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %400 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %399, i32 0, i32 3
  %401 = load i64, i64* %400, align 8
  %402 = load i64, i64* @SIS_630, align 8
  %403 = icmp ne i64 %401, %402
  br i1 %403, label %404, label %416

404:                                              ; preds = %398
  %405 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %406 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %405, i32 0, i32 3
  %407 = load i64, i64* %406, align 8
  %408 = load i64, i64* @SIS_300, align 8
  %409 = icmp ne i64 %407, %408
  br i1 %409, label %410, label %416

410:                                              ; preds = %404
  %411 = load i16, i16* %10, align 2
  %412 = zext i16 %411 to i32
  %413 = icmp eq i32 %412, 27
  br i1 %413, label %414, label %415

414:                                              ; preds = %410
  store i16 72, i16* %10, align 2
  br label %415

415:                                              ; preds = %414, %410
  br label %416

416:                                              ; preds = %415, %404, %398
  br label %417

417:                                              ; preds = %416, %394
  br label %418

418:                                              ; preds = %417, %387
  br label %419

419:                                              ; preds = %418, %386
  br label %660

420:                                              ; preds = %106
  %421 = load i16, i16* %9, align 2
  store i16 %421, i16* %10, align 2
  %422 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %423 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 8
  %425 = load i32, i32* @ProgrammingCRT2, align 4
  %426 = and i32 %424, %425
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %627

428:                                              ; preds = %420
  %429 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %430 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %429, i32 0, i32 9
  %431 = load i64, i64* %430, align 8
  %432 = icmp ne i64 %431, 0
  br i1 %432, label %433, label %572

433:                                              ; preds = %428
  %434 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %435 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %434, i32 0, i32 2
  %436 = load i32, i32* %435, align 8
  %437 = load i32, i32* @SetCRT2ToTV, align 4
  %438 = and i32 %436, %437
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %572

440:                                              ; preds = %433
  %441 = load i16, i16* %10, align 2
  %442 = zext i16 %441 to i32
  %443 = and i32 %442, 31
  %444 = trunc i32 %443 to i16
  store i16 %444, i16* %10, align 2
  store i16 0, i16* %15, align 2
  %445 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %446 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %445, i32 0, i32 7
  %447 = load i32, i32* %446, align 4
  %448 = load i32, i32* @TVSetCHOverScan, align 4
  %449 = and i32 %447, %448
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %456

451:                                              ; preds = %440
  %452 = load i16, i16* %15, align 2
  %453 = zext i16 %452 to i32
  %454 = add nsw i32 %453, 1
  %455 = trunc i32 %454 to i16
  store i16 %455, i16* %15, align 2
  br label %456

456:                                              ; preds = %451, %440
  %457 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %458 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %457, i32 0, i32 7
  %459 = load i32, i32* %458, align 4
  %460 = load i32, i32* @TVSetPAL, align 4
  %461 = and i32 %459, %460
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %522

463:                                              ; preds = %456
  %464 = load i16, i16* %15, align 2
  %465 = zext i16 %464 to i32
  %466 = add nsw i32 %465, 2
  %467 = trunc i32 %466 to i16
  store i16 %467, i16* %15, align 2
  %468 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %469 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %468, i32 0, i32 10
  %470 = load i64, i64* %469, align 8
  %471 = load i64, i64* @ModeVGA, align 8
  %472 = icmp sgt i64 %470, %471
  br i1 %472, label %473, label %480

473:                                              ; preds = %463
  %474 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %475 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %474, i32 0, i32 21
  %476 = load i64, i64* %475, align 8
  %477 = icmp ne i64 %476, 0
  br i1 %477, label %478, label %479

478:                                              ; preds = %473
  store i16 8, i16* %15, align 2
  br label %479

479:                                              ; preds = %478, %473
  br label %480

480:                                              ; preds = %479, %463
  %481 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %482 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %481, i32 0, i32 7
  %483 = load i32, i32* %482, align 4
  %484 = load i32, i32* @TVSetPALM, align 4
  %485 = and i32 %483, %484
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %500

487:                                              ; preds = %480
  store i16 4, i16* %15, align 2
  %488 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %489 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %488, i32 0, i32 7
  %490 = load i32, i32* %489, align 4
  %491 = load i32, i32* @TVSetCHOverScan, align 4
  %492 = and i32 %490, %491
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %494, label %499

494:                                              ; preds = %487
  %495 = load i16, i16* %15, align 2
  %496 = zext i16 %495 to i32
  %497 = add nsw i32 %496, 1
  %498 = trunc i32 %497 to i16
  store i16 %498, i16* %15, align 2
  br label %499

499:                                              ; preds = %494, %487
  br label %521

500:                                              ; preds = %480
  %501 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %502 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %501, i32 0, i32 7
  %503 = load i32, i32* %502, align 4
  %504 = load i32, i32* @TVSetPALN, align 4
  %505 = and i32 %503, %504
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %520

507:                                              ; preds = %500
  store i16 6, i16* %15, align 2
  %508 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %509 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %508, i32 0, i32 7
  %510 = load i32, i32* %509, align 4
  %511 = load i32, i32* @TVSetCHOverScan, align 4
  %512 = and i32 %510, %511
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %514, label %519

514:                                              ; preds = %507
  %515 = load i16, i16* %15, align 2
  %516 = zext i16 %515 to i32
  %517 = add nsw i32 %516, 1
  %518 = trunc i32 %517 to i16
  store i16 %518, i16* %15, align 2
  br label %519

519:                                              ; preds = %514, %507
  br label %520

520:                                              ; preds = %519, %500
  br label %521

521:                                              ; preds = %520, %499
  br label %522

522:                                              ; preds = %521, %456
  %523 = load i16, i16* %15, align 2
  %524 = zext i16 %523 to i32
  switch i32 %524, label %561 [
    i32 0, label %525
    i32 1, label %529
    i32 2, label %533
    i32 3, label %537
    i32 4, label %541
    i32 5, label %545
    i32 6, label %549
    i32 7, label %553
    i32 8, label %557
  ]

525:                                              ; preds = %522
  %526 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %527 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %526, i32 0, i32 11
  %528 = load i8*, i8** %527, align 8
  store i8* %528, i8** %16, align 8
  br label %565

529:                                              ; preds = %522
  %530 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %531 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %530, i32 0, i32 12
  %532 = load i8*, i8** %531, align 8
  store i8* %532, i8** %16, align 8
  br label %565

533:                                              ; preds = %522
  %534 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %535 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %534, i32 0, i32 13
  %536 = load i8*, i8** %535, align 8
  store i8* %536, i8** %16, align 8
  br label %565

537:                                              ; preds = %522
  %538 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %539 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %538, i32 0, i32 14
  %540 = load i8*, i8** %539, align 8
  store i8* %540, i8** %16, align 8
  br label %565

541:                                              ; preds = %522
  %542 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %543 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %542, i32 0, i32 15
  %544 = load i8*, i8** %543, align 8
  store i8* %544, i8** %16, align 8
  br label %565

545:                                              ; preds = %522
  %546 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %547 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %546, i32 0, i32 16
  %548 = load i8*, i8** %547, align 8
  store i8* %548, i8** %16, align 8
  br label %565

549:                                              ; preds = %522
  %550 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %551 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %550, i32 0, i32 17
  %552 = load i8*, i8** %551, align 8
  store i8* %552, i8** %16, align 8
  br label %565

553:                                              ; preds = %522
  %554 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %555 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %554, i32 0, i32 18
  %556 = load i8*, i8** %555, align 8
  store i8* %556, i8** %16, align 8
  br label %565

557:                                              ; preds = %522
  %558 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %559 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %558, i32 0, i32 19
  %560 = load i8*, i8** %559, align 8
  store i8* %560, i8** %16, align 8
  br label %565

561:                                              ; preds = %522
  %562 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %563 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %562, i32 0, i32 14
  %564 = load i8*, i8** %563, align 8
  store i8* %564, i8** %16, align 8
  br label %565

565:                                              ; preds = %561, %557, %553, %549, %545, %541, %537, %533, %529, %525
  %566 = load i8*, i8** %16, align 8
  %567 = load i16, i16* %10, align 2
  %568 = zext i16 %567 to i64
  %569 = getelementptr inbounds i8, i8* %566, i64 %568
  %570 = load i8, i8* %569, align 1
  %571 = zext i8 %570 to i16
  store i16 %571, i16* %10, align 2
  br label %626

572:                                              ; preds = %433, %428
  %573 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %574 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %573, i32 0, i32 2
  %575 = load i32, i32* %574, align 8
  %576 = load i32, i32* @SetCRT2ToLCD, align 4
  %577 = and i32 %575, %576
  %578 = icmp ne i32 %577, 0
  br i1 %578, label %579, label %594

579:                                              ; preds = %572
  %580 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %581 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %580, i32 0, i32 3
  %582 = load i64, i64* %581, align 8
  %583 = load i64, i64* @SIS_315H, align 8
  %584 = icmp slt i64 %582, %583
  br i1 %584, label %585, label %589

585:                                              ; preds = %579
  %586 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %587 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %586, i32 0, i32 4
  %588 = load i16, i16* %587, align 8
  store i16 %588, i16* %10, align 2
  br label %593

589:                                              ; preds = %579
  %590 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %591 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %590, i32 0, i32 6
  %592 = load i16, i16* %591, align 8
  store i16 %592, i16* %10, align 2
  br label %593

593:                                              ; preds = %589, %585
  br label %625

594:                                              ; preds = %572
  %595 = load i16, i16* %12, align 2
  store i16 %595, i16* %10, align 2
  %596 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %597 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %596, i32 0, i32 3
  %598 = load i64, i64* %597, align 8
  %599 = load i64, i64* @SIS_315H, align 8
  %600 = icmp slt i64 %598, %599
  br i1 %600, label %601, label %624

601:                                              ; preds = %594
  %602 = load i16, i16* %6, align 2
  %603 = zext i16 %602 to i32
  %604 = icmp sgt i32 %603, 19
  br i1 %604, label %605, label %623

605:                                              ; preds = %601
  %606 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %607 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %606, i32 0, i32 3
  %608 = load i64, i64* %607, align 8
  %609 = load i64, i64* @SIS_630, align 8
  %610 = icmp eq i64 %608, %609
  br i1 %610, label %611, label %622

611:                                              ; preds = %605
  %612 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %613 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %612, i32 0, i32 8
  %614 = load i32, i32* %613, align 8
  %615 = icmp sge i32 %614, 48
  br i1 %615, label %616, label %622

616:                                              ; preds = %611
  %617 = load i16, i16* %10, align 2
  %618 = zext i16 %617 to i32
  %619 = icmp eq i32 %618, 20
  br i1 %619, label %620, label %621

620:                                              ; preds = %616
  store i16 46, i16* %10, align 2
  br label %621

621:                                              ; preds = %620, %616
  br label %622

622:                                              ; preds = %621, %611, %605
  br label %623

623:                                              ; preds = %622, %601
  br label %624

624:                                              ; preds = %623, %594
  br label %625

625:                                              ; preds = %624, %593
  br label %626

626:                                              ; preds = %625, %565
  br label %659

627:                                              ; preds = %420
  %628 = load i16, i16* %12, align 2
  store i16 %628, i16* %10, align 2
  %629 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %630 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %629, i32 0, i32 3
  %631 = load i64, i64* %630, align 8
  %632 = load i64, i64* @SIS_315H, align 8
  %633 = icmp slt i64 %631, %632
  br i1 %633, label %634, label %658

634:                                              ; preds = %627
  %635 = load i16, i16* %6, align 2
  %636 = zext i16 %635 to i32
  %637 = icmp sgt i32 %636, 19
  br i1 %637, label %638, label %657

638:                                              ; preds = %634
  %639 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %640 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %639, i32 0, i32 3
  %641 = load i64, i64* %640, align 8
  %642 = load i64, i64* @SIS_630, align 8
  %643 = icmp ne i64 %641, %642
  br i1 %643, label %644, label %656

644:                                              ; preds = %638
  %645 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %646 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %645, i32 0, i32 3
  %647 = load i64, i64* %646, align 8
  %648 = load i64, i64* @SIS_300, align 8
  %649 = icmp ne i64 %647, %648
  br i1 %649, label %650, label %656

650:                                              ; preds = %644
  %651 = load i16, i16* %10, align 2
  %652 = zext i16 %651 to i32
  %653 = icmp eq i32 %652, 27
  br i1 %653, label %654, label %655

654:                                              ; preds = %650
  store i16 72, i16* %10, align 2
  br label %655

655:                                              ; preds = %654, %650
  br label %656

656:                                              ; preds = %655, %644, %638
  br label %657

657:                                              ; preds = %656, %634
  br label %658

658:                                              ; preds = %657, %627
  br label %659

659:                                              ; preds = %658, %626
  br label %660

660:                                              ; preds = %659, %419
  %661 = load i16, i16* %10, align 2
  ret i16 %661
}

declare dso_local i32 @SiS_GetRegByte(i64) #1

declare dso_local zeroext i16 @SiS_GetRefCRTVCLK(%struct.SiS_Private*, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
