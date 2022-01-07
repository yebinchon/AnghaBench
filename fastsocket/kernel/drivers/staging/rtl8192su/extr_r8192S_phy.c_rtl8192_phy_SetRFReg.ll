; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_rtl8192_phy_SetRFReg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_rtl8192_phy_SetRFReg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32 }

@COMP_RF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"--->PHY_SetRFReg(): RegAddr(%#x), BitMask(%#x), Data(%#x), eRFPath(%#x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"EEEEEError: rfpath off! rf_pathmap=%x eRFPath=%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"EEEEEError: not legal rfpath! eRFPath=%x\0A\00", align 1
@bRFRegOffsetMask = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [73 x i8] c"<---PHY_SetRFReg(): RegAddr(%#x), BitMask(%#x), Data(%#x), eRFPath(%#x)\0A\00", align 1

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
  %17 = load i32, i32* @COMP_RF, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @RT_TRACE(i32 %17, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i32 %20, i32 %21)
  %23 = load %struct.r8192_priv*, %struct.r8192_priv** %11, align 8
  %24 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = ashr i32 %25, %26
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %5
  %31 = load %struct.r8192_priv*, %struct.r8192_priv** %11, align 8
  %32 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %34)
  br label %87

36:                                               ; preds = %5
  %37 = load %struct.net_device*, %struct.net_device** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @rtl8192_phy_CheckIsLegalRFPath(%struct.net_device* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %7, align 4
  %43 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  br label %87

44:                                               ; preds = %36
  %45 = load %struct.r8192_priv*, %struct.r8192_priv** %11, align 8
  %46 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %45, i32 0, i32 1
  %47 = call i32 @down(i32* %46)
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @bRFRegOffsetMask, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %71

51:                                               ; preds = %44
  %52 = load %struct.net_device*, %struct.net_device** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @phy_QueryUsbRFReg(%struct.net_device* %52, i32 %53, i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @phy_CalculateBitShift(i32 %56)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %9, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %13, align 4
  %64 = shl i32 %62, %63
  %65 = or i32 %61, %64
  store i32 %65, i32* %14, align 4
  %66 = load %struct.net_device*, %struct.net_device** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %14, align 4
  %70 = call i32 @phy_SetUsbRFReg(%struct.net_device* %66, i32 %67, i32 %68, i32 %69)
  br label %77

71:                                               ; preds = %44
  %72 = load %struct.net_device*, %struct.net_device** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @phy_SetUsbRFReg(%struct.net_device* %72, i32 %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %71, %51
  %78 = load %struct.r8192_priv*, %struct.r8192_priv** %11, align 8
  %79 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %78, i32 0, i32 1
  %80 = call i32 @up(i32* %79)
  %81 = load i32, i32* @COMP_RF, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @RT_TRACE(i32 %81, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 %82, i32 %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %77, %41, %30
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @RT_TRACE(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @rtl8192_phy_CheckIsLegalRFPath(%struct.net_device*, i32) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @phy_QueryUsbRFReg(%struct.net_device*, i32, i32) #1

declare dso_local i32 @phy_CalculateBitShift(i32) #1

declare dso_local i32 @phy_SetUsbRFReg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
