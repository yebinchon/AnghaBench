; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i32*, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i64, i32, %struct.buffer*, %struct.buffer*, %struct.buffer*, %struct.buffer*, %struct.buffer*, %struct.buffer*, i32, %struct.TYPE_6__*, %struct.TYPE_4__, i32, %struct.buffer* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.buffer = type { i32*, %struct.buffer* }
%struct.ieee80211_hdr_3addr = type { i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@sCrcLng = common dso_local global i32 0, align 4
@sAckCtsLng = common dso_local global i32 0, align 4
@aSifsTime = common dso_local global i32 0, align 4
@IEEE80211_FCTL_MOREFRAGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"TX buffer error, cannot TX frames. pri %d.\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"No more TX desc, returning %x of %x\00", align 1
@WLAN_CAPABILITY_SHORT_PREAMBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i16 @rtl8180_tx(%struct.net_device* %0, i32* %1, i32 %2, i32 %3, i16 signext %4, i16 signext %5, i32 %6) #0 {
  %8 = alloca i16, align 2
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i32, align 4
  %16 = alloca %struct.r8180_priv*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i16, align 2
  %27 = alloca %struct.buffer*, align 8
  %28 = alloca %struct.ieee80211_hdr_3addr*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i16 %4, i16* %13, align 2
  store i16 %5, i16* %14, align 2
  store i32 %6, i32* %15, align 4
  %44 = load %struct.net_device*, %struct.net_device** %9, align 8
  %45 = call %struct.r8180_priv* @ieee80211_priv(%struct.net_device* %44)
  store %struct.r8180_priv* %45, %struct.r8180_priv** %16, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = bitcast i32* %46 to %struct.ieee80211_hdr_3addr*
  store %struct.ieee80211_hdr_3addr* %47, %struct.ieee80211_hdr_3addr** %28, align 8
  %48 = load i32, i32* @ETH_ALEN, align 4
  %49 = zext i32 %48 to i64
  %50 = call i8* @llvm.stacksave()
  store i8* %50, i8** %29, align 8
  %51 = alloca i32, i64 %49, align 16
  store i64 %49, i64* %30, align 8
  store i32 0, i32* %31, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %33, align 4
  store i32 0, i32* %34, align 4
  store i32 0, i32* %35, align 4
  store i32 0, i32* %36, align 4
  store i32 0, i32* %37, align 4
  store i32 0, i32* %38, align 4
  %52 = load i32, i32* %12, align 4
  switch i32 %52, label %144 [
    i32 130, label %53
    i32 132, label %66
    i32 133, label %79
    i32 129, label %92
    i32 128, label %105
    i32 131, label %118
    i32 134, label %131
  ]

53:                                               ; preds = %7
  %54 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %55 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %17, align 8
  %57 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %58 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %19, align 8
  %60 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %61 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %60, i32 0, i32 25
  %62 = load %struct.buffer*, %struct.buffer** %61, align 8
  store %struct.buffer* %62, %struct.buffer** %27, align 8
  %63 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %64 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %24, align 4
  br label %145

66:                                               ; preds = %7
  %67 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %68 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %17, align 8
  %70 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %71 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  store i32* %72, i32** %19, align 8
  %73 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %74 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %73, i32 0, i32 24
  %75 = load %struct.buffer*, %struct.buffer** %74, align 8
  store %struct.buffer* %75, %struct.buffer** %27, align 8
  %76 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %77 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %24, align 4
  br label %145

79:                                               ; preds = %7
  %80 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %81 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %80, i32 0, i32 5
  %82 = load i32*, i32** %81, align 8
  store i32* %82, i32** %17, align 8
  %83 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %84 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %83, i32 0, i32 6
  %85 = load i32*, i32** %84, align 8
  store i32* %85, i32** %19, align 8
  %86 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %87 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %86, i32 0, i32 23
  %88 = load %struct.buffer*, %struct.buffer** %87, align 8
  store %struct.buffer* %88, %struct.buffer** %27, align 8
  %89 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %90 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %24, align 4
  br label %145

92:                                               ; preds = %7
  %93 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %94 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %93, i32 0, i32 7
  %95 = load i32*, i32** %94, align 8
  store i32* %95, i32** %17, align 8
  %96 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %97 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %96, i32 0, i32 8
  %98 = load i32*, i32** %97, align 8
  store i32* %98, i32** %19, align 8
  %99 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %100 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %99, i32 0, i32 22
  %101 = load %struct.buffer*, %struct.buffer** %100, align 8
  store %struct.buffer* %101, %struct.buffer** %27, align 8
  %102 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %103 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* %24, align 4
  br label %145

105:                                              ; preds = %7
  %106 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %107 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %106, i32 0, i32 9
  %108 = load i32*, i32** %107, align 8
  store i32* %108, i32** %17, align 8
  %109 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %110 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %109, i32 0, i32 10
  %111 = load i32*, i32** %110, align 8
  store i32* %111, i32** %19, align 8
  %112 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %113 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %112, i32 0, i32 21
  %114 = load %struct.buffer*, %struct.buffer** %113, align 8
  store %struct.buffer* %114, %struct.buffer** %27, align 8
  %115 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %116 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  store i32 %117, i32* %24, align 4
  br label %145

118:                                              ; preds = %7
  %119 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %120 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %119, i32 0, i32 11
  %121 = load i32*, i32** %120, align 8
  store i32* %121, i32** %17, align 8
  %122 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %123 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %122, i32 0, i32 12
  %124 = load i32*, i32** %123, align 8
  store i32* %124, i32** %19, align 8
  %125 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %126 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %125, i32 0, i32 20
  %127 = load %struct.buffer*, %struct.buffer** %126, align 8
  store %struct.buffer* %127, %struct.buffer** %27, align 8
  %128 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %129 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  store i32 %130, i32* %24, align 4
  br label %145

131:                                              ; preds = %7
  %132 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %133 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %132, i32 0, i32 13
  %134 = load i32*, i32** %133, align 8
  store i32* %134, i32** %17, align 8
  %135 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %136 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %135, i32 0, i32 14
  %137 = load i32*, i32** %136, align 8
  store i32* %137, i32** %19, align 8
  %138 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %139 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %138, i32 0, i32 30
  %140 = load %struct.buffer*, %struct.buffer** %139, align 8
  store %struct.buffer* %140, %struct.buffer** %27, align 8
  %141 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %142 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %141, i32 0, i32 15
  %143 = load i32, i32* %142, align 8
  store i32 %143, i32* %24, align 4
  br label %145

144:                                              ; preds = %7
  store i16 -1, i16* %8, align 2
  store i32 1, i32* %39, align 4
  br label %595

145:                                              ; preds = %131, %118, %105, %92, %79, %66, %53
  %146 = bitcast i32* %51 to i32**
  %147 = load %struct.ieee80211_hdr_3addr*, %struct.ieee80211_hdr_3addr** %28, align 8
  %148 = getelementptr inbounds %struct.ieee80211_hdr_3addr, %struct.ieee80211_hdr_3addr* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @ETH_ALEN, align 4
  %151 = call i32 @memcpy(i32** %146, i32 %149, i32 %150)
  %152 = call i64 @is_multicast_ether_addr(i32* %51)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %145
  %155 = call i64 @is_broadcast_ether_addr(i32* %51)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %154, %145
  store i32 0, i32* %34, align 4
  store i32 0, i32* %35, align 4
  store i32 0, i32* %33, align 4
  store i32 0, i32* %32, align 4
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* @sCrcLng, align 4
  %160 = add nsw i32 %158, %159
  %161 = load i32, i32* %15, align 4
  %162 = call i32 @rtl8180_rate2rate(i32 %161)
  %163 = load i32, i32* %31, align 4
  %164 = call i32 @ComputeTxTime(i32 %160, i32 %162, i32 0, i32 %163)
  store i32 %164, i32* %36, align 4
  %165 = load i32, i32* %36, align 4
  store i32 %165, i32* %37, align 4
  br label %252

166:                                              ; preds = %154
  %167 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %168 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %167, i32 0, i32 29
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %168, align 4
  %171 = call i32 @ComputeTxTime(i32 14, i32 10, i32 0, i32 0)
  store i32 %171, i32* %40, align 4
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* @sCrcLng, align 4
  %174 = add nsw i32 %172, %173
  %175 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %176 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %175, i32 0, i32 16
  %177 = load i32, i32* %176, align 4
  %178 = icmp sgt i32 %174, %177
  br i1 %178, label %179, label %212

179:                                              ; preds = %166
  %180 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %181 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %180, i32 0, i32 16
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %212

184:                                              ; preds = %179
  store i32 1, i32* %33, align 4
  store i32 0, i32* %32, align 4
  %185 = load i32, i32* @sAckCtsLng, align 4
  %186 = sdiv i32 %185, 8
  %187 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %188 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %187, i32 0, i32 27
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @ComputeTxTime(i32 %186, i32 %191, i32 0, i32 0)
  store i32 %192, i32* %41, align 4
  %193 = call i32 @ComputeTxTime(i32 14, i32 10, i32 0, i32 0)
  store i32 %193, i32* %42, align 4
  %194 = load i32, i32* %11, align 4
  %195 = load i32, i32* @sCrcLng, align 4
  %196 = add nsw i32 %194, %195
  %197 = load i32, i32* %15, align 4
  %198 = call i32 @rtl8180_rate2rate(i32 %197)
  %199 = load i32, i32* %31, align 4
  %200 = call i32 @ComputeTxTime(i32 %196, i32 %198, i32 0, i32 %199)
  store i32 %200, i32* %36, align 4
  %201 = load i32, i32* %42, align 4
  %202 = load i32, i32* %36, align 4
  %203 = add nsw i32 %201, %202
  %204 = load i32, i32* %40, align 4
  %205 = add nsw i32 %203, %204
  %206 = load i32, i32* @aSifsTime, align 4
  %207 = mul nsw i32 3, %206
  %208 = add nsw i32 %205, %207
  store i32 %208, i32* %35, align 4
  %209 = load i32, i32* %41, align 4
  %210 = load i32, i32* %35, align 4
  %211 = add nsw i32 %209, %210
  store i32 %211, i32* %37, align 4
  br label %225

212:                                              ; preds = %179, %166
  store i32 0, i32* %32, align 4
  store i32 0, i32* %33, align 4
  store i32 0, i32* %35, align 4
  %213 = load i32, i32* %11, align 4
  %214 = load i32, i32* @sCrcLng, align 4
  %215 = add nsw i32 %213, %214
  %216 = load i32, i32* %15, align 4
  %217 = call i32 @rtl8180_rate2rate(i32 %216)
  %218 = load i32, i32* %31, align 4
  %219 = call i32 @ComputeTxTime(i32 %215, i32 %217, i32 0, i32 %218)
  store i32 %219, i32* %36, align 4
  %220 = load i32, i32* %36, align 4
  %221 = load i32, i32* @aSifsTime, align 4
  %222 = add nsw i32 %220, %221
  %223 = load i32, i32* %40, align 4
  %224 = add nsw i32 %222, %223
  store i32 %224, i32* %37, align 4
  br label %225

225:                                              ; preds = %212, %184
  %226 = load %struct.ieee80211_hdr_3addr*, %struct.ieee80211_hdr_3addr** %28, align 8
  %227 = getelementptr inbounds %struct.ieee80211_hdr_3addr, %struct.ieee80211_hdr_3addr* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @IEEE80211_FCTL_MOREFRAGS, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %236, label %232

232:                                              ; preds = %225
  %233 = load i32, i32* @aSifsTime, align 4
  %234 = load i32, i32* %40, align 4
  %235 = add nsw i32 %233, %234
  store i32 %235, i32* %34, align 4
  br label %251

236:                                              ; preds = %225
  %237 = load i32, i32* %11, align 4
  %238 = load i32, i32* @sCrcLng, align 4
  %239 = add nsw i32 %237, %238
  %240 = load i32, i32* %15, align 4
  %241 = call i32 @rtl8180_rate2rate(i32 %240)
  %242 = load i32, i32* %31, align 4
  %243 = call i32 @ComputeTxTime(i32 %239, i32 %241, i32 0, i32 %242)
  store i32 %243, i32* %43, align 4
  %244 = load i32, i32* %43, align 4
  %245 = load i32, i32* @aSifsTime, align 4
  %246 = mul nsw i32 3, %245
  %247 = add nsw i32 %244, %246
  %248 = load i32, i32* %40, align 4
  %249 = mul nsw i32 2, %248
  %250 = add nsw i32 %247, %249
  store i32 %250, i32* %34, align 4
  br label %251

251:                                              ; preds = %236, %232
  br label %252

252:                                              ; preds = %251, %157
  %253 = load i32, i32* %34, align 4
  %254 = load %struct.ieee80211_hdr_3addr*, %struct.ieee80211_hdr_3addr** %28, align 8
  %255 = getelementptr inbounds %struct.ieee80211_hdr_3addr, %struct.ieee80211_hdr_3addr* %254, i32 0, i32 1
  store i32 %253, i32* %255, align 4
  %256 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %257 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %256, i32 0, i32 17
  %258 = load i32, i32* %257, align 8
  store i32 %258, i32* %23, align 4
  %259 = load i32, i32* %11, align 4
  store i32 %259, i32* %22, align 4
  %260 = load i32*, i32** %17, align 8
  store i32* %260, i32** %18, align 8
  br label %261

261:                                              ; preds = %586, %252
  %262 = load i32, i32* %22, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %587

264:                                              ; preds = %261
  %265 = call i32 (...) @mb()
  %266 = load %struct.buffer*, %struct.buffer** %27, align 8
  %267 = icmp ne %struct.buffer* %266, null
  br i1 %267, label %271, label %268

268:                                              ; preds = %264
  %269 = load i32, i32* %12, align 4
  %270 = call i32 @DMESGE(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %269)
  store i16 -1, i16* %8, align 2
  store i32 1, i32* %39, align 4
  br label %595

271:                                              ; preds = %264
  %272 = load %struct.buffer*, %struct.buffer** %27, align 8
  %273 = getelementptr inbounds %struct.buffer, %struct.buffer* %272, i32 0, i32 0
  %274 = load i32*, i32** %273, align 8
  store i32* %274, i32** %20, align 8
  %275 = load i32*, i32** %17, align 8
  %276 = load i32, i32* %275, align 4
  %277 = and i32 %276, -2147483648
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %293

279:                                              ; preds = %271
  %280 = load i32, i32* %12, align 4
  %281 = icmp ne i32 %280, 134
  br i1 %281, label %282, label %293

282:                                              ; preds = %279
  %283 = load i32, i32* %22, align 4
  %284 = load i32, i32* %11, align 4
  %285 = call i32 @DMESGW(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %283, i32 %284)
  %286 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %287 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %286, i32 0, i32 28
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %288, align 8
  %291 = load i32, i32* %22, align 4
  %292 = trunc i32 %291 to i16
  store i16 %292, i16* %8, align 2
  store i32 1, i32* %39, align 4
  br label %595

293:                                              ; preds = %279, %271
  %294 = load i32*, i32** %17, align 8
  store i32 0, i32* %294, align 4
  %295 = load i32*, i32** %17, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 1
  store i32 0, i32* %296, align 4
  %297 = load i32*, i32** %17, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 3
  store i32 0, i32* %298, align 4
  %299 = load i32*, i32** %17, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 5
  store i32 0, i32* %300, align 4
  %301 = load i32*, i32** %17, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 6
  store i32 0, i32* %302, align 4
  %303 = load i32*, i32** %17, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 7
  store i32 0, i32* %304, align 4
  %305 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %306 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %305, i32 0, i32 18
  %307 = load i64, i64* %306, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %313

309:                                              ; preds = %293
  %310 = load i32*, i32** %17, align 8
  %311 = load i32, i32* %310, align 4
  %312 = or i32 %311, 32768
  store i32 %312, i32* %310, align 4
  br label %313

313:                                              ; preds = %309, %293
  %314 = load i32, i32* %22, align 4
  %315 = load i32, i32* %11, align 4
  %316 = icmp eq i32 %314, %315
  br i1 %316, label %317, label %330

317:                                              ; preds = %313
  %318 = load i16, i16* %14, align 2
  %319 = icmp ne i16 %318, 0
  br i1 %319, label %330, label %320

320:                                              ; preds = %317
  store i32 0, i32* %38, align 4
  %321 = load i32*, i32** %17, align 8
  %322 = load i32, i32* %321, align 4
  %323 = or i32 %322, 536870912
  %324 = load i32*, i32** %17, align 8
  store i32 %323, i32* %324, align 4
  %325 = load i32*, i32** %17, align 8
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* %11, align 4
  %328 = or i32 %326, %327
  %329 = load i32*, i32** %17, align 8
  store i32 %328, i32* %329, align 4
  br label %331

330:                                              ; preds = %317, %313
  store i32 1, i32* %38, align 4
  br label %331

331:                                              ; preds = %330, %320
  store i32 0, i32* %21, align 4
  br label %332

332:                                              ; preds = %360, %331
  %333 = load i32, i32* %21, align 4
  %334 = load i32, i32* %23, align 4
  %335 = icmp slt i32 %333, %334
  br i1 %335, label %336, label %339

336:                                              ; preds = %332
  %337 = load i32, i32* %22, align 4
  %338 = icmp sgt i32 %337, 0
  br label %339

339:                                              ; preds = %336, %332
  %340 = phi i1 [ false, %332 ], [ %338, %336 ]
  br i1 %340, label %341, label %365

341:                                              ; preds = %339
  %342 = load i32*, i32** %10, align 8
  %343 = load i32, i32* %21, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %342, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = load i32*, i32** %20, align 8
  %348 = load i32, i32* %21, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %347, i64 %349
  store i32 %346, i32* %350, align 4
  %351 = load i32, i32* %22, align 4
  %352 = icmp eq i32 %351, 4
  br i1 %352, label %353, label %359

353:                                              ; preds = %341
  %354 = load i32, i32* %21, align 4
  %355 = add nsw i32 %354, 4
  %356 = load i32, i32* %23, align 4
  %357 = icmp sge i32 %355, %356
  br i1 %357, label %358, label %359

358:                                              ; preds = %353
  br label %365

359:                                              ; preds = %353, %341
  br label %360

360:                                              ; preds = %359
  %361 = load i32, i32* %21, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %21, align 4
  %363 = load i32, i32* %22, align 4
  %364 = add nsw i32 %363, -1
  store i32 %364, i32* %22, align 4
  br label %332

365:                                              ; preds = %358, %339
  %366 = load i32*, i32** %10, align 8
  %367 = load i32, i32* %21, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %366, i64 %368
  store i32* %369, i32** %10, align 8
  %370 = load i32*, i32** %17, align 8
  %371 = getelementptr inbounds i32, i32* %370, i64 3
  %372 = load i32, i32* %371, align 4
  %373 = and i32 %372, -4096
  %374 = load i32*, i32** %17, align 8
  %375 = getelementptr inbounds i32, i32* %374, i64 3
  store i32 %373, i32* %375, align 4
  %376 = load i32*, i32** %17, align 8
  %377 = getelementptr inbounds i32, i32* %376, i64 3
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* %21, align 4
  %380 = or i32 %378, %379
  %381 = load i32*, i32** %17, align 8
  %382 = getelementptr inbounds i32, i32* %381, i64 3
  store i32 %380, i32* %382, align 4
  %383 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %384 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %383, i32 0, i32 27
  %385 = load %struct.TYPE_6__*, %struct.TYPE_6__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %385, i32 0, i32 1
  %387 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 4
  %389 = load i32, i32* @WLAN_CAPABILITY_SHORT_PREAMBLE, align 4
  %390 = and i32 %388, %389
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %402

392:                                              ; preds = %365
  %393 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %394 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %393, i32 0, i32 19
  %395 = load i32, i32* %394, align 8
  %396 = icmp eq i32 %395, 1
  br i1 %396, label %397, label %401

397:                                              ; preds = %392
  %398 = load i32, i32* %15, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %401

400:                                              ; preds = %397
  br label %401

401:                                              ; preds = %400, %397, %392
  br label %402

402:                                              ; preds = %401, %365
  %403 = load i32, i32* %32, align 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %409

405:                                              ; preds = %402
  %406 = load i32*, i32** %17, align 8
  %407 = load i32, i32* %406, align 4
  %408 = or i32 %407, 262144
  store i32 %408, i32* %406, align 4
  br label %409

409:                                              ; preds = %405, %402
  %410 = load i32, i32* %33, align 4
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %432

412:                                              ; preds = %409
  %413 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %414 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %413, i32 0, i32 27
  %415 = load %struct.TYPE_6__*, %struct.TYPE_6__** %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 4
  %418 = call i32 @ieeerate2rtlrate(i32 %417)
  %419 = shl i32 %418, 19
  %420 = load i32*, i32** %17, align 8
  %421 = load i32, i32* %420, align 4
  %422 = or i32 %421, %419
  store i32 %422, i32* %420, align 4
  %423 = load i32*, i32** %17, align 8
  %424 = load i32, i32* %423, align 4
  %425 = or i32 %424, 8388608
  store i32 %425, i32* %423, align 4
  %426 = load i32, i32* %35, align 4
  %427 = and i32 %426, 65535
  %428 = load i32*, i32** %17, align 8
  %429 = getelementptr inbounds i32, i32* %428, i64 1
  %430 = load i32, i32* %429, align 4
  %431 = or i32 %430, %427
  store i32 %431, i32* %429, align 4
  br label %432

432:                                              ; preds = %412, %409
  %433 = load i32, i32* %37, align 4
  %434 = and i32 %433, 65535
  %435 = shl i32 %434, 16
  %436 = load i32*, i32** %17, align 8
  %437 = getelementptr inbounds i32, i32* %436, i64 3
  %438 = load i32, i32* %437, align 4
  %439 = or i32 %438, %435
  store i32 %439, i32* %437, align 4
  %440 = load i32*, i32** %17, align 8
  %441 = getelementptr inbounds i32, i32* %440, i64 5
  %442 = load i32, i32* %441, align 4
  %443 = or i32 %442, 2816
  store i32 %443, i32* %441, align 4
  %444 = load i32*, i32** %17, align 8
  %445 = load i32, i32* %444, align 4
  %446 = load i32, i32* %15, align 4
  %447 = and i32 %446, 15
  %448 = shl i32 %447, 24
  %449 = or i32 %445, %448
  %450 = load i32*, i32** %17, align 8
  store i32 %449, i32* %450, align 4
  %451 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %452 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %451, i32 0, i32 18
  %453 = load i64, i64* %452, align 8
  %454 = icmp eq i64 %453, 0
  br i1 %454, label %460, label %455

455:                                              ; preds = %432
  %456 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %457 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %456, i32 0, i32 26
  %458 = load i32, i32* %457, align 8
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %483, label %460

460:                                              ; preds = %455, %432
  %461 = load i32, i32* %11, align 4
  %462 = load i32, i32* %15, align 4
  %463 = call i32 @rtl8180_len2duration(i32 %461, i32 %462, i16* %26)
  store i32 %463, i32* %25, align 4
  %464 = load i32*, i32** %17, align 8
  %465 = getelementptr inbounds i32, i32* %464, i64 1
  %466 = load i32, i32* %465, align 4
  %467 = load i32, i32* %25, align 4
  %468 = and i32 %467, 32767
  %469 = shl i32 %468, 16
  %470 = or i32 %466, %469
  %471 = load i32*, i32** %17, align 8
  %472 = getelementptr inbounds i32, i32* %471, i64 1
  store i32 %470, i32* %472, align 4
  %473 = load i16, i16* %26, align 2
  %474 = icmp ne i16 %473, 0
  br i1 %474, label %475, label %482

475:                                              ; preds = %460
  %476 = load i32*, i32** %17, align 8
  %477 = getelementptr inbounds i32, i32* %476, i64 1
  %478 = load i32, i32* %477, align 4
  %479 = or i32 %478, -2147483648
  %480 = load i32*, i32** %17, align 8
  %481 = getelementptr inbounds i32, i32* %480, i64 1
  store i32 %479, i32* %481, align 4
  br label %482

482:                                              ; preds = %475, %460
  br label %483

483:                                              ; preds = %482, %455
  %484 = load i16, i16* %13, align 2
  %485 = icmp ne i16 %484, 0
  br i1 %485, label %486, label %491

486:                                              ; preds = %483
  %487 = load i32*, i32** %17, align 8
  %488 = load i32, i32* %487, align 4
  %489 = or i32 %488, 131072
  %490 = load i32*, i32** %17, align 8
  store i32 %489, i32* %490, align 4
  br label %491

491:                                              ; preds = %486, %483
  %492 = load i32, i32* %22, align 4
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %499, label %494

494:                                              ; preds = %491
  %495 = load i32*, i32** %17, align 8
  %496 = load i32, i32* %495, align 4
  %497 = or i32 %496, 268435456
  %498 = load i32*, i32** %17, align 8
  store i32 %497, i32* %498, align 4
  br label %499

499:                                              ; preds = %494, %491
  %500 = load i32*, i32** %17, align 8
  %501 = getelementptr inbounds i32, i32* %500, i64 5
  %502 = load i32, i32* %501, align 4
  %503 = or i32 %502, 268435456
  %504 = load i32*, i32** %17, align 8
  %505 = getelementptr inbounds i32, i32* %504, i64 5
  store i32 %503, i32* %505, align 4
  %506 = load i32*, i32** %17, align 8
  %507 = getelementptr inbounds i32, i32* %506, i64 7
  %508 = load i32, i32* %507, align 4
  %509 = or i32 %508, 16
  %510 = load i32*, i32** %17, align 8
  %511 = getelementptr inbounds i32, i32* %510, i64 7
  store i32 %509, i32* %511, align 4
  %512 = call i32 (...) @wmb()
  %513 = load i32, i32* %38, align 4
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %515, label %520

515:                                              ; preds = %499
  %516 = load i32*, i32** %17, align 8
  %517 = load i32, i32* %516, align 4
  %518 = or i32 %517, -2147483648
  %519 = load i32*, i32** %17, align 8
  store i32 %518, i32* %519, align 4
  br label %520

520:                                              ; preds = %515, %499
  %521 = load i32*, i32** %17, align 8
  %522 = load i32*, i32** %19, align 8
  %523 = ptrtoint i32* %521 to i64
  %524 = ptrtoint i32* %522 to i64
  %525 = sub i64 %523, %524
  %526 = sdiv exact i64 %525, 4
  %527 = sdiv i64 %526, 8
  %528 = load i32, i32* %24, align 4
  %529 = sub nsw i32 %528, 1
  %530 = sext i32 %529 to i64
  %531 = icmp eq i64 %527, %530
  br i1 %531, label %532, label %534

532:                                              ; preds = %520
  %533 = load i32*, i32** %19, align 8
  store i32* %533, i32** %17, align 8
  br label %537

534:                                              ; preds = %520
  %535 = load i32*, i32** %17, align 8
  %536 = getelementptr inbounds i32, i32* %535, i64 8
  store i32* %536, i32** %17, align 8
  br label %537

537:                                              ; preds = %534, %532
  %538 = load %struct.buffer*, %struct.buffer** %27, align 8
  %539 = getelementptr inbounds %struct.buffer, %struct.buffer* %538, i32 0, i32 1
  %540 = load %struct.buffer*, %struct.buffer** %539, align 8
  store %struct.buffer* %540, %struct.buffer** %27, align 8
  %541 = call i32 (...) @mb()
  %542 = load i32, i32* %12, align 4
  switch i32 %542, label %586 [
    i32 130, label %543
    i32 132, label %550
    i32 133, label %557
    i32 129, label %564
    i32 128, label %571
    i32 131, label %578
    i32 134, label %585
  ]

543:                                              ; preds = %537
  %544 = load i32*, i32** %17, align 8
  %545 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %546 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %545, i32 0, i32 0
  store i32* %544, i32** %546, align 8
  %547 = load %struct.buffer*, %struct.buffer** %27, align 8
  %548 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %549 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %548, i32 0, i32 25
  store %struct.buffer* %547, %struct.buffer** %549, align 8
  br label %586

550:                                              ; preds = %537
  %551 = load i32*, i32** %17, align 8
  %552 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %553 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %552, i32 0, i32 3
  store i32* %551, i32** %553, align 8
  %554 = load %struct.buffer*, %struct.buffer** %27, align 8
  %555 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %556 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %555, i32 0, i32 24
  store %struct.buffer* %554, %struct.buffer** %556, align 8
  br label %586

557:                                              ; preds = %537
  %558 = load i32*, i32** %17, align 8
  %559 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %560 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %559, i32 0, i32 5
  store i32* %558, i32** %560, align 8
  %561 = load %struct.buffer*, %struct.buffer** %27, align 8
  %562 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %563 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %562, i32 0, i32 23
  store %struct.buffer* %561, %struct.buffer** %563, align 8
  br label %586

564:                                              ; preds = %537
  %565 = load i32*, i32** %17, align 8
  %566 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %567 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %566, i32 0, i32 7
  store i32* %565, i32** %567, align 8
  %568 = load %struct.buffer*, %struct.buffer** %27, align 8
  %569 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %570 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %569, i32 0, i32 22
  store %struct.buffer* %568, %struct.buffer** %570, align 8
  br label %586

571:                                              ; preds = %537
  %572 = load i32*, i32** %17, align 8
  %573 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %574 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %573, i32 0, i32 9
  store i32* %572, i32** %574, align 8
  %575 = load %struct.buffer*, %struct.buffer** %27, align 8
  %576 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %577 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %576, i32 0, i32 21
  store %struct.buffer* %575, %struct.buffer** %577, align 8
  br label %586

578:                                              ; preds = %537
  %579 = load i32*, i32** %17, align 8
  %580 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %581 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %580, i32 0, i32 11
  store i32* %579, i32** %581, align 8
  %582 = load %struct.buffer*, %struct.buffer** %27, align 8
  %583 = load %struct.r8180_priv*, %struct.r8180_priv** %16, align 8
  %584 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %583, i32 0, i32 20
  store %struct.buffer* %582, %struct.buffer** %584, align 8
  br label %586

585:                                              ; preds = %537
  br label %586

586:                                              ; preds = %537, %585, %578, %571, %564, %557, %550, %543
  br label %261

587:                                              ; preds = %261
  %588 = load i32*, i32** %18, align 8
  %589 = load i32, i32* %588, align 4
  %590 = or i32 %589, -2147483648
  %591 = load i32*, i32** %18, align 8
  store i32 %590, i32* %591, align 4
  %592 = load %struct.net_device*, %struct.net_device** %9, align 8
  %593 = load i32, i32* %12, align 4
  %594 = call i32 @rtl8180_dma_kick(%struct.net_device* %592, i32 %593)
  store i16 0, i16* %8, align 2
  store i32 1, i32* %39, align 4
  br label %595

595:                                              ; preds = %587, %282, %268, %144
  %596 = load i8*, i8** %29, align 8
  call void @llvm.stackrestore(i8* %596)
  %597 = load i16, i16* %8, align 2
  ret i16 %597
}

declare dso_local %struct.r8180_priv* @ieee80211_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i32**, i32, i32) #1

declare dso_local i64 @is_multicast_ether_addr(i32*) #1

declare dso_local i64 @is_broadcast_ether_addr(i32*) #1

declare dso_local i32 @ComputeTxTime(i32, i32, i32, i32) #1

declare dso_local i32 @rtl8180_rate2rate(i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @DMESGE(i8*, i32) #1

declare dso_local i32 @DMESGW(i8*, i32, i32) #1

declare dso_local i32 @ieeerate2rtlrate(i32) #1

declare dso_local i32 @rtl8180_len2duration(i32, i32, i16*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @rtl8180_dma_kick(%struct.net_device*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
