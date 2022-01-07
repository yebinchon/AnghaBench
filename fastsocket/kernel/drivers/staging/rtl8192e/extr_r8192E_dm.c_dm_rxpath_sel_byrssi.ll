; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_dm.c_dm_rxpath_sel_byrssi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_dm.c_dm_rxpath_sel_byrssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64, i64*, i64*, i64, i64, i64*, i32 }
%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, i64*, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64* }
%struct.TYPE_4__ = type { i64 }

@dm_rxpath_sel_byrssi.disabled_rf_cnt = internal global i64 0, align 8
@dm_rxpath_sel_byrssi.cck_Rx_Path_initialized = internal global i64 0, align 8
@RF_2T4R = common dso_local global i64 0, align 8
@DM_RxPathSelTable = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@WIRELESS_MODE_B = common dso_local global i64 0, align 8
@CCK_Rx_Version_2 = common dso_local global i64 0, align 8
@RF90_PATH_MAX = common dso_local global i64 0, align 8
@rOFDM0_TRxPathEnable = common dso_local global i32 0, align 4
@rOFDM1_TRxPathEnable = common dso_local global i32 0, align 4
@CCK_Rx_Version_1 = common dso_local global i64 0, align 8
@rCCK0_AFESetting = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @dm_rxpath_sel_byrssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_rxpath_sel_byrssi(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %23)
  store %struct.r8192_priv* %24, %struct.r8192_priv** %3, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 2, i64* %12, align 8
  store i64 3, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  %25 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %26 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @RF_2T4R, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  br label %428

31:                                               ; preds = %1
  %32 = load i64, i64* @dm_rxpath_sel_byrssi.cck_Rx_Path_initialized, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = call i32 @read_nic_byte(%struct.net_device* %35, i32 2567)
  %37 = and i32 %36, 15
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 0), align 8
  store i64 1, i64* @dm_rxpath_sel_byrssi.cck_Rx_Path_initialized, align 8
  br label %38

38:                                               ; preds = %34, %31
  store i32 15, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 1), align 4
  %39 = load %struct.net_device*, %struct.net_device** %2, align 8
  %40 = call i32 @read_nic_byte(%struct.net_device* %39, i32 3076)
  %41 = xor i32 %40, -1
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 1), align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 1), align 4
  %44 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %45 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %44, i32 0, i32 3
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @WIRELESS_MODE_B, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %38
  %52 = load i64, i64* @CCK_Rx_Version_2, align 8
  store i64 %52, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 2), align 8
  br label %53

53:                                               ; preds = %51, %38
  store i64 0, i64* %4, align 8
  br label %54

54:                                               ; preds = %185, %53
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* @RF90_PATH_MAX, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %188

58:                                               ; preds = %54
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 8), align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %72, label %61

61:                                               ; preds = %58
  %62 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %63 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = load i64, i64* %4, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 3), align 8
  %70 = load i64, i64* %4, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  store i64 %68, i64* %71, align 8
  br label %72

72:                                               ; preds = %61, %58
  %73 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %74 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = load i64, i64* %4, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %184

80:                                               ; preds = %72
  %81 = load i64, i64* %8, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %8, align 8
  %83 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 3), align 8
  %84 = load i64, i64* %4, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %20, align 8
  %87 = load i64, i64* %8, align 8
  %88 = icmp eq i64 %87, 1
  br i1 %88, label %89, label %92

89:                                               ; preds = %80
  %90 = load i64, i64* %4, align 8
  store i64 %90, i64* %7, align 8
  store i64 %90, i64* %6, align 8
  store i64 %90, i64* %5, align 8
  %91 = load i64, i64* %20, align 8
  store i64 %91, i64* %11, align 8
  store i64 %91, i64* %10, align 8
  store i64 %91, i64* %9, align 8
  br label %183

