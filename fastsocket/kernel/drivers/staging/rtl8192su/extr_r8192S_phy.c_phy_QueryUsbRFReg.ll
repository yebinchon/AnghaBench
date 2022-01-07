; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_phy_QueryUsbRFReg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_phy_QueryUsbRFReg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32 }

@COMP_RF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"phy_QueryUsbRFReg(): Wait 1 ms (%d times)...\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"phy_QueryUsbRFReg(): (%d) Wait too logn to query BB!!\0A\00", align 1
@RF_BB_CMD_ADDR = common dso_local global i32 0, align 4
@RF_BB_CMD_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"phy_QueryUsbRFReg(): eRFPath(%d), Offset(%#x) = %#x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phy_QueryUsbRFReg(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.r8192_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %12)
  store %struct.r8192_priv* %13, %struct.r8192_priv** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 50, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %36, %3
  %15 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %16 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %14
  %20 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %21 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %20, i32 0, i32 1
  %22 = call i32 @down(i32* %21)
  %23 = load i32, i32* %11, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* @COMP_RF, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 (i32, i8*, i32, ...) @RT_TRACE(i32 %25, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = call i32 @msleep(i32 1)
  %29 = load i32, i32* %11, align 4
  %30 = icmp sgt i32 %29, 100
  br i1 %30, label %31, label %35

31:                                               ; preds = %19
  %32 = load i32, i32* @COMP_RF, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 (i32, i8*, i32, ...) @RT_TRACE(i32 %32, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  store i32 -1, i32* %4, align 4
  br label %78

35:                                               ; preds = %19
  br label %36

36:                                               ; preds = %35
  br label %14

37:                                               ; preds = %14
  %38 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %39 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, 63
  store i32 %41, i32* %7, align 4
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = load i32, i32* @RF_BB_CMD_ADDR, align 4
  %44 = load i32, i32* %7, align 4
  %45 = shl i32 %44, 8
  %46 = or i32 -268435454, %45
  %47 = load i32, i32* %6, align 4
  %48 = shl i32 %47, 16
  %49 = or i32 %46, %48
  %50 = call i32 @write_nic_dword(%struct.net_device* %42, i32 %43, i32 %49)
  br label %51

51:                                               ; preds = %58, %37
  %52 = load %struct.net_device*, %struct.net_device** %5, align 8
  %53 = load i32, i32* @RF_BB_CMD_ADDR, align 4
  %54 = call i64 @read_nic_dword(%struct.net_device* %52, i32 %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %62

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %51, label %62

62:                                               ; preds = %58, %56
  %63 = load %struct.net_device*, %struct.net_device** %5, align 8
  %64 = load i32, i32* @RF_BB_CMD_DATA, align 4
  %65 = call i64 @read_nic_dword(%struct.net_device* %63, i32 %64)
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %9, align 4
  %67 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %68 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %67, i32 0, i32 1
  %69 = call i32 @up(i32* %68)
  %70 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %71 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %70, i32 0, i32 0
  store i32 0, i32* %71, align 4
  %72 = load i32, i32* @COMP_RF, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 (i32, i8*, i32, ...) @RT_TRACE(i32 %72, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %73, i32 %74, i32 %75)
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %62, %31
  %79 = load i32, i32* %4, align 4
  ret i32 %79
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
