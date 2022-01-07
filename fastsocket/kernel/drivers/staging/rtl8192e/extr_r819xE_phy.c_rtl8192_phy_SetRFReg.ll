; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r819xE_phy.c_rtl8192_phy_SetRFReg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r819xE_phy.c_rtl8192_phy_SetRFReg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@COMP_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"FW RF CTRL is not ready now\0A\00", align 1
@RF_OP_By_FW = common dso_local global i64 0, align 8
@bMask12Bits = common dso_local global i32 0, align 4
@eRfOn = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8192_phy_SetRFReg(%struct.net_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.r8192_priv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %15)
  store %struct.r8192_priv* %16, %struct.r8192_priv** %11, align 8
  %17 = load %struct.net_device*, %struct.net_device** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @rtl8192_phy_CheckIsLegalRFPath(%struct.net_device* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  br label %94

22:                                               ; preds = %5
  %23 = load i32, i32* @COMP_PHY, align 4
  %24 = call i32 @RT_TRACE(i32 %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.r8192_priv*, %struct.r8192_priv** %11, align 8
  %26 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @RF_OP_By_FW, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %62

30:                                               ; preds = %22
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @bMask12Bits, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %30
  %35 = load %struct.net_device*, %struct.net_device** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @phy_FwRFSerialRead(%struct.net_device* %35, i32 %36, i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @rtl8192_CalculateBitShift(i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %9, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %13, align 4
  %47 = shl i32 %45, %46
  %48 = or i32 %44, %47
  store i32 %48, i32* %14, align 4
  %49 = load %struct.net_device*, %struct.net_device** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @phy_FwRFSerialWrite(%struct.net_device* %49, i32 %50, i32 %51, i32 %52)
  br label %60

54:                                               ; preds = %30
  %55 = load %struct.net_device*, %struct.net_device** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @phy_FwRFSerialWrite(%struct.net_device* %55, i32 %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %54, %34
  %61 = call i32 @udelay(i32 200)
  br label %93

62:                                               ; preds = %22
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @bMask12Bits, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %86

66:                                               ; preds = %62
  %67 = load %struct.net_device*, %struct.net_device** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @rtl8192_phy_RFSerialRead(%struct.net_device* %67, i32 %68, i32 %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @rtl8192_CalculateBitShift(i32 %71)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %9, align 4
  %75 = xor i32 %74, -1
  %76 = and i32 %73, %75
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %13, align 4
  %79 = shl i32 %77, %78
  %80 = or i32 %76, %79
  store i32 %80, i32* %14, align 4
  %81 = load %struct.net_device*, %struct.net_device** %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @rtl8192_phy_RFSerialWrite(%struct.net_device* %81, i32 %82, i32 %83, i32 %84)
  br label %92

86:                                               ; preds = %62
  %87 = load %struct.net_device*, %struct.net_device** %6, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @rtl8192_phy_RFSerialWrite(%struct.net_device* %87, i32 %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %86, %66
  br label %93

93:                                               ; preds = %92, %60
  br label %94

94:                                               ; preds = %93, %21
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @rtl8192_phy_CheckIsLegalRFPath(%struct.net_device*, i32) #1

declare dso_local i32 @RT_TRACE(i32, i8*) #1

declare dso_local i32 @phy_FwRFSerialRead(%struct.net_device*, i32, i32) #1

declare dso_local i32 @rtl8192_CalculateBitShift(i32) #1

declare dso_local i32 @phy_FwRFSerialWrite(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtl8192_phy_RFSerialRead(%struct.net_device*, i32, i32) #1

declare dso_local i32 @rtl8192_phy_RFSerialWrite(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
