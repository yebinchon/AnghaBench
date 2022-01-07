; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_hwmp.c_hwmp_route_info_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_hwmp.c_hwmp_route_info_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_2__, %struct.ieee80211_local* }
%struct.TYPE_2__ = type { i32* }
%struct.ieee80211_local = type { i32 }
%struct.ieee80211_mgmt = type { i32* }
%struct.mesh_path = type { i32, i64, i64, i64, i32 }
%struct.sta_info = type { i32 }

@MAX_METRIC = common dso_local global i64 0, align 8
@MESH_PATH_FIXED = common dso_local global i32 0, align 4
@MESH_PATH_ACTIVE = common dso_local global i32 0, align 4
@MESH_PATH_SN_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ieee80211_sub_if_data*, %struct.ieee80211_mgmt*, i32*, i32)* @hwmp_route_info_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hwmp_route_info_get(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211_mgmt* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca %struct.ieee80211_mgmt*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_local*, align 8
  %11 = alloca %struct.mesh_path*, align 8
  %12 = alloca %struct.sta_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %6, align 8
  store %struct.ieee80211_mgmt* %1, %struct.ieee80211_mgmt** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %23 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %23, i32 0, i32 1
  %25 = load %struct.ieee80211_local*, %struct.ieee80211_local** %24, align 8
  store %struct.ieee80211_local* %25, %struct.ieee80211_local** %10, align 8
  store i32 1, i32* %22, align 4
  %26 = call i32 (...) @rcu_read_lock()
  %27 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %28 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %29 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data* %27, i32* %30)
  store %struct.sta_info* %31, %struct.sta_info** %12, align 8
  %32 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %33 = icmp ne %struct.sta_info* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %4
  %35 = call i32 (...) @rcu_read_unlock()
  store i64 0, i64* %5, align 8
  br label %294

36:                                               ; preds = %4
  %37 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %38 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %39 = call i64 @airtime_link_metric_get(%struct.ieee80211_local* %37, %struct.sta_info* %38)
  store i64 %39, i64* %20, align 8
  store i32 1, i32* %13, align 4
  %40 = load i32, i32* %9, align 4
  switch i32 %40, label %59 [
    i32 128, label %41
    i32 129, label %50
  ]

41:                                               ; preds = %36
  %42 = load i32*, i32** %8, align 8
  %43 = call i32* @PREQ_IE_ORIG_ADDR(i32* %42)
  store i32* %43, i32** %14, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = call i64 @PREQ_IE_ORIG_SN(i32* %44)
  store i64 %45, i64* %16, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = call i64 @PREQ_IE_LIFETIME(i32* %46)
  store i64 %47, i64* %18, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i64 @PREQ_IE_METRIC(i32* %48)
  store i64 %49, i64* %17, align 8
  br label %61

50:                                               ; preds = %36
  %51 = load i32*, i32** %8, align 8
  %52 = call i32* @PREP_IE_TARGET_ADDR(i32* %51)
  store i32* %52, i32** %14, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = call i64 @PREP_IE_TARGET_SN(i32* %53)
  store i64 %54, i64* %16, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = call i64 @PREP_IE_LIFETIME(i32* %55)
  store i64 %56, i64* %18, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = call i64 @PREP_IE_METRIC(i32* %57)
  store i64 %58, i64* %17, align 8
  br label %61

59:                                               ; preds = %36
  %60 = call i32 (...) @rcu_read_unlock()
  store i64 0, i64* %5, align 8
  br label %294

61:                                               ; preds = %50, %41
  %62 = load i64, i64* %17, align 8
  %63 = load i64, i64* %20, align 8
  %64 = add nsw i64 %62, %63
  store i64 %64, i64* %21, align 8
  %65 = load i64, i64* %21, align 8
  %66 = load i64, i64* %17, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i64, i64* @MAX_METRIC, align 8
  store i64 %69, i64* %21, align 8
  br label %70

