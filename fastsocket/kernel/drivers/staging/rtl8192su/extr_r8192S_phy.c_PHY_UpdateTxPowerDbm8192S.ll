; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_PHY_UpdateTxPowerDbm8192S.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_PHY_UpdateTxPowerDbm8192S.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, i32, i64**, i64**, i64**, i64*, i64*, i64*, i64*, i64*, i64* }

@WIRELESS_MODE_B = common dso_local global i32 0, align 4
@WIRELESS_MODE_N_24G = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PHY_UpdateTxPowerDbm8192S(%struct.net_device* %0, i64 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.r8192_priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %10)
  store %struct.r8192_priv* %11, %struct.r8192_priv** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = load i32, i32* @WIRELESS_MODE_B, align 4
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @phy_DbmToTxPwrIdx(%struct.net_device* %12, i32 %13, i64 %14)
  store i64 %15, i64* %8, align 8
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = load i32, i32* @WIRELESS_MODE_N_24G, align 4
  %18 = load i64, i64* %4, align 8
  %19 = call i64 @phy_DbmToTxPwrIdx(%struct.net_device* %16, i32 %17, i64 %18)
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %22 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %20, %23
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %28 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %9, align 8
  %31 = sub nsw i64 %30, %29
  store i64 %31, i64* %9, align 8
  br label %33

32:                                               ; preds = %2
  store i64 0, i64* %9, align 8
  br label %33

33:                                               ; preds = %32, %26
  store i64 0, i64* %6, align 8
  br label %34

34:                                               ; preds = %108, %33
  %35 = load i64, i64* %6, align 8
  %36 = icmp slt i64 %35, 14
  br i1 %36, label %37, label %111

37:                                               ; preds = %34
  %38 = load i64, i64* %8, align 8
  %39 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %40 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %39, i32 0, i32 10
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  store i64 %38, i64* %43, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %46 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %45, i32 0, i32 9
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  store i64 %44, i64* %49, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %52 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %51, i32 0, i32 8
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* %6, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  store i64 %50, i64* %55, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %58 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %57, i32 0, i32 7
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* %6, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  store i64 %56, i64* %61, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %64 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %63, i32 0, i32 6
  %65 = load i64*, i64** %64, align 8
  %66 = load i64, i64* %6, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  store i64 %62, i64* %67, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %70 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %69, i32 0, i32 5
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* %6, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  store i64 %68, i64* %73, align 8
  store i64 0, i64* %7, align 8
  br label %74

74:                                               ; preds = %104, %37
  %75 = load i64, i64* %7, align 8
  %76 = icmp slt i64 %75, 2
  br i1 %76, label %77, label %107

77:                                               ; preds = %74
  %78 = load i64, i64* %8, align 8
  %79 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %80 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %79, i32 0, i32 4
  %81 = load i64**, i64*** %80, align 8
  %82 = load i64, i64* %7, align 8
  %83 = getelementptr inbounds i64*, i64** %81, i64 %82
  %84 = load i64*, i64** %83, align 8
  %85 = load i64, i64* %6, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  store i64 %78, i64* %86, align 8
  %87 = load i64, i64* %9, align 8
  %88 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %89 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %88, i32 0, i32 2
  %90 = load i64**, i64*** %89, align 8
  %91 = load i64, i64* %7, align 8
  %92 = getelementptr inbounds i64*, i64** %90, i64 %91
  %93 = load i64*, i64** %92, align 8
  %94 = load i64, i64* %6, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  store i64 %87, i64* %95, align 8
  %96 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %97 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %96, i32 0, i32 3
  %98 = load i64**, i64*** %97, align 8
  %99 = load i64, i64* %7, align 8
  %100 = getelementptr inbounds i64*, i64** %98, i64 %99
  %101 = load i64*, i64** %100, align 8
  %102 = load i64, i64* %6, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  store i64 %87, i64* %103, align 8
  br label %104

104:                                              ; preds = %77
  %105 = load i64, i64* %7, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %7, align 8
  br label %74

107:                                              ; preds = %74
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* %6, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %6, align 8
  br label %34

111:                                              ; preds = %34
  %112 = load %struct.net_device*, %struct.net_device** %3, align 8
  %113 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %114 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @PHY_SetTxPowerLevel8192S(%struct.net_device* %112, i32 %115)
  %117 = load i32, i32* @TRUE, align 4
  ret i32 %117
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i64 @phy_DbmToTxPwrIdx(%struct.net_device*, i32, i64) #1

declare dso_local i32 @PHY_SetTxPowerLevel8192S(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