92:                                               ; preds = %80
  %93 = load i64, i64* %8, align 8
  %94 = icmp eq i64 %93, 2
  br i1 %94, label %95, label %106

95:                                               ; preds = %92
  %96 = load i64, i64* %20, align 8
  %97 = load i64, i64* %9, align 8
  %98 = icmp uge i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i64, i64* %20, align 8
  store i64 %100, i64* %9, align 8
  %101 = load i64, i64* %4, align 8
  store i64 %101, i64* %5, align 8
  br label %105

102:                                              ; preds = %95
  %103 = load i64, i64* %20, align 8
  store i64 %103, i64* %10, align 8
  store i64 %103, i64* %11, align 8
  %104 = load i64, i64* %4, align 8
  store i64 %104, i64* %6, align 8
  store i64 %104, i64* %7, align 8
  br label %105

105:                                              ; preds = %102, %99
  br label %182

106:                                              ; preds = %92
  %107 = load i64, i64* %20, align 8
  %108 = load i64, i64* %9, align 8
  %109 = icmp ugt i64 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %106
  %111 = load i64, i64* %9, align 8
  store i64 %111, i64* %11, align 8
  %112 = load i64, i64* %5, align 8
  store i64 %112, i64* %7, align 8
  %113 = load i64, i64* %20, align 8
  store i64 %113, i64* %9, align 8
  %114 = load i64, i64* %4, align 8
  store i64 %114, i64* %5, align 8
  br label %181

115:                                              ; preds = %106
  %116 = load i64, i64* %20, align 8
  %117 = load i64, i64* %9, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load i64, i64* %20, align 8
  store i64 %120, i64* %11, align 8
  %121 = load i64, i64* %4, align 8
  store i64 %121, i64* %7, align 8
  br label %180

122:                                              ; preds = %115
  %123 = load i64, i64* %20, align 8
  %124 = load i64, i64* %9, align 8
  %125 = icmp ult i64 %123, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %122
  %127 = load i64, i64* %20, align 8
  %128 = load i64, i64* %11, align 8
  %129 = icmp ugt i64 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = load i64, i64* %20, align 8
  store i64 %131, i64* %11, align 8
  %132 = load i64, i64* %4, align 8
  store i64 %132, i64* %7, align 8
  br label %179

133:                                              ; preds = %126, %122
  %134 = load i64, i64* %20, align 8
  %135 = load i64, i64* %11, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %146

137:                                              ; preds = %133
  %138 = load i64, i64* %11, align 8
  %139 = load i64, i64* %10, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load i64, i64* %20, align 8
  store i64 %142, i64* %11, align 8
  %143 = load i64, i64* %4, align 8
  store i64 %143, i64* %7, align 8
  br label %145

144:                                              ; preds = %137
  br label %145

145:                                              ; preds = %144, %141
  br label %178

146:                                              ; preds = %133
  %147 = load i64, i64* %20, align 8
  %148 = load i64, i64* %11, align 8
  %149 = icmp ult i64 %147, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %146
  %151 = load i64, i64* %20, align 8
  %152 = load i64, i64* %10, align 8
  %153 = icmp ugt i64 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  br label %177

155:                                              ; preds = %150, %146
  %156 = load i64, i64* %20, align 8
  %157 = load i64, i64* %10, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %168

159:                                              ; preds = %155
  %160 = load i64, i64* %11, align 8
  %161 = load i64, i64* %10, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %159
  %164 = load i64, i64* %20, align 8
  store i64 %164, i64* %10, align 8
  %165 = load i64, i64* %4, align 8
  store i64 %165, i64* %6, align 8
  br label %167

166:                                              ; preds = %159
  br label %167

167:                                              ; preds = %166, %163
  br label %176

168:                                              ; preds = %155
  %169 = load i64, i64* %20, align 8
  %170 = load i64, i64* %10, align 8
  %171 = icmp ult i64 %169, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %168
  %173 = load i64, i64* %20, align 8
  store i64 %173, i64* %10, align 8
  %174 = load i64, i64* %4, align 8
  store i64 %174, i64* %6, align 8
  br label %175

