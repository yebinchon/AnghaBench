; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_dm.c_dm_TXPowerTrackingCallback_ThermalMeter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_dm.c_dm_TXPowerTrackingCallback_ThermalMeter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, i64, i64*, i64, i64, i64, i64, i8*, %struct.TYPE_4__*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@rOFDM0_XATxIQImbalance = common dso_local global i32 0, align 4
@bMaskDWord = common dso_local global i32 0, align 4
@OFDM_Table_Length = common dso_local global i32 0, align 4
@OFDMSwingTable = common dso_local global i64* null, align 8
@COMP_POWER_TRACKING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Initial reg0x%x = 0x%x, OFDM_index=0x%x\0A\00", align 1
@rCCK0_TxFilter1 = common dso_local global i32 0, align 4
@bMaskByte2 = common dso_local global i32 0, align 4
@CCK_Table_length = common dso_local global i32 0, align 4
@CCKSwingTable_Ch1_Ch13 = common dso_local global i64** null, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Initial reg0x%x = 0x%x, CCK_index=0x%x\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@RF90_PATH_A = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Readback ThermalMeterA = %d \0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Valid ThermalMeterA = %d \0A\00", align 1
@HT_CHANNEL_WIDTH_20 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [54 x i8] c"Record_CCK_20Mindex / Record_CCK_40Mindex = %d / %d.\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"Update OFDMSwing[%d] = 0x%x\0A\00", align 1
@ThermalMeterVal = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @dm_TXPowerTrackingCallback_ThermalMeter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_TXPowerTrackingCallback_ThermalMeter(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %13)
  store %struct.r8192_priv* %14, %struct.r8192_priv** %3, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %16 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %15, i32 0, i32 9
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %93, label %19

19:                                               ; preds = %1
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = load i32, i32* @rOFDM0_XATxIQImbalance, align 4
  %22 = load i32, i32* @bMaskDWord, align 4
  %23 = call i64 @rtl8192_QueryBBReg(%struct.net_device* %20, i32 %21, i32 %22)
  store i64 %23, i64* %4, align 8
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %50, %19
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @OFDM_Table_Length, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %53

28:                                               ; preds = %24
  %29 = load i64, i64* %4, align 8
  %30 = load i64*, i64** @OFDMSwingTable, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %29, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %28
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %40 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %42 = load i32, i32* @rOFDM0_XATxIQImbalance, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %4, align 8
  %45 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %46 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (i32, i8*, i64, ...) @RT_TRACE(i32 %41, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %43, i64 %44, i64 %47)
  br label %49

49:                                               ; preds = %36, %28
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  br label %24

53:                                               ; preds = %24
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = load i32, i32* @rCCK0_TxFilter1, align 4
  %56 = load i32, i32* @bMaskByte2, align 4
  %57 = call i64 @rtl8192_QueryBBReg(%struct.net_device* %54, i32 %55, i32 %56)
  store i64 %57, i64* %5, align 8
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %86, %53
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @CCK_Table_length, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %89

62:                                               ; preds = %58
  %63 = load i64, i64* %5, align 8
  %64 = load i64**, i64*** @CCKSwingTable_Ch1_Ch13, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64*, i64** %64, i64 %66
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %63, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %62
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %76 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %78 = load i32, i32* @rCCK0_TxFilter1, align 4
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* %5, align 8
  %81 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %82 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i32 (i32, i8*, i64, ...) @RT_TRACE(i32 %77, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %79, i64 %80, i64 %83)
  br label %89

85:                                               ; preds = %62
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %58

89:                                               ; preds = %72, %58
  %90 = load i8*, i8** @TRUE, align 8
  %91 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %92 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %91, i32 0, i32 9
  store i8* %90, i8** %92, align 8
  br label %294

93:                                               ; preds = %1
  %94 = load %struct.net_device*, %struct.net_device** %2, align 8
  %95 = load i32, i32* @RF90_PATH_A, align 4
  %96 = call i64 @rtl8192_phy_QueryRFReg(%struct.net_device* %94, i32 %95, i32 18, i32 120)
  store i64 %96, i64* %4, align 8
  %97 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %98 = load i64, i64* %4, align 8
  %99 = call i32 (i32, i8*, i64, ...) @RT_TRACE(i32 %97, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %98)
  %100 = load i64, i64* %4, align 8
  %101 = icmp slt i64 %100, 3
  br i1 %101, label %105, label %102

