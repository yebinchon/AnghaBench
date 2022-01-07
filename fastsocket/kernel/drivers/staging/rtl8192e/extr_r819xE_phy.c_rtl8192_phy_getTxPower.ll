; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r819xE_phy.c_rtl8192_phy_getTxPower.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r819xE_phy.c_rtl8192_phy_getTxPower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i8*, i8*, i8**, i8**, i8* }

@rOFDM0_XAAGCCore1 = common dso_local global i32 0, align 4
@rOFDM0_XBAGCCore1 = common dso_local global i32 0, align 4
@rOFDM0_XCAGCCore1 = common dso_local global i32 0, align 4
@rOFDM0_XDAGCCore1 = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Default initial gain (c50=0x%x, c58=0x%x, c60=0x%x, c68=0x%x) \0A\00", align 1
@rOFDM0_RxDetector3 = common dso_local global i32 0, align 4
@rOFDM0_RxDetector2 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Default framesync (0x%x) = 0x%x \0A\00", align 1
@SIFS = common dso_local global i32 0, align 4
@CCK_TXAGC = common dso_local global i64 0, align 8
@MCS_TXAGC = common dso_local global i64 0, align 8
@rTxAGC_Mcs03_Mcs00 = common dso_local global i64 0, align 8
@rTxAGC_Mcs07_Mcs04 = common dso_local global i64 0, align 8
@rTxAGC_Mcs11_Mcs08 = common dso_local global i64 0, align 8
@rTxAGC_Mcs15_Mcs12 = common dso_local global i64 0, align 8
@rTxAGC_Rate18_06 = common dso_local global i64 0, align 8
@rTxAGC_Rate54_24 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8192_phy_getTxPower(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %4)
  store %struct.r8192_priv* %5, %struct.r8192_priv** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = load i32, i32* @rOFDM0_XAAGCCore1, align 4
  %8 = call i8* @read_nic_byte(%struct.net_device* %6, i32 %7)
  %9 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %10 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %9, i32 0, i32 3
  %11 = load i8**, i8*** %10, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  store i8* %8, i8** %12, align 8
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = load i32, i32* @rOFDM0_XBAGCCore1, align 4
  %15 = call i8* @read_nic_byte(%struct.net_device* %13, i32 %14)
  %16 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %17 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %16, i32 0, i32 3
  %18 = load i8**, i8*** %17, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  store i8* %15, i8** %19, align 8
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = load i32, i32* @rOFDM0_XCAGCCore1, align 4
  %22 = call i8* @read_nic_byte(%struct.net_device* %20, i32 %21)
  %23 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %24 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %23, i32 0, i32 3
  %25 = load i8**, i8*** %24, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 2
  store i8* %22, i8** %26, align 8
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = load i32, i32* @rOFDM0_XDAGCCore1, align 4
  %29 = call i8* @read_nic_byte(%struct.net_device* %27, i32 %28)
  %30 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %31 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %30, i32 0, i32 3
  %32 = load i8**, i8*** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 3
  store i8* %29, i8** %33, align 8
  %34 = load i32, i32* @COMP_INIT, align 4
  %35 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %36 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %35, i32 0, i32 3
  %37 = load i8**, i8*** %36, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  %39 = load i8*, i8** %38, align 8
  %40 = ptrtoint i8* %39 to i32
  %41 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %42 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %41, i32 0, i32 3
  %43 = load i8**, i8*** %42, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %47 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %46, i32 0, i32 3
  %48 = load i8**, i8*** %47, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 2
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %52 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %51, i32 0, i32 3
  %53 = load i8**, i8*** %52, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 3
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 (i32, i8*, i32, i8*, ...) @RT_TRACE(i32 %34, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %40, i8* %45, i8* %50, i8* %55)
  %57 = load %struct.net_device*, %struct.net_device** %2, align 8
  %58 = load i32, i32* @rOFDM0_RxDetector3, align 4
  %59 = call i8* @read_nic_byte(%struct.net_device* %57, i32 %58)
  %60 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %61 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load %struct.net_device*, %struct.net_device** %2, align 8
  %63 = load i64, i64* @rOFDM0_RxDetector2, align 8
  %64 = call i8* @read_nic_dword(%struct.net_device* %62, i64 %63)
  %65 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %66 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* @COMP_INIT, align 4
  %68 = load i32, i32* @rOFDM0_RxDetector3, align 4
  %69 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %70 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 (i32, i8*, i32, i8*, ...) @RT_TRACE(i32 %67, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %68, i8* %71)
  %73 = load %struct.net_device*, %struct.net_device** %2, align 8
  %74 = load i32, i32* @SIFS, align 4
  %75 = call i32 @read_nic_word(%struct.net_device* %73, i32 %74)
  %76 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %77 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i8* @read_nic_byte(%struct.net_device*, i32) #1

declare dso_local i32 @RT_TRACE(i32, i8*, i32, i8*, ...) #1

declare dso_local i8* @read_nic_dword(%struct.net_device*, i64) #1

declare dso_local i32 @read_nic_word(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
