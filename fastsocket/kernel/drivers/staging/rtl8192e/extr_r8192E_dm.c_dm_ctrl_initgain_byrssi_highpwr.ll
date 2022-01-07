; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_dm.c_dm_ctrl_initgain_byrssi_highpwr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_dm.c_dm_ctrl_initgain_byrssi_highpwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64 }
%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, i64, i64 }

@dm_ctrl_initgain_byrssi_highpwr.reset_cnt_highpwr = internal global i64 0, align 8
@dm_digtable = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DM_STA_DIG_ON = common dso_local global i64 0, align 8
@HT_CHANNEL_WIDTH_20 = common dso_local global i64 0, align 8
@rOFDM0_XATxAFE = common dso_local global i64 0, align 8
@rOFDM0_RxDetector1 = common dso_local global i64 0, align 8
@DM_STA_DIG_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @dm_ctrl_initgain_byrssi_highpwr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_ctrl_initgain_byrssi_highpwr(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %4)
  store %struct.r8192_priv* %5, %struct.r8192_priv** %3, align 8
  %6 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %7 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 0), align 8
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %13 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 1), align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %99

18:                                               ; preds = %11, %1
  %19 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %20 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 1), align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %53

24:                                               ; preds = %18
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 2), align 8
  %26 = load i64, i64* @DM_STA_DIG_ON, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %30 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @dm_ctrl_initgain_byrssi_highpwr.reset_cnt_highpwr, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %99

35:                                               ; preds = %28, %24
  %36 = load i64, i64* @DM_STA_DIG_ON, align 8
  store i64 %36, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 2), align 8
  br label %37

37:                                               ; preds = %35
  %38 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %39 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @HT_CHANNEL_WIDTH_20, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = load i64, i64* @rOFDM0_XATxAFE, align 8
  %46 = add nsw i64 %45, 3
  %47 = call i32 @write_nic_byte(%struct.net_device* %44, i64 %46, i32 16)
  br label %52

48:                                               ; preds = %37
  %49 = load %struct.net_device*, %struct.net_device** %2, align 8
  %50 = load i64, i64* @rOFDM0_RxDetector1, align 8
  %51 = call i32 @write_nic_byte(%struct.net_device* %49, i64 %50, i32 67)
  br label %52

52:                                               ; preds = %48, %43
  br label %95

53:                                               ; preds = %18
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 2), align 8
  %55 = load i64, i64* @DM_STA_DIG_OFF, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %59 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @dm_ctrl_initgain_byrssi_highpwr.reset_cnt_highpwr, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %99

64:                                               ; preds = %57, %53
  %65 = load i64, i64* @DM_STA_DIG_OFF, align 8
  store i64 %65, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 2), align 8
  br label %66

66:                                               ; preds = %64
  %67 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %68 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 0), align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %94

72:                                               ; preds = %66
  %73 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %74 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 3), align 8
  %77 = icmp sge i64 %75, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %72
  %79 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %80 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @HT_CHANNEL_WIDTH_20, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load %struct.net_device*, %struct.net_device** %2, align 8
  %86 = load i64, i64* @rOFDM0_XATxAFE, align 8
  %87 = add nsw i64 %86, 3
  %88 = call i32 @write_nic_byte(%struct.net_device* %85, i64 %87, i32 32)
  br label %93

89:                                               ; preds = %78
  %90 = load %struct.net_device*, %struct.net_device** %2, align 8
  %91 = load i64, i64* @rOFDM0_RxDetector1, align 8
  %92 = call i32 @write_nic_byte(%struct.net_device* %90, i64 %91, i32 68)
  br label %93

93:                                               ; preds = %89, %84
  br label %94

94:                                               ; preds = %93, %72, %66
  br label %95

95:                                               ; preds = %94, %52
  %96 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %97 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* @dm_ctrl_initgain_byrssi_highpwr.reset_cnt_highpwr, align 8
  br label %99

99:                                               ; preds = %95, %63, %34, %17
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
