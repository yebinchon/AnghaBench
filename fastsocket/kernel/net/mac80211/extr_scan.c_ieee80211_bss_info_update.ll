; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_scan.c_ieee80211_bss_info_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_scan.c_ieee80211_bss_info_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_bss = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.ieee80211_local = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ieee80211_rx_status = type { i32, i32 }
%struct.ieee80211_mgmt = type { i32 }
%struct.ieee802_11_elems = type { i32, i32, i64, i64, i64, i32, i32, i32* }
%struct.ieee80211_channel = type { i32 }
%struct.cfg80211_bss = type { i64 }

@IEEE80211_HW_SIGNAL_DBM = common dso_local global i32 0, align 4
@IEEE80211_HW_SIGNAL_UNSPEC = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@IEEE80211_BSS_CORRUPT_BEACON = common dso_local global i32 0, align 4
@IEEE80211_BSS_CORRUPT_PROBE_RESP = common dso_local global i32 0, align 4
@IEEE80211_BSS_VALID_ERP = common dso_local global i32 0, align 4
@IEEE80211_BSS_VALID_RATES = common dso_local global i32 0, align 4
@IEEE80211_MAX_SUPP_RATES = common dso_local global i32 0, align 4
@IEEE80211_BSS_VALID_WMM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ieee80211_bss* @ieee80211_bss_info_update(%struct.ieee80211_local* %0, %struct.ieee80211_rx_status* %1, %struct.ieee80211_mgmt* %2, i64 %3, %struct.ieee802_11_elems* %4, %struct.ieee80211_channel* %5) #0 {
  %7 = alloca %struct.ieee80211_bss*, align 8
  %8 = alloca %struct.ieee80211_local*, align 8
  %9 = alloca %struct.ieee80211_rx_status*, align 8
  %10 = alloca %struct.ieee80211_mgmt*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ieee802_11_elems*, align 8
  %13 = alloca %struct.ieee80211_channel*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.cfg80211_bss*, align 8
  %16 = alloca %struct.ieee80211_bss*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %8, align 8
  store %struct.ieee80211_rx_status* %1, %struct.ieee80211_rx_status** %9, align 8
  store %struct.ieee80211_mgmt* %2, %struct.ieee80211_mgmt** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.ieee802_11_elems* %4, %struct.ieee802_11_elems** %12, align 8
  store %struct.ieee80211_channel* %5, %struct.ieee80211_channel** %13, align 8
  %20 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %21 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ieee80211_is_beacon(i32 %22)
  store i32 %23, i32* %14, align 4
  store i32 0, i32* %19, align 4
  %24 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %25 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IEEE80211_HW_SIGNAL_DBM, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %6
  %32 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %33 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %34, 100
  store i32 %35, i32* %19, align 4
  br label %55

36:                                               ; preds = %6
  %37 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %38 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IEEE80211_HW_SIGNAL_UNSPEC, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %36
  %45 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %46 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %47, 100
  %49 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %50 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sdiv i32 %48, %52
  store i32 %53, i32* %19, align 4
  br label %54

54:                                               ; preds = %44, %36
  br label %55

55:                                               ; preds = %54, %31
  %56 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %57 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %61 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %62 = load i64, i64* %11, align 8
  %63 = load i32, i32* %19, align 4
  %64 = load i32, i32* @GFP_ATOMIC, align 4
  %65 = call %struct.cfg80211_bss* @cfg80211_inform_bss_frame(i32 %59, %struct.ieee80211_channel* %60, %struct.ieee80211_mgmt* %61, i64 %62, i32 %63, i32 %64)
  store %struct.cfg80211_bss* %65, %struct.cfg80211_bss** %15, align 8
  %66 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %15, align 8
  %67 = icmp ne %struct.cfg80211_bss* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %55
  store %struct.ieee80211_bss* null, %struct.ieee80211_bss** %7, align 8
  br label %302

69:                                               ; preds = %55
  %70 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %15, align 8
  %71 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i8*
  %74 = bitcast i8* %73 to %struct.ieee80211_bss*
  store %struct.ieee80211_bss* %74, %struct.ieee80211_bss** %16, align 8
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %69
  %78 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %79 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %16, align 8
  %82 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %81, i32 0, i32 9
  store i32 %80, i32* %82, align 4
  br label %89

