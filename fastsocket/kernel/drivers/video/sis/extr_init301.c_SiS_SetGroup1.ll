; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_SetGroup1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_SetGroup1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i8*, i32, i16, i64, i32, i32, i32, i32, i16, i16, i32, i64, i16, i16, i8*, i32, i32, i64, i32, i16, i16, i32, i32, i32, i64, i64, i64, %struct.TYPE_6__*, i64, %struct.TYPE_5__*, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i16, i16 }
%struct.TYPE_4__ = type { i16 }

@SetCRT2ToLCDA = common dso_local global i32 0, align 4
@SIS_315H = common dso_local global i64 0, align 8
@SetInSlaveMode = common dso_local global i32 0, align 4
@VB_SISVB = common dso_local global i32 0, align 4
@HalfDCLK = common dso_local global i16 0, align 2
@SetCRT2ToRAMDAC = common dso_local global i32 0, align 4
@TVSetNTSC1024 = common dso_local global i32 0, align 4
@TVSet525p1024 = common dso_local global i32 0, align 4
@SIS_661 = common dso_local global i64 0, align 8
@SetCRT2ToSVIDEO = common dso_local global i32 0, align 4
@SetCRT2ToAVIDEO = common dso_local global i32 0, align 4
@VB_NoLCD = common dso_local global i32 0, align 4
@SetCRT2ToLCD = common dso_local global i32 0, align 4
@SetCRT2ToTV = common dso_local global i32 0, align 4
@DontExpandLCD = common dso_local global i32 0, align 4
@DoubleScanMode = common dso_local global i16 0, align 2
@Panel_1024x768 = common dso_local global i64 0, align 8
@Panel_1280x1024 = common dso_local global i64 0, align 8
@Panel_1280x960 = common dso_local global i64 0, align 8
@Panel_1600x1200 = common dso_local global i64 0, align 8
@Panel_640x480 = common dso_local global i64 0, align 8
@Panel_Custom = common dso_local global i64 0, align 8
@SIS_300 = common dso_local global i64 0, align 8
@SIS_650 = common dso_local global i64 0, align 8
@SIS_740 = common dso_local global i64 0, align 8
@SIS_RI_1280x1024 = common dso_local global i16 0, align 2
@SIS_RI_1600x1200 = common dso_local global i16 0, align 2
@SetCRT2ToHiVision = common dso_local global i32 0, align 4
@SetCRT2ToTVNoYPbPrHiVision = common dso_local global i32 0, align 4
@VB_SIS301 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16, i16, i16)* @SiS_SetGroup1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_SetGroup1(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3) #0 {
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
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  store %struct.SiS_Private* %0, %struct.SiS_Private** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  store i16 %3, i16* %8, align 2
  store i16 0, i16* %9, align 2
  store i16 0, i16* %10, align 2
  store i16 0, i16* %11, align 2
  store i16 0, i16* %12, align 2
  store i16 0, i16* %13, align 2
  store i16 0, i16* %14, align 2
  store i16 0, i16* %15, align 2
  store i16 0, i16* %17, align 2
  %25 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %26 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @SetCRT2ToLCDA, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %4
  %32 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %33 = load i16, i16* %6, align 2
  %34 = load i16, i16* %7, align 2
  %35 = load i16, i16* %8, align 2
  %36 = call i32 @SiS_SetGroup1_LVDS(%struct.SiS_Private* %32, i16 zeroext %33, i16 zeroext %34, i16 zeroext %35)
  br label %767

37:                                               ; preds = %4
  %38 = load i16, i16* %6, align 2
  %39 = zext i16 %38 to i32
  %40 = icmp sle i32 %39, 19
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %43 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %42, i32 0, i32 31
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i16, i16* %7, align 2
  %46 = zext i16 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i16, i16* %48, align 2
  store i16 %49, i16* %16, align 2
  br label %83

50:                                               ; preds = %37
  %51 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %52 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %51, i32 0, i32 28
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %57 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %56, i32 0, i32 2
  %58 = load i16, i16* %57, align 4
  store i16 %58, i16* %16, align 2
  br label %82

59:                                               ; preds = %50
  %60 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %61 = load i16, i16* %8, align 2
  %62 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %63 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %62, i32 0, i32 30
  %64 = load i32, i32* %63, align 8
  %65 = call zeroext i16 @SiS_GetRefCRT1CRTC(%struct.SiS_Private* %60, i16 zeroext %61, i32 %64)
  store i16 %65, i16* %15, align 2
  %66 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %67 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %66, i32 0, i32 29
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = load i16, i16* %7, align 2
  %70 = zext i16 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i16, i16* %72, align 2
  store i16 %73, i16* %17, align 2
  %74 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %75 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %74, i32 0, i32 29
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load i16, i16* %7, align 2
  %78 = zext i16 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i16, i16* %80, align 2
  store i16 %81, i16* %16, align 2
  br label %82

