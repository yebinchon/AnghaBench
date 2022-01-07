; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_rtl8185b_rx_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_rtl8185b_rx_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"NIC in promisc mode\00", align 1
@IW_MODE_MONITOR = common dso_local global i64 0, align 8
@RCR_APM = common dso_local global i32 0, align 4
@RCR_AAP = common dso_local global i32 0, align 4
@RCR_ACF = common dso_local global i32 0, align 4
@RCR_APWRMGT = common dso_local global i32 0, align 4
@RCR_AICV = common dso_local global i32 0, align 4
@RCR_ACRC32 = common dso_local global i32 0, align 4
@RCR = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@CMD_RX_ENABLE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8185b_rx_enable(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.r8180_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call i64 @ieee80211_priv(%struct.net_device* %5)
  %7 = inttoptr i64 %6 to %struct.r8180_priv*
  store %struct.r8180_priv* %7, %struct.r8180_priv** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @IFF_PROMISC, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 (i8*, ...) @DMESG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %1
  %17 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %18 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IW_MODE_MONITOR, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %16
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IFF_PROMISC, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %24, %16
  %32 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %33 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @RCR_APM, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %39 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %41 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @RCR_AAP, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %46 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %31, %24
  %48 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %49 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @IW_MODE_MONITOR, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %47
  %56 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %57 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @RCR_ACF, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @RCR_APWRMGT, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @RCR_AICV, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %66 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %55, %47
  %68 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %69 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %88

72:                                               ; preds = %67
  %73 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %74 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @IW_MODE_MONITOR, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %72
  %81 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %82 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @RCR_ACRC32, align 4
  %85 = or i32 %83, %84
  %86 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %87 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %80, %72, %67
  %89 = load %struct.net_device*, %struct.net_device** %2, align 8
  %90 = load i32, i32* @RCR, align 4
  %91 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %92 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @write_nic_dword(%struct.net_device* %89, i32 %90, i32 %93)
  %95 = load %struct.net_device*, %struct.net_device** %2, align 8
  %96 = call i32 @fix_rx_fifo(%struct.net_device* %95)
  %97 = load %struct.net_device*, %struct.net_device** %2, align 8
  %98 = load i32, i32* @CMD, align 4
  %99 = call i32 @read_nic_byte(%struct.net_device* %97, i32 %98)
  store i32 %99, i32* %3, align 4
  %100 = load %struct.net_device*, %struct.net_device** %2, align 8
  %101 = load i32, i32* @CMD, align 4
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* @CMD_RX_ENABLE_SHIFT, align 4
  %104 = shl i32 1, %103
  %105 = or i32 %102, %104
  %106 = call i32 @write_nic_byte(%struct.net_device* %100, i32 %101, i32 %105)
  ret void
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @DMESG(i8*, ...) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i32, i32) #1

declare dso_local i32 @fix_rx_fifo(%struct.net_device*) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
