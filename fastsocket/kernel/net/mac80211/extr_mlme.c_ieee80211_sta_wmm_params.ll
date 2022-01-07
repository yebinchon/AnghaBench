; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_sta_wmm_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_sta_wmm_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_10__, %struct.ieee80211_tx_queue_params*, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.ieee80211_tx_queue_params = type { i32, i32, i32, i32, i8*, i8* }
%struct.TYPE_6__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i32, i32, i32 }

@IEEE80211_NUM_ACS = common dso_local global i64 0, align 8
@IEEE80211_STA_UAPSD_ENABLED = common dso_local global i32 0, align 4
@IEEE80211_WMM_IE_STA_QOSINFO_AC_BK = common dso_local global i32 0, align 4
@IEEE80211_WMM_IE_STA_QOSINFO_AC_VI = common dso_local global i32 0, align 4
@IEEE80211_WMM_IE_STA_QOSINFO_AC_VO = common dso_local global i32 0, align 4
@IEEE80211_WMM_IE_STA_QOSINFO_AC_BE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"WMM queue=%d aci=%d acm=%d aifs=%d cWmin=%d cWmax=%d txop=%d uapsd=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"failed to set TX queue parameters for queue %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32*, i64)* @ieee80211_sta_wmm_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_sta_wmm_params(%struct.ieee80211_local* %0, %struct.ieee80211_sub_if_data* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_local*, align 8
  %7 = alloca %struct.ieee80211_sub_if_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ieee80211_tx_queue_params, align 8
  %11 = alloca %struct.ieee80211_if_managed*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %6, align 8
  store %struct.ieee80211_sub_if_data* %1, %struct.ieee80211_sub_if_data** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %20 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %21 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store %struct.ieee80211_if_managed* %22, %struct.ieee80211_if_managed** %11, align 8
  store i32 0, i32* %15, align 4
  %23 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %24 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %242

30:                                               ; preds = %4
  %31 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %32 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IEEE80211_NUM_ACS, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %242

38:                                               ; preds = %30
  %39 = load i32*, i32** %8, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %242

42:                                               ; preds = %38
  %43 = load i64, i64* %9, align 8
  %44 = icmp ult i64 %43, 8
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 5
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 1
  br i1 %49, label %50, label %51

50:                                               ; preds = %45, %42
  store i32 0, i32* %5, align 4
  br label %242

51:                                               ; preds = %45
  %52 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %11, align 8
  %53 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @IEEE80211_STA_UAPSD_ENABLED, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %11, align 8
  %60 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %15, align 4
  br label %62

62:                                               ; preds = %58, %51
  %63 = load i32*, i32** %8, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 6
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 15
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %11, align 8
  %69 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %67, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %242

73:                                               ; preds = %62
  %74 = load i32, i32* %13, align 4
  %75 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %11, align 8
  %76 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 8
  store i32* %78, i32** %14, align 8
  %79 = load i64, i64* %9, align 8
  %80 = sub i64 %79, 8
  store i64 %80, i64* %12, align 8
  %81 = call i32 @memset(%struct.ieee80211_tx_queue_params* %10, i32 0, i32 32)
  %82 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %83 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  br label %84

84:                                               ; preds = %232, %73
  %85 = load i64, i64* %12, align 8
  %86 = icmp uge i64 %85, 4
  br i1 %86, label %87, label %237

87:                                               ; preds = %84
  %88 = load i32*, i32** %14, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = ashr i32 %90, 5
  %92 = and i32 %91, 3
  store i32 %92, i32* %16, align 4
  %93 = load i32*, i32** %14, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = ashr i32 %95, 4
  %97 = and i32 %96, 1
  store i32 %97, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %98 = load i32, i32* %16, align 4
  switch i32 %98, label %154 [
    i32 1, label %99
    i32 2, label %117
    i32 3, label %135
    i32 0, label %153
  ]

99:                                               ; preds = %87
  store i32 3, i32* %19, align 4
  %100 = load i32, i32* %17, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %99
  %103 = call i32 @BIT(i32 1)
  %104 = call i32 @BIT(i32 2)
  %105 = or i32 %103, %104
  %106 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %107 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %102, %99
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* @IEEE80211_WMM_IE_STA_QOSINFO_AC_BK, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  store i32 1, i32* %18, align 4
  br label %116

116:                                              ; preds = %115, %110
  br label %172

117:                                              ; preds = %87
  store i32 1, i32* %19, align 4
  %118 = load i32, i32* %17, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %117
  %121 = call i32 @BIT(i32 4)
  %122 = call i32 @BIT(i32 5)
  %123 = or i32 %121, %122
  %124 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %125 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %120, %117
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* @IEEE80211_WMM_IE_STA_QOSINFO_AC_VI, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  store i32 1, i32* %18, align 4
  br label %134

134:                                              ; preds = %133, %128
  br label %172

135:                                              ; preds = %87
  store i32 0, i32* %19, align 4
  %136 = load i32, i32* %17, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %135
  %139 = call i32 @BIT(i32 6)
  %140 = call i32 @BIT(i32 7)
  %141 = or i32 %139, %140
  %142 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %143 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 8
  br label %146

146:                                              ; preds = %138, %135
  %147 = load i32, i32* %15, align 4
  %148 = load i32, i32* @IEEE80211_WMM_IE_STA_QOSINFO_AC_VO, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  store i32 1, i32* %18, align 4
  br label %152

152:                                              ; preds = %151, %146
  br label %172

153:                                              ; preds = %87
  br label %154

154:                                              ; preds = %87, %153
  store i32 2, i32* %19, align 4
  %155 = load i32, i32* %17, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %154
  %158 = call i32 @BIT(i32 0)
  %159 = call i32 @BIT(i32 3)
  %160 = or i32 %158, %159
  %161 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %162 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 8
  br label %165

165:                                              ; preds = %157, %154
  %166 = load i32, i32* %15, align 4
  %167 = load i32, i32* @IEEE80211_WMM_IE_STA_QOSINFO_AC_BE, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  store i32 1, i32* %18, align 4
  br label %171

171:                                              ; preds = %170, %165
  br label %172

172:                                              ; preds = %171, %152, %134, %116
  %173 = load i32*, i32** %14, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  %175 = load i32, i32* %174, align 4
  %176 = and i32 %175, 15
  %177 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %10, i32 0, i32 0
  store i32 %176, i32* %177, align 8
  %178 = load i32*, i32** %14, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 1
  %180 = load i32, i32* %179, align 4
  %181 = and i32 %180, 240
  %182 = ashr i32 %181, 4
  %183 = call i8* @ecw2cw(i32 %182)
  %184 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %10, i32 0, i32 4
  store i8* %183, i8** %184, align 8
  %185 = load i32*, i32** %14, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 1
  %187 = load i32, i32* %186, align 4
  %188 = and i32 %187, 15
  %189 = call i8* @ecw2cw(i32 %188)
  %190 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %10, i32 0, i32 5
  store i8* %189, i8** %190, align 8
  %191 = load i32*, i32** %14, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 2
  %193 = call i32 @get_unaligned_le16(i32* %192)
  %194 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %10, i32 0, i32 3
  store i32 %193, i32* %194, align 4
  %195 = load i32, i32* %17, align 4
  %196 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %10, i32 0, i32 1
  store i32 %195, i32* %196, align 4
  %197 = load i32, i32* %18, align 4
  %198 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %10, i32 0, i32 2
  store i32 %197, i32* %198, align 8
  %199 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %200 = load i32, i32* %19, align 4
  %201 = load i32, i32* %16, align 4
  %202 = load i32, i32* %17, align 4
  %203 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %10, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %10, i32 0, i32 5
  %206 = load i8*, i8** %205, align 8
  %207 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %10, i32 0, i32 4
  %208 = load i8*, i8** %207, align 8
  %209 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %10, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %10, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @mlme_dbg(%struct.ieee80211_sub_if_data* %199, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %200, i32 %201, i32 %202, i32 %204, i8* %206, i8* %208, i32 %210, i32 %212)
  %214 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %215 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %214, i32 0, i32 2
  %216 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %215, align 8
  %217 = load i32, i32* %19, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %216, i64 %218
  %220 = bitcast %struct.ieee80211_tx_queue_params* %219 to i8*
  %221 = bitcast %struct.ieee80211_tx_queue_params* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %220, i8* align 8 %221, i64 32, i1 false)
  %222 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %223 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %224 = load i32, i32* %19, align 4
  %225 = call i64 @drv_conf_tx(%struct.ieee80211_local* %222, %struct.ieee80211_sub_if_data* %223, i32 %224, %struct.ieee80211_tx_queue_params* %10)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %172
  %228 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %229 = load i32, i32* %19, align 4
  %230 = call i32 @sdata_err(%struct.ieee80211_sub_if_data* %228, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %229)
  br label %231

231:                                              ; preds = %227, %172
  br label %232

232:                                              ; preds = %231
  %233 = load i64, i64* %12, align 8
  %234 = sub i64 %233, 4
  store i64 %234, i64* %12, align 8
  %235 = load i32*, i32** %14, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 4
  store i32* %236, i32** %14, align 8
  br label %84

237:                                              ; preds = %84
  %238 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %239 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 0
  store i32 1, i32* %241, align 4
  store i32 1, i32* %5, align 4
  br label %242

242:                                              ; preds = %237, %72, %50, %41, %37, %29
  %243 = load i32, i32* %5, align 4
  ret i32 %243
}

declare dso_local i32 @memset(%struct.ieee80211_tx_queue_params*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i8* @ecw2cw(i32) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @mlme_dbg(%struct.ieee80211_sub_if_data*, i8*, i32, i32, i32, i32, i8*, i8*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @drv_conf_tx(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32, %struct.ieee80211_tx_queue_params*) #1

declare dso_local i32 @sdata_err(%struct.ieee80211_sub_if_data*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
