; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_phy_SetFwCmdIOCallback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_phy_SetFwCmdIOCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@phy_SetFwCmdIOCallback.ScanRegister = internal global i32 0, align 4
@COMP_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"SetFwCmdIOTimerCallback(): driver is going to unload\0A\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"--->SetFwCmdIOTimerCallback(): Cmd(%#x), SetFwCmdInProgress(%d)\0A\00", align 1
@HT_IOT_ACT_DISABLE_HIGH_POWER = common dso_local global i32 0, align 4
@WFM5 = common dso_local global i32 0, align 4
@FW_HIGH_PWR_ENABLE = common dso_local global i32 0, align 4
@FW_HIGH_PWR_DISABLE = common dso_local global i32 0, align 4
@FW_DIG_RESUME = common dso_local global i32 0, align 4
@FW_DIG_HALT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"[FW CMD] Set HIGHPWR enable and DIG resume!!\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"[FW CMD] Set HIGHPWR disable and DIG halt!!\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"[FW CMD] Set DIG disable!!\0A\00", align 1
@FW_DIG_DISABLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"[FW CMD] Set DIG enable!!\0A\00", align 1
@FW_DIG_ENABLE = common dso_local global i32 0, align 4
@FW_RA_RESET = common dso_local global i32 0, align 4
@FW_RA_ACTIVE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"[FW CMD] Set RA refresh!! N\0A\00", align 1
@HT_IOT_RAFUNC_DISABLE_ALL = common dso_local global i32 0, align 4
@FW_RA_REFRESH = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"[FW CMD] Set RA refresh!! B/G\0A\00", align 1
@FW_RA_ENABLE_BG = common dso_local global i32 0, align 4
@FW_IQK_ENABLE = common dso_local global i32 0, align 4
@FW_TXPWR_TRACK_ENABLE = common dso_local global i32 0, align 4
@FW_TXPWR_TRACK_DISABLE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"Unknown FW Cmd IO(%#x)\0A\00", align 1
@rOFDM0_XAAGCCore1 = common dso_local global i32 0, align 4
@bMaskByte0 = common dso_local global i32 0, align 4
@rOFDM0_XBAGCCore1 = common dso_local global i32 0, align 4
@rCCK0_CCA = common dso_local global i32 0, align 4
@bMaskByte2 = common dso_local global i32 0, align 4
@rOFDM0_TRMuxPar = common dso_local global i32 0, align 4
@rOFDM0_RxDetector1 = common dso_local global i32 0, align 4
@bMaskDWord = common dso_local global i32 0, align 4
@rOFDM1_TRxPathEnable = common dso_local global i32 0, align 4
@RF_1T2R = common dso_local global i32 0, align 4
@RF_2T2R = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [34 x i8] c"<---SetFwCmdIOWorkItemCallback()\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @phy_SetFwCmdIOCallback(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %5)
  store %struct.r8192_priv* %6, %struct.r8192_priv** %4, align 8
  %7 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %8 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @COMP_CMD, align 4
  %13 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %12, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %269

14:                                               ; preds = %1
  %15 = load i32, i32* @COMP_CMD, align 4
  %16 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %17 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %20 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %15, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %21)
  %23 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %24 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %179 [
    i32 137, label %26
    i32 138, label %43
    i32 139, label %48
    i32 140, label %53
    i32 130, label %58
    i32 135, label %83
    i32 142, label %96
    i32 141, label %103
    i32 131, label %110
    i32 134, label %115
    i32 132, label %120
    i32 133, label %151
    i32 136, label %164
    i32 128, label %169
    i32 129, label %174
  ]