82:                                               ; preds = %59, %55
  br label %83

83:                                               ; preds = %82, %41
  %84 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %85 = load i16, i16* %6, align 2
  %86 = load i16, i16* %7, align 2
  %87 = load i16, i16* %8, align 2
  %88 = call i32 @SiS_SetCRT2Offset(%struct.SiS_Private* %84, i16 zeroext %85, i16 zeroext %86, i16 zeroext %87)
  %89 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %90 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @SIS_315H, align 8
  %93 = icmp sge i64 %91, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %83
  %95 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %96 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %106

99:                                               ; preds = %94
  %100 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %101 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @SetInSlaveMode, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %679, label %106

106:                                              ; preds = %99, %94, %83
  %107 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %108 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @SIS_315H, align 8
  %111 = icmp slt i64 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  br label %114

113:                                              ; preds = %106
  br label %114

114:                                              ; preds = %113, %112
  %115 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %116 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @SIS_315H, align 8
  %119 = icmp slt i64 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  br label %122

121:                                              ; preds = %114
  br label %122

122:                                              ; preds = %121, %120
  %123 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %124 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @VB_SISVB, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %333

129:                                              ; preds = %122
  %130 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %131 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %130, i32 0, i32 28
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %177

134:                                              ; preds = %129
  %135 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %136 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %135, i32 0, i32 12
  %137 = load i16, i16* %136, align 8
  %138 = zext i16 %137 to i32
  %139 = load i16, i16* %13, align 2
  %140 = zext i16 %139 to i32
  %141 = add nsw i32 %138, %140
  %142 = trunc i32 %141 to i16
  store i16 %142, i16* %11, align 2
  %143 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %144 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %143, i32 0, i32 13
  %145 = load i16, i16* %144, align 2
  %146 = zext i16 %145 to i32
  %147 = load i16, i16* %13, align 2
  %148 = zext i16 %147 to i32
  %149 = add nsw i32 %146, %148
  %150 = trunc i32 %149 to i16
  store i16 %150, i16* %12, align 2
  %151 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %152 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = trunc i32 %153 to i16
  store i16 %154, i16* %10, align 2
  %155 = load i16, i16* %16, align 2
  %156 = zext i16 %155 to i32
  %157 = load i16, i16* @HalfDCLK, align 2
  %158 = zext i16 %157 to i32
  %159 = and i32 %156, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %134
  %162 = load i16, i16* %10, align 2
  %163 = zext i16 %162 to i32
  %164 = ashr i32 %163, 1
  %165 = trunc i32 %164 to i16
  store i16 %165, i16* %10, align 2
  br label %166

166:                                              ; preds = %161, %134
  %167 = load i16, i16* %10, align 2
  %168 = add i16 %167, -1
  store i16 %168, i16* %10, align 2
  %169 = load i16, i16* %12, align 2
  %170 = zext i16 %169 to i32
  %171 = load i16, i16* %10, align 2
  %172 = zext i16 %171 to i32
  %173 = icmp sgt i32 %170, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %166
  %175 = load i16, i16* %10, align 2
  store i16 %175, i16* %12, align 2
  br label %176

176:                                              ; preds = %174, %166
  br label %177

177:                                              ; preds = %176, %129
  %178 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %179 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @SetCRT2ToRAMDAC, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %322

184:                                              ; preds = %177
  %185 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %186 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %185, i32 0, i32 28
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %210

189:                                              ; preds = %184
  %190 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %191 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %190, i32 0, i32 14
  %192 = load i8*, i8** %191, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 4
  %194 = load i8, i8* %193, align 1
  store i8 %194, i8* %18, align 1
  %195 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %196 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %195, i32 0, i32 14
  %197 = load i8*, i8** %196, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 14
  %199 = load i8, i8* %198, align 1
  store i8 %199, i8* %19, align 1
  %200 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %201 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %200, i32 0, i32 14
  %202 = load i8*, i8** %201, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 5
  %204 = load i8, i8* %203, align 1
  store i8 %204, i8* %20, align 1
  %205 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %206 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %205, i32 0, i32 14
  %207 = load i8*, i8** %206, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 15
  %209 = load i8, i8* %208, align 1
  store i8 %209, i8* %21, align 1
  br label %251

