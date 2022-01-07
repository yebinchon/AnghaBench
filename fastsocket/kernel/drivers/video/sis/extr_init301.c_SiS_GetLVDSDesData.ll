; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_GetLVDSDesData.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_GetLVDSDesData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i64, i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i64, i64 }
%struct.TYPE_4__ = type { i16, i16 }
%struct.TYPE_3__ = type { i16 }
%struct.SiS_LVDSDes = type { i32, i32 }

@SetCRT2ToLCD = common dso_local global i32 0, align 4
@SIS_315H = common dso_local global i64 0, align 8
@Panel_640x480 = common dso_local global i32 0, align 4
@Panel_Custom = common dso_local global i32 0, align 4
@CUT_PANEL848 = common dso_local global i32 0, align 4
@CUT_PANEL856 = common dso_local global i32 0, align 4
@LCDPass11 = common dso_local global i32 0, align 4
@VB_SIS30xBLV = common dso_local global i32 0, align 4
@SetCRT2ToLCDA = common dso_local global i32 0, align 4
@SetCRT2ToTV = common dso_local global i32 0, align 4
@TVSetPAL = common dso_local global i32 0, align 4
@TVSetPALM = common dso_local global i32 0, align 4
@DontExpandLCD = common dso_local global i32 0, align 4
@HalfDCLK = common dso_local global i16 0, align 2
@SetDOSMode = common dso_local global i32 0, align 4
@CUT_COMPAQ1280 = common dso_local global i32 0, align 4
@Panel_1600x1200 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16, i16, i16)* @SiS_GetLVDSDesData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_GetLVDSDesData(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.SiS_Private*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca %struct.SiS_LVDSDes*, align 8
  store %struct.SiS_Private* %0, %struct.SiS_Private** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  store i16 %3, i16* %8, align 2
  store %struct.SiS_LVDSDes* null, %struct.SiS_LVDSDes** %11, align 8
  %12 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %13 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %15 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %14, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %17 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SetCRT2ToLCD, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %97

22:                                               ; preds = %4
  %23 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %24 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %23, i32 0, i32 23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %22
  %28 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %29 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 137
  br i1 %31, label %32, label %48

32:                                               ; preds = %27
  %33 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %34 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %37 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %32
  %41 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %42 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, 1
  %45 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %46 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %40, %32
  br label %48

48:                                               ; preds = %47, %27
  br label %407

49:                                               ; preds = %22
  %50 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %51 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %50, i32 0, i32 7
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SIS_315H, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %96

55:                                               ; preds = %49
  %56 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %57 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @Panel_640x480, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %95

61:                                               ; preds = %55
  %62 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %63 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 3
  br i1 %65, label %66, label %95

66:                                               ; preds = %61
  %67 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %68 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %67, i32 0, i32 0
  store i32 8, i32* %68, align 8
  %69 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %70 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = icmp sge i32 %71, 480
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %75 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %74, i32 0, i32 1
  store i32 512, i32* %75, align 4
  br label %94

76:                                               ; preds = %66
  %77 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %78 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = icmp sge i32 %79, 400
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %83 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %82, i32 0, i32 1
  store i32 436, i32* %83, align 4
  br label %93

84:                                               ; preds = %76
  %85 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %86 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = icmp sge i32 %87, 350
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %91 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %90, i32 0, i32 1
  store i32 440, i32* %91, align 4
  br label %92

92:                                               ; preds = %89, %84
  br label %93

93:                                               ; preds = %92, %81
  br label %94

94:                                               ; preds = %93, %73
  br label %407

95:                                               ; preds = %61, %55
  br label %96

96:                                               ; preds = %95, %49
  br label %97

97:                                               ; preds = %96, %4
  %98 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %99 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %98, i32 0, i32 22
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %127, label %102

102:                                              ; preds = %97
  %103 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %104 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @Panel_Custom, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %127, label %108

108:                                              ; preds = %102
  %109 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %110 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %109, i32 0, i32 9
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @CUT_PANEL848, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %127, label %114

114:                                              ; preds = %108
  %115 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %116 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %115, i32 0, i32 9
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @CUT_PANEL856, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %127, label %120

120:                                              ; preds = %114
  %121 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %122 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %121, i32 0, i32 10
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @LCDPass11, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %120, %114, %108, %102, %97
  br label %407

128:                                              ; preds = %120
  %129 = load i16, i16* %6, align 2
  %130 = zext i16 %129 to i32
  %131 = icmp sle i32 %130, 19
  br i1 %131, label %132, label %141

132:                                              ; preds = %128
  %133 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %134 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %133, i32 0, i32 19
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = load i16, i16* %7, align 2
  %137 = zext i16 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i16, i16* %139, align 2
  store i16 %140, i16* %10, align 2
  br label %150

141:                                              ; preds = %128
  %142 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %143 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %142, i32 0, i32 21
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %143, align 8
  %145 = load i16, i16* %8, align 2
  %146 = zext i16 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  %149 = load i16, i16* %148, align 2
  store i16 %149, i16* %10, align 2
  br label %150

150:                                              ; preds = %141, %132
  %151 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %152 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %151, i32 0, i32 11
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @VB_SIS30xBLV, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %150
  %158 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %159 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @SetCRT2ToLCDA, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %157
  br label %407

165:                                              ; preds = %157, %150
  %166 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %167 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %166, i32 0, i32 16
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %200

170:                                              ; preds = %165
  %171 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %172 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @SetCRT2ToTV, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %200

177:                                              ; preds = %170
  %178 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %179 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %178, i32 0, i32 17
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @TVSetPAL, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %199

184:                                              ; preds = %177
  %185 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %186 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %185, i32 0, i32 17
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @TVSetPALM, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %199, label %191

191:                                              ; preds = %184
  %192 = load i16, i16* %10, align 2
  %193 = zext i16 %192 to i32
  %194 = icmp sle i32 %193, 3
  br i1 %194, label %195, label %198

195:                                              ; preds = %191
  %196 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %197 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %196, i32 0, i32 0
  store i32 256, i32* %197, align 8
  br label %198

198:                                              ; preds = %195, %191
  br label %199

199:                                              ; preds = %198, %184, %177
  br label %322

200:                                              ; preds = %170, %165
  %201 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %202 = call %struct.SiS_LVDSDes* @SiS_GetLVDSDesPtr(%struct.SiS_Private* %201)
  store %struct.SiS_LVDSDes* %202, %struct.SiS_LVDSDes** %11, align 8
  %203 = icmp ne %struct.SiS_LVDSDes* %202, null
  br i1 %203, label %204, label %223

204:                                              ; preds = %200
  %205 = load %struct.SiS_LVDSDes*, %struct.SiS_LVDSDes** %11, align 8
  %206 = load i16, i16* %10, align 2
  %207 = zext i16 %206 to i32
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.SiS_LVDSDes, %struct.SiS_LVDSDes* %205, i64 %208
  %210 = getelementptr inbounds %struct.SiS_LVDSDes, %struct.SiS_LVDSDes* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %213 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %212, i32 0, i32 0
  store i32 %211, i32* %213, align 8
  %214 = load %struct.SiS_LVDSDes*, %struct.SiS_LVDSDes** %11, align 8
  %215 = load i16, i16* %10, align 2
  %216 = zext i16 %215 to i32
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.SiS_LVDSDes, %struct.SiS_LVDSDes* %214, i64 %217
  %219 = getelementptr inbounds %struct.SiS_LVDSDes, %struct.SiS_LVDSDes* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %222 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %221, i32 0, i32 1
  store i32 %220, i32* %222, align 4
  br label %321

223:                                              ; preds = %200
  %224 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %225 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %224, i32 0, i32 10
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @DontExpandLCD, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %311

230:                                              ; preds = %223
  %231 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %232 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %231, i32 0, i32 12
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %235 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %234, i32 0, i32 13
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %233, %236
  br i1 %237, label %238, label %255

238:                                              ; preds = %230
  %239 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %240 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %239, i32 0, i32 14
  %241 = load i32, i32* %240, align 8
  %242 = sext i32 %241 to i64
  %243 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %244 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %243, i32 0, i32 13
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %247 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %246, i32 0, i32 12
  %248 = load i64, i64* %247, align 8
  %249 = sub nsw i64 %245, %248
  %250 = sdiv i64 %249, 2
  %251 = sub nsw i64 %242, %250
  %252 = trunc i64 %251 to i32
  %253 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %254 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %253, i32 0, i32 0
  store i32 %252, i32* %254, align 8
  br label %255

255:                                              ; preds = %238, %230
  %256 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %257 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %260 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %259, i32 0, i32 5
  %261 = load i32, i32* %260, align 4
  %262 = icmp ne i32 %258, %261
  br i1 %262, label %263, label %278

263:                                              ; preds = %255
  %264 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %265 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %264, i32 0, i32 15
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %268 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %267, i32 0, i32 5
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %271 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %270, i32 0, i32 4
  %272 = load i32, i32* %271, align 8
  %273 = sub nsw i32 %269, %272
  %274 = sdiv i32 %273, 2
  %275 = sub nsw i32 %266, %274
  %276 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %277 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %276, i32 0, i32 1
  store i32 %275, i32* %277, align 4
  br label %310

278:                                              ; preds = %255
  %279 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %280 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %279, i32 0, i32 7
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* @SIS_315H, align 8
  %283 = icmp slt i64 %281, %282
  br i1 %283, label %284, label %291

284:                                              ; preds = %278
  %285 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %286 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %285, i32 0, i32 6
  %287 = load i32, i32* %286, align 8
  %288 = sub nsw i32 %287, 1
  %289 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %290 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %289, i32 0, i32 1
  store i32 %288, i32* %290, align 4
  br label %309

291:                                              ; preds = %278
  %292 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %293 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 4
  switch i32 %294, label %308 [
    i32 128, label %295
    i32 137, label %295
    i32 136, label %295
    i32 132, label %301
  ]

295:                                              ; preds = %291, %291, %291
  %296 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %297 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %296, i32 0, i32 6
  %298 = load i32, i32* %297, align 8
  %299 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %300 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %299, i32 0, i32 1
  store i32 %298, i32* %300, align 4
  br label %308

301:                                              ; preds = %291
  %302 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %303 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %302, i32 0, i32 6
  %304 = load i32, i32* %303, align 8
  %305 = sub nsw i32 %304, 1
  %306 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %307 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %306, i32 0, i32 1
  store i32 %305, i32* %307, align 4
  br label %308

308:                                              ; preds = %291, %301, %295
  br label %309

309:                                              ; preds = %308, %284
  br label %310

310:                                              ; preds = %309, %263
  br label %320

311:                                              ; preds = %223
  %312 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %313 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %312, i32 0, i32 7
  %314 = load i64, i64* %313, align 8
  %315 = load i64, i64* @SIS_315H, align 8
  %316 = icmp slt i64 %314, %315
  br i1 %316, label %317, label %318

317:                                              ; preds = %311
  br label %319

318:                                              ; preds = %311
  br label %319

319:                                              ; preds = %318, %317
  br label %320

320:                                              ; preds = %319, %310
  br label %321

321:                                              ; preds = %320, %204
  br label %322

322:                                              ; preds = %321, %199
  %323 = load i16, i16* %6, align 2
  %324 = zext i16 %323 to i32
  %325 = icmp sle i32 %324, 19
  br i1 %325, label %326, label %406

326:                                              ; preds = %322
  %327 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %328 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %327, i32 0, i32 10
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* @DontExpandLCD, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %406

333:                                              ; preds = %326
  %334 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %335 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %334, i32 0, i32 19
  %336 = load %struct.TYPE_4__*, %struct.TYPE_4__** %335, align 8
  %337 = load i16, i16* %7, align 2
  %338 = zext i16 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %336, i64 %338
  %340 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %339, i32 0, i32 1
  %341 = load i16, i16* %340, align 2
  store i16 %341, i16* %9, align 2
  %342 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %343 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %342, i32 0, i32 11
  %344 = load i32, i32* %343, align 4
  %345 = load i32, i32* @VB_SIS30xBLV, align 4
  %346 = and i32 %344, %345
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %366

348:                                              ; preds = %333
  %349 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %350 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %349, i32 0, i32 2
  %351 = load i32, i32* %350, align 8
  %352 = load i32, i32* @SetCRT2ToLCDA, align 4
  %353 = and i32 %351, %352
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %366

355:                                              ; preds = %348
  %356 = load i16, i16* %9, align 2
  %357 = zext i16 %356 to i32
  %358 = load i16, i16* @HalfDCLK, align 2
  %359 = zext i16 %358 to i32
  %360 = and i32 %357, %359
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %365, label %362

362:                                              ; preds = %355
  %363 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %364 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %363, i32 0, i32 0
  store i32 632, i32* %364, align 8
  br label %365

365:                                              ; preds = %362, %355
  br label %405

366:                                              ; preds = %348, %333
  %367 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %368 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %367, i32 0, i32 18
  %369 = load i32, i32* %368, align 4
  %370 = load i32, i32* @SetDOSMode, align 4
  %371 = and i32 %369, %370
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %404, label %373

373:                                              ; preds = %366
  %374 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %375 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %374, i32 0, i32 3
  %376 = load i32, i32* %375, align 4
  %377 = icmp ne i32 %376, 136
  br i1 %377, label %378, label %403

378:                                              ; preds = %373
  %379 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %380 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %379, i32 0, i32 3
  %381 = load i32, i32* %380, align 4
  %382 = icmp sge i32 %381, 137
  br i1 %382, label %383, label %402

383:                                              ; preds = %378
  %384 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %385 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %384, i32 0, i32 7
  %386 = load i64, i64* %385, align 8
  %387 = load i64, i64* @SIS_315H, align 8
  %388 = icmp slt i64 %386, %387
  br i1 %388, label %389, label %400

389:                                              ; preds = %383
  %390 = load i16, i16* %9, align 2
  %391 = zext i16 %390 to i32
  %392 = load i16, i16* @HalfDCLK, align 2
  %393 = zext i16 %392 to i32
  %394 = and i32 %391, %393
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %399, label %396

396:                                              ; preds = %389
  %397 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %398 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %397, i32 0, i32 0
  store i32 320, i32* %398, align 8
  br label %399

399:                                              ; preds = %396, %389
  br label %401

400:                                              ; preds = %383
  br label %401

401:                                              ; preds = %400, %399
  br label %402

402:                                              ; preds = %401, %378
  br label %403

403:                                              ; preds = %402, %373
  br label %404

404:                                              ; preds = %403, %366
  br label %405

405:                                              ; preds = %404, %365
  br label %406

406:                                              ; preds = %405, %326, %322
  br label %407

407:                                              ; preds = %48, %94, %127, %406, %164
  ret void
}

declare dso_local %struct.SiS_LVDSDes* @SiS_GetLVDSDesPtr(%struct.SiS_Private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
