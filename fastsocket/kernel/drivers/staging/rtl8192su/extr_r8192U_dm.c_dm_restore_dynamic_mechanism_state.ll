; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_dm.c_dm_restore_dynamic_mechanism_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_dm.c_dm_restore_dynamic_mechanism_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, i64, i64, %struct.TYPE_3__*, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64, i32 }

@COMP_RATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"<---- dm_restore_dynamic_mechanism_state(): driver is going to unload\0A\00", align 1
@WIRELESS_MODE_N_24G = common dso_local global i64 0, align 8
@WIRELESS_MODE_N_5G = common dso_local global i64 0, align 8
@RF_1T2R = common dso_local global i64 0, align 8
@RATE_ALL_OFDM_2SS = common dso_local global i32 0, align 4
@RATR0 = common dso_local global i32 0, align 4
@UFWP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_restore_dynamic_mechanism_state(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %6)
  store %struct.r8192_priv* %7, %struct.r8192_priv** %3, align 8
  %8 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %9 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %13 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @COMP_RATE, align 4
  %18 = call i32 @RT_TRACE(i32 %17, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  br label %78

19:                                               ; preds = %1
  %20 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %21 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %78

26:                                               ; preds = %19
  %27 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %28 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %27, i32 0, i32 3
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @WIRELESS_MODE_N_24G, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %43, label %34

34:                                               ; preds = %26
  %35 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %36 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %35, i32 0, i32 3
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @WIRELESS_MODE_N_5G, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  br label %78

43:                                               ; preds = %34, %26
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %5, align 4
  %45 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %46 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @RF_1T2R, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load i32, i32* @RATE_ALL_OFDM_2SS, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %50, %43
  %56 = load %struct.net_device*, %struct.net_device** %2, align 8
  %57 = load i32, i32* @RATR0, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @write_nic_dword(%struct.net_device* %56, i32 %57, i32 %58)
  %60 = load %struct.net_device*, %struct.net_device** %2, align 8
  %61 = load i32, i32* @UFWP, align 4
  %62 = call i32 @write_nic_byte(%struct.net_device* %60, i32 %61, i32 1)
  %63 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %64 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %55
  %68 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %69 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.net_device*, %struct.net_device** %2, align 8
  %74 = call i32 @dm_txpower_reset_recovery(%struct.net_device* %73)
  br label %75

75:                                               ; preds = %72, %67, %55
  %76 = load %struct.net_device*, %struct.net_device** %2, align 8
  %77 = call i32 @dm_bb_initialgain_restore(%struct.net_device* %76)
  br label %78

78:                                               ; preds = %75, %42, %25, %16
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @RT_TRACE(i32, i8*) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i32, i32) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @dm_txpower_reset_recovery(%struct.net_device*) #1

declare dso_local i32 @dm_bb_initialgain_restore(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
