; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_ModCRT1CRTC.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_ModCRT1CRTC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i64, i32, i32, i32, i64, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, %struct.SiS_LVDSCRT1Data*, %struct.SiS_LVDSCRT1Data*, %struct.SiS_LVDSCRT1Data*, %struct.SiS_LVDSCRT1Data*, %struct.SiS_LVDSCRT1Data*, %struct.SiS_LVDSCRT1Data*, %struct.SiS_LVDSCRT1Data*, %struct.SiS_LVDSCRT1Data*, %struct.SiS_LVDSCRT1Data*, %struct.SiS_LVDSCRT1Data*, %struct.SiS_LVDSCRT1Data*, %struct.SiS_LVDSCRT1Data*, %struct.SiS_LVDSCRT1Data*, %struct.SiS_LVDSCRT1Data*, %struct.SiS_LVDSCRT1Data*, %struct.SiS_LVDSCRT1Data*, i64 }
%struct.TYPE_4__ = type { i16 }
%struct.TYPE_3__ = type { i16 }
%struct.SiS_LVDSCRT1Data = type { i16* }

@SiS_ModCRT1CRTC.CRIdx = internal constant [11 x i16] [i16 0, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 16, i16 17, i16 21, i16 22], align 16
@CUT_BARCO1366 = common dso_local global i64 0, align 8
@CUT_BARCO1024 = common dso_local global i64 0, align 8
@CUT_PANEL848 = common dso_local global i64 0, align 8
@CUT_PANEL856 = common dso_local global i64 0, align 8
@SetCRT2ToLCDA = common dso_local global i32 0, align 4
@SetInSlaveMode = common dso_local global i32 0, align 4
@VB_SISVB = common dso_local global i32 0, align 4
@LCDPass11 = common dso_local global i32 0, align 4
@SIS_315H = common dso_local global i64 0, align 8
@SetDOSMode = common dso_local global i32 0, align 4
@DoubleScanMode = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16, i16, i16)* @SiS_ModCRT1CRTC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_ModCRT1CRTC(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3) #0 {
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
  %15 = alloca %struct.SiS_LVDSCRT1Data*, align 8
  store %struct.SiS_Private* %0, %struct.SiS_Private** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  store i16 %3, i16* %8, align 2
  store %struct.SiS_LVDSCRT1Data* null, %struct.SiS_LVDSCRT1Data** %15, align 8
  %16 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %17 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CUT_BARCO1366, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %39, label %21

21:                                               ; preds = %4
  %22 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %23 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CUT_BARCO1024, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %39, label %27

27:                                               ; preds = %21
  %28 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %29 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CUT_PANEL848, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %35 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CUT_PANEL856, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33, %27, %21, %4
  br label %301

40:                                               ; preds = %33
  %41 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %42 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %41, i32 0, i32 26
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %40
  %46 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %47 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @SetCRT2ToLCDA, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %45
  %53 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %54 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @SetInSlaveMode, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %52
  br label %301

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %45
  br label %80

62:                                               ; preds = %40
  %63 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %64 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @VB_SISVB, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %62
  %70 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %71 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @SetInSlaveMode, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %69
  br label %301

77:                                               ; preds = %69
  br label %79

78:                                               ; preds = %62
  br label %301

79:                                               ; preds = %77
  br label %80

80:                                               ; preds = %79, %61
  %81 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %82 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @LCDPass11, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %301

88:                                               ; preds = %80
  %89 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %90 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @SIS_315H, align 8
  %93 = icmp slt i64 %91, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %88
  %95 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %96 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @SetDOSMode, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  br label %301

102:                                              ; preds = %94
  br label %103

103:                                              ; preds = %102, %88
  %104 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %105 = load i16, i16* %6, align 2
  %106 = load i16, i16* %7, align 2
  %107 = load i16, i16* %8, align 2
  %108 = call i32 @SiS_GetLVDSCRT1Ptr(%struct.SiS_Private* %104, i16 zeroext %105, i16 zeroext %106, i16 zeroext %107, i16* %13, i16* %14)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %103
  br label %301

111:                                              ; preds = %103
  %112 = load i16, i16* %14, align 2
  %113 = zext i16 %112 to i32
  switch i32 %113, label %162 [
    i32 50, label %114
    i32 14, label %118
    i32 15, label %122
    i32 18, label %126
    i32 19, label %130
    i32 10, label %134
    i32 11, label %138
    i32 80, label %142
    i32 81, label %146
    i32 82, label %150
    i32 83, label %154
    i32 84, label %158
  ]

