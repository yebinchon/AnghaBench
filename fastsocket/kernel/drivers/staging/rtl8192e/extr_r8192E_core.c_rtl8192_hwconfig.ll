; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl8192_hwconfig.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl8192_hwconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BW_OPMODE_20MHZ = common dso_local global i32 0, align 4
@RATE_ALL_CCK = common dso_local global i32 0, align 4
@BW_OPMODE_5G = common dso_local global i32 0, align 4
@RATE_ALL_OFDM_AG = common dso_local global i32 0, align 4
@RATE_ALL_OFDM_1SS = common dso_local global i32 0, align 4
@RATE_ALL_OFDM_2SS = common dso_local global i32 0, align 4
@BW_OPMODE = common dso_local global i32 0, align 4
@RF_1T2R = common dso_local global i64 0, align 8
@RATR0 = common dso_local global i32 0, align 4
@UFWP = common dso_local global i32 0, align 4
@RRSR = common dso_local global i32 0, align 4
@RETRY_LIMIT = common dso_local global i32 0, align 4
@RETRY_LIMIT_SHORT_SHIFT = common dso_local global i32 0, align 4
@RETRY_LIMIT_LONG_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @rtl8192_hwconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8192_hwconfig(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.r8192_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %9)
  store %struct.r8192_priv* %10, %struct.r8192_priv** %7, align 8
  %11 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %12 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %54 [
    i32 131, label %16
    i32 133, label %20
    i32 130, label %26
    i32 132, label %34
    i32 129, label %34
    i32 128, label %46
  ]

16:                                               ; preds = %1
  %17 = load i32, i32* @BW_OPMODE_20MHZ, align 4
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @RATE_ALL_CCK, align 4
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @RATE_ALL_CCK, align 4
  store i32 %19, i32* %4, align 4
  br label %54

20:                                               ; preds = %1
  %21 = load i32, i32* @BW_OPMODE_5G, align 4
  %22 = load i32, i32* @BW_OPMODE_20MHZ, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @RATE_ALL_OFDM_AG, align 4
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @RATE_ALL_OFDM_AG, align 4
  store i32 %25, i32* %4, align 4
  br label %54

26:                                               ; preds = %1
  %27 = load i32, i32* @BW_OPMODE_20MHZ, align 4
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @RATE_ALL_CCK, align 4
  %29 = load i32, i32* @RATE_ALL_OFDM_AG, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* @RATE_ALL_CCK, align 4
  %32 = load i32, i32* @RATE_ALL_OFDM_AG, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %4, align 4
  br label %54

34:                                               ; preds = %1, %1
  %35 = load i32, i32* @BW_OPMODE_20MHZ, align 4
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* @RATE_ALL_CCK, align 4
  %37 = load i32, i32* @RATE_ALL_OFDM_AG, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @RATE_ALL_OFDM_1SS, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @RATE_ALL_OFDM_2SS, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* @RATE_ALL_CCK, align 4
  %44 = load i32, i32* @RATE_ALL_OFDM_AG, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %4, align 4
  br label %54

46:                                               ; preds = %1
  %47 = load i32, i32* @BW_OPMODE_5G, align 4
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* @RATE_ALL_OFDM_AG, align 4
  %49 = load i32, i32* @RATE_ALL_OFDM_1SS, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @RATE_ALL_OFDM_2SS, align 4
  %52 = or i32 %50, %51
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* @RATE_ALL_OFDM_AG, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %1, %46, %34, %26, %20, %16
  %55 = load %struct.net_device*, %struct.net_device** %2, align 8
  %56 = load i32, i32* @BW_OPMODE, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @write_nic_byte(%struct.net_device* %55, i32 %56, i32 %57)
  store i32 0, i32* %8, align 4
  %59 = load i32, i32* %3, align 4
  store i32 %59, i32* %8, align 4
  %60 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %61 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @RF_1T2R, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %54
  %66 = load i32, i32* @RATE_ALL_OFDM_2SS, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %8, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %65, %54
  %71 = load %struct.net_device*, %struct.net_device** %2, align 8
  %72 = load i32, i32* @RATR0, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @write_nic_dword(%struct.net_device* %71, i32 %72, i32 %73)
  %75 = load %struct.net_device*, %struct.net_device** %2, align 8
  %76 = load i32, i32* @UFWP, align 4
  %77 = call i32 @write_nic_byte(%struct.net_device* %75, i32 %76, i32 1)
  %78 = load %struct.net_device*, %struct.net_device** %2, align 8
  %79 = call i32 @read_nic_byte(%struct.net_device* %78, i32 787)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = shl i32 %80, 24
  %82 = load i32, i32* %4, align 4
  %83 = and i32 %82, 16777215
  %84 = or i32 %81, %83
  store i32 %84, i32* %4, align 4
  %85 = load %struct.net_device*, %struct.net_device** %2, align 8
  %86 = load i32, i32* @RRSR, align 4
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @write_nic_dword(%struct.net_device* %85, i32 %86, i32 %87)
  %89 = load %struct.net_device*, %struct.net_device** %2, align 8
  %90 = load i32, i32* @RETRY_LIMIT, align 4
  %91 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %92 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @RETRY_LIMIT_SHORT_SHIFT, align 4
  %95 = shl i32 %93, %94
  %96 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %97 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @RETRY_LIMIT_LONG_SHIFT, align 4
  %100 = shl i32 %98, %99
  %101 = or i32 %95, %100
  %102 = call i32 @write_nic_word(%struct.net_device* %89, i32 %90, i32 %101)
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i32, i32) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32) #1

declare dso_local i32 @write_nic_word(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