175:                                              ; preds = %172, %168
  br label %176

176:                                              ; preds = %175, %167
  br label %177

177:                                              ; preds = %176, %154
  br label %178

178:                                              ; preds = %177, %145
  br label %179

179:                                              ; preds = %178, %130
  br label %180

180:                                              ; preds = %179, %119
  br label %181

181:                                              ; preds = %180, %110
  br label %182

182:                                              ; preds = %181, %105
  br label %183

183:                                              ; preds = %182, %89
  br label %184

184:                                              ; preds = %183, %72
  br label %185

185:                                              ; preds = %184
  %186 = load i64, i64* %4, align 8
  %187 = add i64 %186, 1
  store i64 %187, i64* %4, align 8
  br label %54

188:                                              ; preds = %54
  store i64 0, i64* %8, align 8
  %189 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 2), align 8
  %190 = load i64, i64* @CCK_Rx_Version_2, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %314

192:                                              ; preds = %188
  store i64 0, i64* %4, align 8
  br label %193

193:                                              ; preds = %310, %192
  %194 = load i64, i64* %4, align 8
  %195 = load i64, i64* @RF90_PATH_MAX, align 8
  %196 = icmp ult i64 %194, %195
  br i1 %196, label %197, label %313

197:                                              ; preds = %193
  %198 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %199 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %198, i32 0, i32 1
  %200 = load i64*, i64** %199, align 8
  %201 = load i64, i64* %4, align 8
  %202 = getelementptr inbounds i64, i64* %200, i64 %201
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %309

205:                                              ; preds = %197
  %206 = load i64, i64* %8, align 8
  %207 = add i64 %206, 1
  store i64 %207, i64* %8, align 8
  %208 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 4), align 8
  %209 = load i64, i64* %4, align 8
  %210 = getelementptr inbounds i64, i64* %208, i64 %209
  %211 = load i64, i64* %210, align 8
  store i64 %211, i64* %21, align 8
  %212 = load i64, i64* %8, align 8
  %213 = icmp eq i64 %212, 1
  br i1 %213, label %214, label %217

214:                                              ; preds = %205
  %215 = load i64, i64* %4, align 8
  store i64 %215, i64* %19, align 8
  store i64 %215, i64* %18, align 8
  store i64 %215, i64* %17, align 8
  %216 = load i64, i64* %21, align 8
  store i64 %216, i64* %16, align 8
  store i64 %216, i64* %15, align 8
  store i64 %216, i64* %14, align 8
  br label %308

217:                                              ; preds = %205
  %218 = load i64, i64* %8, align 8
  %219 = icmp eq i64 %218, 2
  br i1 %219, label %220, label %231

220:                                              ; preds = %217
  %221 = load i64, i64* %21, align 8
  %222 = load i64, i64* %14, align 8
  %223 = icmp sge i64 %221, %222
  br i1 %223, label %224, label %227

224:                                              ; preds = %220
  %225 = load i64, i64* %21, align 8
  store i64 %225, i64* %14, align 8
  %226 = load i64, i64* %4, align 8
  store i64 %226, i64* %17, align 8
  br label %230

227:                                              ; preds = %220
  %228 = load i64, i64* %21, align 8
  store i64 %228, i64* %15, align 8
  store i64 %228, i64* %16, align 8
  %229 = load i64, i64* %4, align 8
  store i64 %229, i64* %18, align 8
  store i64 %229, i64* %19, align 8
  br label %230

230:                                              ; preds = %227, %224
  br label %307

231:                                              ; preds = %217
  %232 = load i64, i64* %21, align 8
  %233 = load i64, i64* %14, align 8
  %234 = icmp sgt i64 %232, %233
  br i1 %234, label %235, label %240