70:                                               ; preds = %68, %61
  %71 = load i64, i64* %18, align 8
  %72 = call i64 @TU_TO_EXP_TIME(i64 %71)
  store i64 %72, i64* %19, align 8
  %73 = load i32*, i32** %14, align 8
  %74 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %75 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = call i64 @ether_addr_equal(i32* %73, i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  store i32 0, i32* %22, align 4
  store i32 0, i32* %13, align 4
  br label %194

81:                                               ; preds = %70
  %82 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %83 = load i32*, i32** %14, align 8
  %84 = call %struct.mesh_path* @mesh_path_lookup(%struct.ieee80211_sub_if_data* %82, i32* %83)
  store %struct.mesh_path* %84, %struct.mesh_path** %11, align 8
  %85 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %86 = icmp ne %struct.mesh_path* %85, null
  br i1 %86, label %87, label %135

87:                                               ; preds = %81
  %88 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %89 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %88, i32 0, i32 4
  %90 = call i32 @spin_lock_bh(i32* %89)
  %91 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %92 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @MESH_PATH_FIXED, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %87
  store i32 0, i32* %13, align 4
  br label %134

98:                                               ; preds = %87
  %99 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %100 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @MESH_PATH_ACTIVE, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %133

105:                                              ; preds = %98
  %106 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %107 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @MESH_PATH_SN_VALID, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %133

112:                                              ; preds = %105
  %113 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %114 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %16, align 8
  %117 = call i64 @SN_GT(i64 %115, i64 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %131, label %119

119:                                              ; preds = %112
  %120 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %121 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %16, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %119
  %126 = load i64, i64* %21, align 8
  %127 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %128 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp sge i64 %126, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %125, %112
  store i32 0, i32* %22, align 4
  store i32 0, i32* %13, align 4
  br label %132

132:                                              ; preds = %131, %125, %119
  br label %133

133:                                              ; preds = %132, %105, %98
  br label %134

134:                                              ; preds = %133, %97
  br label %148

135:                                              ; preds = %81
  %136 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %137 = load i32*, i32** %14, align 8
  %138 = call %struct.mesh_path* @mesh_path_add(%struct.ieee80211_sub_if_data* %136, i32* %137)
  store %struct.mesh_path* %138, %struct.mesh_path** %11, align 8
  %139 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %140 = call i64 @IS_ERR(%struct.mesh_path* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %135
  %143 = call i32 (...) @rcu_read_unlock()
  store i64 0, i64* %5, align 8
  br label %294

144:                                              ; preds = %135
  %145 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %146 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %145, i32 0, i32 4
  %147 = call i32 @spin_lock_bh(i32* %146)
  br label %148

148:                                              ; preds = %144, %134
  %149 = load i32, i32* %13, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %189

151:                                              ; preds = %148
  %152 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %153 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %154 = call i32 @mesh_path_assign_nexthop(%struct.mesh_path* %152, %struct.sta_info* %153)
  %155 = load i32, i32* @MESH_PATH_SN_VALID, align 4
  %156 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %157 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = or i32 %158, %155
  store i32 %159, i32* %157, align 8
  %160 = load i64, i64* %21, align 8
  %161 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %162 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %161, i32 0, i32 2
  store i64 %160, i64* %162, align 8
  %163 = load i64, i64* %16, align 8
  %164 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %165 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %164, i32 0, i32 1
  store i64 %163, i64* %165, align 8
  %166 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %167 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* %19, align 8
  %170 = call i64 @time_after(i64 %168, i64 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %151
  %173 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %174 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  br label %178

176:                                              ; preds = %151
  %177 = load i64, i64* %19, align 8
  br label %178

178:                                              ; preds = %176, %172
  %179 = phi i64 [ %175, %172 ], [ %177, %176 ]
  %180 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %181 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %180, i32 0, i32 3
  store i64 %179, i64* %181, align 8
  %182 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %183 = call i32 @mesh_path_activate(%struct.mesh_path* %182)
  %184 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %185 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %184, i32 0, i32 4
  %186 = call i32 @spin_unlock_bh(i32* %185)
  %187 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %188 = call i32 @mesh_path_tx_pending(%struct.mesh_path* %187)
  br label %193

189:                                              ; preds = %148
  %190 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %191 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %190, i32 0, i32 4
  %192 = call i32 @spin_unlock_bh(i32* %191)
  br label %193

193:                                              ; preds = %189, %178
  br label %194

194:                                              ; preds = %193, %80
  %195 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %196 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  store i32* %197, i32** %15, align 8
  %198 = load i32*, i32** %14, align 8
  %199 = load i32*, i32** %15, align 8
  %200 = call i64 @ether_addr_equal(i32* %198, i32* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %194
  store i32 0, i32* %13, align 4
  br label %285

203:                                              ; preds = %194
  store i32 1, i32* %13, align 4
  %204 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %205 = load i32*, i32** %15, align 8
  %206 = call %struct.mesh_path* @mesh_path_lookup(%struct.ieee80211_sub_if_data* %204, i32* %205)
  store %struct.mesh_path* %206, %struct.mesh_path** %11, align 8
  %207 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %208 = icmp ne %struct.mesh_path* %207, null
  br i1 %208, label %209, label %234

209:                                              ; preds = %203
  %210 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %211 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %210, i32 0, i32 4
  %212 = call i32 @spin_lock_bh(i32* %211)
  %213 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %214 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @MESH_PATH_FIXED, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %232, label %219

219:                                              ; preds = %209
  %220 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %221 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @MESH_PATH_ACTIVE, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %233

226:                                              ; preds = %219
  %227 = load i64, i64* %20, align 8
  %228 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %229 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = icmp sgt i64 %227, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %226, %209
  store i32 0, i32* %13, align 4
  br label %233

233:                                              ; preds = %232, %226, %219
  br label %247

234:                                              ; preds = %203
  %235 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %236 = load i32*, i32** %15, align 8
  %237 = call %struct.mesh_path* @mesh_path_add(%struct.ieee80211_sub_if_data* %235, i32* %236)
  store %struct.mesh_path* %237, %struct.mesh_path** %11, align 8
  %238 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %239 = call i64 @IS_ERR(%struct.mesh_path* %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %234
  %242 = call i32 (...) @rcu_read_unlock()
  store i64 0, i64* %5, align 8
  br label %294

243:                                              ; preds = %234
  %244 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %245 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %244, i32 0, i32 4
  %246 = call i32 @spin_lock_bh(i32* %245)
  br label %247

247:                                              ; preds = %243, %233
  %248 = load i32, i32* %13, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %280

250:                                              ; preds = %247
  %251 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %252 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %253 = call i32 @mesh_path_assign_nexthop(%struct.mesh_path* %251, %struct.sta_info* %252)
  %254 = load i64, i64* %20, align 8
  %255 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %256 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %255, i32 0, i32 2
  store i64 %254, i64* %256, align 8
  %257 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %258 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %257, i32 0, i32 3
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* %19, align 8
  %261 = call i64 @time_after(i64 %259, i64 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %267

263:                                              ; preds = %250
  %264 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %265 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %264, i32 0, i32 3
  %266 = load i64, i64* %265, align 8
  br label %269

267:                                              ; preds = %250
  %268 = load i64, i64* %19, align 8
  br label %269

269:                                              ; preds = %267, %263
  %270 = phi i64 [ %266, %263 ], [ %268, %267 ]
  %271 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %272 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %271, i32 0, i32 3
  store i64 %270, i64* %272, align 8
  %273 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %274 = call i32 @mesh_path_activate(%struct.mesh_path* %273)
  %275 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %276 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %275, i32 0, i32 4
  %277 = call i32 @spin_unlock_bh(i32* %276)
  %278 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %279 = call i32 @mesh_path_tx_pending(%struct.mesh_path* %278)
  br label %284

280:                                              ; preds = %247
  %281 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %282 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %281, i32 0, i32 4
  %283 = call i32 @spin_unlock_bh(i32* %282)
  br label %284

284:                                              ; preds = %280, %269
  br label %285

285:                                              ; preds = %284, %202
  %286 = call i32 (...) @rcu_read_unlock()
  %287 = load i32, i32* %22, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %291

289:                                              ; preds = %285
  %290 = load i64, i64* %21, align 8
  br label %292

291:                                              ; preds = %285
  br label %292

292:                                              ; preds = %291, %289
  %293 = phi i64 [ %290, %289 ], [ 0, %291 ]
  store i64 %293, i64* %5, align 8
  br label %294

294:                                              ; preds = %292, %241, %142, %59, %34
  %295 = load i64, i64* %5, align 8
  ret i64 %295
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data*, i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @airtime_link_metric_get(%struct.ieee80211_local*, %struct.sta_info*) #1

declare dso_local i32* @PREQ_IE_ORIG_ADDR(i32*) #1

declare dso_local i64 @PREQ_IE_ORIG_SN(i32*) #1

declare dso_local i64 @PREQ_IE_LIFETIME(i32*) #1

declare dso_local i64 @PREQ_IE_METRIC(i32*) #1

declare dso_local i32* @PREP_IE_TARGET_ADDR(i32*) #1

declare dso_local i64 @PREP_IE_TARGET_SN(i32*) #1

declare dso_local i64 @PREP_IE_LIFETIME(i32*) #1

declare dso_local i64 @PREP_IE_METRIC(i32*) #1

declare dso_local i64 @TU_TO_EXP_TIME(i64) #1

declare dso_local i64 @ether_addr_equal(i32*, i32*) #1

declare dso_local %struct.mesh_path* @mesh_path_lookup(%struct.ieee80211_sub_if_data*, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @SN_GT(i64, i64) #1

declare dso_local %struct.mesh_path* @mesh_path_add(%struct.ieee80211_sub_if_data*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.mesh_path*) #1

declare dso_local i32 @mesh_path_assign_nexthop(%struct.mesh_path*, %struct.sta_info*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @mesh_path_activate(%struct.mesh_path*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @mesh_path_tx_pending(%struct.mesh_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
