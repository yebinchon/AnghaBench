; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_PhyConfig8185.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_PhyConfig8185.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i32, i32, i32, i32, i64, i64, i32 }

@RCR = common dso_local global i32 0, align 4
@CONFIG4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PhyConfig8185(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8180_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call i64 @ieee80211_priv(%struct.net_device* %4)
  %6 = inttoptr i64 %5 to %struct.r8180_priv*
  store %struct.r8180_priv* %6, %struct.r8180_priv** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = load i32, i32* @RCR, align 4
  %9 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %10 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @write_nic_dword(%struct.net_device* %7, i32 %8, i32 %11)
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = load i32, i32* @CONFIG4, align 4
  %15 = call i32 @read_nic_byte(%struct.net_device* %13, i32 %14)
  %16 = and i32 %15, 3
  %17 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %18 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %20 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %25 [
    i32 129, label %22
    i32 128, label %22
  ]

22:                                               ; preds = %1, %1
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = call i32 @ZEBRA_Config_85BASIC_HardCode(%struct.net_device* %23)
  br label %25

25:                                               ; preds = %1, %22
  %26 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %27 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %32 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %37 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %36, i32 0, i32 2
  store i32 4, i32* %37, align 8
  br label %38

38:                                               ; preds = %35, %30
  br label %39

39:                                               ; preds = %38, %25
  %40 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %41 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = call i32 @InitTxPwrTracking87SE(%struct.net_device* %45)
  br label %47

47:                                               ; preds = %44, %39
  %48 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %49 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %52 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = call i32 @UpdateInitialGain(%struct.net_device* %53)
  ret void
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i32, i32) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32) #1

declare dso_local i32 @ZEBRA_Config_85BASIC_HardCode(%struct.net_device*) #1

declare dso_local i32 @InitTxPwrTracking87SE(%struct.net_device*) #1

declare dso_local i32 @UpdateInitialGain(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
