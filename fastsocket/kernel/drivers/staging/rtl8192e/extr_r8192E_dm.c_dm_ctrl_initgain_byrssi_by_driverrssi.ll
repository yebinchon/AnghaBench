; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_dm.c_dm_ctrl_initgain_byrssi_by_driverrssi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_dm.c_dm_ctrl_initgain_byrssi_by_driverrssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32, i32, i64, i32, i32 }
%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@dm_ctrl_initgain_byrssi_by_driverrssi.fw_dig = internal global i32 0, align 4
@dm_digtable = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@UFWP = common dso_local global i32 0, align 4
@bMaskByte1 = common dso_local global i32 0, align 4
@DM_STA_DIG_OFF = common dso_local global i32 0, align 4
@IEEE80211_LINKED = common dso_local global i64 0, align 8
@DIG_CONNECT = common dso_local global i32 0, align 4
@DIG_DISCONNECT = common dso_local global i32 0, align 4
@DM_DBG_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @dm_ctrl_initgain_byrssi_by_driverrssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_ctrl_initgain_byrssi_by_driverrssi(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %5)
  store %struct.r8192_priv* %6, %struct.r8192_priv** %3, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 0), align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %65

10:                                               ; preds = %1
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 4), align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 0, i32* @dm_ctrl_initgain_byrssi_by_driverrssi.fw_dig, align 4
  br label %14

14:                                               ; preds = %13, %10
  %15 = load i32, i32* @dm_ctrl_initgain_byrssi_by_driverrssi.fw_dig, align 4
  %16 = icmp sle i32 %15, 3
  br i1 %16, label %17, label %33

17:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %26, %17
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 3
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = load i32, i32* @UFWP, align 4
  %24 = load i32, i32* @bMaskByte1, align 4
  %25 = call i32 @rtl8192_setBBreg(%struct.net_device* %22, i32 %23, i32 %24, i32 8)
  br label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %18

29:                                               ; preds = %18
  %30 = load i32, i32* @dm_ctrl_initgain_byrssi_by_driverrssi.fw_dig, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @dm_ctrl_initgain_byrssi_by_driverrssi.fw_dig, align 4
  %32 = load i32, i32* @DM_STA_DIG_OFF, align 4
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 6), align 4
  br label %33

33:                                               ; preds = %29, %14
  %34 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %35 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @IEEE80211_LINKED, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @DIG_CONNECT, align 4
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 2), align 8
  br label %45

43:                                               ; preds = %33
  %44 = load i32, i32* @DIG_DISCONNECT, align 4
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 2), align 8
  br label %45

45:                                               ; preds = %43, %41
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 1), align 8
  %47 = load i64, i64* @DM_DBG_OFF, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %51 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 5), align 8
  br label %53

53:                                               ; preds = %49, %45
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = call i32 @dm_initial_gain(%struct.net_device* %54)
  %56 = load %struct.net_device*, %struct.net_device** %2, align 8
  %57 = call i32 @dm_pd_th(%struct.net_device* %56)
  %58 = load %struct.net_device*, %struct.net_device** %2, align 8
  %59 = call i32 @dm_cs_ratio(%struct.net_device* %58)
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 4), align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 4), align 8
  br label %63

63:                                               ; preds = %62, %53
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 2), align 8
  store i32 %64, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 3), align 4
  br label %65

65:                                               ; preds = %63, %9
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @rtl8192_setBBreg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @dm_initial_gain(%struct.net_device*) #1

declare dso_local i32 @dm_pd_th(%struct.net_device*) #1

declare dso_local i32 @dm_cs_ratio(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
