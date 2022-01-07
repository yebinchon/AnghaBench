; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192_set_rxconf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192_set_rxconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@RCR = common dso_local global i32 0, align 4
@MAC_FILTER_MASK = common dso_local global i32 0, align 4
@RCR_AMF = common dso_local global i32 0, align 4
@RCR_ADF = common dso_local global i32 0, align 4
@RCR_AB = common dso_local global i32 0, align 4
@RCR_AM = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"NIC in promisc mode\00", align 1
@IW_MODE_MONITOR = common dso_local global i64 0, align 8
@RCR_AAP = common dso_local global i32 0, align 4
@RCR_APM = common dso_local global i32 0, align 4
@RCR_CBSSID = common dso_local global i32 0, align 4
@RCR_AICV = common dso_local global i32 0, align 4
@RCR_APWRMGT = common dso_local global i32 0, align 4
@RCR_ACRC32 = common dso_local global i32 0, align 4
@RX_FIFO_THRESHOLD_MASK = common dso_local global i32 0, align 4
@RX_FIFO_THRESHOLD_NONE = common dso_local global i32 0, align 4
@RX_FIFO_THRESHOLD_SHIFT = common dso_local global i32 0, align 4
@MAX_RX_DMA_MASK = common dso_local global i32 0, align 4
@RCR_MXDMA_OFFSET = common dso_local global i32 0, align 4
@RCR_ONLYERLPKT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8192_set_rxconf(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call i64 @ieee80211_priv(%struct.net_device* %5)
  %7 = inttoptr i64 %6 to %struct.r8192_priv*
  store %struct.r8192_priv* %7, %struct.r8192_priv** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = load i32, i32* @RCR, align 4
  %10 = call i32 @read_nic_dword(%struct.net_device* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @MAC_FILTER_MASK, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @RCR_AMF, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @RCR_ADF, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @RCR_AB, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @RCR_AM, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %4, align 4
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IFF_PROMISC, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %1
  %34 = call i32 (i8*, ...) @DMESG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %1
  %36 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %37 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @IW_MODE_MONITOR, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %50, label %43

43:                                               ; preds = %35
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IFF_PROMISC, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43, %35
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @RCR_AAP, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %4, align 4
  br label %61

54:                                               ; preds = %43
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @RCR_APM, align 4
  %57 = or i32 %55, %56
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @RCR_CBSSID, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %54, %50
  %62 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %63 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @IW_MODE_MONITOR, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %61
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @RCR_AICV, align 4
  %72 = or i32 %70, %71
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @RCR_APWRMGT, align 4
  %75 = or i32 %73, %74
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %69, %61
  %77 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %78 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %93

81:                                               ; preds = %76
  %82 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %83 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @IW_MODE_MONITOR, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %81
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @RCR_ACRC32, align 4
  %92 = or i32 %90, %91
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %89, %81, %76
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @RX_FIFO_THRESHOLD_MASK, align 4
  %96 = xor i32 %95, -1
  %97 = and i32 %94, %96
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @RX_FIFO_THRESHOLD_NONE, align 4
  %100 = load i32, i32* @RX_FIFO_THRESHOLD_SHIFT, align 4
  %101 = shl i32 %99, %100
  %102 = or i32 %98, %101
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @MAX_RX_DMA_MASK, align 4
  %105 = xor i32 %104, -1
  %106 = and i32 %103, %105
  store i32 %106, i32* %4, align 4
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @RCR_MXDMA_OFFSET, align 4
  %109 = shl i32 7, %108
  %110 = or i32 %107, %109
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @RCR_ONLYERLPKT, align 4
  %113 = or i32 %111, %112
  store i32 %113, i32* %4, align 4
  %114 = load %struct.net_device*, %struct.net_device** %2, align 8
  %115 = load i32, i32* @RCR, align 4
  %116 = load i32, i32* %4, align 4
  %117 = call i32 @write_nic_dword(%struct.net_device* %114, i32 %115, i32 %116)
  ret void
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @read_nic_dword(%struct.net_device*, i32) #1

declare dso_local i32 @DMESG(i8*, ...) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
