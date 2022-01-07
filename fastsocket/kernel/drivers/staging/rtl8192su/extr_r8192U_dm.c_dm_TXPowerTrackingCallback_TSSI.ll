; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_dm.c_dm_TXPowerTrackingCallback_TSSI.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_dm.c_dm_TXPowerTrackingCallback_TSSI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32, i64, i32 }

@FALSE = common dso_local global i8* null, align 8
@COMP_POWER_TRACKING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"powerlevelOFDM24G = %x\0A\00", align 1
@TXCMD_SET_TX_PWR_TRACKING = common dso_local global i32 0, align 4
@DESC_PACKET_TYPE_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"TSSI_report_value = %d\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"we filted this data\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Avg_TSSI_Meas_from_driver = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"TSSI_13dBm = %d\0A\00", align 1
@E_FOR_TX_POWER_TRACK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"tx power track is done\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"priv->rfa_txpowertrackingindex = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"priv->rfa_txpowertrackingindex_real = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"priv->cck_present_attentuation_difference = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"priv->cck_present_attentuation = %d\0A\00", align 1
@rOFDM0_XATxIQImbalance = common dso_local global i32 0, align 4
@bMaskDWord = common dso_local global i32 0, align 4
@HT_CHANNEL_WIDTH_20 = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [27 x i8] c"tx power track--->limited\0A\00", align 1
@rOFDM0_XCTxIQImbalance = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @dm_TXPowerTrackingCallback_TSSI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_TXPowerTrackingCallback_TSSI(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [5 x i32], align 16
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %19)
  store %struct.r8192_priv* %20, %struct.r8192_priv** %3, align 8
  %21 = load i8*, i8** @FALSE, align 8
  %22 = ptrtoint i8* %21 to i32
  store i32 %22, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %23 = bitcast [5 x i32]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %23, i8 0, i64 20, i1 false)
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = call i32 @write_nic_byte(%struct.net_device* %24, i32 442, i32 0)
  %26 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %27 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %26, i32 0, i32 15
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %31 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %4, align 4
  %33 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %34 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 24
  store i32 %36, i32* %7, align 4
  %37 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %38 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = shl i32 %40, 8
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %41, %42
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %13, align 8
  %45 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %46)
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %449, %1
  %49 = load i32, i32* %9, align 4
  %50 = icmp sle i32 %49, 30
  br i1 %50, label %51, label %452

51:                                               ; preds = %48
  %52 = load i32, i32* @TXCMD_SET_TX_PWR_TRACKING, align 4
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  store i32 %52, i32* %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store i32 4, i32* %54, align 8
  %55 = load i64, i64* %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  store i64 %55, i64* %56, align 8
  %57 = load %struct.net_device*, %struct.net_device** %2, align 8
  %58 = bitcast %struct.TYPE_9__* %6 to i32*
  %59 = load i32, i32* @DESC_PACKET_TYPE_INIT, align 4
  %60 = call i32 @cmpk_message_handle_tx(%struct.net_device* %57, i32* %58, i32 %59, i32 24)
  %61 = call i32 @mdelay(i32 1)
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %445, %51
  %63 = load i32, i32* %8, align 4
  %64 = icmp sle i32 %63, 30
  br i1 %64, label %65, label %448

65:                                               ; preds = %62
  %66 = load %struct.net_device*, %struct.net_device** %2, align 8
  %67 = call i32 @read_nic_byte(%struct.net_device* %66, i32 442)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = call i32 @mdelay(i32 1)
  br label %445

72:                                               ; preds = %65
  %73 = load %struct.net_device*, %struct.net_device** %2, align 8
  %74 = call i64 @read_nic_word(%struct.net_device* %73, i32 316)
  store i64 %74, i64* %15, align 8
  %75 = load i64, i64* %15, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.net_device*, %struct.net_device** %2, align 8
  %79 = call i32 @write_nic_byte(%struct.net_device* %78, i32 442, i32 0)
  br label %448

80:                                               ; preds = %72
  store i32 0, i32* %10, align 4
  br label %81