26:                                               ; preds = %14
  %27 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %28 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %27, i32 0, i32 3
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @HT_IOT_ACT_DISABLE_HIGH_POWER, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %26
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = load i32, i32* @WFM5, align 4
  %40 = load i32, i32* @FW_HIGH_PWR_ENABLE, align 4
  %41 = call i32 @write_nic_dword(%struct.net_device* %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %37, %26
  br label %185

43:                                               ; preds = %14
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = load i32, i32* @WFM5, align 4
  %46 = load i32, i32* @FW_HIGH_PWR_DISABLE, align 4
  %47 = call i32 @write_nic_dword(%struct.net_device* %44, i32 %45, i32 %46)
  br label %185

48:                                               ; preds = %14
  %49 = load %struct.net_device*, %struct.net_device** %2, align 8
  %50 = load i32, i32* @WFM5, align 4
  %51 = load i32, i32* @FW_DIG_RESUME, align 4
  %52 = call i32 @write_nic_dword(%struct.net_device* %49, i32 %50, i32 %51)
  br label %185

53:                                               ; preds = %14
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = load i32, i32* @WFM5, align 4
  %56 = load i32, i32* @FW_DIG_HALT, align 4
  %57 = call i32 @write_nic_dword(%struct.net_device* %54, i32 %55, i32 %56)
  br label %185

58:                                               ; preds = %14
  %59 = load i32, i32* @COMP_CMD, align 4
  %60 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %59, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %61 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %62 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %61, i32 0, i32 3
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @HT_IOT_ACT_DISABLE_HIGH_POWER, align 4
  %69 = and i32 %67, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %58
  %72 = load %struct.net_device*, %struct.net_device** %2, align 8
  %73 = load i32, i32* @WFM5, align 4
  %74 = load i32, i32* @FW_HIGH_PWR_ENABLE, align 4
  %75 = call i32 @write_nic_dword(%struct.net_device* %72, i32 %73, i32 %74)
  %76 = load %struct.net_device*, %struct.net_device** %2, align 8
  %77 = call i32 @ChkFwCmdIoDone(%struct.net_device* %76)
  br label %78

78:                                               ; preds = %71, %58
  %79 = load %struct.net_device*, %struct.net_device** %2, align 8
  %80 = load i32, i32* @WFM5, align 4
  %81 = load i32, i32* @FW_DIG_RESUME, align 4
  %82 = call i32 @write_nic_dword(%struct.net_device* %79, i32 %80, i32 %81)
  br label %185

83:                                               ; preds = %14
  %84 = load i32, i32* @COMP_CMD, align 4
  %85 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %84, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %86 = load %struct.net_device*, %struct.net_device** %2, align 8
  %87 = load i32, i32* @WFM5, align 4
  %88 = load i32, i32* @FW_HIGH_PWR_DISABLE, align 4
  %89 = call i32 @write_nic_dword(%struct.net_device* %86, i32 %87, i32 %88)
  %90 = load %struct.net_device*, %struct.net_device** %2, align 8
  %91 = call i32 @ChkFwCmdIoDone(%struct.net_device* %90)
  %92 = load %struct.net_device*, %struct.net_device** %2, align 8
  %93 = load i32, i32* @WFM5, align 4
  %94 = load i32, i32* @FW_DIG_HALT, align 4
  %95 = call i32 @write_nic_dword(%struct.net_device* %92, i32 %93, i32 %94)
  br label %185

96:                                               ; preds = %14
  %97 = load i32, i32* @COMP_CMD, align 4
  %98 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %97, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %99 = load %struct.net_device*, %struct.net_device** %2, align 8
  %100 = load i32, i32* @WFM5, align 4
  %101 = load i32, i32* @FW_DIG_DISABLE, align 4
  %102 = call i32 @write_nic_dword(%struct.net_device* %99, i32 %100, i32 %101)
  br label %185

103:                                              ; preds = %14
  %104 = load i32, i32* @COMP_CMD, align 4
  %105 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %104, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %106 = load %struct.net_device*, %struct.net_device** %2, align 8
  %107 = load i32, i32* @WFM5, align 4
  %108 = load i32, i32* @FW_DIG_ENABLE, align 4
  %109 = call i32 @write_nic_dword(%struct.net_device* %106, i32 %107, i32 %108)
  br label %185

110:                                              ; preds = %14
  %111 = load %struct.net_device*, %struct.net_device** %2, align 8
  %112 = load i32, i32* @WFM5, align 4
  %113 = load i32, i32* @FW_RA_RESET, align 4
  %114 = call i32 @write_nic_dword(%struct.net_device* %111, i32 %112, i32 %113)
  br label %185

115:                                              ; preds = %14
  %116 = load %struct.net_device*, %struct.net_device** %2, align 8
  %117 = load i32, i32* @WFM5, align 4
  %118 = load i32, i32* @FW_RA_ACTIVE, align 4
  %119 = call i32 @write_nic_dword(%struct.net_device* %116, i32 %117, i32 %118)
  br label %185

120:                                              ; preds = %14
  %121 = load i32, i32* @COMP_CMD, align 4
  %122 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %121, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %123 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %124 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %123, i32 0, i32 3
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @HT_IOT_RAFUNC_DISABLE_ALL, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %120
  %134 = load i32, i32* @FW_RA_REFRESH, align 4
  store i32 %134, i32* %3, align 4
  br label %146

135:                                              ; preds = %120
  %136 = load i32, i32* @FW_RA_REFRESH, align 4
  %137 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %138 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %137, i32 0, i32 3
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = shl i32 %143, 8
  %145 = or i32 %136, %144
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %135, %133
  %147 = load %struct.net_device*, %struct.net_device** %2, align 8
  %148 = load i32, i32* @WFM5, align 4
  %149 = load i32, i32* %3, align 4
  %150 = call i32 @write_nic_dword(%struct.net_device* %147, i32 %148, i32 %149)
  br label %185

151:                                              ; preds = %14
  %152 = load i32, i32* @COMP_CMD, align 4
  %153 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %152, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %154 = load %struct.net_device*, %struct.net_device** %2, align 8
  %155 = load i32, i32* @WFM5, align 4
  %156 = load i32, i32* @FW_RA_REFRESH, align 4
  %157 = call i32 @write_nic_dword(%struct.net_device* %154, i32 %155, i32 %156)
  %158 = load %struct.net_device*, %struct.net_device** %2, align 8
  %159 = call i32 @ChkFwCmdIoDone(%struct.net_device* %158)
  %160 = load %struct.net_device*, %struct.net_device** %2, align 8
  %161 = load i32, i32* @WFM5, align 4
  %162 = load i32, i32* @FW_RA_ENABLE_BG, align 4
  %163 = call i32 @write_nic_dword(%struct.net_device* %160, i32 %161, i32 %162)
  br label %185

164:                                              ; preds = %14
  %165 = load %struct.net_device*, %struct.net_device** %2, align 8
  %166 = load i32, i32* @WFM5, align 4
  %167 = load i32, i32* @FW_IQK_ENABLE, align 4
  %168 = call i32 @write_nic_dword(%struct.net_device* %165, i32 %166, i32 %167)
  br label %185

169:                                              ; preds = %14
  %170 = load %struct.net_device*, %struct.net_device** %2, align 8
  %171 = load i32, i32* @WFM5, align 4
  %172 = load i32, i32* @FW_TXPWR_TRACK_ENABLE, align 4
  %173 = call i32 @write_nic_dword(%struct.net_device* %170, i32 %171, i32 %172)
  br label %185

174:                                              ; preds = %14
  %175 = load %struct.net_device*, %struct.net_device** %2, align 8
  %176 = load i32, i32* @WFM5, align 4
  %177 = load i32, i32* @FW_TXPWR_TRACK_DISABLE, align 4
  %178 = call i32 @write_nic_dword(%struct.net_device* %175, i32 %176, i32 %177)
  br label %185

179:                                              ; preds = %14
  %180 = load i32, i32* @COMP_CMD, align 4
  %181 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %182 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %180, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %183)
  br label %185