83:                                               ; preds = %69
  %84 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %85 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %16, align 8
  %88 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %87, i32 0, i32 8
  store i32 %86, i32* %88, align 8
  br label %89

89:                                               ; preds = %83, %77
  %90 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %12, align 8
  %91 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %110

94:                                               ; preds = %89
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load i32, i32* @IEEE80211_BSS_CORRUPT_BEACON, align 4
  %99 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %16, align 8
  %100 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  br label %109

103:                                              ; preds = %94
  %104 = load i32, i32* @IEEE80211_BSS_CORRUPT_PROBE_RESP, align 4
  %105 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %16, align 8
  %106 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %103, %97
  br label %128

110:                                              ; preds = %89
  %111 = load i32, i32* %14, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %110
  %114 = load i32, i32* @IEEE80211_BSS_CORRUPT_BEACON, align 4
  %115 = xor i32 %114, -1
  %116 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %16, align 8
  %117 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %116, i32 0, i32 7
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, %115
  store i32 %119, i32* %117, align 4
  br label %127

120:                                              ; preds = %110
  %121 = load i32, i32* @IEEE80211_BSS_CORRUPT_PROBE_RESP, align 4
  %122 = xor i32 %121, -1
  %123 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %16, align 8
  %124 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %125, %122
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %120, %113
  br label %128

128:                                              ; preds = %127, %109
  %129 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %12, align 8
  %130 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %129, i32 0, i32 7
  %131 = load i32*, i32** %130, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %166

133:                                              ; preds = %128
  %134 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %12, align 8
  %135 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %133
  %139 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %16, align 8
  %140 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @IEEE80211_BSS_VALID_ERP, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %166, label %145

145:                                              ; preds = %138, %133
  %146 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %12, align 8
  %147 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %146, i32 0, i32 7
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %16, align 8
  %152 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %151, i32 0, i32 6
  store i32 %150, i32* %152, align 8
  %153 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %16, align 8
  %154 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %153, i32 0, i32 1
  store i32 1, i32* %154, align 4
  %155 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %12, align 8
  %156 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %165, label %159

159:                                              ; preds = %145
  %160 = load i32, i32* @IEEE80211_BSS_VALID_ERP, align 4
  %161 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %16, align 8
  %162 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 8
  br label %165

165:                                              ; preds = %159, %145
  br label %166

166:                                              ; preds = %165, %138, %128
  %167 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %12, align 8
  %168 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %166
  %172 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %16, align 8
  %173 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @IEEE80211_BSS_VALID_RATES, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %258, label %178

178:                                              ; preds = %171, %166
  store i32 0, i32* %18, align 4
  %179 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %12, align 8
  %180 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %179, i32 0, i32 6
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %206

183:                                              ; preds = %178
  %184 = load i32, i32* @IEEE80211_MAX_SUPP_RATES, align 4
  store i32 %184, i32* %17, align 4
  %185 = load i32, i32* %17, align 4
  %186 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %12, align 8
  %187 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp sgt i32 %185, %188
  br i1 %189, label %190, label %194

190:                                              ; preds = %183
  %191 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %12, align 8
  %192 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  store i32 %193, i32* %17, align 4
  br label %194

194:                                              ; preds = %190, %183
  %195 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %16, align 8
  %196 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %195, i32 0, i32 5
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %12, align 8
  %199 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %198, i32 0, i32 6
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* %17, align 4
  %202 = call i32 @memcpy(i64 %197, i32 %200, i32 %201)
  %203 = load i32, i32* %17, align 4
  %204 = load i32, i32* %18, align 4
  %205 = add nsw i32 %204, %203
  store i32 %205, i32* %18, align 4
  br label %206

206:                                              ; preds = %194, %178
  %207 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %12, align 8
  %208 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %207, i32 0, i32 5
  %209 = load i32, i32* %208, align 8
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %239

