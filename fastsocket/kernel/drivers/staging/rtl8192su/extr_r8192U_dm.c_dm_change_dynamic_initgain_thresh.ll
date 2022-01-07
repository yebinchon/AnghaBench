; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_dm.c_dm_change_dynamic_initgain_thresh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_dm.c_dm_change_dynamic_initgain_thresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i32, i64, i64, i64, i64, i8*, i64, i64, i64 }
%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, i64 }

@DIG_TYPE_THRESH_HIGHPWR_HIGH = common dso_local global i64 0, align 8
@DIG_TYPE_THRESH_HIGHPWR_LOW = common dso_local global i64 0, align 8
@DIG_ALGO_BY_FALSE_ALARM = common dso_local global i64 0, align 8
@DIG_ALGO_MAX = common dso_local global i64 0, align 8
@DIG_TYPE_ALGORITHM = common dso_local global i64 0, align 8
@DIG_TYPE_BACKOFF = common dso_local global i64 0, align 8
@DIG_TYPE_DBG_MODE = common dso_local global i64 0, align 8
@DIG_TYPE_DISABLE = common dso_local global i64 0, align 8
@DIG_TYPE_ENABLE = common dso_local global i64 0, align 8
@DIG_TYPE_RSSI = common dso_local global i64 0, align 8
@DIG_TYPE_RX_GAIN_MAX = common dso_local global i64 0, align 8
@DIG_TYPE_RX_GAIN_MIN = common dso_local global i64 0, align 8
@DIG_TYPE_THRESH_HIGH = common dso_local global i64 0, align 8
@DIG_TYPE_THRESH_LOW = common dso_local global i64 0, align 8
@DM_DBG_MAX = common dso_local global i64 0, align 8
@DM_DBG_OFF = common dso_local global i64 0, align 8
@DM_STA_DIG_MAX = common dso_local global i8* null, align 8
@dm_digtable = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_change_dynamic_initgain_thresh(%struct.net_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %8)
  store %struct.r8192_priv* %9, %struct.r8192_priv** %7, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @DIG_TYPE_THRESH_HIGHPWR_HIGH, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %16 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %15, i32 0, i32 1
  store i64 %14, i64* %16, align 8
  br label %26

17:                                               ; preds = %3
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @DIG_TYPE_THRESH_HIGHPWR_LOW, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %24 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  br label %25

25:                                               ; preds = %21, %17
  br label %26

26:                                               ; preds = %25, %13
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
