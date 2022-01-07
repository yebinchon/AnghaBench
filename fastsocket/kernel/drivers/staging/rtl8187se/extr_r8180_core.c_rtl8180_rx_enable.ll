; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_rx_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_rx_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@RX_CONF = common dso_local global i32 0, align 4
@MAC_FILTER_MASK = common dso_local global i32 0, align 4
@ACCEPT_MNG_FRAME_SHIFT = common dso_local global i32 0, align 4
@ACCEPT_DATA_FRAME_SHIFT = common dso_local global i32 0, align 4
@ACCEPT_BCAST_FRAME_SHIFT = common dso_local global i32 0, align 4
@ACCEPT_MCAST_FRAME_SHIFT = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"NIC in promisc mode\00", align 1
@IW_MODE_MONITOR = common dso_local global i64 0, align 8
@ACCEPT_ALLMAC_FRAME_SHIFT = common dso_local global i32 0, align 4
@ACCEPT_NICMAC_FRAME_SHIFT = common dso_local global i32 0, align 4
@RX_CHECK_BSSID_SHIFT = common dso_local global i32 0, align 4
@ACCEPT_CTL_FRAME_SHIFT = common dso_local global i32 0, align 4
@ACCEPT_ICVERR_FRAME_SHIFT = common dso_local global i32 0, align 4
@ACCEPT_PWR_FRAME_SHIFT = common dso_local global i32 0, align 4
@ACCEPT_CRCERR_FRAME_SHIFT = common dso_local global i32 0, align 4
@RX_FIFO_THRESHOLD_MASK = common dso_local global i32 0, align 4
@RX_FIFO_THRESHOLD_NONE = common dso_local global i32 0, align 4
@RX_FIFO_THRESHOLD_SHIFT = common dso_local global i32 0, align 4
@RX_AUTORESETPHY_SHIFT = common dso_local global i32 0, align 4
@MAX_RX_DMA_MASK = common dso_local global i32 0, align 4
@MAX_RX_DMA_2048 = common dso_local global i32 0, align 4
@MAX_RX_DMA_SHIFT = common dso_local global i32 0, align 4
@RCR_ONLYERLPKT = common dso_local global i32 0, align 4
@RCR_CS_MASK = common dso_local global i32 0, align 4
@RCR_CS_SHIFT = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@CMD_RX_ENABLE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8180_rx_enable(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.r8180_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i64 @ieee80211_priv(%struct.net_device* %6)
  %8 = inttoptr i64 %7 to %struct.r8180_priv*
  store %struct.r8180_priv* %8, %struct.r8180_priv** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = load i32, i32* @RX_CONF, align 4
  %11 = call i32 @read_nic_dword(%struct.net_device* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @MAC_FILTER_MASK, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @ACCEPT_MNG_FRAME_SHIFT, align 4
  %18 = shl i32 1, %17
  %19 = or i32 %16, %18
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @ACCEPT_DATA_FRAME_SHIFT, align 4
  %22 = shl i32 1, %21
  %23 = or i32 %20, %22
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @ACCEPT_BCAST_FRAME_SHIFT, align 4
  %26 = shl i32 1, %25
  %27 = or i32 %24, %26
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @ACCEPT_MCAST_FRAME_SHIFT, align 4
  %30 = shl i32 1, %29
  %31 = or i32 %28, %30
  store i32 %31, i32* %4, align 4
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IFF_PROMISC, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %1
  %39 = call i32 @DMESG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %1
  %41 = load %struct.r8180_priv*, %struct.r8180_priv** %5, align 8
  %42 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %41, i32 0, i32 3
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @IW_MODE_MONITOR, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %55, label %48

48:                                               ; preds = %40
  %49 = load %struct.net_device*, %struct.net_device** %2, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IFF_PROMISC, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %48, %40
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @ACCEPT_ALLMAC_FRAME_SHIFT, align 4
  %58 = shl i32 1, %57
  %59 = or i32 %56, %58
  store i32 %59, i32* %4, align 4
  br label %75

60:                                               ; preds = %48
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @ACCEPT_NICMAC_FRAME_SHIFT, align 4
  %63 = shl i32 1, %62
  %64 = or i32 %61, %63
  store i32 %64, i32* %4, align 4
  %65 = load %struct.r8180_priv*, %struct.r8180_priv** %5, align 8
  %66 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %60
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @RX_CHECK_BSSID_SHIFT, align 4
  %72 = shl i32 1, %71
  %73 = or i32 %70, %72
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %69, %60
  br label %75

75:                                               ; preds = %74, %55
  %76 = load %struct.r8180_priv*, %struct.r8180_priv** %5, align 8
  %77 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %76, i32 0, i32 3
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @IW_MODE_MONITOR, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %75
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @ACCEPT_CTL_FRAME_SHIFT, align 4
  %86 = shl i32 1, %85
  %87 = or i32 %84, %86
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @ACCEPT_ICVERR_FRAME_SHIFT, align 4
  %90 = shl i32 1, %89
  %91 = or i32 %88, %90
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @ACCEPT_PWR_FRAME_SHIFT, align 4
  %94 = shl i32 1, %93
  %95 = or i32 %92, %94
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %83, %75
  %97 = load %struct.r8180_priv*, %struct.r8180_priv** %5, align 8
  %98 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %114

101:                                              ; preds = %96
  %102 = load %struct.r8180_priv*, %struct.r8180_priv** %5, align 8
  %103 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %102, i32 0, i32 3
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @IW_MODE_MONITOR, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %101
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @ACCEPT_CRCERR_FRAME_SHIFT, align 4
  %112 = shl i32 1, %111
  %113 = or i32 %110, %112
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %109, %101, %96
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @RX_FIFO_THRESHOLD_MASK, align 4
  %117 = xor i32 %116, -1
  %118 = and i32 %115, %117
  store i32 %118, i32* %4, align 4
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* @RX_FIFO_THRESHOLD_NONE, align 4
  %121 = load i32, i32* @RX_FIFO_THRESHOLD_SHIFT, align 4
  %122 = shl i32 %120, %121
  %123 = or i32 %119, %122
  store i32 %123, i32* %4, align 4
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* @RX_AUTORESETPHY_SHIFT, align 4
  %126 = shl i32 1, %125
  %127 = or i32 %124, %126
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* %4, align 4
  %129 = load i32, i32* @MAX_RX_DMA_MASK, align 4
  %130 = xor i32 %129, -1
  %131 = and i32 %128, %130
  store i32 %131, i32* %4, align 4
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* @MAX_RX_DMA_2048, align 4
  %134 = load i32, i32* @MAX_RX_DMA_SHIFT, align 4
  %135 = shl i32 %133, %134
  %136 = or i32 %132, %135
  store i32 %136, i32* %4, align 4
  %137 = load i32, i32* %4, align 4
  %138 = load i32, i32* @RCR_ONLYERLPKT, align 4
  %139 = or i32 %137, %138
  store i32 %139, i32* %4, align 4
  %140 = load i32, i32* %4, align 4
  %141 = load i32, i32* @RCR_CS_MASK, align 4
  %142 = xor i32 %141, -1
  %143 = and i32 %140, %142
  store i32 %143, i32* %4, align 4
  %144 = load %struct.r8180_priv*, %struct.r8180_priv** %5, align 8
  %145 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %156, label %148

148:                                              ; preds = %114
  %149 = load %struct.r8180_priv*, %struct.r8180_priv** %5, align 8
  %150 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @RCR_CS_SHIFT, align 4
  %153 = shl i32 %151, %152
  %154 = load i32, i32* %4, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %4, align 4
  br label %156

156:                                              ; preds = %148, %114
  %157 = load %struct.net_device*, %struct.net_device** %2, align 8
  %158 = load i32, i32* @RX_CONF, align 4
  %159 = load i32, i32* %4, align 4
  %160 = call i32 @write_nic_dword(%struct.net_device* %157, i32 %158, i32 %159)
  %161 = load %struct.net_device*, %struct.net_device** %2, align 8
  %162 = call i32 @fix_rx_fifo(%struct.net_device* %161)
  %163 = load %struct.net_device*, %struct.net_device** %2, align 8
  %164 = load i32, i32* @CMD, align 4
  %165 = call i32 @read_nic_byte(%struct.net_device* %163, i32 %164)
  store i32 %165, i32* %3, align 4
  %166 = load %struct.net_device*, %struct.net_device** %2, align 8
  %167 = load i32, i32* @CMD, align 4
  %168 = load i32, i32* %3, align 4
  %169 = load i32, i32* @CMD_RX_ENABLE_SHIFT, align 4
  %170 = shl i32 1, %169
  %171 = or i32 %168, %170
  %172 = call i32 @write_nic_byte(%struct.net_device* %166, i32 %167, i32 %171)
  ret void
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @read_nic_dword(%struct.net_device*, i32) #1

declare dso_local i32 @DMESG(i8*) #1

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