210:                                              ; preds = %184
  %211 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %212 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %211, i32 0, i32 27
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %212, align 8
  %214 = load i16, i16* %15, align 2
  %215 = zext i16 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 0
  %218 = load i8*, i8** %217, align 8
  %219 = getelementptr inbounds i8, i8* %218, i64 4
  %220 = load i8, i8* %219, align 1
  store i8 %220, i8* %18, align 1
  %221 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %222 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %221, i32 0, i32 27
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %222, align 8
  %224 = load i16, i16* %15, align 2
  %225 = zext i16 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 14
  %230 = load i8, i8* %229, align 1
  store i8 %230, i8* %19, align 1
  %231 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %232 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %231, i32 0, i32 27
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %232, align 8
  %234 = load i16, i16* %15, align 2
  %235 = zext i16 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 0
  %238 = load i8*, i8** %237, align 8
  %239 = getelementptr inbounds i8, i8* %238, i64 5
  %240 = load i8, i8* %239, align 1
  store i8 %240, i8* %20, align 1
  %241 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %242 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %241, i32 0, i32 27
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** %242, align 8
  %244 = load i16, i16* %15, align 2
  %245 = zext i16 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 0
  %248 = load i8*, i8** %247, align 8
  %249 = getelementptr inbounds i8, i8* %248, i64 15
  %250 = load i8, i8* %249, align 1
  store i8 %250, i8* %21, align 1
  br label %251

251:                                              ; preds = %210, %189
  %252 = load i8, i8* %18, align 1
  %253 = zext i8 %252 to i32
  %254 = load i8, i8* %19, align 1
  %255 = zext i8 %254 to i32
  %256 = and i32 %255, 192
  %257 = shl i32 %256, 2
  %258 = or i32 %253, %257
  %259 = sub nsw i32 %258, 3
  %260 = shl i32 %259, 3
  %261 = trunc i32 %260 to i16
  store i16 %261, i16* %11, align 2
  %262 = load i8, i8* %20, align 1
  %263 = zext i8 %262 to i32
  %264 = and i32 %263, 31
  %265 = load i8, i8* %21, align 1
  %266 = zext i8 %265 to i32
  %267 = and i32 %266, 4
  %268 = shl i32 %267, 3
  %269 = or i32 %264, %268
  %270 = sub nsw i32 %269, 3
  %271 = shl i32 %270, 3
  %272 = trunc i32 %271 to i16
  store i16 %272, i16* %12, align 2
  %273 = load i16, i16* %12, align 2
  %274 = zext i16 %273 to i32
  %275 = and i32 %274, 255
  %276 = trunc i32 %275 to i16
  store i16 %276, i16* %12, align 2
  %277 = load i16, i16* %11, align 2
  %278 = zext i16 %277 to i32
  %279 = and i32 %278, 65280
  %280 = load i16, i16* %12, align 2
  %281 = zext i16 %280 to i32
  %282 = or i32 %281, %279
  %283 = trunc i32 %282 to i16
  store i16 %283, i16* %12, align 2
  %284 = load i16, i16* %13, align 2
  %285 = zext i16 %284 to i32
  %286 = load i16, i16* %11, align 2
  %287 = zext i16 %286 to i32
  %288 = add nsw i32 %287, %285
  %289 = trunc i32 %288 to i16
  store i16 %289, i16* %11, align 2
  %290 = load i16, i16* %13, align 2
  %291 = zext i16 %290 to i32
  %292 = load i16, i16* %12, align 2
  %293 = zext i16 %292 to i32
  %294 = add nsw i32 %293, %291
  %295 = trunc i32 %294 to i16
  store i16 %295, i16* %12, align 2
  %296 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %297 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %296, i32 0, i32 5
  %298 = load i32, i32* %297, align 4
  %299 = trunc i32 %298 to i16
  store i16 %299, i16* %10, align 2
  %300 = load i16, i16* %16, align 2
  %301 = zext i16 %300 to i32
  %302 = load i16, i16* @HalfDCLK, align 2
  %303 = zext i16 %302 to i32
  %304 = and i32 %301, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %311

306:                                              ; preds = %251
  %307 = load i16, i16* %10, align 2
  %308 = zext i16 %307 to i32
  %309 = ashr i32 %308, 1
  %310 = trunc i32 %309 to i16
  store i16 %310, i16* %10, align 2
  br label %311

311:                                              ; preds = %306, %251
  %312 = load i16, i16* %10, align 2
  %313 = add i16 %312, -1
  store i16 %313, i16* %10, align 2
  %314 = load i16, i16* %12, align 2
  %315 = zext i16 %314 to i32
  %316 = load i16, i16* %10, align 2
  %317 = zext i16 %316 to i32
  %318 = icmp sgt i32 %315, %317
  br i1 %318, label %319, label %321

319:                                              ; preds = %311
  %320 = load i16, i16* %10, align 2
  store i16 %320, i16* %12, align 2
  br label %321