185:                                              ; preds = %179, %174, %169, %164, %151, %146, %115, %110, %103, %96, %83, %78, %53, %48, %43, %42
  %186 = load %struct.net_device*, %struct.net_device** %2, align 8
  %187 = call i32 @ChkFwCmdIoDone(%struct.net_device* %186)
  %188 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %189 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  switch i32 %190, label %264 [
    i32 138, label %191
    i32 137, label %218
  ]

191:                                              ; preds = %185
  %192 = load %struct.net_device*, %struct.net_device** %2, align 8
  %193 = load i32, i32* @rOFDM0_XAAGCCore1, align 4
  %194 = load i32, i32* @bMaskByte0, align 4
  %195 = call i32 @rtl8192_setBBreg(%struct.net_device* %192, i32 %193, i32 %194, i32 23)
  %196 = load %struct.net_device*, %struct.net_device** %2, align 8
  %197 = load i32, i32* @rOFDM0_XBAGCCore1, align 4
  %198 = load i32, i32* @bMaskByte0, align 4
  %199 = call i32 @rtl8192_setBBreg(%struct.net_device* %196, i32 %197, i32 %198, i32 23)
  %200 = load %struct.net_device*, %struct.net_device** %2, align 8
  %201 = load i32, i32* @rCCK0_CCA, align 4
  %202 = load i32, i32* @bMaskByte2, align 4
  %203 = call i32 @rtl8192_setBBreg(%struct.net_device* %200, i32 %201, i32 %202, i32 64)
  %204 = load %struct.net_device*, %struct.net_device** %2, align 8
  %205 = load i32, i32* @rOFDM0_TRMuxPar, align 4
  %206 = load i32, i32* @bMaskByte2, align 4
  %207 = call i32 @rtl8192_setBBreg(%struct.net_device* %204, i32 %205, i32 %206, i32 1)
  %208 = load %struct.net_device*, %struct.net_device** %2, align 8
  %209 = load i32, i32* @rOFDM0_RxDetector1, align 4
  %210 = load i32, i32* @bMaskDWord, align 4
  %211 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %208, i32 %209, i32 %210)
  store i32 %211, i32* @phy_SetFwCmdIOCallback.ScanRegister, align 4
  %212 = load %struct.net_device*, %struct.net_device** %2, align 8
  %213 = load i32, i32* @rOFDM0_RxDetector1, align 4
  %214 = call i32 @rtl8192_setBBreg(%struct.net_device* %212, i32 %213, i32 15, i32 15)
  %215 = load %struct.net_device*, %struct.net_device** %2, align 8
  %216 = load i32, i32* @rOFDM1_TRxPathEnable, align 4
  %217 = call i32 @rtl8192_setBBreg(%struct.net_device* %215, i32 %216, i32 15, i32 0)
  br label %264

