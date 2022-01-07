; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_tx_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_tx_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i32, i32, i64, i64 }

@TX_CONF = common dso_local global i32 0, align 4
@CW_CONF = common dso_local global i32 0, align 4
@CW_CONF_PERPACKET_CW_SHIFT = common dso_local global i32 0, align 4
@CW_CONF_PERPACKET_RETRY_SHIFT = common dso_local global i32 0, align 4
@TX_AGC_CTL = common dso_local global i32 0, align 4
@TX_AGC_CTL_PERPACKET_GAIN_SHIFT = common dso_local global i32 0, align 4
@TX_AGC_CTL_PERPACKET_ANTSEL_SHIFT = common dso_local global i32 0, align 4
@TX_AGC_CTL_FEEDBACK_ANT = common dso_local global i32 0, align 4
@TCR_PROBE_NOTIMESTAMP_SHIFT = common dso_local global i32 0, align 4
@hwseqnum = common dso_local global i64 0, align 8
@TX_CONF_HEADER_AUTOICREMENT_SHIFT = common dso_local global i32 0, align 4
@TX_LOOPBACK_MASK = common dso_local global i32 0, align 4
@TX_LOOPBACK_NONE = common dso_local global i32 0, align 4
@TX_LOOPBACK_SHIFT = common dso_local global i32 0, align 4
@TCR_DPRETRY_MASK = common dso_local global i32 0, align 4
@TCR_RTSRETRY_MASK = common dso_local global i32 0, align 4
@TX_DPRETRY_SHIFT = common dso_local global i32 0, align 4
@TX_RTSRETRY_SHIFT = common dso_local global i32 0, align 4
@TX_NOCRC_SHIFT = common dso_local global i32 0, align 4
@TCR_PLCP_LEN = common dso_local global i32 0, align 4
@TCR_SAT = common dso_local global i32 0, align 4
@TCR_MXDMA_MASK = common dso_local global i32 0, align 4
@TCR_MXDMA_2048 = common dso_local global i32 0, align 4
@TCR_MXDMA_SHIFT = common dso_local global i32 0, align 4
@TCR_CWMIN = common dso_local global i32 0, align 4
@TCR_DISCW = common dso_local global i32 0, align 4
@TX_NOICV_SHIFT = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@CMD_TX_ENABLE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8180_tx_enable(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.r8180_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call i64 @ieee80211_priv(%struct.net_device* %8)
  %10 = inttoptr i64 %9 to %struct.r8180_priv*
  store %struct.r8180_priv* %10, %struct.r8180_priv** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = load i32, i32* @TX_CONF, align 4
  %13 = call i32 @read_nic_dword(%struct.net_device* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.r8180_priv*, %struct.r8180_priv** %7, align 8
  %15 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %59

18:                                               ; preds = %1
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = load i32, i32* @CW_CONF, align 4
  %21 = call i32 @read_nic_byte(%struct.net_device* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @CW_CONF_PERPACKET_CW_SHIFT, align 4
  %23 = shl i32 1, %22
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @CW_CONF_PERPACKET_RETRY_SHIFT, align 4
  %28 = shl i32 1, %27
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = load i32, i32* @CW_CONF, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @write_nic_byte(%struct.net_device* %32, i32 %33, i32 %34)
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = load i32, i32* @TX_AGC_CTL, align 4
  %38 = call i32 @read_nic_byte(%struct.net_device* %36, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* @TX_AGC_CTL_PERPACKET_GAIN_SHIFT, align 4
  %40 = shl i32 1, %39
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* @TX_AGC_CTL_PERPACKET_ANTSEL_SHIFT, align 4
  %45 = shl i32 1, %44
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %4, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* @TX_AGC_CTL_FEEDBACK_ANT, align 4
  %50 = shl i32 1, %49
  %51 = load i32, i32* %4, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %4, align 4
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = load i32, i32* @TX_AGC_CTL, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @write_nic_byte(%struct.net_device* %53, i32 %54, i32 %55)
  %57 = load %struct.net_device*, %struct.net_device** %2, align 8
  %58 = call i32 @write_nic_byte(%struct.net_device* %57, i32 236, i32 63)
  br label %59

59:                                               ; preds = %18, %1
  %60 = load %struct.r8180_priv*, %struct.r8180_priv** %7, align 8
  %61 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @TCR_PROBE_NOTIMESTAMP_SHIFT, align 4
  %67 = shl i32 1, %66
  %68 = xor i32 %67, -1
  %69 = and i32 %65, %68
  store i32 %69, i32* %6, align 4
  br label %85

70:                                               ; preds = %59
  %71 = load i64, i64* @hwseqnum, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @TX_CONF_HEADER_AUTOICREMENT_SHIFT, align 4
  %76 = shl i32 1, %75
  %77 = xor i32 %76, -1
  %78 = and i32 %74, %77
  store i32 %78, i32* %6, align 4
  br label %84

79:                                               ; preds = %70
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @TX_CONF_HEADER_AUTOICREMENT_SHIFT, align 4
  %82 = shl i32 1, %81
  %83 = or i32 %80, %82
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %79, %73
  br label %85

85:                                               ; preds = %84, %64
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @TX_LOOPBACK_MASK, align 4
  %88 = xor i32 %87, -1
  %89 = and i32 %86, %88
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @TX_LOOPBACK_NONE, align 4
  %92 = load i32, i32* @TX_LOOPBACK_SHIFT, align 4
  %93 = shl i32 %91, %92
  %94 = or i32 %90, %93
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @TCR_DPRETRY_MASK, align 4
  %97 = xor i32 %96, -1
  %98 = and i32 %95, %97
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @TCR_RTSRETRY_MASK, align 4
  %101 = xor i32 %100, -1
  %102 = and i32 %99, %101
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load %struct.r8180_priv*, %struct.r8180_priv** %7, align 8
  %105 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @TX_DPRETRY_SHIFT, align 4
  %108 = shl i32 %106, %107
  %109 = or i32 %103, %108
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = load %struct.r8180_priv*, %struct.r8180_priv** %7, align 8
  %112 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @TX_RTSRETRY_SHIFT, align 4
  %115 = shl i32 %113, %114
  %116 = or i32 %110, %115
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @TX_NOCRC_SHIFT, align 4
  %119 = shl i32 1, %118
  %120 = xor i32 %119, -1
  %121 = and i32 %117, %120
  store i32 %121, i32* %6, align 4
  %122 = load %struct.r8180_priv*, %struct.r8180_priv** %7, align 8
  %123 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %141

126:                                              ; preds = %85
  %127 = load %struct.r8180_priv*, %struct.r8180_priv** %7, align 8
  %128 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* @TCR_PLCP_LEN, align 4
  %134 = xor i32 %133, -1
  %135 = and i32 %132, %134
  store i32 %135, i32* %6, align 4
  br label %140

136:                                              ; preds = %126
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @TCR_PLCP_LEN, align 4
  %139 = or i32 %137, %138
  store i32 %139, i32* %6, align 4
  br label %140

140:                                              ; preds = %136, %131
  br label %146

141:                                              ; preds = %85
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @TCR_SAT, align 4
  %144 = xor i32 %143, -1
  %145 = and i32 %142, %144
  store i32 %145, i32* %6, align 4
  br label %146

146:                                              ; preds = %141, %140
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* @TCR_MXDMA_MASK, align 4
  %149 = xor i32 %148, -1
  %150 = and i32 %147, %149
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* @TCR_MXDMA_2048, align 4
  %153 = load i32, i32* @TCR_MXDMA_SHIFT, align 4
  %154 = shl i32 %152, %153
  %155 = or i32 %151, %154
  store i32 %155, i32* %6, align 4
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* @TCR_CWMIN, align 4
  %158 = or i32 %156, %157
  store i32 %158, i32* %6, align 4
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* @TCR_DISCW, align 4
  %161 = or i32 %159, %160
  store i32 %161, i32* %6, align 4
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* @TX_NOICV_SHIFT, align 4
  %164 = shl i32 1, %163
  %165 = or i32 %162, %164
  store i32 %165, i32* %6, align 4
  %166 = load %struct.net_device*, %struct.net_device** %2, align 8
  %167 = load i32, i32* @TX_CONF, align 4
  %168 = load i32, i32* %6, align 4
  %169 = call i32 @write_nic_dword(%struct.net_device* %166, i32 %167, i32 %168)
  %170 = load %struct.net_device*, %struct.net_device** %2, align 8
  %171 = call i32 @fix_tx_fifo(%struct.net_device* %170)
  %172 = load %struct.net_device*, %struct.net_device** %2, align 8
  %173 = load i32, i32* @CMD, align 4
  %174 = call i32 @read_nic_byte(%struct.net_device* %172, i32 %173)
  store i32 %174, i32* %3, align 4
  %175 = load %struct.net_device*, %struct.net_device** %2, align 8
  %176 = load i32, i32* @CMD, align 4
  %177 = load i32, i32* %3, align 4
  %178 = load i32, i32* @CMD_TX_ENABLE_SHIFT, align 4
  %179 = shl i32 1, %178
  %180 = or i32 %177, %179
  %181 = call i32 @write_nic_byte(%struct.net_device* %175, i32 %176, i32 %180)
  %182 = load %struct.net_device*, %struct.net_device** %2, align 8
  %183 = load i32, i32* @TX_CONF, align 4
  %184 = load i32, i32* %6, align 4
  %185 = call i32 @write_nic_dword(%struct.net_device* %182, i32 %183, i32 %184)
  ret void
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @read_nic_dword(%struct.net_device*, i32) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i32, i32) #1

declare dso_local i32 @fix_tx_fifo(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