321:                                              ; preds = %319, %311
  br label %322

322:                                              ; preds = %321, %177
  %323 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %324 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %323, i32 0, i32 15
  %325 = load i32, i32* %324, align 8
  %326 = load i32, i32* @TVSetNTSC1024, align 4
  %327 = load i32, i32* @TVSet525p1024, align 4
  %328 = or i32 %326, %327
  %329 = and i32 %325, %328
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %332

331:                                              ; preds = %322
  store i16 1040, i16* %11, align 2
  store i16 1044, i16* %12, align 2
  br label %332

332:                                              ; preds = %331, %322
  br label %333

333:                                              ; preds = %332, %122
  %334 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %335 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %334, i32 0, i32 22
  %336 = load i32, i32* %335, align 4
  %337 = load i16, i16* %11, align 2
  %338 = call i32 @SiS_SetReg(i32 %336, i32 11, i16 zeroext %337)
  %339 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %340 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %339, i32 0, i32 22
  %341 = load i32, i32* %340, align 4
  %342 = load i16, i16* %12, align 2
  %343 = call i32 @SiS_SetReg(i32 %341, i32 13, i16 zeroext %342)
  %344 = load i16, i16* %11, align 2
  %345 = zext i16 %344 to i32
  %346 = ashr i32 %345, 8
  %347 = and i32 %346, 15
  %348 = load i16, i16* %14, align 2
  %349 = zext i16 %348 to i32
  %350 = ashr i32 %349, 4
  %351 = and i32 %350, 240
  %352 = or i32 %347, %351
  %353 = trunc i32 %352 to i16
  store i16 %353, i16* %9, align 2
  %354 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %355 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %354, i32 0, i32 22
  %356 = load i32, i32* %355, align 4
  %357 = load i16, i16* %9, align 2
  %358 = call i32 @SiS_SetReg(i32 %356, i32 12, i16 zeroext %357)
  %359 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %360 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %359, i32 0, i32 16
  %361 = load i32, i32* %360, align 4
  %362 = sub nsw i32 %361, 1
  %363 = trunc i32 %362 to i16
  store i16 %363, i16* %12, align 2
  %364 = load i16, i16* %12, align 2
  %365 = zext i16 %364 to i32
  %366 = and i32 %365, 255
  %367 = trunc i32 %366 to i16
  store i16 %367, i16* %9, align 2
  %368 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %369 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %368, i32 0, i32 3
  %370 = load i64, i64* %369, align 8
  %371 = load i64, i64* @SIS_661, align 8
  %372 = icmp slt i64 %370, %371
  br i1 %372, label %373, label %418

373:                                              ; preds = %333
  %374 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %375 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %374, i32 0, i32 4
  %376 = load i32, i32* %375, align 8
  %377 = icmp eq i32 %376, 1
  br i1 %377, label %378, label %407

378:                                              ; preds = %373
  %379 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %380 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %379, i32 0, i32 3
  %381 = load i64, i64* %380, align 8
  %382 = load i64, i64* @SIS_315H, align 8
  %383 = icmp slt i64 %381, %382
  br i1 %383, label %384, label %403

384:                                              ; preds = %378
  %385 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %386 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %385, i32 0, i32 17
  %387 = load i64, i64* %386, align 8
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %402

389:                                              ; preds = %384
  %390 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %391 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 8
  %393 = load i32, i32* @SetCRT2ToSVIDEO, align 4
  %394 = load i32, i32* @SetCRT2ToAVIDEO, align 4
  %395 = or i32 %393, %394
  %396 = and i32 %392, %395
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %401

398:                                              ; preds = %389
  %399 = load i16, i16* %9, align 2
  %400 = add i16 %399, -1
  store i16 %400, i16* %9, align 2
  br label %401

401:                                              ; preds = %398, %389
  br label %402

402:                                              ; preds = %401, %384
  br label %406

403:                                              ; preds = %378
  %404 = load i16, i16* %9, align 2
  %405 = add i16 %404, -1
  store i16 %405, i16* %9, align 2
  br label %406

406:                                              ; preds = %403, %402
  br label %417

407:                                              ; preds = %373
  %408 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %409 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %408, i32 0, i32 3
  %410 = load i64, i64* %409, align 8
  %411 = load i64, i64* @SIS_315H, align 8
  %412 = icmp sge i64 %410, %411
  br i1 %412, label %413, label %416

413:                                              ; preds = %407
  %414 = load i16, i16* %9, align 2
  %415 = add i16 %414, -1
  store i16 %415, i16* %9, align 2
  br label %416

416:                                              ; preds = %413, %407
  br label %417

