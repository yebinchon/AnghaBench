; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i32*, i32*, i32, i32, i32, i32, i32, i64, i8, i32, i8, i64, i64, i64, i32, %struct.TYPE_13__*, i32, %struct.sk_buff*, %struct.TYPE_14__*, i64, %struct.TYPE_12__, i32, %struct.TYPE_10__, i32 }
%struct.TYPE_13__ = type { i32, i8*, %struct.TYPE_13__* }
%struct.sk_buff = type { i32, i8*, %struct.net_device* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8, i32 }
%struct.ieee80211_hdr_4addr = type { i32, i32, i32, i32 }
%struct.ieee80211_rx_stats = type { i32, i32, i32*, i32, i8, i32, i32, i32 }

@__const.rtl8180_rx.LNA_gain = private unnamed_addr constant [4 x i32] [i32 2, i32 17, i32 29, i32 39], align 16
@IEEE80211_24GHZ_BAND = common dso_local global i32 0, align 4
@NIC_8185B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"RX buffer overflow\00", align 1
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@MAX_FRAG_THRESHOLD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"check your card type\0A\00", align 1
@IEEE80211_FTYPE_CTL = common dso_local global i64 0, align 8
@IEEE80211_FCTL_TODS = common dso_local global i64 0, align 8
@IEEE80211_FCTL_FROMDS = common dso_local global i64 0, align 8
@IW_MODE_MONITOR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8180_rx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8180_priv*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [4 x i32], align 16
  %22 = alloca i32, align 4
  %23 = alloca %struct.ieee80211_hdr_4addr*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  %32 = alloca %struct.ieee80211_rx_stats, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = call i64 @ieee80211_priv(%struct.net_device* %33)
  %35 = inttoptr i64 %34 to %struct.r8180_priv*
  store %struct.r8180_priv* %35, %struct.r8180_priv** %3, align 8
  store i8 0, i8* %16, align 1
  store i32 0, i32* %17, align 4
  store i64 0, i64* %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %36 = bitcast [4 x i32]* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %36, i8* align 16 bitcast ([4 x i32]* @__const.rtl8180_rx.LNA_gain to i8*), i64 16, i1 false)
  store i32 0, i32* %22, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i64 0, i64* %31, align 8
  %37 = bitcast %struct.ieee80211_rx_stats* %32 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %37, i8 0, i64 40, i1 false)
  %38 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %32, i32 0, i32 1
  store i32 -98, i32* %38, align 4
  %39 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %32, i32 0, i32 7
  %40 = load i32, i32* @IEEE80211_24GHZ_BAND, align 4
  store i32 %40, i32* %39, align 8
  %41 = load i32, i32* @NIC_8185B, align 4
  %42 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %32, i32 0, i32 6
  store i32 %41, i32* %42, align 4
  store i32 8, i32* %14, align 4
  %43 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %44 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, -2147483648
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %111

49:                                               ; preds = %1
  %50 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %51 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %50, i32 0, i32 20
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  %55 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %56 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %55, i32 0, i32 18
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  store i32* null, i32** %13, align 8
  %62 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %63 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  store i32* %64, i32** %12, align 8
  br label %65

65:                                               ; preds = %97, %49
  %66 = load i32*, i32** %12, align 8
  %67 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %68 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %66, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %65
  %72 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %73 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %76 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = sub nsw i32 %77, 1
  %79 = load i32, i32* %14, align 4
  %80 = mul nsw i32 %78, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %74, i64 %81
  store i32* %82, i32** %12, align 8
  br label %89

83:                                               ; preds = %65
  %84 = load i32, i32* %14, align 4
  %85 = load i32*, i32** %12, align 8
  %86 = sext i32 %84 to i64
  %87 = sub i64 0, %86
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32* %88, i32** %12, align 8
  br label %89

89:                                               ; preds = %83, %71
  %90 = load i32*, i32** %12, align 8
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, -2147483648
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %89
  %95 = load i32*, i32** %12, align 8
  store i32* %95, i32** %13, align 8
  br label %96

96:                                               ; preds = %94, %89
  br label %97

97:                                               ; preds = %96
  %98 = load i32*, i32** %12, align 8
  %99 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %100 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ne i32* %98, %101
  br i1 %102, label %65, label %103

103:                                              ; preds = %97
  %104 = load i32*, i32** %13, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load i32*, i32** %13, align 8
  %108 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %109 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %108, i32 0, i32 0
  store i32* %107, i32** %109, align 8
  br label %110

110:                                              ; preds = %106, %103
  br label %111

111:                                              ; preds = %110, %1
  br label %112

112:                                              ; preds = %976, %111
  %113 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %114 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, -2147483648
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  br i1 %119, label %120, label %984

