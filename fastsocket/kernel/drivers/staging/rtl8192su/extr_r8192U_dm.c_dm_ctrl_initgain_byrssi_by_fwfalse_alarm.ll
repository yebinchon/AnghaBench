; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_dm.c_dm_ctrl_initgain_byrssi_by_fwfalse_alarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_dm.c_dm_ctrl_initgain_byrssi_by_fwfalse_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64, i64, i8*, i64 }
%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@dm_ctrl_initgain_byrssi_by_fwfalse_alarm.reset_cnt = internal global i64 0, align 8
@dm_digtable = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@DM_STA_DIG_MAX = common dso_local global i8* null, align 8
@UFWP = common dso_local global i32 0, align 4
@bMaskByte1 = common dso_local global i32 0, align 4
@IEEE80211_LINKED = common dso_local global i64 0, align 8
@DM_STA_DIG_OFF = common dso_local global i64 0, align 8
@rOFDM0_XAAGCCore1 = common dso_local global i32 0, align 4
@rOFDM0_XBAGCCore1 = common dso_local global i32 0, align 4
@rOFDM0_XCAGCCore1 = common dso_local global i32 0, align 4
@rOFDM0_XDAGCCore1 = common dso_local global i32 0, align 4
@HT_CHANNEL_WIDTH_20 = common dso_local global i64 0, align 8
@rOFDM0_XATxAFE = common dso_local global i32 0, align 4
@bMaskByte0 = common dso_local global i32 0, align 4
@rOFDM0_RxDetector1 = common dso_local global i32 0, align 4
@DM_STA_DIG_ON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @dm_ctrl_initgain_byrssi_by_fwfalse_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_ctrl_initgain_byrssi_by_fwfalse_alarm(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %6)
  store %struct.r8192_priv* %7, %struct.r8192_priv** %3, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 0), align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %194

11:                                               ; preds = %1
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 5), align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %11
  %15 = load i8*, i8** @DM_STA_DIG_MAX, align 8
  %16 = ptrtoint i8* %15 to i64
  store i64 %16, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 1), align 8
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %25, %14
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 3
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = load i32, i32* @UFWP, align 4
  %23 = load i32, i32* @bMaskByte1, align 4
  %24 = call i32 @rtl8192_setBBreg(%struct.net_device* %21, i32 %22, i32 %23, i32 1)
  br label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %17

28:                                               ; preds = %17
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 5), align 8
  br label %29

29:                                               ; preds = %28, %11
  %30 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %31 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %30, i32 0, i32 3
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IEEE80211_LINKED, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %194

38:                                               ; preds = %29
  %39 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %40 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 2), align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %46 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 3), align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %194

51:                                               ; preds = %44, %38
  %52 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %53 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 2), align 8
  %56 = icmp sle i64 %54, %55
  br i1 %56, label %57, label %109

57:                                               ; preds = %51
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 1), align 8
  %59 = load i64, i64* @DM_STA_DIG_OFF, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %63 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @dm_ctrl_initgain_byrssi_by_fwfalse_alarm.reset_cnt, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %194

68:                                               ; preds = %61, %57
  %69 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %70 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* @dm_ctrl_initgain_byrssi_by_fwfalse_alarm.reset_cnt, align 8
  br label %72

72:                                               ; preds = %68
  %73 = load i8*, i8** @DM_STA_DIG_MAX, align 8
  store i8* %73, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 4), align 8
  %74 = load i64, i64* @DM_STA_DIG_OFF, align 8
  store i64 %74, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 1), align 8
  %75 = load %struct.net_device*, %struct.net_device** %2, align 8
  %76 = load i32, i32* @UFWP, align 4
  %77 = load i32, i32* @bMaskByte1, align 4
  %78 = call i32 @rtl8192_setBBreg(%struct.net_device* %75, i32 %76, i32 %77, i32 8)
  %79 = load %struct.net_device*, %struct.net_device** %2, align 8
  %80 = load i32, i32* @rOFDM0_XAAGCCore1, align 4
  %81 = call i32 @write_nic_byte(%struct.net_device* %79, i32 %80, i32 23)
  %82 = load %struct.net_device*, %struct.net_device** %2, align 8
  %83 = load i32, i32* @rOFDM0_XBAGCCore1, align 4
  %84 = call i32 @write_nic_byte(%struct.net_device* %82, i32 %83, i32 23)
  %85 = load %struct.net_device*, %struct.net_device** %2, align 8
  %86 = load i32, i32* @rOFDM0_XCAGCCore1, align 4
  %87 = call i32 @write_nic_byte(%struct.net_device* %85, i32 %86, i32 23)
  %88 = load %struct.net_device*, %struct.net_device** %2, align 8
  %89 = load i32, i32* @rOFDM0_XDAGCCore1, align 4
  %90 = call i32 @write_nic_byte(%struct.net_device* %88, i32 %89, i32 23)
  %91 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %92 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @HT_CHANNEL_WIDTH_20, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %72
  %97 = load %struct.net_device*, %struct.net_device** %2, align 8
  %98 = load i32, i32* @rOFDM0_XATxAFE, align 4
  %99 = add nsw i32 %98, 3
  %100 = load i32, i32* @bMaskByte0, align 4
  %101 = call i32 @rtl8192_setBBreg(%struct.net_device* %97, i32 %99, i32 %100, i32 0)
  br label %106

102:                                              ; preds = %72
  %103 = load %struct.net_device*, %struct.net_device** %2, align 8
  %104 = load i32, i32* @rOFDM0_RxDetector1, align 4
  %105 = call i32 @write_nic_byte(%struct.net_device* %103, i32 %104, i32 66)
  br label %106