417:                                              ; preds = %416, %406
  br label %418

418:                                              ; preds = %417, %333
  %419 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %420 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %419, i32 0, i32 22
  %421 = load i32, i32* %420, align 4
  %422 = load i16, i16* %9, align 2
  %423 = call i32 @SiS_SetReg(i32 %421, i32 14, i16 zeroext %422)
  %424 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %425 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %424, i32 0, i32 18
  %426 = load i32, i32* %425, align 8
  %427 = sub nsw i32 %426, 1
  %428 = trunc i32 %427 to i16
  store i16 %428, i16* %11, align 2
  %429 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %430 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %429, i32 0, i32 22
  %431 = load i32, i32* %430, align 4
  %432 = load i16, i16* %11, align 2
  %433 = call i32 @SiS_SetReg(i32 %431, i32 15, i16 zeroext %432)
  %434 = load i16, i16* %11, align 2
  %435 = zext i16 %434 to i32
  %436 = ashr i32 %435, 5
  %437 = and i32 %436, 56
  %438 = load i16, i16* %12, align 2
  %439 = zext i16 %438 to i32
  %440 = ashr i32 %439, 8
  %441 = and i32 %440, 7
  %442 = or i32 %437, %441
  %443 = trunc i32 %442 to i16
  store i16 %443, i16* %9, align 2
  %444 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %445 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %444, i32 0, i32 22
  %446 = load i32, i32* %445, align 4
  %447 = load i16, i16* %9, align 2
  %448 = call i32 @SiS_SetReg(i32 %446, i32 18, i16 zeroext %447)
  %449 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %450 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %449, i32 0, i32 3
  %451 = load i64, i64* %450, align 8
  %452 = load i64, i64* @SIS_315H, align 8
  %453 = icmp sge i64 %451, %452
  br i1 %453, label %454, label %499

454:                                              ; preds = %418
  %455 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %456 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %455, i32 0, i32 3
  %457 = load i64, i64* %456, align 8
  %458 = load i64, i64* @SIS_661, align 8
  %459 = icmp slt i64 %457, %458
  br i1 %459, label %460, label %499

460:                                              ; preds = %454
  %461 = load i16, i16* %11, align 2
  %462 = add i16 %461, 1
  store i16 %462, i16* %11, align 2
  %463 = load i16, i16* %11, align 2
  store i16 %463, i16* %10, align 2
  %464 = load i16, i16* %12, align 2
  %465 = add i16 %464, 1
  store i16 %465, i16* %12, align 2
  %466 = load i16, i16* %10, align 2
  %467 = zext i16 %466 to i32
  %468 = load i16, i16* %12, align 2
  %469 = zext i16 %468 to i32
  %470 = sub nsw i32 %469, %467
  %471 = trunc i32 %470 to i16
  store i16 %471, i16* %12, align 2
  %472 = load i16, i16* %12, align 2
  %473 = zext i16 %472 to i32
  %474 = ashr i32 %473, 2
  %475 = trunc i32 %474 to i16
  store i16 %475, i16* %12, align 2
  %476 = load i16, i16* %12, align 2
  %477 = zext i16 %476 to i32
  %478 = load i16, i16* %11, align 2
  %479 = zext i16 %478 to i32
  %480 = add nsw i32 %479, %477
  %481 = trunc i32 %480 to i16
  store i16 %481, i16* %11, align 2
  %482 = load i16, i16* %12, align 2
  %483 = zext i16 %482 to i32
  %484 = icmp slt i32 %483, 4
  br i1 %484, label %485, label %486

485:                                              ; preds = %460
  store i16 4, i16* %12, align 2
  br label %486

486:                                              ; preds = %485, %460
  %487 = load i16, i16* %12, align 2
  %488 = zext i16 %487 to i32
  %489 = ashr i32 %488, 2
  %490 = trunc i32 %489 to i16
  store i16 %490, i16* %12, align 2
  %491 = load i16, i16* %11, align 2
  %492 = zext i16 %491 to i32
  %493 = load i16, i16* %12, align 2
  %494 = zext i16 %493 to i32
  %495 = add nsw i32 %494, %492
  %496 = trunc i32 %495 to i16
  store i16 %496, i16* %12, align 2
  %497 = load i16, i16* %12, align 2
  %498 = add i16 %497, 1
  store i16 %498, i16* %12, align 2
  br label %522