81:                                               ; preds = %108, %80
  %82 = load i32, i32* %10, align 4
  %83 = icmp slt i32 %82, 5
  br i1 %83, label %84, label %111

84:                                               ; preds = %81
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 4
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load %struct.net_device*, %struct.net_device** %2, align 8
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 308, %89
  %91 = call i32 @read_nic_byte(%struct.net_device* %88, i32 %90)
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 %93
  store i32 %91, i32* %94, align 4
  br label %101

95:                                               ; preds = %84
  %96 = load %struct.net_device*, %struct.net_device** %2, align 8
  %97 = call i32 @read_nic_byte(%struct.net_device* %96, i32 318)
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 %99
  store i32 %97, i32* %100, align 4
  br label %101

101:                                              ; preds = %95, %87
  %102 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %102, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %101
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %81

111:                                              ; preds = %81
  store i32 0, i32* %10, align 4
  br label %112

112:                                              ; preds = %124, %111
  %113 = load i32, i32* %10, align 4
  %114 = icmp slt i32 %113, 5
  br i1 %114, label %115, label %127

115:                                              ; preds = %112
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = icmp sle i32 %119, 20
  br i1 %120, label %121, label %123

121:                                              ; preds = %115
  %122 = load i32, i32* @TRUE, align 4
  store i32 %122, i32* %5, align 4
  br label %127

123:                                              ; preds = %115
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %10, align 4
  br label %112

127:                                              ; preds = %121, %112
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* @TRUE, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %149

131:                                              ; preds = %127
  %132 = load %struct.net_device*, %struct.net_device** %2, align 8
  %133 = call i32 @write_nic_byte(%struct.net_device* %132, i32 442, i32 0)
  %134 = load i8*, i8** @FALSE, align 8
  %135 = ptrtoint i8* %134 to i32
  store i32 %135, i32* %5, align 4
  %136 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %137 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %136, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %138

138:                                              ; preds = %145, %131
  %139 = load i32, i32* %10, align 4
  %140 = icmp slt i32 %139, 5
  br i1 %140, label %141, label %148

141:                                              ; preds = %138
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 %143
  store i32 0, i32* %144, align 4
  br label %145

145:                                              ; preds = %141
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %10, align 4
  br label %138

148:                                              ; preds = %138
  br label %448

149:                                              ; preds = %127
  store i32 0, i32* %10, align 4
  br label %150

150:                                              ; preds = %161, %149
  %151 = load i32, i32* %10, align 4
  %152 = icmp slt i32 %151, 5
  br i1 %152, label %153, label %164

153:                                              ; preds = %150
  %154 = load i32, i32* %10, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = load i64, i64* %17, align 8
  %160 = add nsw i64 %159, %158
  store i64 %160, i64* %17, align 8
  br label %161

161:                                              ; preds = %153
  %162 = load i32, i32* %10, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %10, align 4
  br label %150

164:                                              ; preds = %150
  %165 = load i64, i64* %17, align 8
  %166 = mul nsw i64 %165, 100
  %167 = sdiv i64 %166, 5
  store i64 %167, i64* %17, align 8
  %168 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %169 = load i64, i64* %17, align 8
  %170 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %168, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %169)
  %171 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %172 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  store i64 %173, i64* %16, align 8
  %174 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %175 = load i64, i64* %16, align 8
  %176 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %174, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i64 %175)
  %177 = load i64, i64* %17, align 8
  %178 = load i64, i64* %16, align 8
  %179 = icmp sgt i64 %177, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %164
  %181 = load i64, i64* %17, align 8
  %182 = load i64, i64* %16, align 8
  %183 = sub nsw i64 %181, %182
  store i64 %183, i64* %18, align 8
  br label %188

184:                                              ; preds = %164
  %185 = load i64, i64* %16, align 8
  %186 = load i64, i64* %17, align 8
  %187 = sub nsw i64 %185, %186
  store i64 %187, i64* %18, align 8
  br label %188