120:                                              ; preds = %112
  %121 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %122 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, 67108864
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %120
  %128 = call i32 @DMESGW(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %129

129:                                              ; preds = %127, %120
  %130 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %131 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, 4096
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %129
  %137 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %138 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %137, i32 0, i32 20
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %136, %129
  %143 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %144 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, 134217728
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %142
  %150 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %151 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %150, i32 0, i32 20
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 8
  br label %913

155:                                              ; preds = %142
  %156 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %157 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %156, i32 0, i32 16
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %160 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %159, i32 0, i32 15
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %165 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = sext i32 %166 to i64
  %168 = mul i64 %167, 4
  %169 = trunc i64 %168 to i32
  %170 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %171 = call i32 @pci_dma_sync_single_for_cpu(i32 %158, i32 %163, i32 %169, i32 %170)
  %172 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %173 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %174, align 4
  %176 = and i32 %175, 536870912
  %177 = icmp ne i32 %176, 0
  %178 = zext i1 %177 to i64
  %179 = select i1 %177, i32 1, i32 0
  %180 = trunc i32 %179 to i16
  store i16 %180, i16* %5, align 2
  %181 = load i16, i16* %5, align 2
  %182 = icmp ne i16 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %155
  %184 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %185 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %184, i32 0, i32 4
  store i32 0, i32* %185, align 8
  br label %186

186:                                              ; preds = %183, %155
  %187 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %188 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %189, align 4
  %191 = and i32 %190, 268435456
  %192 = icmp ne i32 %191, 0
  %193 = zext i1 %192 to i64
  %194 = select i1 %192, i32 1, i32 0
  %195 = trunc i32 %194 to i16
  store i16 %195, i16* %6, align 2
  %196 = load i16, i16* %6, align 2
  %197 = icmp ne i16 %196, 0
  br i1 %197, label %198, label %258

198:                                              ; preds = %186
  %199 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %200 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %201, align 4
  %203 = and i32 %202, 4095
  store i32 %203, i32* %8, align 4
  %204 = load i32, i32* %8, align 4
  %205 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %206 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  %208 = icmp slt i32 %204, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %198
  store i32 0, i32* %7, align 4
  br label %216

210:                                              ; preds = %198
  %211 = load i32, i32* %8, align 4
  %212 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %213 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = sub nsw i32 %211, %214
  store i32 %215, i32* %7, align 4
  br label %216

216:                                              ; preds = %210, %209
  %217 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %218 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %219, align 4
  %221 = and i32 %220, 8192
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %257

223:                                              ; preds = %216
  %224 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %225 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %226, align 4
  %228 = and i32 %227, 4095
  %229 = icmp slt i32 %228, 500
  br i1 %229, label %230, label %236

230:                                              ; preds = %223
  %231 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %232 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %231, i32 0, i32 20
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %233, align 4
  br label %256

236:                                              ; preds = %223
  %237 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %238 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %237, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = load i32, i32* %239, align 4
  %241 = and i32 %240, 4095
  %242 = icmp sgt i32 %241, 1000
  br i1 %242, label %243, label %249

243:                                              ; preds = %236
  %244 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %245 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %244, i32 0, i32 20
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %246, align 8
  br label %255

249:                                              ; preds = %236
  %250 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %251 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %250, i32 0, i32 20
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %252, align 4
  br label %255

255:                                              ; preds = %249, %243
  br label %256

256:                                              ; preds = %255, %230
  br label %257

257:                                              ; preds = %256, %216
  br label %262

258:                                              ; preds = %186
  %259 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %260 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 4
  store i32 %261, i32* %7, align 4
  br label %262

262:                                              ; preds = %258, %257
  %263 = load i16, i16* %5, align 2
  %264 = sext i16 %263 to i32
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %278

266:                                              ; preds = %262
  %267 = load i16, i16* %6, align 2
  %268 = sext i16 %267 to i32
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %278

270:                                              ; preds = %266
  %271 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %272 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %271, i32 0, i32 0
  %273 = load i32*, i32** %272, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 3
  %275 = load i32, i32* %274, align 4
  %276 = and i32 %275, 67108864
  %277 = ashr i32 %276, 26
  store i32 %277, i32* %15, align 4
  br label %297

278:                                              ; preds = %266, %262
  %279 = load i16, i16* %5, align 2
  %280 = icmp ne i16 %279, 0
  br i1 %280, label %281, label %295

281:                                              ; preds = %278
  %282 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %283 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %282, i32 0, i32 0
  %284 = load i32*, i32** %283, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 3
  %286 = load i32, i32* %285, align 4
  %287 = and i32 %286, 67108864
  %288 = ashr i32 %287, 26
  store i32 %288, i32* %15, align 4
  %289 = load i32, i32* %15, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %294

291:                                              ; preds = %281
  %292 = load i32, i32* %7, align 4
  %293 = sub nsw i32 %292, 2
  store i32 %293, i32* %7, align 4
  br label %294

294:                                              ; preds = %291, %281
  br label %296

295:                                              ; preds = %278
  store i32 0, i32* %15, align 4
  br label %296

296:                                              ; preds = %295, %294
  br label %297

297:                                              ; preds = %296, %270
  store i32 0, i32* %15, align 4
  %298 = load i32, i32* %7, align 4
  %299 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %300 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %299, i32 0, i32 4
  %301 = load i32, i32* %300, align 8
  %302 = add nsw i32 %301, %298
  store i32 %302, i32* %300, align 8
  %303 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %304 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %303, i32 0, i32 4
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* @MAX_FRAG_THRESHOLD, align 4
  %307 = add nsw i32 %306, 100
  %308 = icmp sgt i32 %305, %307
  br i1 %308, label %309, label %322

309:                                              ; preds = %297
  %310 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %311 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %310, i32 0, i32 5
  %312 = load i32, i32* %311, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %319, label %314

314:                                              ; preds = %309
  %315 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %316 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %315, i32 0, i32 17
  %317 = load %struct.sk_buff*, %struct.sk_buff** %316, align 8
  %318 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %317)
  br label %319

319:                                              ; preds = %314, %309
  %320 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %321 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %320, i32 0, i32 5
  store i32 1, i32* %321, align 4
  br label %322