499:                                              ; preds = %454, %418
  %500 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %501 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %500, i32 0, i32 16
  %502 = load i32, i32* %501, align 4
  %503 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %504 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %503, i32 0, i32 18
  %505 = load i32, i32* %504, align 8
  %506 = add nsw i32 %502, %505
  %507 = ashr i32 %506, 1
  %508 = trunc i32 %507 to i16
  store i16 %508, i16* %11, align 2
  %509 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %510 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %509, i32 0, i32 16
  %511 = load i32, i32* %510, align 4
  %512 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %513 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %512, i32 0, i32 18
  %514 = load i32, i32* %513, align 8
  %515 = sub nsw i32 %511, %514
  %516 = ashr i32 %515, 4
  %517 = load i16, i16* %11, align 2
  %518 = zext i16 %517 to i32
  %519 = add nsw i32 %516, %518
  %520 = add nsw i32 %519, 1
  %521 = trunc i32 %520 to i16
  store i16 %521, i16* %12, align 2
  br label %522

522:                                              ; preds = %499, %486
  %523 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %524 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %523, i32 0, i32 7
  %525 = load i32, i32* %524, align 4
  %526 = load i32, i32* @VB_SISVB, align 4
  %527 = and i32 %525, %526
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %529, label %651

529:                                              ; preds = %522
  %530 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %531 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %530, i32 0, i32 28
  %532 = load i64, i64* %531, align 8
  %533 = icmp ne i64 %532, 0
  br i1 %533, label %534, label %541

534:                                              ; preds = %529
  %535 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %536 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %535, i32 0, i32 19
  %537 = load i16, i16* %536, align 4
  store i16 %537, i16* %11, align 2
  %538 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %539 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %538, i32 0, i32 20
  %540 = load i16, i16* %539, align 2
  store i16 %540, i16* %12, align 2
  br label %541

541:                                              ; preds = %534, %529
  %542 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %543 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %542, i32 0, i32 1
  %544 = load i32, i32* %543, align 8
  %545 = load i32, i32* @SetCRT2ToRAMDAC, align 4
  %546 = and i32 %544, %545
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %548, label %650

548:                                              ; preds = %541
  %549 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %550 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %549, i32 0, i32 28
  %551 = load i64, i64* %550, align 8
  %552 = icmp ne i64 %551, 0
  br i1 %552, label %553, label %575

553:                                              ; preds = %548
  %554 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %555 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %554, i32 0, i32 14
  %556 = load i8*, i8** %555, align 8
  %557 = getelementptr inbounds i8, i8* %556, i64 8
  %558 = load i8, i8* %557, align 1
  store i8 %558, i8* %22, align 1
  %559 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %560 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %559, i32 0, i32 14
  %561 = load i8*, i8** %560, align 8
  %562 = getelementptr inbounds i8, i8* %561, i64 7
  %563 = load i8, i8* %562, align 1
  store i8 %563, i8* %23, align 1
  %564 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %565 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %564, i32 0, i32 14
  %566 = load i8*, i8** %565, align 8
  %567 = getelementptr inbounds i8, i8* %566, i64 13
  %568 = load i8, i8* %567, align 1
  store i8 %568, i8* %24, align 1
  %569 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %570 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %569, i32 0, i32 14
  %571 = load i8*, i8** %570, align 8
  %572 = getelementptr inbounds i8, i8* %571, i64 9
  %573 = load i8, i8* %572, align 1
  %574 = zext i8 %573 to i16
  store i16 %574, i16* %12, align 2
  br label %617

575:                                              ; preds = %548
  %576 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %577 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %576, i32 0, i32 27
  %578 = load %struct.TYPE_6__*, %struct.TYPE_6__** %577, align 8
  %579 = load i16, i16* %15, align 2
  %580 = zext i16 %579 to i64
  %581 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %578, i64 %580
  %582 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %581, i32 0, i32 0
  %583 = load i8*, i8** %582, align 8
  %584 = getelementptr inbounds i8, i8* %583, i64 8
  %585 = load i8, i8* %584, align 1
  store i8 %585, i8* %22, align 1
  %586 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %587 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %586, i32 0, i32 27
  %588 = load %struct.TYPE_6__*, %struct.TYPE_6__** %587, align 8
  %589 = load i16, i16* %15, align 2
  %590 = zext i16 %589 to i64
  %591 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %588, i64 %590
  %592 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %591, i32 0, i32 0
  %593 = load i8*, i8** %592, align 8
  %594 = getelementptr inbounds i8, i8* %593, i64 7
  %595 = load i8, i8* %594, align 1
  store i8 %595, i8* %23, align 1
  %596 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %597 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %596, i32 0, i32 27
  %598 = load %struct.TYPE_6__*, %struct.TYPE_6__** %597, align 8
  %599 = load i16, i16* %15, align 2
  %600 = zext i16 %599 to i64
  %601 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %598, i64 %600
  %602 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %601, i32 0, i32 0
  %603 = load i8*, i8** %602, align 8
  %604 = getelementptr inbounds i8, i8* %603, i64 13
  %605 = load i8, i8* %604, align 1
  store i8 %605, i8* %24, align 1
  %606 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %607 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %606, i32 0, i32 27
  %608 = load %struct.TYPE_6__*, %struct.TYPE_6__** %607, align 8
  %609 = load i16, i16* %15, align 2
  %610 = zext i16 %609 to i64
  %611 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %608, i64 %610
  %612 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %611, i32 0, i32 0
  %613 = load i8*, i8** %612, align 8
  %614 = getelementptr inbounds i8, i8* %613, i64 9
  %615 = load i8, i8* %614, align 1
  %616 = zext i8 %615 to i16
  store i16 %616, i16* %12, align 2
  br label %617

