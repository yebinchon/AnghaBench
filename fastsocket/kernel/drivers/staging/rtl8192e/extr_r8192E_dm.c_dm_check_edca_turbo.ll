; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_dm.c_dm_check_edca_turbo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_dm.c_dm_check_edca_turbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32, %struct.TYPE_12__, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_11__ = type { i64, i32, i32, %struct.TYPE_9__, %struct.TYPE_13__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.ieee80211_qos_parameters }
%struct.ieee80211_qos_parameters = type { i32*, i64*, i64*, i64* }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@dm_check_edca_turbo.lastTxOkCnt = internal global i64 0, align 8
@dm_check_edca_turbo.lastRxOkCnt = internal global i64 0, align 8
@IEEE80211_LINKED = common dso_local global i64 0, align 8
@HT_IOT_ACT_DISABLE_EDCA_TURBO = common dso_local global i32 0, align 4
@EDCAPARA_BE = common dso_local global i32 0, align 4
@edca_setting_DL = common dso_local global i32* null, align 8
@edca_setting_UL = common dso_local global i32* null, align 8
@IEEE_G = common dso_local global i32 0, align 4
@IEEE_N_24G = common dso_local global i32 0, align 4
@aSifsTime = common dso_local global i32 0, align 4
@AC_PARAM_TXOP_LIMIT_OFFSET = common dso_local global i32 0, align 4
@AC_PARAM_ECW_MAX_OFFSET = common dso_local global i32 0, align 4
@AC_PARAM_ECW_MIN_OFFSET = common dso_local global i32 0, align 4
@AC_PARAM_AIFS_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"===>u4bAcParam:%x, \00", align 1
@AcmHwCtrl = common dso_local global i32 0, align 4
@AcmHw_BeqEn = common dso_local global i32 0, align 4
@COMP_QOS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"SetHwReg8190pci(): [HW_VAR_ACM_CTRL] Write 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @dm_check_edca_turbo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_check_edca_turbo(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_qos_parameters*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %13)
  store %struct.r8192_priv* %14, %struct.r8192_priv** %3, align 8
  %15 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %16 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %15, i32 0, i32 3
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %20 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %21 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %20, i32 0, i32 3
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IEEE80211_LINKED, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %218

28:                                               ; preds = %1
  %29 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %30 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %29, i32 0, i32 3
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @HT_IOT_ACT_DISABLE_EDCA_TURBO, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %218

40:                                               ; preds = %28
  %41 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %42 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %41, i32 0, i32 3
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %113, label %47

47:                                               ; preds = %40
  %48 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %49 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @dm_check_edca_turbo.lastTxOkCnt, align 8
  %53 = sub i64 %51, %52
  store i64 %53, i64* %5, align 8
  %54 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %55 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @dm_check_edca_turbo.lastRxOkCnt, align 8
  %59 = sub i64 %57, %58
  store i64 %59, i64* %6, align 8
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* %5, align 8
  %62 = mul i64 4, %61
  %63 = icmp ugt i64 %60, %62
  br i1 %63, label %64, label %87

64:                                               ; preds = %47
  %65 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %66 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %71 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %86, label %74

74:                                               ; preds = %69, %64
  %75 = load %struct.net_device*, %struct.net_device** %2, align 8
  %76 = load i32, i32* @EDCAPARA_BE, align 4
  %77 = load i32*, i32** @edca_setting_DL, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @write_nic_dword(%struct.net_device* %75, i32 %76, i32 %82)
  %84 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %85 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  br label %86

86:                                               ; preds = %74, %69
  br label %110

87:                                               ; preds = %47
  %88 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %89 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %94 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %109, label %97

97:                                               ; preds = %92, %87
  %98 = load %struct.net_device*, %struct.net_device** %2, align 8
  %99 = load i32, i32* @EDCAPARA_BE, align 4
  %100 = load i32*, i32** @edca_setting_UL, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @write_nic_dword(%struct.net_device* %98, i32 %99, i32 %105)
  %107 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %108 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %107, i32 0, i32 0
  store i32 0, i32* %108, align 8
  br label %109

109:                                              ; preds = %97, %92
  br label %110

110:                                              ; preds = %109, %86
  %111 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %112 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %111, i32 0, i32 1
  store i32 1, i32* %112, align 4
  br label %217

113:                                              ; preds = %40
  %114 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %115 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %216