106:                                              ; preds = %102, %96
  %107 = load %struct.net_device*, %struct.net_device** %2, align 8
  %108 = call i32 @write_nic_byte(%struct.net_device* %107, i32 2570, i32 8)
  br label %194

109:                                              ; preds = %51
  %110 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %111 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 3), align 8
  %114 = icmp sge i64 %112, %113
  br i1 %114, label %115, label %191

115:                                              ; preds = %109
  store i32 0, i32* %5, align 4
  %116 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 1), align 8
  %117 = load i64, i64* @DM_STA_DIG_ON, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %115
  %120 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %121 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @dm_ctrl_initgain_byrssi_by_fwfalse_alarm.reset_cnt, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load %struct.net_device*, %struct.net_device** %2, align 8
  %127 = call i32 @dm_ctrl_initgain_byrssi_highpwr(%struct.net_device* %126)
  br label %194

128:                                              ; preds = %119, %115
  %129 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %130 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @dm_ctrl_initgain_byrssi_by_fwfalse_alarm.reset_cnt, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  store i32 1, i32* %5, align 4
  br label %135

135:                                              ; preds = %134, %128
  %136 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %137 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  store i64 %138, i64* @dm_ctrl_initgain_byrssi_by_fwfalse_alarm.reset_cnt, align 8
  br label %139

139:                                              ; preds = %135
  %140 = load i64, i64* @DM_STA_DIG_ON, align 8
  store i64 %140, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 1), align 8
  %141 = load i32, i32* %5, align 4
  %142 = icmp eq i32 %141, 1
  br i1 %142, label %143, label %156

143:                                              ; preds = %139
  %144 = load %struct.net_device*, %struct.net_device** %2, align 8
  %145 = load i32, i32* @rOFDM0_XAAGCCore1, align 4
  %146 = call i32 @write_nic_byte(%struct.net_device* %144, i32 %145, i32 44)
  %147 = load %struct.net_device*, %struct.net_device** %2, align 8
  %148 = load i32, i32* @rOFDM0_XBAGCCore1, align 4
  %149 = call i32 @write_nic_byte(%struct.net_device* %147, i32 %148, i32 44)
  %150 = load %struct.net_device*, %struct.net_device** %2, align 8
  %151 = load i32, i32* @rOFDM0_XCAGCCore1, align 4
  %152 = call i32 @write_nic_byte(%struct.net_device* %150, i32 %151, i32 44)
  %153 = load %struct.net_device*, %struct.net_device** %2, align 8
  %154 = load i32, i32* @rOFDM0_XDAGCCore1, align 4
  %155 = call i32 @write_nic_byte(%struct.net_device* %153, i32 %154, i32 44)
  br label %169

156:                                              ; preds = %139
  %157 = load %struct.net_device*, %struct.net_device** %2, align 8
  %158 = load i32, i32* @rOFDM0_XAAGCCore1, align 4
  %159 = call i32 @write_nic_byte(%struct.net_device* %157, i32 %158, i32 32)
  %160 = load %struct.net_device*, %struct.net_device** %2, align 8
  %161 = load i32, i32* @rOFDM0_XBAGCCore1, align 4
  %162 = call i32 @write_nic_byte(%struct.net_device* %160, i32 %161, i32 32)
  %163 = load %struct.net_device*, %struct.net_device** %2, align 8
  %164 = load i32, i32* @rOFDM0_XCAGCCore1, align 4
  %165 = call i32 @write_nic_byte(%struct.net_device* %163, i32 %164, i32 32)
  %166 = load %struct.net_device*, %struct.net_device** %2, align 8
  %167 = load i32, i32* @rOFDM0_XDAGCCore1, align 4
  %168 = call i32 @write_nic_byte(%struct.net_device* %166, i32 %167, i32 32)
  br label %169

169:                                              ; preds = %156, %143
  %170 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %171 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @HT_CHANNEL_WIDTH_20, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %180

175:                                              ; preds = %169
  %176 = load %struct.net_device*, %struct.net_device** %2, align 8
  %177 = load i32, i32* @rOFDM0_XATxAFE, align 4
  %178 = add nsw i32 %177, 3
  %179 = call i32 @write_nic_byte(%struct.net_device* %176, i32 %178, i32 32)
  br label %184

180:                                              ; preds = %169
  %181 = load %struct.net_device*, %struct.net_device** %2, align 8
  %182 = load i32, i32* @rOFDM0_RxDetector1, align 4
  %183 = call i32 @write_nic_byte(%struct.net_device* %181, i32 %182, i32 68)
  br label %184

184:                                              ; preds = %180, %175
  %185 = load %struct.net_device*, %struct.net_device** %2, align 8
  %186 = call i32 @write_nic_byte(%struct.net_device* %185, i32 2570, i32 205)
  %187 = load %struct.net_device*, %struct.net_device** %2, align 8
  %188 = load i32, i32* @UFWP, align 4
  %189 = load i32, i32* @bMaskByte1, align 4
  %190 = call i32 @rtl8192_setBBreg(%struct.net_device* %187, i32 %188, i32 %189, i32 1)
  br label %191

191:                                              ; preds = %184, %109
  %192 = load %struct.net_device*, %struct.net_device** %2, align 8
  %193 = call i32 @dm_ctrl_initgain_byrssi_highpwr(%struct.net_device* %192)
  br label %194

194:                                              ; preds = %191, %125, %106, %67, %50, %37, %10
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @rtl8192_setBBreg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @dm_ctrl_initgain_byrssi_highpwr(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