322:                                              ; preds = %319, %297
  %323 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %324 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %323, i32 0, i32 0
  %325 = load i32*, i32** %324, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 3
  %327 = load i32, i32* %326, align 4
  %328 = and i32 %327, 16711680
  %329 = ashr i32 %328, 16
  %330 = trunc i32 %329 to i8
  store i8 %330, i8* %10, align 1
  %331 = load i8, i8* %10, align 1
  %332 = zext i8 %331 to i32
  %333 = and i32 %332, 254
  %334 = ashr i32 %333, 1
  %335 = trunc i32 %334 to i8
  store i8 %335, i8* %10, align 1
  %336 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %337 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %336, i32 0, i32 0
  %338 = load i32*, i32** %337, align 8
  %339 = getelementptr inbounds i32, i32* %338, i64 3
  %340 = load i32, i32* %339, align 4
  %341 = and i32 %340, 255
  %342 = trunc i32 %341 to i8
  store i8 %342, i8* %9, align 1
  %343 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %344 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %343, i32 0, i32 0
  %345 = load i32*, i32** %344, align 8
  %346 = getelementptr inbounds i32, i32* %345, i64 1
  %347 = load i32, i32* %346, align 4
  %348 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %32, i32 0, i32 2
  %349 = load i32*, i32** %348, align 8
  %350 = getelementptr inbounds i32, i32* %349, i64 0
  store i32 %347, i32* %350, align 4
  %351 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %352 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %351, i32 0, i32 0
  %353 = load i32*, i32** %352, align 8
  %354 = getelementptr inbounds i32, i32* %353, i64 2
  %355 = load i32, i32* %354, align 4
  %356 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %32, i32 0, i32 2
  %357 = load i32*, i32** %356, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 1
  store i32 %355, i32* %358, align 4
  %359 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %360 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %359, i32 0, i32 0
  %361 = load i32*, i32** %360, align 8
  %362 = getelementptr inbounds i32, i32* %361, i64 4
  %363 = load i32, i32* %362, align 4
  %364 = and i32 %363, 16711680
  %365 = ashr i32 %364, 16
  %366 = trunc i32 %365 to i8
  %367 = sext i8 %366 to i32
  %368 = sdiv i32 %367, 2
  %369 = sub nsw i32 %368, 42
  %370 = trunc i32 %369 to i8
  store i8 %370, i8* %16, align 1
  %371 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %372 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %371, i32 0, i32 0
  %373 = load i32*, i32** %372, align 8
  %374 = getelementptr inbounds i32, i32* %373, i64 3
  %375 = load i32, i32* %374, align 4
  %376 = and i32 %375, 65280
  %377 = ashr i32 %376, 8
  %378 = and i32 %377, 127
  store i32 %378, i32* %30, align 4
  %379 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %380 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %379, i32 0, i32 0
  %381 = load i32*, i32** %380, align 8
  %382 = load i32, i32* %381, align 4
  %383 = and i32 %382, 15728640
  %384 = ashr i32 %383, 20
  store i32 %384, i32* %11, align 4
  %385 = load i32, i32* %11, align 4
  %386 = call i32 @rtl8180_rate2rate(i32 %385)
  %387 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %32, i32 0, i32 5
  store i32 %386, i32* %387, align 8
  %388 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %389 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %388, i32 0, i32 0
  %390 = load i32*, i32** %389, align 8
  %391 = getelementptr inbounds i32, i32* %390, i64 3
  %392 = load i32, i32* %391, align 4
  %393 = and i32 %392, 32768
  %394 = icmp eq i32 %393, 0
  %395 = zext i1 %394 to i64
  %396 = select i1 %394, i32 0, i32 1
  store i32 %396, i32* %22, align 4
  %397 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %32, i32 0, i32 5
  %398 = load i32, i32* %397, align 8
  %399 = call i32 @rtl8180_IsWirelessBMode(i32 %398)
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %406, label %401

401:                                              ; preds = %322
  %402 = load i8, i8* %16, align 1
  %403 = sext i8 %402 to i32
  %404 = add nsw i32 %403, 1
  %405 = sext i32 %404 to i64
  store i64 %405, i64* %18, align 8
  br label %427

406:                                              ; preds = %322
  %407 = load i8, i8* %10, align 1
  %408 = zext i8 %407 to i64
  store i64 %408, i64* %18, align 8
  %409 = load i64, i64* %18, align 8
  %410 = and i64 %409, 96
  %411 = trunc i64 %410 to i32
  %412 = ashr i32 %411, 5
  store i32 %412, i32* %19, align 4
  %413 = load i64, i64* %18, align 8
  %414 = and i64 %413, 31
  %415 = trunc i64 %414 to i32
  store i32 %415, i32* %20, align 4
  %416 = load i32, i32* %19, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 %417
  %419 = load i32, i32* %418, align 4
  %420 = load i32, i32* %20, align 4
  %421 = mul nsw i32 %420, 2
  %422 = add nsw i32 %419, %421
  %423 = sub nsw i32 0, %422
  %424 = sext i32 %423 to i64
  store i64 %424, i64* %18, align 8
  %425 = load i64, i64* %18, align 8
  %426 = add nsw i64 %425, 4
  store i64 %426, i64* %18, align 8
  br label %427

427:                                              ; preds = %406, %401
  %428 = load i64, i64* %18, align 8
  %429 = and i64 %428, 128
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %431, label %436

431:                                              ; preds = %427
  %432 = load i64, i64* %18, align 8
  %433 = xor i64 %432, -1
  %434 = add nsw i64 %433, 1
  %435 = trunc i64 %434 to i32
  store i32 %435, i32* %17, align 4
  br label %436

436:                                              ; preds = %431, %427
  %437 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %32, i32 0, i32 5
  %438 = load i32, i32* %437, align 8
  %439 = call i32 @rtl8180_IsWirelessBMode(i32 %438)
  store i32 %439, i32* %29, align 4
  %440 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %32, i32 0, i32 5
  %441 = load i32, i32* %440, align 8
  %442 = call i32 @rtl8180_IsWirelessBMode(i32 %441)
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %458, label %444

444:                                              ; preds = %436
  %445 = load i32, i32* %17, align 4
  %446 = icmp sgt i32 %445, 90
  br i1 %446, label %447, label %448

447:                                              ; preds = %444
  store i32 90, i32* %17, align 4
  br label %453

448:                                              ; preds = %444
  %449 = load i32, i32* %17, align 4
  %450 = icmp slt i32 %449, 25
  br i1 %450, label %451, label %452