218:                                              ; preds = %185
  %219 = load %struct.net_device*, %struct.net_device** %2, align 8
  %220 = load i32, i32* @rOFDM0_XAAGCCore1, align 4
  %221 = load i32, i32* @bMaskByte0, align 4
  %222 = call i32 @rtl8192_setBBreg(%struct.net_device* %219, i32 %220, i32 %221, i32 54)
  %223 = load %struct.net_device*, %struct.net_device** %2, align 8
  %224 = load i32, i32* @rOFDM0_XBAGCCore1, align 4
  %225 = load i32, i32* @bMaskByte0, align 4
  %226 = call i32 @rtl8192_setBBreg(%struct.net_device* %223, i32 %224, i32 %225, i32 54)
  %227 = load %struct.net_device*, %struct.net_device** %2, align 8
  %228 = load i32, i32* @rCCK0_CCA, align 4
  %229 = load i32, i32* @bMaskByte2, align 4
  %230 = call i32 @rtl8192_setBBreg(%struct.net_device* %227, i32 %228, i32 %229, i32 131)
  %231 = load %struct.net_device*, %struct.net_device** %2, align 8
  %232 = load i32, i32* @rOFDM0_TRMuxPar, align 4
  %233 = load i32, i32* @bMaskByte2, align 4
  %234 = call i32 @rtl8192_setBBreg(%struct.net_device* %231, i32 %232, i32 %233, i32 0)
  %235 = load i32, i32* @phy_SetFwCmdIOCallback.ScanRegister, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %243

237:                                              ; preds = %218
  %238 = load %struct.net_device*, %struct.net_device** %2, align 8
  %239 = load i32, i32* @rOFDM0_RxDetector1, align 4
  %240 = load i32, i32* @bMaskDWord, align 4
  %241 = load i32, i32* @phy_SetFwCmdIOCallback.ScanRegister, align 4
  %242 = call i32 @rtl8192_setBBreg(%struct.net_device* %238, i32 %239, i32 %240, i32 %241)
  br label %243

243:                                              ; preds = %237, %218
  %244 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %245 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @RF_1T2R, align 4
  %248 = icmp eq i32 %246, %247
  br i1 %248, label %255, label %249

249:                                              ; preds = %243
  %250 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %251 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @RF_2T2R, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %259

255:                                              ; preds = %249, %243
  %256 = load %struct.net_device*, %struct.net_device** %2, align 8
  %257 = load i32, i32* @rOFDM1_TRxPathEnable, align 4
  %258 = call i32 @rtl8192_setBBreg(%struct.net_device* %256, i32 %257, i32 15, i32 3)
  br label %263

259:                                              ; preds = %249
  %260 = load %struct.net_device*, %struct.net_device** %2, align 8
  %261 = load i32, i32* @rOFDM1_TRxPathEnable, align 4
  %262 = call i32 @rtl8192_setBBreg(%struct.net_device* %260, i32 %261, i32 15, i32 1)
  br label %263

263:                                              ; preds = %259, %255
  br label %264

264:                                              ; preds = %185, %263, %191
  %265 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %266 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %265, i32 0, i32 1
  store i32 0, i32* %266, align 4
  %267 = load i32, i32* @COMP_CMD, align 4
  %268 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %267, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  br label %269

269:                                              ; preds = %264, %11
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @RT_TRACE(i32, i8*, ...) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i32, i32) #1

declare dso_local i32 @ChkFwCmdIoDone(%struct.net_device*) #1

declare dso_local i32 @rtl8192_setBBreg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @rtl8192_QueryBBReg(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