235:                                              ; preds = %231
  %236 = load i64, i64* %14, align 8
  store i64 %236, i64* %16, align 8
  %237 = load i64, i64* %17, align 8
  store i64 %237, i64* %19, align 8
  %238 = load i64, i64* %21, align 8
  store i64 %238, i64* %14, align 8
  %239 = load i64, i64* %4, align 8
  store i64 %239, i64* %17, align 8
  br label %306

240:                                              ; preds = %231
  %241 = load i64, i64* %21, align 8
  %242 = load i64, i64* %14, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %247

244:                                              ; preds = %240
  %245 = load i64, i64* %21, align 8
  store i64 %245, i64* %16, align 8
  %246 = load i64, i64* %4, align 8
  store i64 %246, i64* %19, align 8
  br label %305

247:                                              ; preds = %240
  %248 = load i64, i64* %21, align 8
  %249 = load i64, i64* %14, align 8
  %250 = icmp slt i64 %248, %249
  br i1 %250, label %251, label %258

251:                                              ; preds = %247
  %252 = load i64, i64* %21, align 8
  %253 = load i64, i64* %16, align 8
  %254 = icmp sgt i64 %252, %253
  br i1 %254, label %255, label %258

255:                                              ; preds = %251
  %256 = load i64, i64* %21, align 8
  store i64 %256, i64* %16, align 8
  %257 = load i64, i64* %4, align 8
  store i64 %257, i64* %19, align 8
  br label %304

258:                                              ; preds = %251, %247
  %259 = load i64, i64* %21, align 8
  %260 = load i64, i64* %16, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %262, label %271

262:                                              ; preds = %258
  %263 = load i64, i64* %16, align 8
  %264 = load i64, i64* %15, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %269

266:                                              ; preds = %262
  %267 = load i64, i64* %21, align 8
  store i64 %267, i64* %16, align 8
  %268 = load i64, i64* %4, align 8
  store i64 %268, i64* %19, align 8
  br label %270

269:                                              ; preds = %262
  br label %270

270:                                              ; preds = %269, %266
  br label %303

271:                                              ; preds = %258
  %272 = load i64, i64* %21, align 8
  %273 = load i64, i64* %16, align 8
  %274 = icmp slt i64 %272, %273
  br i1 %274, label %275, label %280

275:                                              ; preds = %271
  %276 = load i64, i64* %21, align 8
  %277 = load i64, i64* %15, align 8
  %278 = icmp sgt i64 %276, %277
  br i1 %278, label %279, label %280

279:                                              ; preds = %275
  br label %302

280:                                              ; preds = %275, %271
  %281 = load i64, i64* %21, align 8
  %282 = load i64, i64* %15, align 8
  %283 = icmp eq i64 %281, %282
  br i1 %283, label %284, label %293

284:                                              ; preds = %280
  %285 = load i64, i64* %16, align 8
  %286 = load i64, i64* %15, align 8
  %287 = icmp eq i64 %285, %286
  br i1 %287, label %288, label %291

288:                                              ; preds = %284
  %289 = load i64, i64* %21, align 8
  store i64 %289, i64* %15, align 8
  %290 = load i64, i64* %4, align 8
  store i64 %290, i64* %18, align 8
  br label %292

291:                                              ; preds = %284
  br label %292

292:                                              ; preds = %291, %288
  br label %301

293:                                              ; preds = %280
  %294 = load i64, i64* %21, align 8
  %295 = load i64, i64* %15, align 8
  %296 = icmp slt i64 %294, %295
  br i1 %296, label %297, label %300

297:                                              ; preds = %293
  %298 = load i64, i64* %21, align 8
  store i64 %298, i64* %15, align 8
  %299 = load i64, i64* %4, align 8
  store i64 %299, i64* %18, align 8
  br label %300

300:                                              ; preds = %297, %293
  br label %301

301:                                              ; preds = %300, %292
  br label %302

302:                                              ; preds = %301, %279
  br label %303

