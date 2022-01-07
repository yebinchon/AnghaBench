; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192SU_MacConfigAfterFwDownload.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192SU_MacConfigAfterFwDownload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, i64, i32 }

@COMP_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"--->MacConfigAfterFwDownload()\0A\00", align 1
@BBRSTn = common dso_local global i32 0, align 4
@BB_GLB_RSTn = common dso_local global i32 0, align 4
@SCHEDULE_EN = common dso_local global i32 0, align 4
@MACRXEN = common dso_local global i32 0, align 4
@MACTXEN = common dso_local global i32 0, align 4
@DDMA_EN = common dso_local global i32 0, align 4
@FW2HW_EN = common dso_local global i32 0, align 4
@RXDMA_EN = common dso_local global i32 0, align 4
@TXDMA_EN = common dso_local global i32 0, align 4
@HCI_RXDMA_EN = common dso_local global i32 0, align 4
@HCI_TXDMA_EN = common dso_local global i32 0, align 4
@CMDR = common dso_local global i32 0, align 4
@RTL8192SU_NO_LOOPBACK = common dso_local global i64 0, align 8
@LBK_NORMAL = common dso_local global i32 0, align 4
@RTL8192SU_MAC_LOOPBACK = common dso_local global i64 0, align 8
@LBK_MAC_DLB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Serious error: wrong loopback mode setting\0A\00", align 1
@LBKMD_SEL = common dso_local global i64 0, align 8
@RCR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"MacConfigAfterFwDownload(): Current RCR settings(%#x)\0A\00", align 1
@BIT7 = common dso_local global i32 0, align 4
@SYS_ISO_CTRL = common dso_local global i64 0, align 8
@EFUSE_CTRL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"EFUSE CONFIG OK\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"<---MacConfigAfterFwDownload()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @rtl8192SU_MacConfigAfterFwDownload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8192SU_MacConfigAfterFwDownload(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %7)
  store %struct.r8192_priv* %8, %struct.r8192_priv** %3, align 8
  %9 = load i32, i32* @COMP_INIT, align 4
  %10 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @BBRSTn, align 4
  %12 = load i32, i32* @BB_GLB_RSTn, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @SCHEDULE_EN, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @MACRXEN, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @MACTXEN, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @DDMA_EN, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @FW2HW_EN, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @RXDMA_EN, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @TXDMA_EN, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @HCI_RXDMA_EN, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @HCI_TXDMA_EN, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %4, align 4
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = load i32, i32* @CMDR, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @write_nic_word(%struct.net_device* %32, i32 %33, i32 %34)
  %36 = load i64, i64* @RTL8192SU_NO_LOOPBACK, align 8
  %37 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %38 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %40 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @RTL8192SU_NO_LOOPBACK, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %1
  %45 = load i32, i32* @LBK_NORMAL, align 4
  store i32 %45, i32* %5, align 4
  br label %58

46:                                               ; preds = %1
  %47 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %48 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @RTL8192SU_MAC_LOOPBACK, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @LBK_MAC_DLB, align 4
  store i32 %53, i32* %5, align 4
  br label %57

54:                                               ; preds = %46
  %55 = load i32, i32* @COMP_INIT, align 4
  %56 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %55, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %52
  br label %58

58:                                               ; preds = %57, %44
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = load i64, i64* @LBKMD_SEL, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @write_nic_byte(%struct.net_device* %59, i64 %60, i32 %61)
  %63 = load %struct.net_device*, %struct.net_device** %2, align 8
  %64 = load i32, i32* @RCR, align 4
  %65 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %66 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @write_nic_dword(%struct.net_device* %63, i32 %64, i32 %67)
  %69 = load i32, i32* @COMP_INIT, align 4
  %70 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %71 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %69, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load %struct.net_device*, %struct.net_device** %2, align 8
  %75 = call i32 @read_nic_byte_E(%struct.net_device* %74, i32 92)
  store i32 %75, i32* %5, align 4
  %76 = load %struct.net_device*, %struct.net_device** %2, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @BIT7, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @write_nic_byte_E(%struct.net_device* %76, i32 92, i32 %79)
  %81 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %82 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %103

85:                                               ; preds = %58
  %86 = load %struct.net_device*, %struct.net_device** %2, align 8
  %87 = load i64, i64* @SYS_ISO_CTRL, align 8
  %88 = add nsw i64 %87, 1
  %89 = call i32 @read_nic_byte(%struct.net_device* %86, i64 %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = and i32 %90, 254
  store i32 %91, i32* %6, align 4
  %92 = load %struct.net_device*, %struct.net_device** %2, align 8
  %93 = load i64, i64* @SYS_ISO_CTRL, align 8
  %94 = add nsw i64 %93, 1
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @write_nic_byte(%struct.net_device* %92, i64 %94, i32 %95)
  %97 = load %struct.net_device*, %struct.net_device** %2, align 8
  %98 = load i64, i64* @EFUSE_CTRL, align 8
  %99 = add nsw i64 %98, 3
  %100 = call i32 @write_nic_byte(%struct.net_device* %97, i64 %99, i32 114)
  %101 = load i32, i32* @COMP_INIT, align 4
  %102 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %101, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %103

103:                                              ; preds = %85, %58
  %104 = load i32, i32* @COMP_INIT, align 4
  %105 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %104, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @RT_TRACE(i32, i8*, ...) #1

declare dso_local i32 @write_nic_word(%struct.net_device*, i32, i32) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i64, i32) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i32, i32) #1

declare dso_local i32 @read_nic_byte_E(%struct.net_device*, i32) #1

declare dso_local i32 @write_nic_byte_E(%struct.net_device*, i32, i32) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