114:                                              ; preds = %111
  %115 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %116 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %115, i32 0, i32 25
  %117 = load %struct.SiS_LVDSCRT1Data*, %struct.SiS_LVDSCRT1Data** %116, align 8
  store %struct.SiS_LVDSCRT1Data* %117, %struct.SiS_LVDSCRT1Data** %15, align 8
  br label %162

118:                                              ; preds = %111
  %119 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %120 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %119, i32 0, i32 24
  %121 = load %struct.SiS_LVDSCRT1Data*, %struct.SiS_LVDSCRT1Data** %120, align 8
  store %struct.SiS_LVDSCRT1Data* %121, %struct.SiS_LVDSCRT1Data** %15, align 8
  br label %162

122:                                              ; preds = %111
  %123 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %124 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %123, i32 0, i32 23
  %125 = load %struct.SiS_LVDSCRT1Data*, %struct.SiS_LVDSCRT1Data** %124, align 8
  store %struct.SiS_LVDSCRT1Data* %125, %struct.SiS_LVDSCRT1Data** %15, align 8
  br label %162

126:                                              ; preds = %111
  %127 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %128 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %127, i32 0, i32 22
  %129 = load %struct.SiS_LVDSCRT1Data*, %struct.SiS_LVDSCRT1Data** %128, align 8
  store %struct.SiS_LVDSCRT1Data* %129, %struct.SiS_LVDSCRT1Data** %15, align 8
  br label %162

130:                                              ; preds = %111
  %131 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %132 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %131, i32 0, i32 21
  %133 = load %struct.SiS_LVDSCRT1Data*, %struct.SiS_LVDSCRT1Data** %132, align 8
  store %struct.SiS_LVDSCRT1Data* %133, %struct.SiS_LVDSCRT1Data** %15, align 8
  br label %162

134:                                              ; preds = %111
  %135 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %136 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %135, i32 0, i32 20
  %137 = load %struct.SiS_LVDSCRT1Data*, %struct.SiS_LVDSCRT1Data** %136, align 8
  store %struct.SiS_LVDSCRT1Data* %137, %struct.SiS_LVDSCRT1Data** %15, align 8
  br label %162

138:                                              ; preds = %111
  %139 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %140 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %139, i32 0, i32 19
  %141 = load %struct.SiS_LVDSCRT1Data*, %struct.SiS_LVDSCRT1Data** %140, align 8
  store %struct.SiS_LVDSCRT1Data* %141, %struct.SiS_LVDSCRT1Data** %15, align 8
  br label %162

142:                                              ; preds = %111
  %143 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %144 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %143, i32 0, i32 14
  %145 = load %struct.SiS_LVDSCRT1Data*, %struct.SiS_LVDSCRT1Data** %144, align 8
  store %struct.SiS_LVDSCRT1Data* %145, %struct.SiS_LVDSCRT1Data** %15, align 8
  br label %162

146:                                              ; preds = %111
  %147 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %148 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %147, i32 0, i32 13
  %149 = load %struct.SiS_LVDSCRT1Data*, %struct.SiS_LVDSCRT1Data** %148, align 8
  store %struct.SiS_LVDSCRT1Data* %149, %struct.SiS_LVDSCRT1Data** %15, align 8
  br label %162

150:                                              ; preds = %111
  %151 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %152 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %151, i32 0, i32 12
  %153 = load %struct.SiS_LVDSCRT1Data*, %struct.SiS_LVDSCRT1Data** %152, align 8
  store %struct.SiS_LVDSCRT1Data* %153, %struct.SiS_LVDSCRT1Data** %15, align 8
  br label %162

154:                                              ; preds = %111
  %155 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %156 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %155, i32 0, i32 11
  %157 = load %struct.SiS_LVDSCRT1Data*, %struct.SiS_LVDSCRT1Data** %156, align 8
  store %struct.SiS_LVDSCRT1Data* %157, %struct.SiS_LVDSCRT1Data** %15, align 8
  br label %162

158:                                              ; preds = %111
  %159 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %160 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %159, i32 0, i32 10
  %161 = load %struct.SiS_LVDSCRT1Data*, %struct.SiS_LVDSCRT1Data** %160, align 8
  store %struct.SiS_LVDSCRT1Data* %161, %struct.SiS_LVDSCRT1Data** %15, align 8
  br label %162