188:                                              ; preds = %184, %180
  %189 = load i64, i64* %18, align 8
  %190 = load i64, i64* @E_FOR_TX_POWER_TRACK, align 8
  %191 = icmp sle i64 %189, %190
  br i1 %191, label %192, label %222

192:                                              ; preds = %188
  %193 = load i32, i32* @TRUE, align 4
  %194 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %195 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %194, i32 0, i32 15
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  store i32 %193, i32* %197, align 4
  %198 = load %struct.net_device*, %struct.net_device** %2, align 8
  %199 = call i32 @write_nic_byte(%struct.net_device* %198, i32 442, i32 0)
  %200 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %201 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %200, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %202 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %203 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %204 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  %206 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %202, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %205)
  %207 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %208 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %209 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 4
  %211 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %207, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 %210)
  %212 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %213 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %214 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %213, i32 0, i32 8
  %215 = load i32, i32* %214, align 8
  %216 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %212, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i32 %215)
  %217 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %218 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %219 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %218, i32 0, i32 9
  %220 = load i32, i32* %219, align 4
  %221 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %217, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %220)
  br label %460

222:                                              ; preds = %188
  %223 = load i64, i64* %17, align 8
  %224 = load i64, i64* %16, align 8
  %225 = load i64, i64* @E_FOR_TX_POWER_TRACK, align 8
  %226 = sub nsw i64 %224, %225
  %227 = icmp slt i64 %223, %226
  br i1 %227, label %228, label %263

228:                                              ; preds = %222
  %229 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %230 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %229, i32 0, i32 4
  %231 = load i32, i32* %230, align 8
  %232 = icmp sgt i32 %231, 0
  br i1 %232, label %233, label %262

233:                                              ; preds = %228
  %234 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %235 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 8
  %237 = add nsw i32 %236, -1
  store i32 %237, i32* %235, align 8
  %238 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %239 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %238, i32 0, i32 5
  %240 = load i32, i32* %239, align 4
  %241 = icmp sgt i32 %240, 4
  br i1 %241, label %242, label %261

242:                                              ; preds = %233
  %243 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %244 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %243, i32 0, i32 5
  %245 = load i32, i32* %244, align 4
  %246 = add nsw i32 %245, -1
  store i32 %246, i32* %244, align 4
  %247 = load %struct.net_device*, %struct.net_device** %2, align 8
  %248 = load i32, i32* @rOFDM0_XATxIQImbalance, align 4
  %249 = load i32, i32* @bMaskDWord, align 4
  %250 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %251 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %250, i32 0, i32 16
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %251, align 8
  %253 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %254 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %253, i32 0, i32 5
  %255 = load i32, i32* %254, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @rtl8192_setBBreg(%struct.net_device* %247, i32 %248, i32 %249, i32 %259)
  br label %261

261:                                              ; preds = %242, %233
  br label %262

262:                                              ; preds = %261, %228
  br label %292

263:                                              ; preds = %222
  %264 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %265 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %264, i32 0, i32 4
  %266 = load i32, i32* %265, align 8
  %267 = icmp slt i32 %266, 36
  br i1 %267, label %268, label %291

268:                                              ; preds = %263
  %269 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %270 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %269, i32 0, i32 4
  %271 = load i32, i32* %270, align 8
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %270, align 8
  %273 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %274 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %273, i32 0, i32 5
  %275 = load i32, i32* %274, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %274, align 4
  %277 = load %struct.net_device*, %struct.net_device** %2, align 8
  %278 = load i32, i32* @rOFDM0_XATxIQImbalance, align 4
  %279 = load i32, i32* @bMaskDWord, align 4
  %280 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %281 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %280, i32 0, i32 16
  %282 = load %struct.TYPE_6__*, %struct.TYPE_6__** %281, align 8
  %283 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %284 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %283, i32 0, i32 5
  %285 = load i32, i32* %284, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @rtl8192_setBBreg(%struct.net_device* %277, i32 %278, i32 %279, i32 %289)
  br label %291

291:                                              ; preds = %268, %263
  br label %292