451:                                              ; preds = %448
  store i32 25, i32* %17, align 4
  br label %452

452:                                              ; preds = %451, %448
  br label %453

453:                                              ; preds = %452, %447
  %454 = load i32, i32* %17, align 4
  %455 = sub nsw i32 90, %454
  %456 = mul nsw i32 %455, 100
  %457 = sdiv i32 %456, 65
  store i32 %457, i32* %17, align 4
  br label %472

458:                                              ; preds = %436
  %459 = load i32, i32* %17, align 4
  %460 = icmp sgt i32 %459, 95
  br i1 %460, label %461, label %462

461:                                              ; preds = %458
  store i32 95, i32* %17, align 4
  br label %467

462:                                              ; preds = %458
  %463 = load i32, i32* %17, align 4
  %464 = icmp slt i32 %463, 30
  br i1 %464, label %465, label %466

465:                                              ; preds = %462
  store i32 30, i32* %17, align 4
  br label %466

466:                                              ; preds = %465, %462
  br label %467

467:                                              ; preds = %466, %461
  %468 = load i32, i32* %17, align 4
  %469 = sub nsw i32 95, %468
  %470 = mul nsw i32 %469, 100
  %471 = sdiv i32 %470, 65
  store i32 %471, i32* %17, align 4
  br label %472

472:                                              ; preds = %467, %453
  %473 = load i32, i32* %17, align 4
  %474 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %475 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %474, i32 0, i32 6
  store i32 %473, i32* %475, align 8
  %476 = load i64, i64* %18, align 8
  %477 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %478 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %477, i32 0, i32 7
  store i64 %476, i64* %478, align 8
  %479 = load i8, i8* %16, align 1
  %480 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %481 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %480, i32 0, i32 8
  store i8 %479, i8* %481, align 8
  %482 = load i32, i32* %30, align 4
  %483 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %484 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %483, i32 0, i32 9
  store i32 %482, i32* %484, align 4
  %485 = load i8, i8* %9, align 1
  %486 = zext i8 %485 to i32
  %487 = icmp sge i32 %486, 127
  br i1 %487, label %488, label %489

488:                                              ; preds = %472
  store i8 1, i8* %9, align 1
  br label %500

489:                                              ; preds = %472
  %490 = load i8, i8* %9, align 1
  %491 = zext i8 %490 to i32
  %492 = icmp slt i32 %491, 27
  br i1 %492, label %493, label %494

493:                                              ; preds = %489
  store i8 100, i8* %9, align 1
  br label %499

494:                                              ; preds = %489
  %495 = load i8, i8* %9, align 1
  %496 = zext i8 %495 to i32
  %497 = sub nsw i32 127, %496
  %498 = trunc i32 %497 to i8
  store i8 %498, i8* %9, align 1
  br label %499

499:                                              ; preds = %494, %493
  br label %500

500:                                              ; preds = %499, %488
  %501 = load i8, i8* %9, align 1
  %502 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %503 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %502, i32 0, i32 10
  store i8 %501, i8* %503, align 8
  %504 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %505 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %504, i32 0, i32 23
  %506 = load i32, i32* %505, align 8
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %510, label %508

508:                                              ; preds = %500
  %509 = call i32 @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %510

510:                                              ; preds = %508, %500
  %511 = load i8, i8* %9, align 1
  %512 = zext i8 %511 to i32
  %513 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %32, i32 0, i32 0
  store i32 %512, i32* %513, align 8
  %514 = load i32, i32* %17, align 4
  %515 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %32, i32 0, i32 3
  store i32 %514, i32* %515, align 8
  %516 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %32, i32 0, i32 3
  %517 = load i32, i32* %516, align 8
  %518 = icmp sgt i32 %517, 100
  br i1 %518, label %519, label %521

519:                                              ; preds = %510
  %520 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %32, i32 0, i32 3
  store i32 100, i32* %520, align 8
  br label %521