211:                                              ; preds = %206
  %212 = load i32, i32* @IEEE80211_MAX_SUPP_RATES, align 4
  %213 = load i32, i32* %18, align 4
  %214 = sub nsw i32 %212, %213
  store i32 %214, i32* %17, align 4
  %215 = load i32, i32* %17, align 4
  %216 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %12, align 8
  %217 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = icmp sgt i32 %215, %218
  br i1 %219, label %220, label %224

220:                                              ; preds = %211
  %221 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %12, align 8
  %222 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  store i32 %223, i32* %17, align 4
  br label %224

224:                                              ; preds = %220, %211
  %225 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %16, align 8
  %226 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %225, i32 0, i32 5
  %227 = load i64, i64* %226, align 8
  %228 = load i32, i32* %18, align 4
  %229 = sext i32 %228 to i64
  %230 = add nsw i64 %227, %229
  %231 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %12, align 8
  %232 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %231, i32 0, i32 5
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* %17, align 4
  %235 = call i32 @memcpy(i64 %230, i32 %233, i32 %234)
  %236 = load i32, i32* %17, align 4
  %237 = load i32, i32* %18, align 4
  %238 = add nsw i32 %237, %236
  store i32 %238, i32* %18, align 4
  br label %239

239:                                              ; preds = %224, %206
  %240 = load i32, i32* %18, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %257

242:                                              ; preds = %239
  %243 = load i32, i32* %18, align 4
  %244 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %16, align 8
  %245 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %244, i32 0, i32 2
  store i32 %243, i32* %245, align 8
  %246 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %12, align 8
  %247 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %246, i32 0, i32 2
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %256, label %250

250:                                              ; preds = %242
  %251 = load i32, i32* @IEEE80211_BSS_VALID_RATES, align 4
  %252 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %16, align 8
  %253 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = or i32 %254, %251
  store i32 %255, i32* %253, align 8
  br label %256

256:                                              ; preds = %250, %242
  br label %257

257:                                              ; preds = %256, %239
  br label %258

258:                                              ; preds = %257, %171
  %259 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %12, align 8
  %260 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %259, i32 0, i32 2
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %270

263:                                              ; preds = %258
  %264 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %16, align 8
  %265 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* @IEEE80211_BSS_VALID_WMM, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %300, label %270

270:                                              ; preds = %263, %258
  %271 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %12, align 8
  %272 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %271, i32 0, i32 4
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %280, label %275

275:                                              ; preds = %270
  %276 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %12, align 8
  %277 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %276, i32 0, i32 3
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %278, 0
  br label %280

280:                                              ; preds = %275, %270
  %281 = phi i1 [ true, %270 ], [ %279, %275 ]
  %282 = zext i1 %281 to i32
  %283 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %16, align 8
  %284 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %283, i32 0, i32 3
  store i32 %282, i32* %284, align 4
  %285 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %12, align 8
  %286 = call i32 @is_uapsd_supported(%struct.ieee802_11_elems* %285)
  %287 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %16, align 8
  %288 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %287, i32 0, i32 4
  store i32 %286, i32* %288, align 8
  %289 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %12, align 8
  %290 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %289, i32 0, i32 2
  %291 = load i64, i64* %290, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %299, label %293

293:                                              ; preds = %280
  %294 = load i32, i32* @IEEE80211_BSS_VALID_WMM, align 4
  %295 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %16, align 8
  %296 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = or i32 %297, %294
  store i32 %298, i32* %296, align 8
  br label %299

299:                                              ; preds = %293, %280
  br label %300

300:                                              ; preds = %299, %263
  %301 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %16, align 8
  store %struct.ieee80211_bss* %301, %struct.ieee80211_bss** %7, align 8
  br label %302

302:                                              ; preds = %300, %68
  %303 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %7, align 8
  ret %struct.ieee80211_bss* %303
}

declare dso_local i32 @ieee80211_is_beacon(i32) #1

declare dso_local %struct.cfg80211_bss* @cfg80211_inform_bss_frame(i32, %struct.ieee80211_channel*, %struct.ieee80211_mgmt*, i64, i32, i32) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i32 @is_uapsd_supported(%struct.ieee802_11_elems*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
