; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_adapter_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_adapter_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.r8180_priv = type { i32, i64, i32, i32 (%struct.net_device.0*, i32)*, i32 (%struct.net_device.1*)*, i64, %struct.TYPE_2__*, i64 }
%struct.net_device.0 = type opaque
%struct.net_device.1 = type opaque
%struct.TYPE_2__ = type { i32 }

@CARDBUS = common dso_local global i64 0, align 8
@CONFIG3 = common dso_local global i32 0, align 4
@CONFIG3_FuncRegEn = common dso_local global i32 0, align 4
@FEMR = common dso_local global i32 0, align 4
@FEMR_INTR = common dso_local global i32 0, align 4
@FEMR_WKUP = common dso_local global i32 0, align 4
@FEMR_GWAKE = common dso_local global i32 0, align 4
@EPROM_CMD_CONFIG = common dso_local global i32 0, align 4
@MAC0 = common dso_local global i32 0, align 4
@MAC4 = common dso_local global i32 0, align 4
@EPROM_CMD_NORMAL = common dso_local global i32 0, align 4
@EPROM_ANAPARAM_ADDRLWORD = common dso_local global i32 0, align 4
@EPROM_ANAPARAM_ADDRHWORD = common dso_local global i32 0, align 4
@CONFIG2 = common dso_local global i32 0, align 4
@CONFIG2_DMA_POLLING_MODE_SHIFT = common dso_local global i32 0, align 4
@INT_TIMEOUT = common dso_local global i32 0, align 4
@CONFIG5 = common dso_local global i32 0, align 4
@AGCRESET_SHIFT = common dso_local global i32 0, align 4
@WPA_CONFIG = common dso_local global i32 0, align 4
@RATE_FALLBACK = common dso_local global i32 0, align 4
@BRSR = common dso_local global i32 0, align 4
@BRSR_MBR = common dso_local global i32 0, align 4
@BRSR_BPLCP = common dso_local global i32 0, align 4
@GP_ENABLE = common dso_local global i32 0, align 4
@CONFIG3_CLKRUN_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8180_adapter_start(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8180_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.r8180_priv* @ieee80211_priv(%struct.net_device* %7)
  store %struct.r8180_priv* %8, %struct.r8180_priv** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i32 @rtl8180_rtx_disable(%struct.net_device* %9)
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i32 @rtl8180_reset(%struct.net_device* %11)
  %13 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %14 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %13, i32 0, i32 0
  store i32 28623, i32* %14, align 8
  %15 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %16 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %15, i32 0, i32 7
  store i64 0, i64* %16, align 8
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = call i32 @rtl8180_beacon_tx_disable(%struct.net_device* %17)
  %19 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %20 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CARDBUS, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %1
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = load i32, i32* @CONFIG3, align 4
  %27 = call i32 @read_nic_byte(%struct.net_device* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = load i32, i32* @CONFIG3, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @CONFIG3_FuncRegEn, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @write_nic_byte(%struct.net_device* %28, i32 %29, i32 %32)
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = load i32, i32* @FEMR, align 4
  %36 = load i32, i32* @FEMR_INTR, align 4
  %37 = load i32, i32* @FEMR_WKUP, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @FEMR_GWAKE, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = load i32, i32* @FEMR, align 4
  %43 = call i32 @read_nic_word(%struct.net_device* %41, i32 %42)
  %44 = or i32 %40, %43
  %45 = call i32 @write_nic_word(%struct.net_device* %34, i32 %35, i32 %44)
  br label %46

46:                                               ; preds = %24, %1
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = load i32, i32* @EPROM_CMD_CONFIG, align 4
  %49 = call i32 @rtl8180_set_mode(%struct.net_device* %47, i32 %48)
  %50 = load %struct.net_device*, %struct.net_device** %2, align 8
  %51 = load i32, i32* @MAC0, align 4
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i32*
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @write_nic_dword(%struct.net_device* %50, i32 %51, i32 %57)
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = load i32, i32* @MAC4, align 4
  %61 = load %struct.net_device*, %struct.net_device** %2, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i32*
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 65535
  %68 = call i32 @write_nic_word(%struct.net_device* %59, i32 %60, i32 %67)
  %69 = load %struct.net_device*, %struct.net_device** %2, align 8
  %70 = load i32, i32* @EPROM_CMD_NORMAL, align 4
  %71 = call i32 @rtl8180_set_mode(%struct.net_device* %69, i32 %70)
  %72 = load %struct.net_device*, %struct.net_device** %2, align 8
  %73 = call i32 @rtl8180_update_msr(%struct.net_device* %72)
  %74 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %75 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %74, i32 0, i32 5
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %91, label %78

78:                                               ; preds = %46
  %79 = load %struct.net_device*, %struct.net_device** %2, align 8
  %80 = load i32, i32* @EPROM_ANAPARAM_ADDRLWORD, align 4
  %81 = call i32 @eprom_read(%struct.net_device* %79, i32 %80)
  store i32 %81, i32* %4, align 4
  %82 = load %struct.net_device*, %struct.net_device** %2, align 8
  %83 = load i32, i32* @EPROM_ANAPARAM_ADDRHWORD, align 4
  %84 = call i32 @eprom_read(%struct.net_device* %82, i32 %83)
  %85 = shl i32 %84, 16
  %86 = load i32, i32* %4, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %4, align 4
  %88 = load %struct.net_device*, %struct.net_device** %2, align 8
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @rtl8180_set_anaparam(%struct.net_device* %88, i32 %89)
  br label %91

91:                                               ; preds = %78, %46
  %92 = load %struct.net_device*, %struct.net_device** %2, align 8
  %93 = call i32 @fix_rx_fifo(%struct.net_device* %92)
  %94 = load %struct.net_device*, %struct.net_device** %2, align 8
  %95 = call i32 @fix_tx_fifo(%struct.net_device* %94)
  %96 = load %struct.net_device*, %struct.net_device** %2, align 8
  %97 = load i32, i32* @EPROM_CMD_CONFIG, align 4
  %98 = call i32 @rtl8180_set_mode(%struct.net_device* %96, i32 %97)
  %99 = load %struct.net_device*, %struct.net_device** %2, align 8
  %100 = load i32, i32* @CONFIG2, align 4
  %101 = load %struct.net_device*, %struct.net_device** %2, align 8
  %102 = load i32, i32* @CONFIG2, align 4
  %103 = call i32 @read_nic_byte(%struct.net_device* %101, i32 %102)
  %104 = load i32, i32* @CONFIG2_DMA_POLLING_MODE_SHIFT, align 4
  %105 = shl i32 1, %104
  %106 = xor i32 %105, -1
  %107 = and i32 %103, %106
  %108 = call i32 @write_nic_byte(%struct.net_device* %99, i32 %100, i32 %107)
  %109 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %110 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %109, i32 0, i32 5
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %91
  %114 = load %struct.net_device*, %struct.net_device** %2, align 8
  %115 = load i32, i32* @CONFIG2, align 4
  %116 = load %struct.net_device*, %struct.net_device** %2, align 8
  %117 = load i32, i32* @CONFIG2, align 4
  %118 = call i32 @read_nic_byte(%struct.net_device* %116, i32 %117)
  %119 = or i32 %118, 16
  %120 = call i32 @write_nic_byte(%struct.net_device* %114, i32 %115, i32 %119)
  br label %121

121:                                              ; preds = %113, %91
  %122 = load %struct.net_device*, %struct.net_device** %2, align 8
  %123 = load i32, i32* @EPROM_CMD_NORMAL, align 4
  %124 = call i32 @rtl8180_set_mode(%struct.net_device* %122, i32 %123)
  %125 = load %struct.net_device*, %struct.net_device** %2, align 8
  %126 = load i32, i32* @INT_TIMEOUT, align 4
  %127 = call i32 @write_nic_dword(%struct.net_device* %125, i32 %126, i32 0)
  %128 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %129 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %128, i32 0, i32 5
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %156, label %132

132:                                              ; preds = %121
  %133 = load %struct.net_device*, %struct.net_device** %2, align 8
  %134 = load i32, i32* @CONFIG5, align 4
  %135 = load %struct.net_device*, %struct.net_device** %2, align 8
  %136 = load i32, i32* @CONFIG5, align 4
  %137 = call i32 @read_nic_byte(%struct.net_device* %135, i32 %136)
  %138 = load i32, i32* @AGCRESET_SHIFT, align 4
  %139 = shl i32 1, %138
  %140 = or i32 %137, %139
  %141 = call i32 @write_nic_byte(%struct.net_device* %133, i32 %134, i32 %140)
  %142 = load %struct.net_device*, %struct.net_device** %2, align 8
  %143 = load i32, i32* @CONFIG5, align 4
  %144 = call i32 @read_nic_byte(%struct.net_device* %142, i32 %143)
  %145 = call i32 @udelay(i32 15)
  %146 = load %struct.net_device*, %struct.net_device** %2, align 8
  %147 = load i32, i32* @CONFIG5, align 4
  %148 = load %struct.net_device*, %struct.net_device** %2, align 8
  %149 = load i32, i32* @CONFIG5, align 4
  %150 = call i32 @read_nic_byte(%struct.net_device* %148, i32 %149)
  %151 = load i32, i32* @AGCRESET_SHIFT, align 4
  %152 = shl i32 1, %151
  %153 = xor i32 %152, -1
  %154 = and i32 %150, %153
  %155 = call i32 @write_nic_byte(%struct.net_device* %146, i32 %147, i32 %154)
  br label %160

156:                                              ; preds = %121
  %157 = load %struct.net_device*, %struct.net_device** %2, align 8
  %158 = load i32, i32* @WPA_CONFIG, align 4
  %159 = call i32 @write_nic_byte(%struct.net_device* %157, i32 %158, i32 0)
  br label %160

160:                                              ; preds = %156, %132
  %161 = load %struct.net_device*, %struct.net_device** %2, align 8
  %162 = call i32 @rtl8180_no_hw_wep(%struct.net_device* %161)
  %163 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %164 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %163, i32 0, i32 5
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %160
  %168 = load %struct.net_device*, %struct.net_device** %2, align 8
  %169 = call i32 @rtl8185_set_rate(%struct.net_device* %168)
  %170 = load %struct.net_device*, %struct.net_device** %2, align 8
  %171 = load i32, i32* @RATE_FALLBACK, align 4
  %172 = call i32 @write_nic_byte(%struct.net_device* %170, i32 %171, i32 129)
  br label %199

173:                                              ; preds = %160
  %174 = load %struct.net_device*, %struct.net_device** %2, align 8
  %175 = load i32, i32* @BRSR, align 4
  %176 = call i32 @read_nic_word(%struct.net_device* %174, i32 %175)
  store i32 %176, i32* %5, align 4
  %177 = load i32, i32* @BRSR_MBR, align 4
  %178 = xor i32 %177, -1
  %179 = load i32, i32* %5, align 4
  %180 = and i32 %179, %178
  store i32 %180, i32* %5, align 4
  %181 = load i32, i32* @BRSR_BPLCP, align 4
  %182 = xor i32 %181, -1
  %183 = load i32, i32* %5, align 4
  %184 = and i32 %183, %182
  store i32 %184, i32* %5, align 4
  %185 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %186 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %185, i32 0, i32 6
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @ieeerate2rtlrate(i32 %189)
  %191 = load i32, i32* %5, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %5, align 4
  %193 = load i32, i32* %5, align 4
  %194 = or i32 %193, 15
  store i32 %194, i32* %5, align 4
  %195 = load %struct.net_device*, %struct.net_device** %2, align 8
  %196 = load i32, i32* @BRSR, align 4
  %197 = load i32, i32* %5, align 4
  %198 = call i32 @write_nic_word(%struct.net_device* %195, i32 %196, i32 %197)
  br label %199

199:                                              ; preds = %173, %167
  %200 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %201 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %200, i32 0, i32 5
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %227

204:                                              ; preds = %199
  %205 = load %struct.net_device*, %struct.net_device** %2, align 8
  %206 = load i32, i32* @GP_ENABLE, align 4
  %207 = load %struct.net_device*, %struct.net_device** %2, align 8
  %208 = load i32, i32* @GP_ENABLE, align 4
  %209 = call i32 @read_nic_byte(%struct.net_device* %207, i32 %208)
  %210 = and i32 %209, -65
  %211 = call i32 @write_nic_byte(%struct.net_device* %205, i32 %206, i32 %210)
  %212 = load %struct.net_device*, %struct.net_device** %2, align 8
  %213 = load i32, i32* @EPROM_CMD_CONFIG, align 4
  %214 = call i32 @rtl8180_set_mode(%struct.net_device* %212, i32 %213)
  %215 = load %struct.net_device*, %struct.net_device** %2, align 8
  %216 = load i32, i32* @CONFIG3, align 4
  %217 = load %struct.net_device*, %struct.net_device** %2, align 8
  %218 = load i32, i32* @CONFIG3, align 4
  %219 = call i32 @read_nic_byte(%struct.net_device* %217, i32 %218)
  %220 = load i32, i32* @CONFIG3_CLKRUN_SHIFT, align 4
  %221 = shl i32 1, %220
  %222 = or i32 %219, %221
  %223 = call i32 @write_nic_byte(%struct.net_device* %215, i32 %216, i32 %222)
  %224 = load %struct.net_device*, %struct.net_device** %2, align 8
  %225 = load i32, i32* @EPROM_CMD_NORMAL, align 4
  %226 = call i32 @rtl8180_set_mode(%struct.net_device* %224, i32 %225)
  br label %227

227:                                              ; preds = %204, %199
  %228 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %229 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %228, i32 0, i32 4
  %230 = load i32 (%struct.net_device.1*)*, i32 (%struct.net_device.1*)** %229, align 8
  %231 = load %struct.net_device*, %struct.net_device** %2, align 8
  %232 = bitcast %struct.net_device* %231 to %struct.net_device.1*
  %233 = call i32 %230(%struct.net_device.1* %232)
  %234 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %235 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %234, i32 0, i32 3
  %236 = load i32 (%struct.net_device.0*, i32)*, i32 (%struct.net_device.0*, i32)** %235, align 8
  %237 = icmp ne i32 (%struct.net_device.0*, i32)* %236, null
  br i1 %237, label %238, label %248

238:                                              ; preds = %227
  %239 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %240 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %239, i32 0, i32 3
  %241 = load i32 (%struct.net_device.0*, i32)*, i32 (%struct.net_device.0*, i32)** %240, align 8
  %242 = load %struct.net_device*, %struct.net_device** %2, align 8
  %243 = bitcast %struct.net_device* %242 to %struct.net_device.0*
  %244 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %245 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = call i32 %241(%struct.net_device.0* %243, i32 %246)
  br label %248

248:                                              ; preds = %238, %227
  %249 = load %struct.net_device*, %struct.net_device** %2, align 8
  %250 = call i32 @rtl8180_irq_enable(%struct.net_device* %249)
  %251 = load %struct.net_device*, %struct.net_device** %2, align 8
  %252 = call i32 @netif_start_queue(%struct.net_device* %251)
  ret void
}

declare dso_local %struct.r8180_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @rtl8180_rtx_disable(%struct.net_device*) #1

declare dso_local i32 @rtl8180_reset(%struct.net_device*) #1

declare dso_local i32 @rtl8180_beacon_tx_disable(%struct.net_device*) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @write_nic_word(%struct.net_device*, i32, i32) #1

declare dso_local i32 @read_nic_word(%struct.net_device*, i32) #1

declare dso_local i32 @rtl8180_set_mode(%struct.net_device*, i32) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i32, i32) #1

declare dso_local i32 @rtl8180_update_msr(%struct.net_device*) #1

declare dso_local i32 @eprom_read(%struct.net_device*, i32) #1

declare dso_local i32 @rtl8180_set_anaparam(%struct.net_device*, i32) #1

declare dso_local i32 @fix_rx_fifo(%struct.net_device*) #1

declare dso_local i32 @fix_tx_fifo(%struct.net_device*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtl8180_no_hw_wep(%struct.net_device*) #1

declare dso_local i32 @rtl8185_set_rate(%struct.net_device*) #1

declare dso_local i32 @ieeerate2rtlrate(i32) #1

declare dso_local i32 @rtl8180_irq_enable(%struct.net_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