521:                                              ; preds = %519, %510
  %522 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %32, i32 0, i32 3
  %523 = load i32, i32* %522, align 8
  %524 = mul nsw i32 %523, 70
  %525 = sdiv i32 %524, 100
  %526 = add nsw i32 %525, 30
  %527 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %32, i32 0, i32 3
  store i32 %526, i32* %527, align 8
  %528 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %529 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %528, i32 0, i32 10
  %530 = load i8, i8* %529, align 8
  %531 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %532 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %531, i32 0, i32 22
  %533 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %532, i32 0, i32 0
  %534 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %533, i32 0, i32 0
  store i8 %530, i8* %534, align 8
  %535 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %32, i32 0, i32 4
  store i8 %530, i8* %535, align 4
  %536 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %537 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %536, i32 0, i32 22
  %538 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %537, i32 0, i32 0
  %539 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %538, i32 0, i32 0
  %540 = load i8, i8* %539, align 8
  %541 = zext i8 %540 to i32
  %542 = sub nsw i32 100, %541
  %543 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %544 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %543, i32 0, i32 22
  %545 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %544, i32 0, i32 0
  %546 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %545, i32 0, i32 1
  store i32 %542, i32* %546, align 4
  %547 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %32, i32 0, i32 1
  store i32 %542, i32* %547, align 4
  %548 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %549 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %548, i32 0, i32 0
  %550 = load i32*, i32** %549, align 8
  %551 = load i32, i32* %550, align 4
  %552 = and i32 %551, 4095
  %553 = icmp eq i32 %552, 4080
  %554 = zext i1 %553 to i32
  %555 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %556 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %555, i32 0, i32 0
  %557 = load i32*, i32** %556, align 8
  %558 = load i32, i32* %557, align 4
  %559 = and i32 %558, 67108864
  %560 = icmp ne i32 %559, 0
  %561 = zext i1 %560 to i32
  %562 = or i32 %554, %561
  %563 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %564 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %563, i32 0, i32 0
  %565 = load i32*, i32** %564, align 8
  %566 = load i32, i32* %565, align 4
  %567 = and i32 %566, 134217728
  %568 = icmp ne i32 %567, 0
  %569 = zext i1 %568 to i32
  %570 = or i32 %562, %569
  %571 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %572 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %571, i32 0, i32 0
  %573 = load i32*, i32** %572, align 8
  %574 = load i32, i32* %573, align 4
  %575 = xor i32 %574, -1
  %576 = and i32 %575, 268435456
  %577 = icmp ne i32 %576, 0
  %578 = zext i1 %577 to i32
  %579 = or i32 %570, %578
  %580 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %581 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %580, i32 0, i32 0
  %582 = load i32*, i32** %581, align 8
  %583 = load i32, i32* %582, align 4
  %584 = xor i32 %583, -1
  %585 = and i32 %584, 536870912
  %586 = icmp ne i32 %585, 0
  %587 = zext i1 %586 to i32
  %588 = or i32 %579, %587
  store i32 %588, i32* %26, align 4
  %589 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %590 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %589, i32 0, i32 0
  %591 = load i32*, i32** %590, align 8
  %592 = load i32, i32* %591, align 4
  %593 = and i32 %592, 8192
  %594 = ashr i32 %593, 13
  store i32 %594, i32* %27, align 4
  %595 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %596 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %595, i32 0, i32 0
  %597 = load i32*, i32** %596, align 8
  %598 = load i32, i32* %597, align 4
  %599 = and i32 %598, 4096
  %600 = ashr i32 %599, 12
  store i32 %600, i32* %28, align 4
  %601 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %602 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %601, i32 0, i32 15
  %603 = load %struct.TYPE_13__*, %struct.TYPE_13__** %602, align 8
  %604 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %603, i32 0, i32 1
  %605 = load i8*, i8** %604, align 8
  %606 = bitcast i8* %605 to %struct.ieee80211_hdr_4addr*
  store %struct.ieee80211_hdr_4addr* %606, %struct.ieee80211_hdr_4addr** %23, align 8
  %607 = load %struct.ieee80211_hdr_4addr*, %struct.ieee80211_hdr_4addr** %23, align 8
  %608 = getelementptr inbounds %struct.ieee80211_hdr_4addr, %struct.ieee80211_hdr_4addr* %607, i32 0, i32 3
  %609 = load i32, i32* %608, align 4
  %610 = call i64 @le16_to_cpu(i32 %609)
  store i64 %610, i64* %24, align 8
  %611 = load i64, i64* %24, align 8
  %612 = call i64 @WLAN_FC_GET_TYPE(i64 %611)
  store i64 %612, i64* %25, align 8
  %613 = load i64, i64* @IEEE80211_FTYPE_CTL, align 8
  %614 = load i64, i64* %25, align 8
  %615 = icmp ne i64 %613, %614
  br i1 %615, label %616, label %714

616:                                              ; preds = %521
  %617 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %618 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %617, i32 0, i32 18
  %619 = load %struct.TYPE_14__*, %struct.TYPE_14__** %618, align 8
  %620 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %619, i32 0, i32 1
  %621 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %620, i32 0, i32 0
  %622 = load i32, i32* %621, align 8
  %623 = load i64, i64* %24, align 8
  %624 = load i64, i64* @IEEE80211_FCTL_TODS, align 8
  %625 = and i64 %623, %624
  %626 = icmp ne i64 %625, 0
  br i1 %626, label %627, label %631

627:                                              ; preds = %616
  %628 = load %struct.ieee80211_hdr_4addr*, %struct.ieee80211_hdr_4addr** %23, align 8
  %629 = getelementptr inbounds %struct.ieee80211_hdr_4addr, %struct.ieee80211_hdr_4addr* %628, i32 0, i32 2
  %630 = load i32, i32* %629, align 4
  br label %646

631:                                              ; preds = %616
  %632 = load i64, i64* %24, align 8
  %633 = load i64, i64* @IEEE80211_FCTL_FROMDS, align 8
  %634 = and i64 %632, %633
  %635 = icmp ne i64 %634, 0
  br i1 %635, label %636, label %640

636:                                              ; preds = %631
  %637 = load %struct.ieee80211_hdr_4addr*, %struct.ieee80211_hdr_4addr** %23, align 8
  %638 = getelementptr inbounds %struct.ieee80211_hdr_4addr, %struct.ieee80211_hdr_4addr* %637, i32 0, i32 1
  %639 = load i32, i32* %638, align 4
  br label %644

640:                                              ; preds = %631
  %641 = load %struct.ieee80211_hdr_4addr*, %struct.ieee80211_hdr_4addr** %23, align 8
  %642 = getelementptr inbounds %struct.ieee80211_hdr_4addr, %struct.ieee80211_hdr_4addr* %641, i32 0, i32 0
  %643 = load i32, i32* %642, align 4
  br label %644

644:                                              ; preds = %640, %636
  %645 = phi i32 [ %639, %636 ], [ %643, %640 ]
  br label %646

646:                                              ; preds = %644, %627
  %647 = phi i32 [ %630, %627 ], [ %645, %644 ]
  %648 = call i64 @eqMacAddr(i32 %622, i32 %647)
  %649 = icmp ne i64 %648, 0
  br i1 %649, label %650, label %714

650:                                              ; preds = %646
  %651 = load i32, i32* %26, align 4
  %652 = icmp ne i32 %651, 0
  br i1 %652, label %714, label %653

653:                                              ; preds = %650
  %654 = load i32, i32* %27, align 4
  %655 = icmp ne i32 %654, 0
  br i1 %655, label %714, label %656