102:                                              ; preds = %93
  %103 = load i64, i64* %4, align 8
  %104 = icmp sgt i64 %103, 13
  br i1 %104, label %105, label %106

105:                                              ; preds = %102, %93
  br label %294

106:                                              ; preds = %102
  %107 = load i64, i64* %4, align 8
  %108 = icmp sge i64 %107, 12
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  store i64 12, i64* %4, align 8
  br label %110

110:                                              ; preds = %109, %106
  %111 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %112 = load i64, i64* %4, align 8
  %113 = call i32 (i32, i8*, i64, ...) @RT_TRACE(i32 %111, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %112)
  %114 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %115 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %114, i32 0, i32 2
  %116 = load i64*, i64** %115, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 0
  store i64 9, i64* %117, align 8
  %118 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %119 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %118, i32 0, i32 2
  %120 = load i64*, i64** %119, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 1
  store i64 9, i64* %121, align 8
  %122 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %123 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %122, i32 0, i32 2
  %124 = load i64*, i64** %123, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %4, align 8
  %128 = icmp sge i64 %126, %127
  br i1 %128, label %129, label %167

129:                                              ; preds = %110
  %130 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %131 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %130, i32 0, i32 2
  %132 = load i64*, i64** %131, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %4, align 8
  %136 = sub nsw i64 %134, %135
  %137 = add nsw i64 6, %136
  store i64 %137, i64* %8, align 8
  store i64 %137, i64* %6, align 8
  %138 = load i64, i64* %8, align 8
  %139 = sub nsw i64 %138, 6
  store i64 %139, i64* %9, align 8
  %140 = load i64, i64* %6, align 8
  %141 = load i32, i32* @OFDM_Table_Length, align 4
  %142 = sext i32 %141 to i64
  %143 = icmp sge i64 %140, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %129
  %145 = load i32, i32* @OFDM_Table_Length, align 4
  %146 = sub nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  store i64 %147, i64* %6, align 8
  br label %148

148:                                              ; preds = %144, %129
  %149 = load i64, i64* %8, align 8
  %150 = load i32, i32* @CCK_Table_length, align 4
  %151 = sext i32 %150 to i64
  %152 = icmp sge i64 %149, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = load i32, i32* @CCK_Table_length, align 4
  %155 = sub nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  store i64 %156, i64* %8, align 8
  br label %157

157:                                              ; preds = %153, %148
  %158 = load i64, i64* %9, align 8
  %159 = load i32, i32* @CCK_Table_length, align 4
  %160 = sext i32 %159 to i64
  %161 = icmp sge i64 %158, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %157
  %163 = load i32, i32* @CCK_Table_length, align 4
  %164 = sub nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  store i64 %165, i64* %9, align 8
  br label %166

166:                                              ; preds = %162, %157
  br label %182

167:                                              ; preds = %110
  %168 = load i64, i64* %4, align 8
  %169 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %170 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %169, i32 0, i32 2
  %171 = load i64*, i64** %170, align 8
  %172 = getelementptr inbounds i64, i64* %171, i64 0
  %173 = load i64, i64* %172, align 8
  %174 = sub nsw i64 %168, %173
  store i64 %174, i64* %10, align 8
  %175 = load i64, i64* %10, align 8
  %176 = icmp sge i64 %175, 6
  br i1 %176, label %177, label %178

177:                                              ; preds = %167
  store i64 0, i64* %8, align 8
  store i64 0, i64* %6, align 8
  br label %181

178:                                              ; preds = %167
  %179 = load i64, i64* %10, align 8
  %180 = sub nsw i64 6, %179
  store i64 %180, i64* %8, align 8
  store i64 %180, i64* %6, align 8
  br label %181

181:                                              ; preds = %178, %177
  store i64 0, i64* %9, align 8
  br label %182

182:                                              ; preds = %181, %166
  %183 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %184 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @HT_CHANNEL_WIDTH_20, align 8
  %187 = icmp ne i64 %185, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %182
  %189 = load i64, i64* %9, align 8
  store i64 %189, i64* %7, align 8
  br label %192

190:                                              ; preds = %182
  %191 = load i64, i64* %8, align 8
  store i64 %191, i64* %7, align 8
  br label %192