292:                                              ; preds = %291, %262
  %293 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %294 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %293, i32 0, i32 4
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %297 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %296, i32 0, i32 10
  %298 = load i32, i32* %297, align 8
  %299 = sub nsw i32 %295, %298
  %300 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %301 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %300, i32 0, i32 8
  store i32 %299, i32* %301, align 8
  %302 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %303 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %302, i32 0, i32 11
  %304 = load i64, i64* %303, align 8
  %305 = load i64, i64* @HT_CHANNEL_WIDTH_20, align 8
  %306 = icmp eq i64 %304, %305
  br i1 %306, label %307, label %317

307:                                              ; preds = %292
  %308 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %309 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %308, i32 0, i32 12
  %310 = load i32, i32* %309, align 8
  %311 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %312 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %311, i32 0, i32 8
  %313 = load i32, i32* %312, align 8
  %314 = add nsw i32 %310, %313
  %315 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %316 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %315, i32 0, i32 9
  store i32 %314, i32* %316, align 4
  br label %327

317:                                              ; preds = %292
  %318 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %319 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %318, i32 0, i32 13
  %320 = load i32, i32* %319, align 4
  %321 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %322 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %321, i32 0, i32 8
  %323 = load i32, i32* %322, align 8
  %324 = add nsw i32 %320, %323
  %325 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %326 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %325, i32 0, i32 9
  store i32 %324, i32* %326, align 4
  br label %327

327:                                              ; preds = %317, %307
  %328 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %329 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %328, i32 0, i32 9
  %330 = load i32, i32* %329, align 4
  %331 = icmp sgt i32 %330, -1
  br i1 %331, label %332, label %390

332:                                              ; preds = %327
  %333 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %334 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %333, i32 0, i32 9
  %335 = load i32, i32* %334, align 4
  %336 = icmp slt i32 %335, 23
  br i1 %336, label %337, label %390

337:                                              ; preds = %332
  %338 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %339 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %338, i32 0, i32 15
  %340 = load %struct.TYPE_8__*, %struct.TYPE_8__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = icmp eq i32 %343, 14
  br i1 %344, label %345, label %359

345:                                              ; preds = %337
  %346 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %347 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %346, i32 0, i32 14
  %348 = load i32, i32* %347, align 8
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %359, label %350

350:                                              ; preds = %345
  %351 = load i32, i32* @TRUE, align 4
  %352 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %353 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %352, i32 0, i32 14
  store i32 %351, i32* %353, align 8
  %354 = load %struct.net_device*, %struct.net_device** %2, align 8
  %355 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %356 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %355, i32 0, i32 14
  %357 = load i32, i32* %356, align 8
  %358 = call i32 @dm_cck_txpower_adjust(%struct.net_device* %354, i32 %357)
  br label %389

359:                                              ; preds = %345, %337
  %360 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %361 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %360, i32 0, i32 15
  %362 = load %struct.TYPE_8__*, %struct.TYPE_8__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %362, i32 0, i32 1
  %364 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 4
  %366 = icmp ne i32 %365, 14
  br i1 %366, label %367, label %382

367:                                              ; preds = %359
  %368 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %369 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %368, i32 0, i32 14
  %370 = load i32, i32* %369, align 8
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %382

372:                                              ; preds = %367
  %373 = load i8*, i8** @FALSE, align 8
  %374 = ptrtoint i8* %373 to i32
  %375 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %376 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %375, i32 0, i32 14
  store i32 %374, i32* %376, align 8
  %377 = load %struct.net_device*, %struct.net_device** %2, align 8
  %378 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %379 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %378, i32 0, i32 14
  %380 = load i32, i32* %379, align 8
  %381 = call i32 @dm_cck_txpower_adjust(%struct.net_device* %377, i32 %380)
  br label %388

382:                                              ; preds = %367, %359
  %383 = load %struct.net_device*, %struct.net_device** %2, align 8
  %384 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %385 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %384, i32 0, i32 14
  %386 = load i32, i32* %385, align 8
  %387 = call i32 @dm_cck_txpower_adjust(%struct.net_device* %383, i32 %386)
  br label %388