656:                                              ; preds = %653
  %657 = load i32, i32* %28, align 4
  %658 = icmp ne i32 %657, 0
  br i1 %658, label %714, label %659

659:                                              ; preds = %656
  %660 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %661 = load i32, i32* %29, align 4
  %662 = call i32 @PerformUndecoratedSignalSmoothing8185(%struct.r8180_priv* %660, i32 %661)
  %663 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %664 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %663, i32 0, i32 11
  %665 = load i64, i64* %664, align 8
  %666 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %667 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %666, i32 0, i32 6
  %668 = load i32, i32* %667, align 8
  %669 = call i64 @NetgearSignalStrengthTranslate(i64 %665, i32 %668)
  store i64 %669, i64* %31, align 8
  %670 = load i64, i64* %31, align 8
  %671 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %672 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %671, i32 0, i32 11
  store i64 %670, i64* %672, align 8
  %673 = load i64, i64* %31, align 8
  %674 = trunc i64 %673 to i32
  %675 = call i32 @TranslateToDbm8185(i32 %674)
  %676 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %677 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %676, i32 0, i32 21
  store i32 %675, i32* %677, align 4
  %678 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %679 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %678, i32 0, i32 12
  %680 = load i64, i64* %679, align 8
  %681 = mul nsw i64 %680, 5
  %682 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %683 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %682, i32 0, i32 10
  %684 = load i8, i8* %683, align 8
  %685 = zext i8 %684 to i64
  %686 = add nsw i64 %681, %685
  %687 = add nsw i64 %686, 5
  %688 = sdiv i64 %687, 6
  %689 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %690 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %689, i32 0, i32 12
  store i64 %688, i64* %690, align 8
  %691 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %692 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %691, i32 0, i32 13
  %693 = load i64, i64* %692, align 8
  %694 = mul nsw i64 %693, 5
  %695 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %696 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %695, i32 0, i32 7
  %697 = load i64, i64* %696, align 8
  %698 = add nsw i64 %694, %697
  %699 = sub nsw i64 %698, 1
  %700 = sdiv i64 %699, 6
  %701 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %702 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %701, i32 0, i32 13
  store i64 %700, i64* %702, align 8
  %703 = load i32, i32* %22, align 4
  %704 = icmp ne i32 %703, 0
  %705 = zext i1 %704 to i64
  %706 = select i1 %704, i32 1, i32 0
  %707 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %708 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %707, i32 0, i32 14
  store i32 %706, i32* %708, align 8
  %709 = load %struct.net_device*, %struct.net_device** %2, align 8
  %710 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %711 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %710, i32 0, i32 6
  %712 = load i32, i32* %711, align 8
  %713 = call i32 @SwAntennaDiversityRxOk8185(%struct.net_device* %709, i32 %712)
  br label %714

714:                                              ; preds = %659, %656, %653, %650, %646, %521
  %715 = load i16, i16* %5, align 2
  %716 = icmp ne i16 %715, 0
  br i1 %716, label %717, label %767

717:                                              ; preds = %714
  %718 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %719 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %718, i32 0, i32 5
  %720 = load i32, i32* %719, align 4
  %721 = icmp ne i32 %720, 0
  br i1 %721, label %732, label %722

722:                                              ; preds = %717
  %723 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %724 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %723, i32 0, i32 17
  %725 = load %struct.sk_buff*, %struct.sk_buff** %724, align 8
  %726 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %725)
  %727 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %728 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %727, i32 0, i32 20
  %729 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %728, i32 0, i32 0
  %730 = load i32, i32* %729, align 8
  %731 = add nsw i32 %730, 1
  store i32 %731, i32* %729, align 8
  br label %732

732:                                              ; preds = %722, %717
  %733 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %734 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %733, i32 0, i32 19
  %735 = load i64, i64* %734, align 8
  %736 = icmp ne i64 %735, 0
  br i1 %736, label %737, label %746

737:                                              ; preds = %732
  %738 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %739 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %738, i32 0, i32 18
  %740 = load %struct.TYPE_14__*, %struct.TYPE_14__** %739, align 8
  %741 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %740, i32 0, i32 0
  %742 = load i64, i64* %741, align 8
  %743 = load i64, i64* @IW_MODE_MONITOR, align 8
  %744 = icmp eq i64 %742, %743
  br i1 %744, label %745, label %746

745:                                              ; preds = %737
  br label %759

746:                                              ; preds = %737, %732
  %747 = load i32, i32* %7, align 4
  %748 = add nsw i32 %747, 2
  %749 = call i8* @dev_alloc_skb(i32 %748)
  %750 = bitcast i8* %749 to %struct.sk_buff*
  %751 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %752 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %751, i32 0, i32 17
  store %struct.sk_buff* %750, %struct.sk_buff** %752, align 8
  %753 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %754 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %753, i32 0, i32 17
  %755 = load %struct.sk_buff*, %struct.sk_buff** %754, align 8
  %756 = icmp ne %struct.sk_buff* %755, null
  br i1 %756, label %758, label %757

757:                                              ; preds = %746
  br label %913

758:                                              ; preds = %746
  br label %759

759:                                              ; preds = %758, %745
  %760 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %761 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %760, i32 0, i32 5
  store i32 0, i32* %761, align 4
  %762 = load %struct.net_device*, %struct.net_device** %2, align 8
  %763 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %764 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %763, i32 0, i32 17
  %765 = load %struct.sk_buff*, %struct.sk_buff** %764, align 8
  %766 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %765, i32 0, i32 2
  store %struct.net_device* %762, %struct.net_device** %766, align 8
  br label %816

767:                                              ; preds = %714
  %768 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %769 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %768, i32 0, i32 5
  %770 = load i32, i32* %769, align 4
  %771 = icmp ne i32 %770, 0
  br i1 %771, label %815, label %772