162:                                              ; preds = %111, %158, %154, %150, %146, %142, %138, %134, %130, %126, %122, %118, %114
  %163 = load %struct.SiS_LVDSCRT1Data*, %struct.SiS_LVDSCRT1Data** %15, align 8
  %164 = icmp ne %struct.SiS_LVDSCRT1Data* %163, null
  br i1 %164, label %165, label %296

165:                                              ; preds = %162
  %166 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %167 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @SiS_SetRegAND(i32 %168, i32 17, i32 127)
  store i16 0, i16* %10, align 2
  br label %170

170:                                              ; preds = %195, %165
  %171 = load i16, i16* %10, align 2
  %172 = zext i16 %171 to i32
  %173 = icmp sle i32 %172, 10
  br i1 %173, label %174, label %198

174:                                              ; preds = %170
  %175 = load %struct.SiS_LVDSCRT1Data*, %struct.SiS_LVDSCRT1Data** %15, align 8
  %176 = load i16, i16* %13, align 2
  %177 = zext i16 %176 to i32
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.SiS_LVDSCRT1Data, %struct.SiS_LVDSCRT1Data* %175, i64 %178
  %180 = getelementptr inbounds %struct.SiS_LVDSCRT1Data, %struct.SiS_LVDSCRT1Data* %179, i32 0, i32 0
  %181 = load i16*, i16** %180, align 8
  %182 = load i16, i16* %10, align 2
  %183 = zext i16 %182 to i64
  %184 = getelementptr inbounds i16, i16* %181, i64 %183
  %185 = load i16, i16* %184, align 2
  store i16 %185, i16* %9, align 2
  %186 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %187 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %186, i32 0, i32 6
  %188 = load i32, i32* %187, align 4
  %189 = load i16, i16* %10, align 2
  %190 = zext i16 %189 to i64
  %191 = getelementptr inbounds [11 x i16], [11 x i16]* @SiS_ModCRT1CRTC.CRIdx, i64 0, i64 %190
  %192 = load i16, i16* %191, align 2
  %193 = load i16, i16* %9, align 2
  %194 = call i32 @SiS_SetReg(i32 %188, i16 zeroext %192, i16 zeroext %193)
  br label %195

195:                                              ; preds = %174
  %196 = load i16, i16* %10, align 2
  %197 = add i16 %196, 1
  store i16 %197, i16* %10, align 2
  br label %170

198:                                              ; preds = %170
  store i16 10, i16* %10, align 2
  store i16 11, i16* %12, align 2
  br label %199

199:                                              ; preds = %221, %198
  %200 = load i16, i16* %10, align 2
  %201 = zext i16 %200 to i32
  %202 = icmp sle i32 %201, 12
  br i1 %202, label %203, label %226

203:                                              ; preds = %199
  %204 = load %struct.SiS_LVDSCRT1Data*, %struct.SiS_LVDSCRT1Data** %15, align 8
  %205 = load i16, i16* %13, align 2
  %206 = zext i16 %205 to i32
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.SiS_LVDSCRT1Data, %struct.SiS_LVDSCRT1Data* %204, i64 %207
  %209 = getelementptr inbounds %struct.SiS_LVDSCRT1Data, %struct.SiS_LVDSCRT1Data* %208, i32 0, i32 0
  %210 = load i16*, i16** %209, align 8
  %211 = load i16, i16* %12, align 2
  %212 = zext i16 %211 to i64
  %213 = getelementptr inbounds i16, i16* %210, i64 %212
  %214 = load i16, i16* %213, align 2
  store i16 %214, i16* %9, align 2
  %215 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %216 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %215, i32 0, i32 9
  %217 = load i32, i32* %216, align 8
  %218 = load i16, i16* %10, align 2
  %219 = load i16, i16* %9, align 2
  %220 = call i32 @SiS_SetReg(i32 %217, i16 zeroext %218, i16 zeroext %219)
  br label %221

221:                                              ; preds = %203
  %222 = load i16, i16* %10, align 2
  %223 = add i16 %222, 1
  store i16 %223, i16* %10, align 2
  %224 = load i16, i16* %12, align 2
  %225 = add i16 %224, 1
  store i16 %225, i16* %12, align 2
  br label %199

