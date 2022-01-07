; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r819xE_phy.c_rtl8192_phy_QueryRFReg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r819xE_phy.c_rtl8192_phy_QueryRFReg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@RF_OP_By_FW = common dso_local global i64 0, align 8
@eRfOn = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8192_phy_QueryRFReg(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %14)
  store %struct.r8192_priv* %15, %struct.r8192_priv** %13, align 8
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @rtl8192_phy_CheckIsLegalRFPath(%struct.net_device* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %53

21:                                               ; preds = %4
  %22 = load %struct.r8192_priv*, %struct.r8192_priv** %13, align 8
  %23 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %22, i32 0, i32 1
  %24 = call i32 @down(i32* %23)
  %25 = load %struct.r8192_priv*, %struct.r8192_priv** %13, align 8
  %26 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @RF_OP_By_FW, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = load %struct.net_device*, %struct.net_device** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @phy_FwRFSerialRead(%struct.net_device* %31, i32 %32, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = call i32 @udelay(i32 200)
  br label %41

36:                                               ; preds = %21
  %37 = load %struct.net_device*, %struct.net_device** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @rtl8192_phy_RFSerialRead(%struct.net_device* %37, i32 %38, i32 %39)
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %36, %30
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @rtl8192_CalculateBitShift(i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* %12, align 4
  %48 = ashr i32 %46, %47
  store i32 %48, i32* %11, align 4
  %49 = load %struct.r8192_priv*, %struct.r8192_priv** %13, align 8
  %50 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %49, i32 0, i32 1
  %51 = call i32 @up(i32* %50)
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %41, %20
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @rtl8192_phy_CheckIsLegalRFPath(%struct.net_device*, i32) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @phy_FwRFSerialRead(%struct.net_device*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtl8192_phy_RFSerialRead(%struct.net_device*, i32, i32) #1

declare dso_local i32 @rtl8192_CalculateBitShift(i32) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
