; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_phy_SetUsbRFReg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_phy_SetUsbRFReg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32 }

@COMP_RF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"phy_SetUsbRFReg(): Wait 1 ms (%d times)...\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"phy_SetUsbRFReg(): (%d) Wait too logn to query BB!!\0A\00", align 1
@RF_BB_CMD_DATA = common dso_local global i32 0, align 4
@RF_BB_CMD_ADDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"phy_SetUsbRFReg(): Set RegAddr(%#x) = %#x Fail!!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @phy_SetUsbRFReg(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.r8192_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %12)
  store %struct.r8192_priv* %13, %struct.r8192_priv** %9, align 8
  store i32 50, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %36, %4
  %15 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %16 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %14
  %20 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %21 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %20, i32 0, i32 1
  %22 = call i32 @down(i32* %21)
  %23 = load i32, i32* %11, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* @COMP_RF, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 (i32, i8*, i32, ...) @RT_TRACE(i32 %25, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = call i32 @msleep(i32 1)
  %29 = load i32, i32* %11, align 4
  %30 = icmp sgt i32 %29, 100
  br i1 %30, label %31, label %35

31:                                               ; preds = %19
  %32 = load i32, i32* @COMP_RF, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 (i32, i8*, i32, ...) @RT_TRACE(i32 %32, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %80

35:                                               ; preds = %19
  br label %36

36:                                               ; preds = %35
  br label %14

37:                                               ; preds = %14
  %38 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %39 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, 63
  store i32 %41, i32* %7, align 4
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = load i32, i32* @RF_BB_CMD_DATA, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @write_nic_dword(%struct.net_device* %42, i32 %43, i32 %44)
  %46 = load %struct.net_device*, %struct.net_device** %5, align 8
  %47 = load i32, i32* @RF_BB_CMD_ADDR, align 4
  %48 = load i32, i32* %7, align 4
  %49 = shl i32 %48, 8
  %50 = or i32 -268435453, %49
  %51 = load i32, i32* %6, align 4
  %52 = shl i32 %51, 16
  %53 = or i32 %50, %52
  %54 = call i32 @write_nic_dword(%struct.net_device* %46, i32 %47, i32 %53)
  br label %55

55:                                               ; preds = %62, %37
  %56 = load %struct.net_device*, %struct.net_device** %5, align 8
  %57 = load i32, i32* @RF_BB_CMD_ADDR, align 4
  %58 = call i64 @read_nic_dword(%struct.net_device* %56, i32 %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %66

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %55, label %66

66:                                               ; preds = %62, %60
  %67 = load i32, i32* %10, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i32, i32* @COMP_RF, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 (i32, i8*, i32, ...) @RT_TRACE(i32 %70, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %69, %66
  %75 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %76 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %75, i32 0, i32 1
  %77 = call i32 @up(i32* %76)
  %78 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %79 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %78, i32 0, i32 0
  store i32 0, i32* %79, align 4
  br label %80

80:                                               ; preds = %74, %31
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @RT_TRACE(i32, i8*, i32, ...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i32, i32) #1

declare dso_local i64 @read_nic_dword(%struct.net_device*, i32) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
