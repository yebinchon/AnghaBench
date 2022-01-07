; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl8192_update_ratr_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl8192_update_ratr_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, %struct.ieee80211_device* }
%struct.ieee80211_device = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64, i32 }

@RF_1T2R = common dso_local global i32 0, align 4
@RATR0 = common dso_local global i64 0, align 8
@UFWP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8192_update_ratr_table(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca %struct.ieee80211_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %8)
  store %struct.r8192_priv* %9, %struct.r8192_priv** %3, align 8
  %10 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %11 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %10, i32 0, i32 1
  %12 = load %struct.ieee80211_device*, %struct.ieee80211_device** %11, align 8
  store %struct.ieee80211_device* %12, %struct.ieee80211_device** %4, align 8
  %13 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = call i32 @rtl8192_config_rate(%struct.net_device* %16, i32* %6)
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 12
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %59 [
    i32 132, label %26
    i32 131, label %29
    i32 130, label %32
    i32 129, label %35
    i32 128, label %35
  ]

26:                                               ; preds = %1
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 4080
  store i32 %28, i32* %6, align 4
  br label %60

29:                                               ; preds = %1
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 15
  store i32 %31, i32* %6, align 4
  br label %60

32:                                               ; preds = %1
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, 4087
  store i32 %34, i32* %6, align 4
  br label %60

35:                                               ; preds = %1, %1
  %36 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %37 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, 520199
  store i32 %44, i32* %6, align 4
  br label %58

45:                                               ; preds = %35
  %46 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %47 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @RF_1T2R, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, 1044487
  store i32 %53, i32* %6, align 4
  br label %57

54:                                               ; preds = %45
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, 260173831
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %54, %51
  br label %58

58:                                               ; preds = %57, %42
  br label %60

59:                                               ; preds = %1
  br label %60

60:                                               ; preds = %59, %58, %32, %29, %26
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %61, 268435455
  store i32 %62, i32* %6, align 4
  %63 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %64 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %60
  %70 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %71 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %70, i32 0, i32 2
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %77, -2147483648
  store i32 %78, i32* %6, align 4
  br label %97

79:                                               ; preds = %69, %60
  %80 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %81 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %80, i32 0, i32 2
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %79
  %87 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %88 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %87, i32 0, i32 2
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load i32, i32* %6, align 4
  %95 = or i32 %94, -2147483648
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %93, %86, %79
  br label %97

97:                                               ; preds = %96, %76
  %98 = load %struct.net_device*, %struct.net_device** %2, align 8
  %99 = load i64, i64* @RATR0, align 8
  %100 = load i32, i32* %7, align 4
  %101 = mul nsw i32 %100, 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %99, %102
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @write_nic_dword(%struct.net_device* %98, i64 %103, i32 %104)
  %106 = load %struct.net_device*, %struct.net_device** %2, align 8
  %107 = load i32, i32* @UFWP, align 4
  %108 = call i32 @write_nic_byte(%struct.net_device* %106, i32 %107, i32 1)
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @rtl8192_config_rate(%struct.net_device*, i32*) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i64, i32) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