617:                                              ; preds = %575, %553
  %618 = load i8, i8* %22, align 1
  %619 = zext i8 %618 to i16
  store i16 %619, i16* %11, align 2
  %620 = load i8, i8* %23, align 1
  %621 = zext i8 %620 to i32
  %622 = and i32 %621, 4
  %623 = icmp ne i32 %622, 0
  br i1 %623, label %624, label %629

624:                                              ; preds = %617
  %625 = load i16, i16* %11, align 2
  %626 = zext i16 %625 to i32
  %627 = or i32 %626, 256
  %628 = trunc i32 %627 to i16
  store i16 %628, i16* %11, align 2
  br label %629

629:                                              ; preds = %624, %617
  %630 = load i8, i8* %23, align 1
  %631 = zext i8 %630 to i32
  %632 = and i32 %631, 128
  %633 = icmp ne i32 %632, 0
  br i1 %633, label %634, label %639

634:                                              ; preds = %629
  %635 = load i16, i16* %11, align 2
  %636 = zext i16 %635 to i32
  %637 = or i32 %636, 512
  %638 = trunc i32 %637 to i16
  store i16 %638, i16* %11, align 2
  br label %639

639:                                              ; preds = %634, %629
  %640 = load i8, i8* %24, align 1
  %641 = zext i8 %640 to i32
  %642 = and i32 %641, 8
  %643 = icmp ne i32 %642, 0
  br i1 %643, label %644, label %649

644:                                              ; preds = %639
  %645 = load i16, i16* %11, align 2
  %646 = zext i16 %645 to i32
  %647 = or i32 %646, 1024
  %648 = trunc i32 %647 to i16
  store i16 %648, i16* %11, align 2
  br label %649

649:                                              ; preds = %644, %639
  br label %650

650:                                              ; preds = %649, %541
  br label %651

651:                                              ; preds = %650, %522
  %652 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %653 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %652, i32 0, i32 22
  %654 = load i32, i32* %653, align 4
  %655 = load i16, i16* %11, align 2
  %656 = call i32 @SiS_SetReg(i32 %654, i32 16, i16 zeroext %655)
  %657 = load i16, i16* %11, align 2
  %658 = zext i16 %657 to i32
  %659 = ashr i32 %658, 4
  %660 = and i32 %659, 112
  %661 = load i16, i16* %12, align 2
  %662 = zext i16 %661 to i32
  %663 = and i32 %662, 15
  %664 = or i32 %660, %663
  %665 = trunc i32 %664 to i16
  store i16 %665, i16* %9, align 2
  %666 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %667 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %666, i32 0, i32 22
  %668 = load i32, i32* %667, align 4
  %669 = load i16, i16* %9, align 2
  %670 = call i32 @SiS_SetReg(i32 %668, i32 17, i16 zeroext %669)
  %671 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %672 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %671, i32 0, i32 3
  %673 = load i64, i64* %672, align 8
  %674 = load i64, i64* @SIS_315H, align 8
  %675 = icmp slt i64 %673, %674
  br i1 %675, label %676, label %677

676:                                              ; preds = %651
  br label %678

677:                                              ; preds = %651
  br label %678

678:                                              ; preds = %677, %676
  br label %679

679:                                              ; preds = %678, %99
  %680 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %681 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %680, i32 0, i32 7
  %682 = load i32, i32* %681, align 4
  %683 = load i32, i32* @VB_SISVB, align 4
  %684 = and i32 %682, %683
  %685 = icmp ne i32 %684, 0
  br i1 %685, label %686, label %721

686:                                              ; preds = %679
  %687 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %688 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %687, i32 0, i32 7
  %689 = load i32, i32* %688, align 4
  %690 = load i32, i32* @VB_NoLCD, align 4
  %691 = and i32 %689, %690
  %692 = icmp ne i32 %691, 0
  br i1 %692, label %693, label %706

