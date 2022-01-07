; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_hwmp.c_hwmp_rann_frame_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_hwmp.c_hwmp_rann_frame_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.ieee80211_local* }
%struct.TYPE_6__ = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_local = type { i32 }
%struct.ieee80211_mgmt = type { i32 }
%struct.ieee80211_rann_ie = type { i32, i32, i32*, i32, i32, i32, i32 }
%struct.sta_info = type { i32 }
%struct.mesh_path = type { i64, i64, i32, i32, i32, i64 }

@RANN_FLAG_IS_GATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"received RANN from %pM via neighbour %pM (is_gate=%d)\0A\00", align 1
@MESH_PATH_ACTIVE = common dso_local global i32 0, align 4
@MESH_PATH_RESOLVING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@MESH_PATH_FIXED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"time to refresh root mpath %pM\0A\00", align 1
@PREQ_Q_F_START = common dso_local global i32 0, align 4
@PREQ_Q_F_REFRESH = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@MPATH_RANN = common dso_local global i32 0, align 4
@broadcast_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.ieee80211_mgmt*, %struct.ieee80211_rann_ie*)* @hwmp_rann_frame_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hwmp_rann_frame_process(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211_mgmt* %1, %struct.ieee80211_rann_ie* %2) #0 {
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.ieee80211_mgmt*, align 8
  %6 = alloca %struct.ieee80211_rann_ie*, align 8
  %7 = alloca %struct.ieee80211_if_mesh*, align 8
  %8 = alloca %struct.ieee80211_local*, align 8
  %9 = alloca %struct.sta_info*, align 8
  %10 = alloca %struct.mesh_path*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.ieee80211_mgmt* %1, %struct.ieee80211_mgmt** %5, align 8
  store %struct.ieee80211_rann_ie* %2, %struct.ieee80211_rann_ie** %6, align 8
  %20 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store %struct.ieee80211_if_mesh* %22, %struct.ieee80211_if_mesh** %7, align 8
  %23 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %23, i32 0, i32 2
  %25 = load %struct.ieee80211_local*, %struct.ieee80211_local** %24, align 8
  store %struct.ieee80211_local* %25, %struct.ieee80211_local** %8, align 8
  %26 = load %struct.ieee80211_rann_ie*, %struct.ieee80211_rann_ie** %6, align 8
  %27 = getelementptr inbounds %struct.ieee80211_rann_ie, %struct.ieee80211_rann_ie* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %11, align 4
  %29 = load %struct.ieee80211_rann_ie*, %struct.ieee80211_rann_ie** %6, align 8
  %30 = getelementptr inbounds %struct.ieee80211_rann_ie, %struct.ieee80211_rann_ie* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @RANN_FLAG_IS_GATE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %19, align 4
  %39 = load %struct.ieee80211_rann_ie*, %struct.ieee80211_rann_ie** %6, align 8
  %40 = getelementptr inbounds %struct.ieee80211_rann_ie, %struct.ieee80211_rann_ie* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %14, align 8
  %42 = load %struct.ieee80211_rann_ie*, %struct.ieee80211_rann_ie** %6, align 8
  %43 = getelementptr inbounds %struct.ieee80211_rann_ie, %struct.ieee80211_rann_ie* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @le32_to_cpu(i32 %44)
  store i64 %45, i64* %15, align 8
  %46 = load %struct.ieee80211_rann_ie*, %struct.ieee80211_rann_ie** %6, align 8
  %47 = getelementptr inbounds %struct.ieee80211_rann_ie, %struct.ieee80211_rann_ie* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @le32_to_cpu(i32 %48)
  store i64 %49, i64* %18, align 8
  %50 = load %struct.ieee80211_rann_ie*, %struct.ieee80211_rann_ie** %6, align 8
  %51 = getelementptr inbounds %struct.ieee80211_rann_ie, %struct.ieee80211_rann_ie* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %13, align 4
  %55 = load %struct.ieee80211_rann_ie*, %struct.ieee80211_rann_ie** %6, align 8
  %56 = getelementptr inbounds %struct.ieee80211_rann_ie, %struct.ieee80211_rann_ie* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @le32_to_cpu(i32 %57)
  store i64 %58, i64* %16, align 8
  %59 = load i32*, i32** %14, align 8
  %60 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %61 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @ether_addr_equal(i32* %59, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %3
  br label %241

67:                                               ; preds = %3
  %68 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %69 = load i32*, i32** %14, align 8
  %70 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %71 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %19, align 4
  %74 = call i32 (%struct.ieee80211_sub_if_data*, i8*, i32*, ...) @mhwmp_dbg(%struct.ieee80211_sub_if_data* %68, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32* %69, i32 %72, i32 %73)
  %75 = call i32 (...) @rcu_read_lock()
  %76 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %77 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %78 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data* %76, i32 %79)
  store %struct.sta_info* %80, %struct.sta_info** %9, align 8
  %81 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %82 = icmp ne %struct.sta_info* %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %67
  %84 = call i32 (...) @rcu_read_unlock()
  br label %241

