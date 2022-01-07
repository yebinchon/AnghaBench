; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_RF_ReadReg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_RF_ReadReg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RF_ReadReg(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r8180_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call i64 @ieee80211_priv(%struct.net_device* %11)
  %13 = inttoptr i64 %12 to %struct.r8180_priv*
  store %struct.r8180_priv* %13, %struct.r8180_priv** %5, align 8
  %14 = load %struct.r8180_priv*, %struct.r8180_priv** %5, align 8
  %15 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %46 [
    i32 130, label %17
    i32 129, label %17
    i32 128, label %17
  ]

17:                                               ; preds = %2, %2, %2
  %18 = load %struct.r8180_priv*, %struct.r8180_priv** %5, align 8
  %19 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %35 [
    i32 132, label %21
    i32 131, label %28
  ]

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, 15
  store i32 %23, i32* %6, align 4
  store i32 16, i32* %7, align 4
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @HwHSSIThreeWire(%struct.net_device* %24, i32* %6, i32 %25, i32 0, i32 0)
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %10, align 4
  br label %45

28:                                               ; preds = %17
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, 15
  store i32 %30, i32* %6, align 4
  store i32 16, i32* %7, align 4
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @HwHSSIThreeWire(%struct.net_device* %31, i32* %6, i32 %32, i32 1, i32 0)
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %10, align 4
  br label %45

35:                                               ; preds = %17
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, 31
  %38 = shl i32 %37, 27
  store i32 %38, i32* %6, align 4
  store i32 6, i32* %7, align 4
  store i32 12, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @ZEBRA_RFSerialRead(%struct.net_device* %39, i32 %40, i32 %41, i32* %10, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %35, %28, %21
  br label %47

46:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %46, %45
  %48 = load i32, i32* %10, align 4
  ret i32 %48
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @HwHSSIThreeWire(%struct.net_device*, i32*, i32, i32, i32) #1

declare dso_local i32 @ZEBRA_RFSerialRead(%struct.net_device*, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