693:                                              ; preds = %686
  %694 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %695 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %694, i32 0, i32 1
  %696 = load i32, i32* %695, align 8
  %697 = load i32, i32* @SetCRT2ToLCD, align 4
  %698 = and i32 %696, %697
  %699 = icmp ne i32 %698, 0
  br i1 %699, label %700, label %706

700:                                              ; preds = %693
  %701 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %702 = load i16, i16* %6, align 2
  %703 = load i16, i16* %7, align 2
  %704 = load i16, i16* %8, align 2
  %705 = call i32 @SiS_SetGroup1_LVDS(%struct.SiS_Private* %701, i16 zeroext %702, i16 zeroext %703, i16 zeroext %704)
  br label %720

706:                                              ; preds = %693, %686
  %707 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %708 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %707, i32 0, i32 1
  %709 = load i32, i32* %708, align 8
  %710 = load i32, i32* @SetInSlaveMode, align 4
  %711 = and i32 %709, %710
  %712 = icmp ne i32 %711, 0
  br i1 %712, label %713, label %719

713:                                              ; preds = %706
  %714 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %715 = load i16, i16* %6, align 2
  %716 = load i16, i16* %7, align 2
  %717 = load i16, i16* %8, align 2
  %718 = call i32 @SiS_SetGroup1_301(%struct.SiS_Private* %714, i16 zeroext %715, i16 zeroext %716, i16 zeroext %717)
  br label %719

719:                                              ; preds = %713, %706
  br label %720

720:                                              ; preds = %719, %700
  br label %767

721:                                              ; preds = %679
  %722 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %723 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %722, i32 0, i32 3
  %724 = load i64, i64* %723, align 8
  %725 = load i64, i64* @SIS_315H, align 8
  %726 = icmp slt i64 %724, %725
  br i1 %726, label %727, label %733

727:                                              ; preds = %721
  %728 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %729 = load i16, i16* %6, align 2
  %730 = load i16, i16* %7, align 2
  %731 = load i16, i16* %8, align 2
  %732 = call i32 @SiS_SetGroup1_LVDS(%struct.SiS_Private* %728, i16 zeroext %729, i16 zeroext %730, i16 zeroext %731)
  br label %766

733:                                              ; preds = %721
  %734 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %735 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %734, i32 0, i32 17
  %736 = load i64, i64* %735, align 8
  %737 = icmp ne i64 %736, 0
  br i1 %737, label %738, label %759

738:                                              ; preds = %733
  %739 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %740 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %739, i32 0, i32 1
  %741 = load i32, i32* %740, align 8
  %742 = load i32, i32* @SetCRT2ToTV, align 4
  %743 = and i32 %741, %742
  %744 = icmp ne i32 %743, 0
  br i1 %744, label %745, label %752

745:                                              ; preds = %738
  %746 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %747 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %746, i32 0, i32 1
  %748 = load i32, i32* %747, align 8
  %749 = load i32, i32* @SetInSlaveMode, align 4
  %750 = and i32 %748, %749
  %751 = icmp ne i32 %750, 0
  br i1 %751, label %752, label %758

752:                                              ; preds = %745, %738
  %753 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %754 = load i16, i16* %6, align 2
  %755 = load i16, i16* %7, align 2
  %756 = load i16, i16* %8, align 2
  %757 = call i32 @SiS_SetGroup1_LVDS(%struct.SiS_Private* %753, i16 zeroext %754, i16 zeroext %755, i16 zeroext %756)
  br label %758

758:                                              ; preds = %752, %745
  br label %765

759:                                              ; preds = %733
  %760 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %761 = load i16, i16* %6, align 2
  %762 = load i16, i16* %7, align 2
  %763 = load i16, i16* %8, align 2
  %764 = call i32 @SiS_SetGroup1_LVDS(%struct.SiS_Private* %760, i16 zeroext %761, i16 zeroext %762, i16 zeroext %763)
  br label %765

765:                                              ; preds = %759, %758
  br label %766

766:                                              ; preds = %765, %727
  br label %767

767:                                              ; preds = %31, %766, %720
  ret void
}

declare dso_local i32 @SiS_SetGroup1_LVDS(%struct.SiS_Private*, i16 zeroext, i16 zeroext, i16 zeroext) #1

declare dso_local zeroext i16 @SiS_GetRefCRT1CRTC(%struct.SiS_Private*, i16 zeroext, i32) #1

declare dso_local i32 @SiS_SetCRT2Offset(%struct.SiS_Private*, i16 zeroext, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_SetReg(i32, i32, i16 zeroext) #1

declare dso_local i32 @SiS_SetGroup1_301(%struct.SiS_Private*, i16 zeroext, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
