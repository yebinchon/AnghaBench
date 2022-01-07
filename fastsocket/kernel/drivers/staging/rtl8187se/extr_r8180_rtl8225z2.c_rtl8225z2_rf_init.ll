; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_rtl8225z2.c_rtl8225z2_rf_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_rtl8225z2.c_rtl8225z2_rf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i16, i64 }

@USB = common dso_local global i64 0, align 8
@RF_TIMING = common dso_local global i32 0, align 4
@BRSR = common dso_local global i32 0, align 4
@RF_PARA = common dso_local global i32 0, align 4
@EPROM_CMD_CONFIG = common dso_local global i32 0, align 4
@CONFIG3 = common dso_local global i32 0, align 4
@EPROM_CMD_NORMAL = common dso_local global i32 0, align 4
@rtl8225_chan = common dso_local global i32* null, align 8
@rtl8225z2_rxgain = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"RF Calibration Failed!!!!\0A\00", align 1
@rtl8225_agc = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8225z2_rf_init(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8180_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.r8180_priv* @ieee80211_priv(%struct.net_device* %9)
  store %struct.r8180_priv* %10, %struct.r8180_priv** %3, align 8
  store i16 1, i16* %5, align 2
  %11 = load i16, i16* %5, align 2
  %12 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %13 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %12, i32 0, i32 0
  store i16 %11, i16* %13, align 8
  %14 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %15 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @USB, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = call i32 @rtl8225_host_pci_init(%struct.net_device* %20)
  br label %22

22:                                               ; preds = %19, %1
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = load i32, i32* @RF_TIMING, align 4
  %25 = call i32 @write_nic_dword(%struct.net_device* %23, i32 %24, i32 688136)
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = load i32, i32* @BRSR, align 4
  %28 = call i32 @read_nic_word(%struct.net_device* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = load i32, i32* @BRSR, align 4
  %31 = call i32 @write_nic_word(%struct.net_device* %29, i32 %30, i32 65535)
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = load i32, i32* @RF_PARA, align 4
  %34 = call i32 @write_nic_dword(%struct.net_device* %32, i32 %33, i32 1048644)
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = load i32, i32* @EPROM_CMD_CONFIG, align 4
  %37 = call i32 @rtl8180_set_mode(%struct.net_device* %35, i32 %36)
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = load i32, i32* @CONFIG3, align 4
  %40 = call i32 @write_nic_byte(%struct.net_device* %38, i32 %39, i32 68)
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = load i32, i32* @EPROM_CMD_NORMAL, align 4
  %43 = call i32 @rtl8180_set_mode(%struct.net_device* %41, i32 %42)
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = call i32 @rtl8185_rf_pins_enable(%struct.net_device* %44)
  %46 = load %struct.net_device*, %struct.net_device** %2, align 8
  %47 = call i32 @write_rtl8225(%struct.net_device* %46, i32 0, i32 703)
  %48 = call i32 @mdelay(i32 1)
  %49 = load %struct.net_device*, %struct.net_device** %2, align 8
  %50 = call i32 @write_rtl8225(%struct.net_device* %49, i32 1, i32 3808)
  %51 = call i32 @mdelay(i32 1)
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = call i32 @write_rtl8225(%struct.net_device* %52, i32 2, i32 1101)
  %54 = call i32 @mdelay(i32 1)
  %55 = load %struct.net_device*, %struct.net_device** %2, align 8
  %56 = call i32 @write_rtl8225(%struct.net_device* %55, i32 3, i32 1089)
  %57 = call i32 @mdelay(i32 1)
  %58 = load %struct.net_device*, %struct.net_device** %2, align 8
  %59 = call i32 @write_rtl8225(%struct.net_device* %58, i32 4, i32 2243)
  %60 = call i32 @mdelay(i32 1)
  %61 = load %struct.net_device*, %struct.net_device** %2, align 8
  %62 = call i32 @write_rtl8225(%struct.net_device* %61, i32 5, i32 3186)
  %63 = call i32 @mdelay(i32 1)
  %64 = load %struct.net_device*, %struct.net_device** %2, align 8
  %65 = call i32 @write_rtl8225(%struct.net_device* %64, i32 6, i32 230)
  %66 = call i32 @mdelay(i32 1)
  %67 = load %struct.net_device*, %struct.net_device** %2, align 8
  %68 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %69 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @USB, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %22
  br label %80

74:                                               ; preds = %22
  %75 = load i32*, i32** @rtl8225_chan, align 8
  %76 = load i16, i16* %5, align 2
  %77 = sext i16 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  br label %80

80:                                               ; preds = %74, %73
  %81 = phi i32 [ 2090, %73 ], [ %79, %74 ]
  %82 = call i32 @write_rtl8225(%struct.net_device* %67, i32 7, i32 %81)
  %83 = call i32 @mdelay(i32 1)
  %84 = load %struct.net_device*, %struct.net_device** %2, align 8
  %85 = call i32 @write_rtl8225(%struct.net_device* %84, i32 8, i32 63)
  %86 = call i32 @mdelay(i32 1)
  %87 = load %struct.net_device*, %struct.net_device** %2, align 8
  %88 = call i32 @write_rtl8225(%struct.net_device* %87, i32 9, i32 821)
  %89 = call i32 @mdelay(i32 1)
  %90 = load %struct.net_device*, %struct.net_device** %2, align 8
  %91 = call i32 @write_rtl8225(%struct.net_device* %90, i32 10, i32 2516)
  %92 = call i32 @mdelay(i32 1)
  %93 = load %struct.net_device*, %struct.net_device** %2, align 8
  %94 = call i32 @write_rtl8225(%struct.net_device* %93, i32 11, i32 1979)
  %95 = call i32 @mdelay(i32 1)
  %96 = load %struct.net_device*, %struct.net_device** %2, align 8
  %97 = call i32 @write_rtl8225(%struct.net_device* %96, i32 12, i32 2128)
  %98 = call i32 @mdelay(i32 1)
  %99 = load %struct.net_device*, %struct.net_device** %2, align 8
  %100 = call i32 @write_rtl8225(%struct.net_device* %99, i32 13, i32 3295)
  %101 = call i32 @mdelay(i32 1)
  %102 = load %struct.net_device*, %struct.net_device** %2, align 8
  %103 = call i32 @write_rtl8225(%struct.net_device* %102, i32 14, i32 43)
  %104 = call i32 @mdelay(i32 1)
  %105 = load %struct.net_device*, %struct.net_device** %2, align 8
  %106 = call i32 @write_rtl8225(%struct.net_device* %105, i32 15, i32 276)
  %107 = call i32 @mdelay(i32 100)
  %108 = load %struct.net_device*, %struct.net_device** %2, align 8
  %109 = call i32 @write_rtl8225(%struct.net_device* %108, i32 0, i32 439)
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %125, %80
  %111 = load i32, i32* %4, align 4
  %112 = icmp slt i32 %111, 95
  br i1 %112, label %113, label %128

113:                                              ; preds = %110
  %114 = load %struct.net_device*, %struct.net_device** %2, align 8
  %115 = load i32, i32* %4, align 4
  %116 = add nsw i32 %115, 1
  %117 = call i32 @write_rtl8225(%struct.net_device* %114, i32 1, i32 %116)
  %118 = load %struct.net_device*, %struct.net_device** %2, align 8
  %119 = load i32*, i32** @rtl8225z2_rxgain, align 8
  %120 = load i32, i32* %4, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @write_rtl8225(%struct.net_device* %118, i32 2, i32 %123)
  br label %125

125:                                              ; preds = %113
  %126 = load i32, i32* %4, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %4, align 4
  br label %110

128:                                              ; preds = %110
  %129 = load %struct.net_device*, %struct.net_device** %2, align 8
  %130 = call i32 @write_rtl8225(%struct.net_device* %129, i32 3, i32 128)
  %131 = load %struct.net_device*, %struct.net_device** %2, align 8
  %132 = call i32 @write_rtl8225(%struct.net_device* %131, i32 5, i32 4)
  %133 = load %struct.net_device*, %struct.net_device** %2, align 8
  %134 = call i32 @write_rtl8225(%struct.net_device* %133, i32 0, i32 183)
  %135 = load %struct.net_device*, %struct.net_device** %2, align 8
  %136 = call i32 @write_rtl8225(%struct.net_device* %135, i32 2, i32 3149)
  %137 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %138 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @USB, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %128
  %143 = call i32 @mdelay(i32 200)
  %144 = load %struct.net_device*, %struct.net_device** %2, align 8
  %145 = call i32 @write_rtl8225(%struct.net_device* %144, i32 2, i32 1101)
  %146 = call i32 @mdelay(i32 100)
  br label %147

147:                                              ; preds = %142, %128
  %148 = load %struct.net_device*, %struct.net_device** %2, align 8
  %149 = call i32 @read_rtl8225(%struct.net_device* %148, i32 6)
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* %7, align 4
  %151 = and i32 %150, 128
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %172, label %153

153:                                              ; preds = %147
  %154 = load %struct.net_device*, %struct.net_device** %2, align 8
  %155 = call i32 @write_rtl8225(%struct.net_device* %154, i32 2, i32 3149)
  %156 = load %struct.net_device*, %struct.net_device** %2, align 8
  %157 = call i32 @force_pci_posting(%struct.net_device* %156)
  %158 = call i32 @mdelay(i32 200)
  %159 = load %struct.net_device*, %struct.net_device** %2, align 8
  %160 = call i32 @write_rtl8225(%struct.net_device* %159, i32 2, i32 1101)
  %161 = load %struct.net_device*, %struct.net_device** %2, align 8
  %162 = call i32 @force_pci_posting(%struct.net_device* %161)
  %163 = call i32 @mdelay(i32 100)
  %164 = load %struct.net_device*, %struct.net_device** %2, align 8
  %165 = call i32 @read_rtl8225(%struct.net_device* %164, i32 6)
  store i32 %165, i32* %7, align 4
  %166 = load i32, i32* %7, align 4
  %167 = and i32 %166, 128
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %153
  %170 = call i32 @DMESGW(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %171

171:                                              ; preds = %169, %153
  br label %172

172:                                              ; preds = %171, %147
  %173 = call i32 @mdelay(i32 200)
  %174 = load %struct.net_device*, %struct.net_device** %2, align 8
  %175 = call i32 @write_rtl8225(%struct.net_device* %174, i32 0, i32 703)
  %176 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %177 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @USB, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %172
  %182 = load %struct.net_device*, %struct.net_device** %2, align 8
  %183 = call i32 @rtl8185_rf_pins_enable(%struct.net_device* %182)
  br label %184

184:                                              ; preds = %181, %172
  store i32 0, i32* %4, align 4
  br label %185

185:                                              ; preds = %204, %184
  %186 = load i32, i32* %4, align 4
  %187 = icmp slt i32 %186, 128
  br i1 %187, label %188, label %207

188:                                              ; preds = %185
  %189 = load i32*, i32** @rtl8225_agc, align 8
  %190 = load i32, i32* %4, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  store i32 %193, i32* %7, align 4
  %194 = load i32, i32* %4, align 4
  %195 = add nsw i32 %194, 128
  store i32 %195, i32* %8, align 4
  %196 = load %struct.net_device*, %struct.net_device** %2, align 8
  %197 = load i32, i32* %7, align 4
  %198 = call i32 @write_phy_ofdm(%struct.net_device* %196, i32 11, i32 %197)
  %199 = call i32 @mdelay(i32 1)
  %200 = load %struct.net_device*, %struct.net_device** %2, align 8
  %201 = load i32, i32* %8, align 4
  %202 = call i32 @write_phy_ofdm(%struct.net_device* %200, i32 10, i32 %201)
  %203 = call i32 @mdelay(i32 1)
  br label %204

204:                                              ; preds = %188
  %205 = load i32, i32* %4, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %4, align 4
  br label %185

207:                                              ; preds = %185
  %208 = load %struct.net_device*, %struct.net_device** %2, align 8
  %209 = call i32 @force_pci_posting(%struct.net_device* %208)
  %210 = call i32 @mdelay(i32 1)
  %211 = load %struct.net_device*, %struct.net_device** %2, align 8
  %212 = call i32 @write_phy_ofdm(%struct.net_device* %211, i32 0, i32 1)
  %213 = call i32 @mdelay(i32 1)
  %214 = load %struct.net_device*, %struct.net_device** %2, align 8
  %215 = call i32 @write_phy_ofdm(%struct.net_device* %214, i32 1, i32 2)
  %216 = call i32 @mdelay(i32 1)
  %217 = load %struct.net_device*, %struct.net_device** %2, align 8
  %218 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %219 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @USB, align 8
  %222 = icmp eq i64 %220, %221
  %223 = zext i1 %222 to i64
  %224 = select i1 %222, i32 66, i32 98
  %225 = call i32 @write_phy_ofdm(%struct.net_device* %217, i32 2, i32 %224)
  %226 = call i32 @mdelay(i32 1)
  %227 = load %struct.net_device*, %struct.net_device** %2, align 8
  %228 = call i32 @write_phy_ofdm(%struct.net_device* %227, i32 3, i32 0)
  %229 = call i32 @mdelay(i32 1)
  %230 = load %struct.net_device*, %struct.net_device** %2, align 8
  %231 = call i32 @write_phy_ofdm(%struct.net_device* %230, i32 4, i32 0)
  %232 = call i32 @mdelay(i32 1)
  %233 = load %struct.net_device*, %struct.net_device** %2, align 8
  %234 = call i32 @write_phy_ofdm(%struct.net_device* %233, i32 5, i32 0)
  %235 = call i32 @mdelay(i32 1)
  %236 = load %struct.net_device*, %struct.net_device** %2, align 8
  %237 = call i32 @write_phy_ofdm(%struct.net_device* %236, i32 6, i32 64)
  %238 = call i32 @mdelay(i32 1)
  %239 = load %struct.net_device*, %struct.net_device** %2, align 8
  %240 = call i32 @write_phy_ofdm(%struct.net_device* %239, i32 7, i32 0)
  %241 = call i32 @mdelay(i32 1)
  %242 = load %struct.net_device*, %struct.net_device** %2, align 8
  %243 = call i32 @write_phy_ofdm(%struct.net_device* %242, i32 8, i32 64)
  %244 = call i32 @mdelay(i32 1)
  %245 = load %struct.net_device*, %struct.net_device** %2, align 8
  %246 = call i32 @write_phy_ofdm(%struct.net_device* %245, i32 9, i32 254)
  %247 = call i32 @mdelay(i32 1)
  %248 = load %struct.net_device*, %struct.net_device** %2, align 8
  %249 = call i32 @write_phy_ofdm(%struct.net_device* %248, i32 10, i32 8)
  %250 = call i32 @mdelay(i32 1)
  %251 = load %struct.net_device*, %struct.net_device** %2, align 8
  %252 = call i32 @write_phy_ofdm(%struct.net_device* %251, i32 11, i32 128)
  %253 = call i32 @mdelay(i32 1)
  %254 = load %struct.net_device*, %struct.net_device** %2, align 8
  %255 = call i32 @write_phy_ofdm(%struct.net_device* %254, i32 12, i32 1)
  %256 = call i32 @mdelay(i32 1)
  %257 = load %struct.net_device*, %struct.net_device** %2, align 8
  %258 = call i32 @write_phy_ofdm(%struct.net_device* %257, i32 13, i32 67)
  %259 = load %struct.net_device*, %struct.net_device** %2, align 8
  %260 = call i32 @write_phy_ofdm(%struct.net_device* %259, i32 14, i32 211)
  %261 = call i32 @mdelay(i32 1)
  %262 = load %struct.net_device*, %struct.net_device** %2, align 8
  %263 = call i32 @write_phy_ofdm(%struct.net_device* %262, i32 15, i32 56)
  %264 = call i32 @mdelay(i32 1)
  %265 = load %struct.net_device*, %struct.net_device** %2, align 8
  %266 = call i32 @write_phy_ofdm(%struct.net_device* %265, i32 16, i32 132)
  %267 = call i32 @mdelay(i32 1)
  %268 = load %struct.net_device*, %struct.net_device** %2, align 8
  %269 = call i32 @write_phy_ofdm(%struct.net_device* %268, i32 17, i32 7)
  %270 = call i32 @mdelay(i32 1)
  %271 = load %struct.net_device*, %struct.net_device** %2, align 8
  %272 = call i32 @write_phy_ofdm(%struct.net_device* %271, i32 18, i32 32)
  %273 = call i32 @mdelay(i32 1)
  %274 = load %struct.net_device*, %struct.net_device** %2, align 8
  %275 = call i32 @write_phy_ofdm(%struct.net_device* %274, i32 19, i32 32)
  %276 = call i32 @mdelay(i32 1)
  %277 = load %struct.net_device*, %struct.net_device** %2, align 8
  %278 = call i32 @write_phy_ofdm(%struct.net_device* %277, i32 20, i32 0)
  %279 = call i32 @mdelay(i32 1)
  %280 = load %struct.net_device*, %struct.net_device** %2, align 8
  %281 = call i32 @write_phy_ofdm(%struct.net_device* %280, i32 21, i32 64)
  %282 = call i32 @mdelay(i32 1)
  %283 = load %struct.net_device*, %struct.net_device** %2, align 8
  %284 = call i32 @write_phy_ofdm(%struct.net_device* %283, i32 22, i32 0)
  %285 = call i32 @mdelay(i32 1)
  %286 = load %struct.net_device*, %struct.net_device** %2, align 8
  %287 = call i32 @write_phy_ofdm(%struct.net_device* %286, i32 23, i32 64)
  %288 = call i32 @mdelay(i32 1)
  %289 = load %struct.net_device*, %struct.net_device** %2, align 8
  %290 = call i32 @write_phy_ofdm(%struct.net_device* %289, i32 24, i32 239)
  %291 = call i32 @mdelay(i32 1)
  %292 = load %struct.net_device*, %struct.net_device** %2, align 8
  %293 = call i32 @write_phy_ofdm(%struct.net_device* %292, i32 25, i32 25)
  %294 = call i32 @mdelay(i32 1)
  %295 = load %struct.net_device*, %struct.net_device** %2, align 8
  %296 = call i32 @write_phy_ofdm(%struct.net_device* %295, i32 26, i32 32)
  %297 = call i32 @mdelay(i32 1)
  %298 = load %struct.net_device*, %struct.net_device** %2, align 8
  %299 = call i32 @write_phy_ofdm(%struct.net_device* %298, i32 27, i32 21)
  %300 = call i32 @mdelay(i32 1)
  %301 = load %struct.net_device*, %struct.net_device** %2, align 8
  %302 = call i32 @write_phy_ofdm(%struct.net_device* %301, i32 28, i32 4)
  %303 = call i32 @mdelay(i32 1)
  %304 = load %struct.net_device*, %struct.net_device** %2, align 8
  %305 = call i32 @write_phy_ofdm(%struct.net_device* %304, i32 29, i32 197)
  %306 = call i32 @mdelay(i32 1)
  %307 = load %struct.net_device*, %struct.net_device** %2, align 8
  %308 = call i32 @write_phy_ofdm(%struct.net_device* %307, i32 30, i32 149)
  %309 = call i32 @mdelay(i32 1)
  %310 = load %struct.net_device*, %struct.net_device** %2, align 8
  %311 = call i32 @write_phy_ofdm(%struct.net_device* %310, i32 31, i32 117)
  %312 = call i32 @mdelay(i32 1)
  %313 = load %struct.net_device*, %struct.net_device** %2, align 8
  %314 = call i32 @write_phy_ofdm(%struct.net_device* %313, i32 32, i32 31)
  %315 = call i32 @mdelay(i32 1)
  %316 = load %struct.net_device*, %struct.net_device** %2, align 8
  %317 = call i32 @write_phy_ofdm(%struct.net_device* %316, i32 33, i32 23)
  %318 = call i32 @mdelay(i32 1)
  %319 = load %struct.net_device*, %struct.net_device** %2, align 8
  %320 = call i32 @write_phy_ofdm(%struct.net_device* %319, i32 34, i32 22)
  %321 = call i32 @mdelay(i32 1)
  %322 = load %struct.net_device*, %struct.net_device** %2, align 8
  %323 = call i32 @write_phy_ofdm(%struct.net_device* %322, i32 35, i32 128)
  %324 = call i32 @mdelay(i32 1)
  %325 = load %struct.net_device*, %struct.net_device** %2, align 8
  %326 = call i32 @write_phy_ofdm(%struct.net_device* %325, i32 36, i32 70)
  %327 = call i32 @mdelay(i32 1)
  %328 = load %struct.net_device*, %struct.net_device** %2, align 8
  %329 = call i32 @write_phy_ofdm(%struct.net_device* %328, i32 37, i32 0)
  %330 = call i32 @mdelay(i32 1)
  %331 = load %struct.net_device*, %struct.net_device** %2, align 8
  %332 = call i32 @write_phy_ofdm(%struct.net_device* %331, i32 38, i32 144)
  %333 = call i32 @mdelay(i32 1)
  %334 = load %struct.net_device*, %struct.net_device** %2, align 8
  %335 = call i32 @write_phy_ofdm(%struct.net_device* %334, i32 39, i32 136)
  %336 = call i32 @mdelay(i32 1)
  %337 = load %struct.net_device*, %struct.net_device** %2, align 8
  %338 = call i32 @rtl8225z2_set_gain(%struct.net_device* %337, i32 4)
  %339 = load %struct.net_device*, %struct.net_device** %2, align 8
  %340 = call i32 @write_phy_cck(%struct.net_device* %339, i32 0, i32 152)
  %341 = call i32 @mdelay(i32 1)
  %342 = load %struct.net_device*, %struct.net_device** %2, align 8
  %343 = call i32 @write_phy_cck(%struct.net_device* %342, i32 3, i32 32)
  %344 = call i32 @mdelay(i32 1)
  %345 = load %struct.net_device*, %struct.net_device** %2, align 8
  %346 = call i32 @write_phy_cck(%struct.net_device* %345, i32 4, i32 126)
  %347 = call i32 @mdelay(i32 1)
  %348 = load %struct.net_device*, %struct.net_device** %2, align 8
  %349 = call i32 @write_phy_cck(%struct.net_device* %348, i32 5, i32 18)
  %350 = call i32 @mdelay(i32 1)
  %351 = load %struct.net_device*, %struct.net_device** %2, align 8
  %352 = call i32 @write_phy_cck(%struct.net_device* %351, i32 6, i32 252)
  %353 = call i32 @mdelay(i32 1)
  %354 = load %struct.net_device*, %struct.net_device** %2, align 8
  %355 = call i32 @write_phy_cck(%struct.net_device* %354, i32 7, i32 120)
  %356 = call i32 @mdelay(i32 1)
  %357 = load %struct.net_device*, %struct.net_device** %2, align 8
  %358 = call i32 @write_phy_cck(%struct.net_device* %357, i32 8, i32 46)
  %359 = call i32 @mdelay(i32 1)
  %360 = load %struct.net_device*, %struct.net_device** %2, align 8
  %361 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %362 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %361, i32 0, i32 1
  %363 = load i64, i64* %362, align 8
  %364 = load i64, i64* @USB, align 8
  %365 = icmp eq i64 %363, %364
  %366 = zext i1 %365 to i64
  %367 = select i1 %365, i32 155, i32 147
  %368 = call i32 @write_phy_cck(%struct.net_device* %360, i32 16, i32 %367)
  %369 = call i32 @mdelay(i32 1)
  %370 = load %struct.net_device*, %struct.net_device** %2, align 8
  %371 = call i32 @write_phy_cck(%struct.net_device* %370, i32 17, i32 136)
  %372 = call i32 @mdelay(i32 1)
  %373 = load %struct.net_device*, %struct.net_device** %2, align 8
  %374 = call i32 @write_phy_cck(%struct.net_device* %373, i32 18, i32 71)
  %375 = call i32 @mdelay(i32 1)
  %376 = load %struct.net_device*, %struct.net_device** %2, align 8
  %377 = call i32 @write_phy_cck(%struct.net_device* %376, i32 19, i32 208)
  %378 = load %struct.net_device*, %struct.net_device** %2, align 8
  %379 = call i32 @write_phy_cck(%struct.net_device* %378, i32 25, i32 0)
  %380 = load %struct.net_device*, %struct.net_device** %2, align 8
  %381 = call i32 @write_phy_cck(%struct.net_device* %380, i32 26, i32 160)
  %382 = load %struct.net_device*, %struct.net_device** %2, align 8
  %383 = call i32 @write_phy_cck(%struct.net_device* %382, i32 27, i32 8)
  %384 = load %struct.net_device*, %struct.net_device** %2, align 8
  %385 = call i32 @write_phy_cck(%struct.net_device* %384, i32 64, i32 134)
  %386 = load %struct.net_device*, %struct.net_device** %2, align 8
  %387 = call i32 @write_phy_cck(%struct.net_device* %386, i32 65, i32 141)
  %388 = call i32 @mdelay(i32 1)
  %389 = load %struct.net_device*, %struct.net_device** %2, align 8
  %390 = call i32 @write_phy_cck(%struct.net_device* %389, i32 66, i32 21)
  %391 = call i32 @mdelay(i32 1)
  %392 = load %struct.net_device*, %struct.net_device** %2, align 8
  %393 = call i32 @write_phy_cck(%struct.net_device* %392, i32 67, i32 24)
  %394 = call i32 @mdelay(i32 1)
  %395 = load %struct.net_device*, %struct.net_device** %2, align 8
  %396 = call i32 @write_phy_cck(%struct.net_device* %395, i32 68, i32 54)
  %397 = call i32 @mdelay(i32 1)
  %398 = load %struct.net_device*, %struct.net_device** %2, align 8
  %399 = call i32 @write_phy_cck(%struct.net_device* %398, i32 69, i32 53)
  %400 = call i32 @mdelay(i32 1)
  %401 = load %struct.net_device*, %struct.net_device** %2, align 8
  %402 = call i32 @write_phy_cck(%struct.net_device* %401, i32 70, i32 46)
  %403 = call i32 @mdelay(i32 1)
  %404 = load %struct.net_device*, %struct.net_device** %2, align 8
  %405 = call i32 @write_phy_cck(%struct.net_device* %404, i32 71, i32 37)
  %406 = call i32 @mdelay(i32 1)
  %407 = load %struct.net_device*, %struct.net_device** %2, align 8
  %408 = call i32 @write_phy_cck(%struct.net_device* %407, i32 72, i32 28)
  %409 = call i32 @mdelay(i32 1)
  %410 = load %struct.net_device*, %struct.net_device** %2, align 8
  %411 = call i32 @write_phy_cck(%struct.net_device* %410, i32 73, i32 18)
  %412 = call i32 @mdelay(i32 1)
  %413 = load %struct.net_device*, %struct.net_device** %2, align 8
  %414 = call i32 @write_phy_cck(%struct.net_device* %413, i32 74, i32 9)
  %415 = call i32 @mdelay(i32 1)
  %416 = load %struct.net_device*, %struct.net_device** %2, align 8
  %417 = call i32 @write_phy_cck(%struct.net_device* %416, i32 75, i32 4)
  %418 = call i32 @mdelay(i32 1)
  %419 = load %struct.net_device*, %struct.net_device** %2, align 8
  %420 = call i32 @write_phy_cck(%struct.net_device* %419, i32 76, i32 5)
  %421 = call i32 @mdelay(i32 1)
  %422 = load %struct.net_device*, %struct.net_device** %2, align 8
  %423 = call i32 @write_nic_byte(%struct.net_device* %422, i32 91, i32 13)
  %424 = call i32 @mdelay(i32 1)
  %425 = load %struct.net_device*, %struct.net_device** %2, align 8
  %426 = load i16, i16* %5, align 2
  %427 = call i32 @rtl8225z2_SetTXPowerLevel(%struct.net_device* %425, i16 signext %426)
  %428 = load %struct.net_device*, %struct.net_device** %2, align 8
  %429 = call i32 @write_phy_cck(%struct.net_device* %428, i32 17, i32 155)
  %430 = call i32 @mdelay(i32 1)
  %431 = load %struct.net_device*, %struct.net_device** %2, align 8
  %432 = call i32 @write_phy_ofdm(%struct.net_device* %431, i32 38, i32 144)
  %433 = call i32 @mdelay(i32 1)
  %434 = load %struct.net_device*, %struct.net_device** %2, align 8
  %435 = call i32 @rtl8185_tx_antenna(%struct.net_device* %434, i32 3)
  %436 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %437 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %436, i32 0, i32 1
  %438 = load i64, i64* %437, align 8
  %439 = load i64, i64* @USB, align 8
  %440 = icmp eq i64 %438, %439
  br i1 %440, label %441, label %444

441:                                              ; preds = %207
  %442 = load %struct.net_device*, %struct.net_device** %2, align 8
  %443 = call i32 @write_nic_dword(%struct.net_device* %442, i32 148, i32 1035993090)
  br label %449

444:                                              ; preds = %207
  %445 = load %struct.net_device*, %struct.net_device** %2, align 8
  %446 = call i32 @write_nic_dword(%struct.net_device* %445, i32 148, i32 364904450)
  %447 = load %struct.net_device*, %struct.net_device** %2, align 8
  %448 = call i32 @rtl8185_rf_pins_enable(%struct.net_device* %447)
  br label %449

449:                                              ; preds = %444, %441
  %450 = load %struct.net_device*, %struct.net_device** %2, align 8
  %451 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %452 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %451, i32 0, i32 0
  %453 = load i16, i16* %452, align 8
  %454 = call i32 @rtl8225_rf_set_chan(%struct.net_device* %450, i16 signext %453)
  ret void
}

declare dso_local %struct.r8180_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @rtl8225_host_pci_init(%struct.net_device*) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i32, i32) #1

declare dso_local i32 @read_nic_word(%struct.net_device*, i32) #1

declare dso_local i32 @write_nic_word(%struct.net_device*, i32, i32) #1

declare dso_local i32 @rtl8180_set_mode(%struct.net_device*, i32) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @rtl8185_rf_pins_enable(%struct.net_device*) #1

declare dso_local i32 @write_rtl8225(%struct.net_device*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @read_rtl8225(%struct.net_device*, i32) #1

declare dso_local i32 @force_pci_posting(%struct.net_device*) #1

declare dso_local i32 @DMESGW(i8*) #1

declare dso_local i32 @write_phy_ofdm(%struct.net_device*, i32, i32) #1

declare dso_local i32 @rtl8225z2_set_gain(%struct.net_device*, i32) #1

declare dso_local i32 @write_phy_cck(%struct.net_device*, i32, i32) #1

declare dso_local i32 @rtl8225z2_SetTXPowerLevel(%struct.net_device*, i16 signext) #1

declare dso_local i32 @rtl8185_tx_antenna(%struct.net_device*, i32) #1

declare dso_local i32 @rtl8225_rf_set_chan(%struct.net_device*, i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