303:                                              ; preds = %302, %270
  br label %304

304:                                              ; preds = %303, %255
  br label %305

305:                                              ; preds = %304, %244
  br label %306

306:                                              ; preds = %305, %235
  br label %307

307:                                              ; preds = %306, %230
  br label %308

308:                                              ; preds = %307, %214
  br label %309

309:                                              ; preds = %308, %197
  br label %310

310:                                              ; preds = %309
  %311 = load i64, i64* %4, align 8
  %312 = add i64 %311, 1
  store i64 %312, i64* %4, align 8
  br label %193

313:                                              ; preds = %193
  br label %314

314:                                              ; preds = %313, %188
  store i64 0, i64* %22, align 8
  %315 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 2), align 8
  %316 = load i64, i64* @CCK_Rx_Version_2, align 8
  %317 = icmp eq i64 %315, %316
  br i1 %317, label %318, label %325

318:                                              ; preds = %314
  %319 = load i64, i64* %17, align 8
  store i64 %319, i64* %12, align 8
  %320 = load i64, i64* %19, align 8
  store i64 %320, i64* %13, align 8
  %321 = load i64, i64* %14, align 8
  %322 = icmp ne i64 %321, -64
  br i1 %322, label %323, label %324

323:                                              ; preds = %318
  store i64 1, i64* %22, align 8
  br label %324

324:                                              ; preds = %323, %318
  br label %325

325:                                              ; preds = %324, %314
  %326 = load i64, i64* %10, align 8
  %327 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 5), align 8
  %328 = icmp ult i64 %326, %327
  br i1 %328, label %329, label %370

329:                                              ; preds = %325
  %330 = load i64, i64* @dm_rxpath_sel_byrssi.disabled_rf_cnt, align 8
  %331 = icmp ult i64 %330, 2
  br i1 %331, label %332, label %370

332:                                              ; preds = %329
  %333 = load i64, i64* %9, align 8
  %334 = load i64, i64* %10, align 8
  %335 = sub i64 %333, %334
  %336 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 6), align 8
  %337 = icmp uge i64 %335, %336
  br i1 %337, label %338, label %358

338:                                              ; preds = %332
  %339 = load i64, i64* %9, align 8
  %340 = add i64 %339, 5
  %341 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 7), align 8
  %342 = load i64, i64* %6, align 8
  %343 = getelementptr inbounds i64, i64* %341, i64 %342
  store i64 %340, i64* %343, align 8
  %344 = load %struct.net_device*, %struct.net_device** %2, align 8
  %345 = load i32, i32* @rOFDM0_TRxPathEnable, align 4
  %346 = load i64, i64* %6, align 8
  %347 = trunc i64 %346 to i32
  %348 = shl i32 1, %347
  %349 = call i32 @rtl8192_setBBreg(%struct.net_device* %344, i32 %345, i32 %348, i32 0)
  %350 = load %struct.net_device*, %struct.net_device** %2, align 8
  %351 = load i32, i32* @rOFDM1_TRxPathEnable, align 4
  %352 = load i64, i64* %6, align 8
  %353 = trunc i64 %352 to i32
  %354 = shl i32 1, %353
  %355 = call i32 @rtl8192_setBBreg(%struct.net_device* %350, i32 %351, i32 %354, i32 0)
  %356 = load i64, i64* @dm_rxpath_sel_byrssi.disabled_rf_cnt, align 8
  %357 = add i64 %356, 1
  store i64 %357, i64* @dm_rxpath_sel_byrssi.disabled_rf_cnt, align 8
  br label %358

358:                                              ; preds = %338, %332
  %359 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 2), align 8
  %360 = load i64, i64* @CCK_Rx_Version_1, align 8
  %361 = icmp eq i64 %359, %360
  br i1 %361, label %362, label %369