226:                                              ; preds = %199
  %227 = load %struct.SiS_LVDSCRT1Data*, %struct.SiS_LVDSCRT1Data** %15, align 8
  %228 = load i16, i16* %13, align 2
  %229 = zext i16 %228 to i32
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.SiS_LVDSCRT1Data, %struct.SiS_LVDSCRT1Data* %227, i64 %230
  %232 = getelementptr inbounds %struct.SiS_LVDSCRT1Data, %struct.SiS_LVDSCRT1Data* %231, i32 0, i32 0
  %233 = load i16*, i16** %232, align 8
  %234 = getelementptr inbounds i16, i16* %233, i64 14
  %235 = load i16, i16* %234, align 2
  %236 = zext i16 %235 to i32
  %237 = and i32 %236, 224
  %238 = trunc i32 %237 to i16
  store i16 %238, i16* %9, align 2
  %239 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %240 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %239, i32 0, i32 9
  %241 = load i32, i32* %240, align 8
  %242 = load i16, i16* %9, align 2
  %243 = call i32 @SiS_SetRegANDOR(i32 %241, i32 14, i32 31, i16 zeroext %242)
  %244 = load i16, i16* %6, align 2
  %245 = zext i16 %244 to i32
  %246 = icmp sle i32 %245, 19
  br i1 %246, label %247, label %256

247:                                              ; preds = %226
  %248 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %249 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %248, i32 0, i32 8
  %250 = load %struct.TYPE_3__*, %struct.TYPE_3__** %249, align 8
  %251 = load i16, i16* %7, align 2
  %252 = zext i16 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 0
  %255 = load i16, i16* %254, align 2
  store i16 %255, i16* %11, align 2
  br label %265

256:                                              ; preds = %226
  %257 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %258 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %257, i32 0, i32 7
  %259 = load %struct.TYPE_4__*, %struct.TYPE_4__** %258, align 8
  %260 = load i16, i16* %7, align 2
  %261 = zext i16 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 0
  %264 = load i16, i16* %263, align 2
  store i16 %264, i16* %11, align 2
  br label %265

265:                                              ; preds = %256, %247
  %266 = load %struct.SiS_LVDSCRT1Data*, %struct.SiS_LVDSCRT1Data** %15, align 8
  %267 = load i16, i16* %13, align 2
  %268 = zext i16 %267 to i32
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.SiS_LVDSCRT1Data, %struct.SiS_LVDSCRT1Data* %266, i64 %269
  %271 = getelementptr inbounds %struct.SiS_LVDSCRT1Data, %struct.SiS_LVDSCRT1Data* %270, i32 0, i32 0
  %272 = load i16*, i16** %271, align 8
  %273 = getelementptr inbounds i16, i16* %272, i64 14
  %274 = load i16, i16* %273, align 2
  %275 = zext i16 %274 to i32
  %276 = and i32 %275, 1
  %277 = shl i32 %276, 5
  %278 = trunc i32 %277 to i16
  store i16 %278, i16* %9, align 2
  %279 = load i16, i16* %11, align 2
  %280 = zext i16 %279 to i32
  %281 = load i16, i16* @DoubleScanMode, align 2
  %282 = zext i16 %281 to i32
  %283 = and i32 %280, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %290

285:                                              ; preds = %265
  %286 = load i16, i16* %9, align 2
  %287 = zext i16 %286 to i32
  %288 = or i32 %287, 128
  %289 = trunc i32 %288 to i16
  store i16 %289, i16* %9, align 2
  br label %290

290:                                              ; preds = %285, %265
  %291 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %292 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %291, i32 0, i32 6
  %293 = load i32, i32* %292, align 4
  %294 = load i16, i16* %9, align 2
  %295 = call i32 @SiS_SetRegANDOR(i32 %293, i32 9, i32 -33, i16 zeroext %294)
  br label %301

296:                                              ; preds = %162
  %297 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %298 = load i16, i16* %6, align 2
  %299 = load i16, i16* %7, align 2
  %300 = call i32 @SiS_CalcLCDACRT1Timing(%struct.SiS_Private* %297, i16 zeroext %298, i16 zeroext %299)
  br label %301

301:                                              ; preds = %39, %59, %76, %78, %87, %101, %110, %296, %290
  ret void
}

declare dso_local i32 @SiS_GetLVDSCRT1Ptr(%struct.SiS_Private*, i16 zeroext, i16 zeroext, i16 zeroext, i16*, i16*) #1

declare dso_local i32 @SiS_SetRegAND(i32, i32, i32) #1

declare dso_local i32 @SiS_SetReg(i32, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_SetRegANDOR(i32, i32, i32, i16 zeroext) #1

declare dso_local i32 @SiS_CalcLCDACRT1Timing(%struct.SiS_Private*, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