118:                                              ; preds = %113
  %119 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %120 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %119, i32 0, i32 3
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  store %struct.ieee80211_qos_parameters* %124, %struct.ieee80211_qos_parameters** %9, align 8
  %125 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %126 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %125, i32 0, i32 3
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %10, align 4
  %130 = load %struct.net_device*, %struct.net_device** %2, align 8
  %131 = call i32 @dm_init_edca_turbo(%struct.net_device* %130)
  %132 = load %struct.ieee80211_qos_parameters*, %struct.ieee80211_qos_parameters** %9, align 8
  %133 = getelementptr inbounds %struct.ieee80211_qos_parameters, %struct.ieee80211_qos_parameters* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* @IEEE_G, align 4
  %139 = load i32, i32* @IEEE_N_24G, align 4
  %140 = or i32 %138, %139
  %141 = and i32 %137, %140
  %142 = icmp ne i32 %141, 0
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i32 9, i32 20
  %145 = mul nsw i32 %136, %144
  %146 = load i32, i32* @aSifsTime, align 4
  %147 = add nsw i32 %145, %146
  store i32 %147, i32* %7, align 4
  %148 = load %struct.ieee80211_qos_parameters*, %struct.ieee80211_qos_parameters** %9, align 8
  %149 = getelementptr inbounds %struct.ieee80211_qos_parameters, %struct.ieee80211_qos_parameters* %148, i32 0, i32 3
  %150 = load i64*, i64** %149, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 0
  %152 = load i64, i64* %151, align 8
  %153 = trunc i64 %152 to i32
  %154 = load i32, i32* @AC_PARAM_TXOP_LIMIT_OFFSET, align 4
  %155 = shl i32 %153, %154
  %156 = load %struct.ieee80211_qos_parameters*, %struct.ieee80211_qos_parameters** %9, align 8
  %157 = getelementptr inbounds %struct.ieee80211_qos_parameters, %struct.ieee80211_qos_parameters* %156, i32 0, i32 2
  %158 = load i64*, i64** %157, align 8
  %159 = getelementptr inbounds i64, i64* %158, i64 0
  %160 = load i64, i64* %159, align 8
  %161 = trunc i64 %160 to i32
  %162 = load i32, i32* @AC_PARAM_ECW_MAX_OFFSET, align 4
  %163 = shl i32 %161, %162
  %164 = or i32 %155, %163
  %165 = load %struct.ieee80211_qos_parameters*, %struct.ieee80211_qos_parameters** %9, align 8
  %166 = getelementptr inbounds %struct.ieee80211_qos_parameters, %struct.ieee80211_qos_parameters* %165, i32 0, i32 1
  %167 = load i64*, i64** %166, align 8
  %168 = getelementptr inbounds i64, i64* %167, i64 0
  %169 = load i64, i64* %168, align 8
  %170 = trunc i64 %169 to i32
  %171 = load i32, i32* @AC_PARAM_ECW_MIN_OFFSET, align 4
  %172 = shl i32 %170, %171
  %173 = or i32 %164, %172
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* @AC_PARAM_AIFS_OFFSET, align 4
  %176 = shl i32 %174, %175
  %177 = or i32 %173, %176
  store i32 %177, i32* %8, align 4
  %178 = load i32, i32* %8, align 4
  %179 = call i32 @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %178)
  %180 = load %struct.net_device*, %struct.net_device** %2, align 8
  %181 = load i32, i32* @EDCAPARA_BE, align 4
  %182 = load i32, i32* %8, align 4
  %183 = call i32 @write_nic_dword(%struct.net_device* %180, i32 %181, i32 %182)
  %184 = load %struct.ieee80211_qos_parameters*, %struct.ieee80211_qos_parameters** %9, align 8
  %185 = getelementptr inbounds %struct.ieee80211_qos_parameters, %struct.ieee80211_qos_parameters* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 0
  %188 = bitcast i32* %187 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %188, %struct.TYPE_14__** %11, align 8
  %189 = load %struct.net_device*, %struct.net_device** %2, align 8
  %190 = load i32, i32* @AcmHwCtrl, align 4
  %191 = call i32 @read_nic_byte(%struct.net_device* %189, i32 %190)
  store i32 %191, i32* %12, align 4
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %118
  %198 = load i32, i32* @AcmHw_BeqEn, align 4
  %199 = load i32, i32* %12, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %12, align 4
  br label %206

201:                                              ; preds = %118
  %202 = load i32, i32* @AcmHw_BeqEn, align 4
  %203 = xor i32 %202, -1
  %204 = load i32, i32* %12, align 4
  %205 = and i32 %204, %203
  store i32 %205, i32* %12, align 4
  br label %206

206:                                              ; preds = %201, %197
  %207 = load i32, i32* @COMP_QOS, align 4
  %208 = load i32, i32* %12, align 4
  %209 = call i32 @RT_TRACE(i32 %207, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %208)
  %210 = load %struct.net_device*, %struct.net_device** %2, align 8
  %211 = load i32, i32* @AcmHwCtrl, align 4
  %212 = load i32, i32* %12, align 4
  %213 = call i32 @write_nic_byte(%struct.net_device* %210, i32 %211, i32 %212)
  %214 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %215 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %214, i32 0, i32 1
  store i32 0, i32* %215, align 4
  br label %216

216:                                              ; preds = %206, %113
  br label %217

217:                                              ; preds = %216, %110
  br label %218

218:                                              ; preds = %217, %39, %27
  %219 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %220 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %219, i32 0, i32 3
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 1
  store i32 0, i32* %222, align 8
  %223 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %224 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  store i64 %226, i64* @dm_check_edca_turbo.lastTxOkCnt, align 8
  %227 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %228 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  store i64 %230, i64* @dm_check_edca_turbo.lastRxOkCnt, align 8
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i32, i32) #1

declare dso_local i32 @dm_init_edca_turbo(%struct.net_device*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32) #1

declare dso_local i32 @RT_TRACE(i32, i8*, i32) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