192:                                              ; preds = %190, %188
  %193 = load i64, i64* %8, align 8
  %194 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %195 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %194, i32 0, i32 4
  store i64 %193, i64* %195, align 8
  %196 = load i64, i64* %9, align 8
  %197 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %198 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %197, i32 0, i32 5
  store i64 %196, i64* %198, align 8
  %199 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %200 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %201 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %200, i32 0, i32 4
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %204 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %203, i32 0, i32 5
  %205 = load i64, i64* %204, align 8
  %206 = call i32 (i32, i8*, i64, ...) @RT_TRACE(i32 %199, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i64 %202, i64 %205)
  %207 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %208 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %207, i32 0, i32 8
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = icmp eq i32 %212, 14
  br i1 %213, label %214, label %223

214:                                              ; preds = %192
  %215 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %216 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %215, i32 0, i32 7
  %217 = load i8*, i8** %216, align 8
  %218 = icmp ne i8* %217, null
  br i1 %218, label %223, label %219

219:                                              ; preds = %214
  %220 = load i8*, i8** @TRUE, align 8
  %221 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %222 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %221, i32 0, i32 7
  store i8* %220, i8** %222, align 8
  store i32 1, i32* %12, align 4
  br label %241

223:                                              ; preds = %214, %192
  %224 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %225 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %224, i32 0, i32 8
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = icmp ne i32 %229, 14
  br i1 %230, label %231, label %240

231:                                              ; preds = %223
  %232 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %233 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %232, i32 0, i32 7
  %234 = load i8*, i8** %233, align 8
  %235 = icmp ne i8* %234, null
  br i1 %235, label %236, label %240

236:                                              ; preds = %231
  %237 = load i8*, i8** @FALSE, align 8
  %238 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %239 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %238, i32 0, i32 7
  store i8* %237, i8** %239, align 8
  store i32 1, i32* %12, align 4
  br label %240

240:                                              ; preds = %236, %231, %223
  br label %241

241:                                              ; preds = %240, %219
  %242 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %243 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* %7, align 8
  %246 = icmp ne i64 %244, %245
  br i1 %246, label %247, label %251

247:                                              ; preds = %241
  %248 = load i64, i64* %7, align 8
  %249 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %250 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %249, i32 0, i32 1
  store i64 %248, i64* %250, align 8
  store i32 1, i32* %12, align 4
  br label %251

251:                                              ; preds = %247, %241
  %252 = load i32, i32* %12, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %260

254:                                              ; preds = %251
  %255 = load %struct.net_device*, %struct.net_device** %2, align 8
  %256 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %257 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %256, i32 0, i32 7
  %258 = load i8*, i8** %257, align 8
  %259 = call i32 @dm_cck_txpower_adjust(%struct.net_device* %255, i8* %258)
  br label %260

260:                                              ; preds = %254, %251
  %261 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %262 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* %6, align 8
  %265 = icmp ne i64 %263, %264
  br i1 %265, label %266, label %291

266:                                              ; preds = %260
  %267 = load i64, i64* %6, align 8
  %268 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %269 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %268, i32 0, i32 0
  store i64 %267, i64* %269, align 8
  %270 = load %struct.net_device*, %struct.net_device** %2, align 8
  %271 = load i32, i32* @rOFDM0_XATxIQImbalance, align 4
  %272 = load i32, i32* @bMaskDWord, align 4
  %273 = load i64*, i64** @OFDMSwingTable, align 8
  %274 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %275 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = getelementptr inbounds i64, i64* %273, i64 %276
  %278 = load i64, i64* %277, align 8
  %279 = call i32 @rtl8192_setBBreg(%struct.net_device* %270, i32 %271, i32 %272, i64 %278)
  %280 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %281 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %282 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = load i64*, i64** @OFDMSwingTable, align 8
  %285 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %286 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = getelementptr inbounds i64, i64* %284, i64 %287
  %289 = load i64, i64* %288, align 8
  %290 = call i32 (i32, i8*, i64, ...) @RT_TRACE(i32 %280, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i64 %283, i64 %289)
  br label %291

291:                                              ; preds = %266, %260
  %292 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %293 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %292, i32 0, i32 6
  store i64 0, i64* %293, align 8
  br label %294

294:                                              ; preds = %291, %105, %89
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i64 @rtl8192_QueryBBReg(%struct.net_device*, i32, i32) #1

declare dso_local i32 @RT_TRACE(i32, i8*, i64, ...) #1

declare dso_local i64 @rtl8192_phy_QueryRFReg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @dm_cck_txpower_adjust(%struct.net_device*, i8*) #1

declare dso_local i32 @rtl8192_setBBreg(%struct.net_device*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