772:                                              ; preds = %767
  %773 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %774 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %773, i32 0, i32 17
  %775 = load %struct.sk_buff*, %struct.sk_buff** %774, align 8
  %776 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %775, i32 0, i32 0
  %777 = load i32, i32* %776, align 8
  %778 = load i32, i32* %7, align 4
  %779 = add nsw i32 %777, %778
  %780 = add nsw i32 %779, 2
  %781 = call i8* @dev_alloc_skb(i32 %780)
  %782 = bitcast i8* %781 to %struct.sk_buff*
  store %struct.sk_buff* %782, %struct.sk_buff** %4, align 8
  %783 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %784 = icmp ne %struct.sk_buff* %783, null
  br i1 %784, label %786, label %785

785:                                              ; preds = %772
  br label %913

786:                                              ; preds = %772
  %787 = load %struct.net_device*, %struct.net_device** %2, align 8
  %788 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %789 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %788, i32 0, i32 2
  store %struct.net_device* %787, %struct.net_device** %789, align 8
  %790 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %791 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %792 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %791, i32 0, i32 17
  %793 = load %struct.sk_buff*, %struct.sk_buff** %792, align 8
  %794 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %793, i32 0, i32 0
  %795 = load i32, i32* %794, align 8
  %796 = call i32 @skb_put(%struct.sk_buff* %790, i32 %795)
  %797 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %798 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %797, i32 0, i32 17
  %799 = load %struct.sk_buff*, %struct.sk_buff** %798, align 8
  %800 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %799, i32 0, i32 1
  %801 = load i8*, i8** %800, align 8
  %802 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %803 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %802, i32 0, i32 17
  %804 = load %struct.sk_buff*, %struct.sk_buff** %803, align 8
  %805 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %804, i32 0, i32 0
  %806 = load i32, i32* %805, align 8
  %807 = call i32 @memcpy(i32 %796, i8* %801, i32 %806)
  %808 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %809 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %808, i32 0, i32 17
  %810 = load %struct.sk_buff*, %struct.sk_buff** %809, align 8
  %811 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %810)
  %812 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %813 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %814 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %813, i32 0, i32 17
  store %struct.sk_buff* %812, %struct.sk_buff** %814, align 8
  br label %815

815:                                              ; preds = %786, %767
  br label %816

816:                                              ; preds = %815, %759
  %817 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %818 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %817, i32 0, i32 5
  %819 = load i32, i32* %818, align 4
  %820 = icmp ne i32 %819, 0
  br i1 %820, label %852, label %821

821:                                              ; preds = %816
  %822 = load i32, i32* %15, align 4
  %823 = icmp ne i32 %822, 0
  br i1 %823, label %824, label %838

824:                                              ; preds = %821
  %825 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %826 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %825, i32 0, i32 17
  %827 = load %struct.sk_buff*, %struct.sk_buff** %826, align 8
  %828 = load i32, i32* %7, align 4
  %829 = call i32 @skb_put(%struct.sk_buff* %827, i32 %828)
  %830 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %831 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %830, i32 0, i32 15
  %832 = load %struct.TYPE_13__*, %struct.TYPE_13__** %831, align 8
  %833 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %832, i32 0, i32 1
  %834 = load i8*, i8** %833, align 8
  %835 = getelementptr inbounds i8, i8* %834, i64 2
  %836 = load i32, i32* %7, align 4
  %837 = call i32 @memcpy(i32 %829, i8* %835, i32 %836)
  br label %851

838:                                              ; preds = %821
  %839 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %840 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %839, i32 0, i32 17
  %841 = load %struct.sk_buff*, %struct.sk_buff** %840, align 8
  %842 = load i32, i32* %7, align 4
  %843 = call i32 @skb_put(%struct.sk_buff* %841, i32 %842)
  %844 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %845 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %844, i32 0, i32 15
  %846 = load %struct.TYPE_13__*, %struct.TYPE_13__** %845, align 8
  %847 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %846, i32 0, i32 1
  %848 = load i8*, i8** %847, align 8
  %849 = load i32, i32* %7, align 4
  %850 = call i32 @memcpy(i32 %843, i8* %848, i32 %849)
  br label %851

851:                                              ; preds = %838, %824
  br label %852

852:                                              ; preds = %851, %816
  %853 = load i16, i16* %6, align 2
  %854 = sext i16 %853 to i32
  %855 = icmp ne i32 %854, 0
  br i1 %855, label %856, label %896

856:                                              ; preds = %852
  %857 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %858 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %857, i32 0, i32 5
  %859 = load i32, i32* %858, align 4
  %860 = icmp ne i32 %859, 0
  br i1 %860, label %896, label %861

861:                                              ; preds = %856
  %862 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %863 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %862, i32 0, i32 17
  %864 = load %struct.sk_buff*, %struct.sk_buff** %863, align 8
  %865 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %864, i32 0, i32 0
  %866 = load i32, i32* %865, align 8
  %867 = icmp sgt i32 %866, 4
  br i1 %867, label %868, label %879

868:                                              ; preds = %861
  %869 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %870 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %869, i32 0, i32 17
  %871 = load %struct.sk_buff*, %struct.sk_buff** %870, align 8
  %872 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %873 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %872, i32 0, i32 17
  %874 = load %struct.sk_buff*, %struct.sk_buff** %873, align 8
  %875 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %874, i32 0, i32 0
  %876 = load i32, i32* %875, align 8
  %877 = sub nsw i32 %876, 4
  %878 = call i32 @skb_trim(%struct.sk_buff* %871, i32 %877)
  br label %879

