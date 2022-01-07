; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_dm.c_dm_ctrl_initgain_byrssi_by_fwfalse_alarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_dm.c_dm_ctrl_initgain_byrssi_by_fwfalse_alarm.c"
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
  br label %193

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
  br label %193

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
  br label %193

51:                                               ; preds = %44, %38
  %52 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %53 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 2), align 8
  %56 = icmp sle i64 %54, %55
  br i1 %56, label %57, label %108

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
  br label %193

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
  br i1 %95, label %96, label %101

96:                                               ; preds = %72
  %97 = load %struct.net_device*, %struct.net_device** %2, align 8
  %98 = load i32, i32* @rOFDM0_XATxAFE, align 4
  %99 = add nsw i32 %98, 3
  %100 = call i32 @write_nic_byte(%struct.net_device* %97, i32 %99, i32 0)
  br label %105

101:                                              ; preds = %72
  %102 = load %struct.net_device*, %struct.net_device** %2, align 8
  %103 = load i32, i32* @rOFDM0_RxDetector1, align 4
  %104 = call i32 @write_nic_byte(%struct.net_device* %102, i32 %103, i32 66)
  br label %105

105:                                              ; preds = %101, %96
  %106 = load %struct.net_device*, %struct.net_device** %2, align 8
  %107 = call i32 @write_nic_byte(%struct.net_device* %106, i32 2570, i32 8)
  br label %193

108:                                              ; preds = %51
  %109 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %110 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 3), align 8
  %113 = icmp sge i64 %111, %112
  br i1 %113, label %114, label %190

114:                                              ; preds = %108
  store i32 0, i32* %5, align 4
  %115 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 1), align 8
  %116 = load i64, i64* @DM_STA_DIG_ON, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %114
  %119 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %120 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @dm_ctrl_initgain_byrssi_by_fwfalse_alarm.reset_cnt, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load %struct.net_device*, %struct.net_device** %2, align 8
  %126 = call i32 @dm_ctrl_initgain_byrssi_highpwr(%struct.net_device* %125)
  br label %193

127:                                              ; preds = %118, %114
  %128 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %129 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @dm_ctrl_initgain_byrssi_by_fwfalse_alarm.reset_cnt, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  store i32 1, i32* %5, align 4
  br label %134

134:                                              ; preds = %133, %127
  %135 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %136 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  store i64 %137, i64* @dm_ctrl_initgain_byrssi_by_fwfalse_alarm.reset_cnt, align 8
  br label %138

138:                                              ; preds = %134
  %139 = load i64, i64* @DM_STA_DIG_ON, align 8
  store i64 %139, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 1), align 8
  %140 = load i32, i32* %5, align 4
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %142, label %155

142:                                              ; preds = %138
  %143 = load %struct.net_device*, %struct.net_device** %2, align 8
  %144 = load i32, i32* @rOFDM0_XAAGCCore1, align 4
  %145 = call i32 @write_nic_byte(%struct.net_device* %143, i32 %144, i32 44)
  %146 = load %struct.net_device*, %struct.net_device** %2, align 8
  %147 = load i32, i32* @rOFDM0_XBAGCCore1, align 4
  %148 = call i32 @write_nic_byte(%struct.net_device* %146, i32 %147, i32 44)
  %149 = load %struct.net_device*, %struct.net_device** %2, align 8
  %150 = load i32, i32* @rOFDM0_XCAGCCore1, align 4
  %151 = call i32 @write_nic_byte(%struct.net_device* %149, i32 %150, i32 44)
  %152 = load %struct.net_device*, %struct.net_device** %2, align 8
  %153 = load i32, i32* @rOFDM0_XDAGCCore1, align 4
  %154 = call i32 @write_nic_byte(%struct.net_device* %152, i32 %153, i32 44)
  br label %168

155:                                              ; preds = %138
  %156 = load %struct.net_device*, %struct.net_device** %2, align 8
  %157 = load i32, i32* @rOFDM0_XAAGCCore1, align 4
  %158 = call i32 @write_nic_byte(%struct.net_device* %156, i32 %157, i32 32)
  %159 = load %struct.net_device*, %struct.net_device** %2, align 8
  %160 = load i32, i32* @rOFDM0_XBAGCCore1, align 4
  %161 = call i32 @write_nic_byte(%struct.net_device* %159, i32 %160, i32 32)
  %162 = load %struct.net_device*, %struct.net_device** %2, align 8
  %163 = load i32, i32* @rOFDM0_XCAGCCore1, align 4
  %164 = call i32 @write_nic_byte(%struct.net_device* %162, i32 %163, i32 32)
  %165 = load %struct.net_device*, %struct.net_device** %2, align 8
  %166 = load i32, i32* @rOFDM0_XDAGCCore1, align 4
  %167 = call i32 @write_nic_byte(%struct.net_device* %165, i32 %166, i32 32)
  br label %168

168:                                              ; preds = %155, %142
  %169 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %170 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @HT_CHANNEL_WIDTH_20, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %179

174:                                              ; preds = %168
  %175 = load %struct.net_device*, %struct.net_device** %2, align 8
  %176 = load i32, i32* @rOFDM0_XATxAFE, align 4
  %177 = add nsw i32 %176, 3
  %178 = call i32 @write_nic_byte(%struct.net_device* %175, i32 %177, i32 32)
  br label %183

179:                                              ; preds = %168
  %180 = load %struct.net_device*, %struct.net_device** %2, align 8
  %181 = load i32, i32* @rOFDM0_RxDetector1, align 4
  %182 = call i32 @write_nic_byte(%struct.net_device* %180, i32 %181, i32 68)
  br label %183

183:                                              ; preds = %179, %174
  %184 = load %struct.net_device*, %struct.net_device** %2, align 8
  %185 = call i32 @write_nic_byte(%struct.net_device* %184, i32 2570, i32 205)
  %186 = load %struct.net_device*, %struct.net_device** %2, align 8
  %187 = load i32, i32* @UFWP, align 4
  %188 = load i32, i32* @bMaskByte1, align 4
  %189 = call i32 @rtl8192_setBBreg(%struct.net_device* %186, i32 %187, i32 %188, i32 1)
  br label %190

190:                                              ; preds = %183, %108
  %191 = load %struct.net_device*, %struct.net_device** %2, align 8
  %192 = call i32 @dm_ctrl_initgain_byrssi_highpwr(%struct.net_device* %191)
  br label %193

193:                                              ; preds = %190, %124, %105, %67, %50, %37, %10
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
