; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rx.c_prepare_for_handlers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rx.c_prepare_for_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rx_data = type { i32, %struct.sk_buff*, %struct.ieee80211_sub_if_data* }
%struct.sk_buff = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.ieee80211_hdr = type { i32, i32, i32 }
%struct.ieee80211_rx_status = type { i32, i32, i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@IEEE80211_RX_RA_MATCH = common dso_local global i32 0, align 4
@RX_FLAG_HT = common dso_local global i32 0, align 4
@RX_FLAG_VHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_rx_data*, %struct.ieee80211_hdr*)* @prepare_for_handlers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_for_handlers(%struct.ieee80211_rx_data* %0, %struct.ieee80211_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_rx_data*, align 8
  %5 = alloca %struct.ieee80211_hdr*, align 8
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ieee80211_rx_status*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ieee80211_rx_data* %0, %struct.ieee80211_rx_data** %4, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %5, align 8
  %12 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %12, i32 0, i32 2
  %14 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  store %struct.ieee80211_sub_if_data* %14, %struct.ieee80211_sub_if_data** %6, align 8
  %15 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %15, i32 0, i32 1
  %17 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  store %struct.sk_buff* %17, %struct.sk_buff** %7, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %18)
  store %struct.ieee80211_rx_status* %19, %struct.ieee80211_rx_status** %8, align 8
  %20 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %25 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32* @ieee80211_get_bssid(%struct.ieee80211_hdr* %20, i32 %23, i32 %27)
  store i32* %28, i32** %9, align 8
  %29 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %30 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @is_multicast_ether_addr(i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %34 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %331 [
    i32 129, label %37
    i32 134, label %86
    i32 131, label %169
    i32 132, label %200
    i32 133, label %200
    i32 128, label %261
    i32 130, label %284
  ]

37:                                               ; preds = %2
  %38 = load i32*, i32** %9, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %37
  %41 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %42 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %334

48:                                               ; preds = %40, %37
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %85, label %51

51:                                               ; preds = %48
  %52 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %53 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %57 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ether_addr_equal(i32 %55, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %85, label %61

61:                                               ; preds = %51
  %62 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %63 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %62, i32 0, i32 2
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @IFF_PROMISC, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %61
  %71 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %72 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70, %61
  store i32 0, i32* %3, align 4
  br label %334

78:                                               ; preds = %70
  %79 = load i32, i32* @IEEE80211_RX_RA_MATCH, align 4
  %80 = xor i32 %79, -1
  %81 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %82 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %78, %51, %48
  br label %333

86:                                               ; preds = %2
  %87 = load i32*, i32** %9, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %86
  store i32 0, i32* %3, align 4
  br label %334

90:                                               ; preds = %86
  %91 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %92 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ieee80211_is_beacon(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  store i32 1, i32* %3, align 4
  br label %334

97:                                               ; preds = %90
  %98 = load i32*, i32** %9, align 8
  %99 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %100 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @ieee80211_bssid_match(i32* %98, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %97
  store i32 0, i32* %3, align 4
  br label %334

107:                                              ; preds = %97
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %137, label %110

110:                                              ; preds = %107
  %111 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %112 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %116 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @ether_addr_equal(i32 %114, i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %137, label %120

120:                                              ; preds = %110
  %121 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %122 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %121, i32 0, i32 2
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @IFF_PROMISC, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %120
  store i32 0, i32* %3, align 4
  br label %334

130:                                              ; preds = %120
  %131 = load i32, i32* @IEEE80211_RX_RA_MATCH, align 4
  %132 = xor i32 %131, -1
  %133 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %134 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, %132
  store i32 %136, i32* %134, align 4
  br label %166

137:                                              ; preds = %110, %107
  %138 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %4, align 8
  %139 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %165, label %142

142:                                              ; preds = %137
  %143 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %144 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @RX_FLAG_HT, align 4
  %147 = load i32, i32* @RX_FLAG_VHT, align 4
  %148 = or i32 %146, %147
  %149 = and i32 %145, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %142
  store i32 0, i32* %11, align 4
  br label %156

152:                                              ; preds = %142
  %153 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %154 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %11, align 4
  br label %156

156:                                              ; preds = %152, %151
  %157 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %158 = load i32*, i32** %9, align 8
  %159 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %160 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %11, align 4
  %163 = call i32 @BIT(i32 %162)
  %164 = call i32 @ieee80211_ibss_rx_no_sta(%struct.ieee80211_sub_if_data* %157, i32* %158, i32 %161, i32 %163)
  br label %165

165:                                              ; preds = %156, %137
  br label %166

166:                                              ; preds = %165, %130
  br label %167

167:                                              ; preds = %166
  br label %168

168:                                              ; preds = %167
  br label %333

169:                                              ; preds = %2
  %170 = load i32, i32* %10, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %199, label %172

172:                                              ; preds = %169
  %173 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %174 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %178 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @ether_addr_equal(i32 %176, i32 %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %199, label %182

182:                                              ; preds = %172
  %183 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %184 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %183, i32 0, i32 2
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @IFF_PROMISC, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %182
  store i32 0, i32* %3, align 4
  br label %334

192:                                              ; preds = %182
  %193 = load i32, i32* @IEEE80211_RX_RA_MATCH, align 4
  %194 = xor i32 %193, -1
  %195 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %196 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = and i32 %197, %194
  store i32 %198, i32* %196, align 4
  br label %199

199:                                              ; preds = %192, %172, %169
  br label %333

200:                                              ; preds = %2, %2
  %201 = load i32*, i32** %9, align 8
  %202 = icmp ne i32* %201, null
  br i1 %202, label %215, label %203

203:                                              ; preds = %200
  %204 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %205 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %209 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @ether_addr_equal(i32 %207, i32 %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %203
  store i32 0, i32* %3, align 4
  br label %334

214:                                              ; preds = %203
  br label %260

215:                                              ; preds = %200
  %216 = load i32*, i32** %9, align 8
  %217 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %218 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @ieee80211_bssid_match(i32* %216, i32 %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %259, label %223

223:                                              ; preds = %215
  %224 = load i32, i32* %10, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %237, label %226

226:                                              ; preds = %223
  %227 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %228 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %232 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @ether_addr_equal(i32 %230, i32 %233)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %226
  store i32 0, i32* %3, align 4
  br label %334

237:                                              ; preds = %226, %223
  %238 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %239 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %240 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @ieee80211_is_public_action(%struct.ieee80211_hdr* %238, i32 %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %237
  store i32 1, i32* %3, align 4
  br label %334

245:                                              ; preds = %237
  %246 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %247 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @ieee80211_is_beacon(i32 %248)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %252, label %251

251:                                              ; preds = %245
  store i32 0, i32* %3, align 4
  br label %334

252:                                              ; preds = %245
  %253 = load i32, i32* @IEEE80211_RX_RA_MATCH, align 4
  %254 = xor i32 %253, -1
  %255 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %256 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 4
  %258 = and i32 %257, %254
  store i32 %258, i32* %256, align 4
  br label %259

259:                                              ; preds = %252, %215
  br label %260

260:                                              ; preds = %259, %214
  br label %333

261:                                              ; preds = %2
  %262 = load i32*, i32** %9, align 8
  %263 = icmp ne i32* %262, null
  br i1 %263, label %270, label %264

264:                                              ; preds = %261
  %265 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %266 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @ieee80211_is_data(i32 %267)
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %271, label %270

270:                                              ; preds = %264, %261
  store i32 0, i32* %3, align 4
  br label %334

271:                                              ; preds = %264
  %272 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %273 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %278 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @ether_addr_equal(i32 %276, i32 %279)
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %283, label %282

282:                                              ; preds = %271
  store i32 0, i32* %3, align 4
  br label %334

283:                                              ; preds = %271
  br label %333

284:                                              ; preds = %2
  %285 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %286 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %287 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @ieee80211_is_public_action(%struct.ieee80211_hdr* %285, i32 %288)
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %310, label %291

291:                                              ; preds = %284
  %292 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %293 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @ieee80211_is_probe_req(i32 %294)
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %310, label %297

297:                                              ; preds = %291
  %298 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %299 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @ieee80211_is_probe_resp(i32 %300)
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %310, label %303

303:                                              ; preds = %297
  %304 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %305 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @ieee80211_is_beacon(i32 %306)
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %310, label %309

309:                                              ; preds = %303
  store i32 0, i32* %3, align 4
  br label %334

310:                                              ; preds = %303, %297, %291, %284
  %311 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %312 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %316 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = call i32 @ether_addr_equal(i32 %314, i32 %317)
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %330, label %320

320:                                              ; preds = %310
  %321 = load i32, i32* %10, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %330, label %323

323:                                              ; preds = %320
  %324 = load i32, i32* @IEEE80211_RX_RA_MATCH, align 4
  %325 = xor i32 %324, -1
  %326 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %327 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 4
  %329 = and i32 %328, %325
  store i32 %329, i32* %327, align 4
  br label %330

330:                                              ; preds = %323, %320, %310
  br label %333

331:                                              ; preds = %2
  %332 = call i32 @WARN_ON_ONCE(i32 1)
  br label %333

333:                                              ; preds = %331, %330, %283, %260, %199, %168, %85
  store i32 1, i32* %3, align 4
  br label %334

334:                                              ; preds = %333, %309, %282, %270, %251, %244, %236, %213, %191, %129, %106, %96, %89, %77, %47
  %335 = load i32, i32* %3, align 4
  ret i32 %335
}

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32* @ieee80211_get_bssid(%struct.ieee80211_hdr*, i32, i32) #1

declare dso_local i32 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @ieee80211_is_beacon(i32) #1

declare dso_local i32 @ieee80211_bssid_match(i32*, i32) #1

declare dso_local i32 @ieee80211_ibss_rx_no_sta(%struct.ieee80211_sub_if_data*, i32*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ieee80211_is_public_action(%struct.ieee80211_hdr*, i32) #1

declare dso_local i32 @ieee80211_is_data(i32) #1

declare dso_local i32 @ieee80211_is_probe_req(i32) #1

declare dso_local i32 @ieee80211_is_probe_resp(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