388:                                              ; preds = %382, %372
  br label %389

389:                                              ; preds = %388, %350
  br label %390

390:                                              ; preds = %389, %332, %327
  %391 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %392 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %393 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %392, i32 0, i32 4
  %394 = load i32, i32* %393, align 8
  %395 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %391, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %394)
  %396 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %397 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %398 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %397, i32 0, i32 5
  %399 = load i32, i32* %398, align 4
  %400 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %396, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 %399)
  %401 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %402 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %403 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %402, i32 0, i32 8
  %404 = load i32, i32* %403, align 8
  %405 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %401, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i32 %404)
  %406 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %407 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %408 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %407, i32 0, i32 9
  %409 = load i32, i32* %408, align 4
  %410 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %406, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %409)
  %411 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %412 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %411, i32 0, i32 8
  %413 = load i32, i32* %412, align 8
  %414 = icmp sle i32 %413, -12
  br i1 %414, label %420, label %415

415:                                              ; preds = %390
  %416 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %417 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %416, i32 0, i32 8
  %418 = load i32, i32* %417, align 8
  %419 = icmp sge i32 %418, 24
  br i1 %419, label %420, label %430

420:                                              ; preds = %415, %390
  %421 = load i32, i32* @TRUE, align 4
  %422 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %423 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %422, i32 0, i32 15
  %424 = load %struct.TYPE_8__*, %struct.TYPE_8__** %423, align 8
  %425 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %424, i32 0, i32 0
  store i32 %421, i32* %425, align 4
  %426 = load %struct.net_device*, %struct.net_device** %2, align 8
  %427 = call i32 @write_nic_byte(%struct.net_device* %426, i32 442, i32 0)
  %428 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %429 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %428, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  br label %460

430:                                              ; preds = %415
  br label %431

431:                                              ; preds = %430
  %432 = load %struct.net_device*, %struct.net_device** %2, align 8
  %433 = call i32 @write_nic_byte(%struct.net_device* %432, i32 442, i32 0)
  store i64 0, i64* %17, align 8
  store i32 0, i32* %10, align 4
  br label %434

434:                                              ; preds = %441, %431
  %435 = load i32, i32* %10, align 4
  %436 = icmp slt i32 %435, 5
  br i1 %436, label %437, label %444

437:                                              ; preds = %434
  %438 = load i32, i32* %10, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 %439
  store i32 0, i32* %440, align 4
  br label %441

441:                                              ; preds = %437
  %442 = load i32, i32* %10, align 4
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %10, align 4
  br label %434

444:                                              ; preds = %434
  br label %448

445:                                              ; preds = %70
  %446 = load i32, i32* %8, align 4
  %447 = add nsw i32 %446, 1
  store i32 %447, i32* %8, align 4
  br label %62

448:                                              ; preds = %444, %148, %77, %62
  br label %449

449:                                              ; preds = %448
  %450 = load i32, i32* %9, align 4
  %451 = add nsw i32 %450, 1
  store i32 %451, i32* %9, align 4
  br label %48

452:                                              ; preds = %48
  %453 = load i32, i32* @TRUE, align 4
  %454 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %455 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %454, i32 0, i32 15
  %456 = load %struct.TYPE_8__*, %struct.TYPE_8__** %455, align 8
  %457 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %456, i32 0, i32 0
  store i32 %453, i32* %457, align 4
  %458 = load %struct.net_device*, %struct.net_device** %2, align 8
  %459 = call i32 @write_nic_byte(%struct.net_device* %458, i32 442, i32 0)
  br label %460

460:                                              ; preds = %452, %420, %192
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @RT_TRACE(i32, i8*, ...) #1

declare dso_local i32 @cmpk_message_handle_tx(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32) #1

declare dso_local i64 @read_nic_word(%struct.net_device*, i32) #1

declare dso_local i32 @rtl8192_setBBreg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @dm_cck_txpower_adjust(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