85:                                               ; preds = %67
  %86 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %87 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %88 = call i64 @airtime_link_metric_get(%struct.ieee80211_local* %86, %struct.sta_info* %87)
  store i64 %88, i64* %17, align 8
  %89 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %90 = load i32*, i32** %14, align 8
  %91 = call %struct.mesh_path* @mesh_path_lookup(%struct.ieee80211_sub_if_data* %89, i32* %90)
  store %struct.mesh_path* %91, %struct.mesh_path** %10, align 8
  %92 = load %struct.mesh_path*, %struct.mesh_path** %10, align 8
  %93 = icmp ne %struct.mesh_path* %92, null
  br i1 %93, label %111, label %94

94:                                               ; preds = %85
  %95 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %96 = load i32*, i32** %14, align 8
  %97 = call %struct.mesh_path* @mesh_path_add(%struct.ieee80211_sub_if_data* %95, i32* %96)
  store %struct.mesh_path* %97, %struct.mesh_path** %10, align 8
  %98 = load %struct.mesh_path*, %struct.mesh_path** %10, align 8
  %99 = call i64 @IS_ERR(%struct.mesh_path* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %94
  %102 = call i32 (...) @rcu_read_unlock()
  %103 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %104 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  br label %241

110:                                              ; preds = %94
  br label %111

111:                                              ; preds = %110, %85
  %112 = load %struct.mesh_path*, %struct.mesh_path** %10, align 8
  %113 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %15, align 8
  %116 = call i32 @SN_LT(i64 %114, i64 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %132, label %118

118:                                              ; preds = %111
  %119 = load %struct.mesh_path*, %struct.mesh_path** %10, align 8
  %120 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %15, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %118
  %125 = load i64, i64* %16, align 8
  %126 = load %struct.mesh_path*, %struct.mesh_path** %10, align 8
  %127 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp slt i64 %125, %128
  br i1 %129, label %132, label %130

130:                                              ; preds = %124, %118
  %131 = call i32 (...) @rcu_read_unlock()
  br label %241

132:                                              ; preds = %124, %111
  %133 = load %struct.mesh_path*, %struct.mesh_path** %10, align 8
  %134 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @MESH_PATH_ACTIVE, align 4
  %137 = load i32, i32* @MESH_PATH_RESOLVING, align 4
  %138 = or i32 %136, %137
  %139 = and i32 %135, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %158

141:                                              ; preds = %132
  %142 = load i64, i64* @jiffies, align 8
  %143 = load %struct.mesh_path*, %struct.mesh_path** %10, align 8
  %144 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %143, i32 0, i32 5
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %147 = call i64 @root_path_confirmation_jiffies(%struct.ieee80211_sub_if_data* %146)
  %148 = add nsw i64 %145, %147
  %149 = call i64 @time_after(i64 %142, i64 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %141
  %152 = load i64, i64* @jiffies, align 8
  %153 = load %struct.mesh_path*, %struct.mesh_path** %10, align 8
  %154 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %153, i32 0, i32 5
  %155 = load i64, i64* %154, align 8
  %156 = call i64 @time_before(i64 %152, i64 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %180

158:                                              ; preds = %151, %141, %132
  %159 = load %struct.mesh_path*, %struct.mesh_path** %10, align 8
  %160 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @MESH_PATH_FIXED, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %180, label %165

165:                                              ; preds = %158
  %166 = load i32, i32* %11, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %180

168:                                              ; preds = %165
  %169 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %170 = load i32*, i32** %14, align 8
  %171 = call i32 (%struct.ieee80211_sub_if_data*, i8*, i32*, ...) @mhwmp_dbg(%struct.ieee80211_sub_if_data* %169, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32* %170)
  %172 = load %struct.mesh_path*, %struct.mesh_path** %10, align 8
  %173 = load i32, i32* @PREQ_Q_F_START, align 4
  %174 = load i32, i32* @PREQ_Q_F_REFRESH, align 4
  %175 = or i32 %173, %174
  %176 = call i32 @mesh_queue_preq(%struct.mesh_path* %172, i32 %175)
  %177 = load i64, i64* @jiffies, align 8
  %178 = load %struct.mesh_path*, %struct.mesh_path** %10, align 8
  %179 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %178, i32 0, i32 5
  store i64 %177, i64* %179, align 8
  br label %180

180:                                              ; preds = %168, %165, %158, %151
  %181 = load i64, i64* %15, align 8
  %182 = load %struct.mesh_path*, %struct.mesh_path** %10, align 8
  %183 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %182, i32 0, i32 0
  store i64 %181, i64* %183, align 8
  %184 = load i64, i64* %16, align 8
  %185 = load i64, i64* %17, align 8
  %186 = add nsw i64 %184, %185
  %187 = load %struct.mesh_path*, %struct.mesh_path** %10, align 8
  %188 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %187, i32 0, i32 1
  store i64 %186, i64* %188, align 8
  %189 = load %struct.mesh_path*, %struct.mesh_path** %10, align 8
  %190 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %189, i32 0, i32 3
  store i32 1, i32* %190, align 4
  %191 = load %struct.mesh_path*, %struct.mesh_path** %10, align 8
  %192 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %195 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @ETH_ALEN, align 4
  %198 = call i32 @memcpy(i32 %193, i32 %196, i32 %197)
  %199 = load i32, i32* %19, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %180
  %202 = load %struct.mesh_path*, %struct.mesh_path** %10, align 8
  %203 = call i32 @mesh_path_add_gate(%struct.mesh_path* %202)
  br label %204

204:                                              ; preds = %201, %180
  %205 = load i32, i32* %11, align 4
  %206 = icmp sle i32 %205, 1
  br i1 %206, label %207, label %214

207:                                              ; preds = %204
  %208 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %7, align 8
  %209 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %210, align 8
  %213 = call i32 (...) @rcu_read_unlock()
  br label %241

214:                                              ; preds = %204
  %215 = load i32, i32* %11, align 4
  %216 = add nsw i32 %215, -1
  store i32 %216, i32* %11, align 4
  %217 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %7, align 8
  %218 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %239

222:                                              ; preds = %214
  %223 = load i32, i32* @MPATH_RANN, align 4
  %224 = load i32, i32* %12, align 4
  %225 = load i32*, i32** %14, align 8
  %226 = load i64, i64* %15, align 8
  %227 = call i32 @cpu_to_le32(i64 %226)
  %228 = load i32, i32* @broadcast_addr, align 4
  %229 = load i32, i32* %13, align 4
  %230 = load i32, i32* %11, align 4
  %231 = load i64, i64* %18, align 8
  %232 = call i32 @cpu_to_le32(i64 %231)
  %233 = load i64, i64* %16, align 8
  %234 = load i64, i64* %17, align 8
  %235 = add nsw i64 %233, %234
  %236 = call i32 @cpu_to_le32(i64 %235)
  %237 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %238 = call i32 @mesh_path_sel_frame_tx(i32 %223, i32 %224, i32* %225, i32 %227, i32 0, i32* null, i32 0, i32 %228, i32 %229, i32 %230, i32 %232, i32 %236, i32 0, %struct.ieee80211_sub_if_data* %237)
  br label %239

239:                                              ; preds = %222, %214
  %240 = call i32 (...) @rcu_read_unlock()
  br label %241

241:                                              ; preds = %239, %207, %130, %101, %83, %66
  ret void
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @ether_addr_equal(i32*, i32) #1

declare dso_local i32 @mhwmp_dbg(%struct.ieee80211_sub_if_data*, i8*, i32*, ...) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @airtime_link_metric_get(%struct.ieee80211_local*, %struct.sta_info*) #1

declare dso_local %struct.mesh_path* @mesh_path_lookup(%struct.ieee80211_sub_if_data*, i32*) #1

declare dso_local %struct.mesh_path* @mesh_path_add(%struct.ieee80211_sub_if_data*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.mesh_path*) #1

declare dso_local i32 @SN_LT(i64, i64) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @root_path_confirmation_jiffies(%struct.ieee80211_sub_if_data*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @mesh_queue_preq(%struct.mesh_path*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @mesh_path_add_gate(%struct.mesh_path*) #1

declare dso_local i32 @mesh_path_sel_frame_tx(i32, i32, i32*, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, %struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
