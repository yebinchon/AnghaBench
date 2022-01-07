; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_phy_QueryUsbBBReg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_phy_QueryUsbBBReg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32 }

@COMP_RF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"phy_QueryUsbBBReg(): Wait 1 ms (%d times)...\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"phy_QueryUsbBBReg(): (%d) Wait too logn to query BB!!\0A\00", align 1
@PHY_REG = common dso_local global i32 0, align 4
@HST_RDBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"Fail!!!phy_QueryUsbBBReg(): RegAddr(%#x) = %#x\0A\00", align 1
@PHY_REG_DATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"phy_QueryUsbBBReg(): RegAddr(%#x) = %#x, PollingCnt(%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phy_QueryUsbBBReg(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.r8192_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %10)
  store %struct.r8192_priv* %11, %struct.r8192_priv** %6, align 8
  store i32 -1, i32* %7, align 4
  store i32 50, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %31, %2
  %13 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %14 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %12
  %18 = load i32, i32* %9, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @COMP_RF, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 (i32, i8*, i32, ...) @RT_TRACE(i32 %20, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = call i32 @msleep(i32 1)
  %24 = load i32, i32* %9, align 4
  %25 = icmp sgt i32 %24, 100
  br i1 %25, label %26, label %31

26:                                               ; preds = %17
  %27 = load i32, i32* @COMP_RF, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 (i32, i8*, i32, ...) @RT_TRACE(i32 %27, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %72

31:                                               ; preds = %17
  br label %12

32:                                               ; preds = %12
  %33 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %34 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @read_nic_dword(%struct.net_device* %35, i32 %36)
  br label %38

38:                                               ; preds = %47, %32
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = load i32, i32* @PHY_REG, align 4
  %41 = call i32 @read_nic_byte(%struct.net_device* %39, i32 %40)
  %42 = load i32, i32* @HST_RDBUSY, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %51

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %38, label %51

51:                                               ; preds = %47, %45
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i32, i32* @COMP_RF, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 (i32, i8*, i32, ...) @RT_TRACE(i32 %55, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %56, i32 %57)
  br label %68

59:                                               ; preds = %51
  %60 = load %struct.net_device*, %struct.net_device** %4, align 8
  %61 = load i32, i32* @PHY_REG_DATA, align 4
  %62 = call i32 @read_nic_dword(%struct.net_device* %60, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* @COMP_RF, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 (i32, i8*, i32, ...) @RT_TRACE(i32 %63, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %59, %54
  %69 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %70 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %69, i32 0, i32 0
  store i32 0, i32* %70, align 4
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %68, %26
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @RT_TRACE(i32, i8*, i32, ...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @read_nic_dword(%struct.net_device*, i32) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