362:                                              ; preds = %358
  %363 = load i64, i64* %5, align 8
  store i64 %363, i64* %12, align 8
  %364 = load i64, i64* %7, align 8
  store i64 %364, i64* %13, align 8
  %365 = load i64, i64* %9, align 8
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %368

367:                                              ; preds = %362
  store i64 1, i64* %22, align 8
  br label %368

368:                                              ; preds = %367, %362
  br label %369

369:                                              ; preds = %368, %358
  br label %370

370:                                              ; preds = %369, %329, %325
  %371 = load i64, i64* %22, align 8
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %383

373:                                              ; preds = %370
  %374 = load i64, i64* %12, align 8
  %375 = shl i64 %374, 2
  %376 = load i64, i64* %13, align 8
  %377 = or i64 %375, %376
  %378 = trunc i64 %377 to i32
  store i32 %378, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 0), align 8
  %379 = load %struct.net_device*, %struct.net_device** %2, align 8
  %380 = load i32, i32* @rCCK0_AFESetting, align 4
  %381 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 0), align 8
  %382 = call i32 @rtl8192_setBBreg(%struct.net_device* %379, i32 %380, i32 251658240, i32 %381)
  br label %383

383:                                              ; preds = %373, %370
  %384 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 1), align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %428

386:                                              ; preds = %383
  store i64 0, i64* %4, align 8
  br label %387

387:                                              ; preds = %424, %386
  %388 = load i64, i64* %4, align 8
  %389 = icmp ult i64 %388, 4
  br i1 %389, label %390, label %427

390:                                              ; preds = %387
  %391 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 1), align 4
  %392 = load i64, i64* %4, align 8
  %393 = trunc i64 %392 to i32
  %394 = ashr i32 %391, %393
  %395 = and i32 %394, 1
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %423

397:                                              ; preds = %390
  %398 = load i64, i64* %9, align 8
  %399 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 7), align 8
  %400 = load i64, i64* %4, align 8
  %401 = getelementptr inbounds i64, i64* %399, i64 %400
  %402 = load i64, i64* %401, align 8
  %403 = icmp uge i64 %398, %402
  br i1 %403, label %404, label %422

404:                                              ; preds = %397
  %405 = load %struct.net_device*, %struct.net_device** %2, align 8
  %406 = load i32, i32* @rOFDM0_TRxPathEnable, align 4
  %407 = load i64, i64* %4, align 8
  %408 = trunc i64 %407 to i32
  %409 = shl i32 1, %408
  %410 = call i32 @rtl8192_setBBreg(%struct.net_device* %405, i32 %406, i32 %409, i32 1)
  %411 = load %struct.net_device*, %struct.net_device** %2, align 8
  %412 = load i32, i32* @rOFDM1_TRxPathEnable, align 4
  %413 = load i64, i64* %4, align 8
  %414 = trunc i64 %413 to i32
  %415 = shl i32 1, %414
  %416 = call i32 @rtl8192_setBBreg(%struct.net_device* %411, i32 %412, i32 %415, i32 1)
  %417 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 7), align 8
  %418 = load i64, i64* %4, align 8
  %419 = getelementptr inbounds i64, i64* %417, i64 %418
  store i64 100, i64* %419, align 8
  %420 = load i64, i64* @dm_rxpath_sel_byrssi.disabled_rf_cnt, align 8
  %421 = add i64 %420, -1
  store i64 %421, i64* @dm_rxpath_sel_byrssi.disabled_rf_cnt, align 8
  br label %422

422:                                              ; preds = %404, %397
  br label %423

423:                                              ; preds = %422, %390
  br label %424

424:                                              ; preds = %423
  %425 = load i64, i64* %4, align 8
  %426 = add i64 %425, 1
  store i64 %426, i64* %4, align 8
  br label %387

427:                                              ; preds = %387
  br label %428

428:                                              ; preds = %30, %427, %383
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32) #1

declare dso_local i32 @rtl8192_setBBreg(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