879:                                              ; preds = %868, %861
  %880 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %881 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %880, i32 0, i32 18
  %882 = load %struct.TYPE_14__*, %struct.TYPE_14__** %881, align 8
  %883 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %884 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %883, i32 0, i32 17
  %885 = load %struct.sk_buff*, %struct.sk_buff** %884, align 8
  %886 = call i32 @ieee80211_rx(%struct.TYPE_14__* %882, %struct.sk_buff* %885, %struct.ieee80211_rx_stats* %32)
  %887 = icmp ne i32 %886, 0
  br i1 %887, label %893, label %888

888:                                              ; preds = %879
  %889 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %890 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %889, i32 0, i32 17
  %891 = load %struct.sk_buff*, %struct.sk_buff** %890, align 8
  %892 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %891)
  br label %893

893:                                              ; preds = %888, %879
  %894 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %895 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %894, i32 0, i32 5
  store i32 1, i32* %895, align 4
  br label %896

896:                                              ; preds = %893, %856, %852
  %897 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %898 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %897, i32 0, i32 16
  %899 = load i32, i32* %898, align 8
  %900 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %901 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %900, i32 0, i32 15
  %902 = load %struct.TYPE_13__*, %struct.TYPE_13__** %901, align 8
  %903 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %902, i32 0, i32 0
  %904 = load i32, i32* %903, align 8
  %905 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %906 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %905, i32 0, i32 3
  %907 = load i32, i32* %906, align 4
  %908 = sext i32 %907 to i64
  %909 = mul i64 %908, 4
  %910 = trunc i64 %909 to i32
  %911 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %912 = call i32 @pci_dma_sync_single_for_device(i32 %899, i32 %904, i32 %910, i32 %911)
  br label %913

913:                                              ; preds = %896, %785, %757, %149
  %914 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %915 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %914, i32 0, i32 15
  %916 = load %struct.TYPE_13__*, %struct.TYPE_13__** %915, align 8
  %917 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %916, i32 0, i32 0
  %918 = load i32, i32* %917, align 8
  %919 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %920 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %919, i32 0, i32 0
  %921 = load i32*, i32** %920, align 8
  %922 = getelementptr inbounds i32, i32* %921, i64 2
  store i32 %918, i32* %922, align 4
  %923 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %924 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %923, i32 0, i32 0
  %925 = load i32*, i32** %924, align 8
  %926 = load i32, i32* %925, align 4
  %927 = and i32 %926, -4096
  %928 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %929 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %928, i32 0, i32 0
  %930 = load i32*, i32** %929, align 8
  store i32 %927, i32* %930, align 4
  %931 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %932 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %931, i32 0, i32 0
  %933 = load i32*, i32** %932, align 8
  %934 = load i32, i32* %933, align 4
  %935 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %936 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %935, i32 0, i32 3
  %937 = load i32, i32* %936, align 4
  %938 = or i32 %934, %937
  %939 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %940 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %939, i32 0, i32 0
  %941 = load i32*, i32** %940, align 8
  store i32 %938, i32* %941, align 4
  %942 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %943 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %942, i32 0, i32 0
  %944 = load i32*, i32** %943, align 8
  %945 = load i32, i32* %944, align 4
  %946 = or i32 %945, -2147483648
  %947 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %948 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %947, i32 0, i32 0
  %949 = load i32*, i32** %948, align 8
  store i32 %946, i32* %949, align 4
  %950 = load i32, i32* %14, align 4
  %951 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %952 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %951, i32 0, i32 0
  %953 = load i32*, i32** %952, align 8
  %954 = sext i32 %950 to i64
  %955 = getelementptr inbounds i32, i32* %953, i64 %954
  store i32* %955, i32** %952, align 8
  %956 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %957 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %956, i32 0, i32 0
  %958 = load i32*, i32** %957, align 8
  %959 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %960 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %959, i32 0, i32 1
  %961 = load i32*, i32** %960, align 8
  %962 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %963 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %962, i32 0, i32 2
  %964 = load i32, i32* %963, align 8
  %965 = load i32, i32* %14, align 4
  %966 = mul nsw i32 %964, %965
  %967 = sext i32 %966 to i64
  %968 = getelementptr inbounds i32, i32* %961, i64 %967
  %969 = icmp uge i32* %958, %968
  br i1 %969, label %970, label %976

970:                                              ; preds = %913
  %971 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %972 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %971, i32 0, i32 1
  %973 = load i32*, i32** %972, align 8
  %974 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %975 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %974, i32 0, i32 0
  store i32* %973, i32** %975, align 8
  br label %976

976:                                              ; preds = %970, %913
  %977 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %978 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %977, i32 0, i32 15
  %979 = load %struct.TYPE_13__*, %struct.TYPE_13__** %978, align 8
  %980 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %979, i32 0, i32 2
  %981 = load %struct.TYPE_13__*, %struct.TYPE_13__** %980, align 8
  %982 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %983 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %982, i32 0, i32 15
  store %struct.TYPE_13__* %981, %struct.TYPE_13__** %983, align 8
  br label %112

984:                                              ; preds = %112
  ret void
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @DMESGW(i8*) #1

declare dso_local i32 @pci_dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @rtl8180_rate2rate(i32) #1

declare dso_local i32 @rtl8180_IsWirelessBMode(i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @WLAN_FC_GET_TYPE(i64) #1

declare dso_local i64 @eqMacAddr(i32, i32) #1

declare dso_local i32 @PerformUndecoratedSignalSmoothing8185(%struct.r8180_priv*, i32) #1

declare dso_local i64 @NetgearSignalStrengthTranslate(i64, i32) #1

declare dso_local i32 @TranslateToDbm8185(i32) #1

declare dso_local i32 @SwAntennaDiversityRxOk8185(%struct.net_device*, i32) #1

declare dso_local i8* @dev_alloc_skb(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @ieee80211_rx(%struct.TYPE_14__*, %struct.sk_buff*, %struct.ieee80211_rx_stats*) #1

declare dso_local i32 @pci_dma_sync_single_for_device(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
