; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c_balance_pgdat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c_balance_pgdat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.reclaim_state* }
%struct.reclaim_state = type { i64 }
%struct.TYPE_5__ = type { i32, i32, %struct.zone* }
%struct.zone = type { i32, i32, i32 }
%struct.scan_control = type { i32, i32, i32, i32, i32, i32, i64, i32*, i32, i32 }

@current = common dso_local global %struct.TYPE_6__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@vm_swappiness = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global i32 0, align 4
@MAX_NR_ZONES = common dso_local global i32 0, align 4
@laptop_mode = common dso_local global i32 0, align 4
@PAGEOUTRUN = common dso_local global i32 0, align 4
@DEF_PRIORITY = common dso_local global i32 0, align 4
@KSWAPD_ZONE_BALANCE_GAP_RATIO = common dso_local global i32 0, align 4
@ZONE_ALL_UNRECLAIMABLE = common dso_local global i32 0, align 4
@SWAP_CLUSTER_MAX = common dso_local global i32 0, align 4
@PAGE_ALLOC_COSTLY_ORDER = common dso_local global i32 0, align 4
@ZONE_CONGESTED = common dso_local global i32 0, align 4
@KSWAPD_SKIP_CONGESTION_WAIT = common dso_local global i32 0, align 4
@BLK_RW_ASYNC = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i32)* @balance_pgdat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @balance_pgdat(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.reclaim_state*, align 8
  %11 = alloca %struct.scan_control, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.zone*, align 8
  %18 = alloca %struct.zone*, align 8
  %19 = alloca %struct.zone*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.zone*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %9, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.reclaim_state*, %struct.reclaim_state** %27, align 8
  store %struct.reclaim_state* %28, %struct.reclaim_state** %10, align 8
  %29 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %11, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %11, i32 0, i32 1
  store i32 1, i32* %30, align 4
  %31 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %11, i32 0, i32 2
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %11, i32 0, i32 3
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %11, i32 0, i32 4
  store i32 0, i32* %34, align 8
  %35 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %11, i32 0, i32 5
  %36 = load i32, i32* @GFP_KERNEL, align 4
  store i32 %36, i32* %35, align 4
  %37 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %11, i32 0, i32 6
  store i64 0, i64* %37, align 8
  %38 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %11, i32 0, i32 7
  store i32* null, i32** %38, align 8
  %39 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %11, i32 0, i32 8
  %40 = load i32, i32* @vm_swappiness, align 4
  store i32 %40, i32* %39, align 8
  %41 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %11, i32 0, i32 9
  %42 = load i32, i32* @ULONG_MAX, align 4
  store i32 %42, i32* %41, align 4
  %43 = load i32, i32* @MAX_NR_ZONES, align 4
  %44 = zext i32 %43 to i64
  %45 = call i8* @llvm.stacksave()
  store i8* %45, i8** %12, align 8
  %46 = alloca i32, i64 %44, align 16
  store i64 %44, i64* %13, align 8
  br label %47

47:                                               ; preds = %398, %2
  store i64 0, i64* %8, align 8
  %48 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %11, i32 0, i32 3
  store i32 0, i32* %48, align 4
  %49 = load i32, i32* @laptop_mode, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %11, i32 0, i32 4
  store i32 %52, i32* %53, align 8
  %54 = load i32, i32* @PAGEOUTRUN, align 4
  %55 = call i32 @count_vm_event(i32 %54)
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %67, %47
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = load i32, i32* @DEF_PRIORITY, align 4
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %46, i64 %65
  store i32 %63, i32* %66, align 4
  br label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %56

70:                                               ; preds = %56
  %71 = load i32, i32* @DEF_PRIORITY, align 4
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %359, %70
  %73 = load i32, i32* %6, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %362

75:                                               ; preds = %72
  store i32 0, i32* %14, align 4
  store i64 0, i64* %15, align 8
  store i32 0, i32* %16, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = call i32 (...) @disable_swap_token()
  br label %80

80:                                               ; preds = %78, %75
  store i32 1, i32* %5, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sub nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %121, %80
  %86 = load i32, i32* %7, align 4
  %87 = icmp sge i32 %86, 0
  br i1 %87, label %88, label %124

88:                                               ; preds = %85
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  %91 = load %struct.zone*, %struct.zone** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.zone, %struct.zone* %91, i64 %93
  store %struct.zone* %94, %struct.zone** %17, align 8
  %95 = load %struct.zone*, %struct.zone** %17, align 8
  %96 = call i32 @populated_zone(%struct.zone* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %88
  br label %121

99:                                               ; preds = %88
  %100 = load %struct.zone*, %struct.zone** %17, align 8
  %101 = call i64 @zone_is_all_unreclaimable(%struct.zone* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @DEF_PRIORITY, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  br label %121

108:                                              ; preds = %103, %99
  %109 = load %struct.zone*, %struct.zone** %17, align 8
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @age_active_anon(%struct.zone* %109, %struct.scan_control* %11, i32 %110)
  %112 = load %struct.zone*, %struct.zone** %17, align 8
  %113 = load i32, i32* %4, align 4
  %114 = load %struct.zone*, %struct.zone** %17, align 8
  %115 = call i64 @high_wmark_pages(%struct.zone* %114)
  %116 = call i32 @zone_watermark_ok_safe(%struct.zone* %112, i32 %113, i64 %115, i32 0, i32 0)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %108
  %119 = load i32, i32* %7, align 4
  store i32 %119, i32* %14, align 4
  br label %124

120:                                              ; preds = %108
  br label %121

121:                                              ; preds = %120, %107, %98
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %7, align 4
  br label %85

124:                                              ; preds = %118, %85
  %125 = load i32, i32* %7, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  br label %363

128:                                              ; preds = %124
  store i32 0, i32* %7, align 4
  br label %129

129:                                              ; preds = %145, %128
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %14, align 4
  %132 = icmp sle i32 %130, %131
  br i1 %132, label %133, label %148

133:                                              ; preds = %129
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 2
  %136 = load %struct.zone*, %struct.zone** %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.zone, %struct.zone* %136, i64 %138
  store %struct.zone* %139, %struct.zone** %18, align 8
  %140 = load %struct.zone*, %struct.zone** %18, align 8
  %141 = call i32 @zone_reclaimable_pages(%struct.zone* %140)
  %142 = sext i32 %141 to i64
  %143 = load i64, i64* %15, align 8
  %144 = add i64 %143, %142
  store i64 %144, i64* %15, align 8
  br label %145

145:                                              ; preds = %133
  %146 = load i32, i32* %7, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %7, align 4
  br label %129

148:                                              ; preds = %129
  store i32 0, i32* %7, align 4
  br label %149

149:                                              ; preds = %319, %148
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* %14, align 4
  %152 = icmp sle i32 %150, %151
  br i1 %152, label %153, label %322

153:                                              ; preds = %149
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 2
  %156 = load %struct.zone*, %struct.zone** %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.zone, %struct.zone* %156, i64 %158
  store %struct.zone* %159, %struct.zone** %19, align 8
  store i32 0, i32* %24, align 4
  %160 = load %struct.zone*, %struct.zone** %19, align 8
  %161 = call i32 @populated_zone(%struct.zone* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %153
  br label %319

164:                                              ; preds = %153
  %165 = load %struct.zone*, %struct.zone** %19, align 8
  %166 = call i64 @zone_is_all_unreclaimable(%struct.zone* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %164
  %169 = load i32, i32* %6, align 4
  %170 = load i32, i32* @DEF_PRIORITY, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %168
  br label %319

173:                                              ; preds = %168, %164
  %174 = load %struct.zone*, %struct.zone** %19, align 8
  %175 = load i32, i32* %4, align 4
  %176 = load %struct.zone*, %struct.zone** %19, align 8
  %177 = call i64 @high_wmark_pages(%struct.zone* %176)
  %178 = load i32, i32* %14, align 4
  %179 = call i32 @zone_watermark_ok(%struct.zone* %174, i32 %175, i64 %177, i32 %178, i32 0)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %173
  store i32 0, i32* %5, align 4
  br label %182

182:                                              ; preds = %181, %173
  %183 = load i32, i32* %6, align 4
  %184 = load i32, i32* %7, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %46, i64 %185
  store i32 %183, i32* %186, align 4
  %187 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %11, i32 0, i32 6
  store i64 0, i64* %187, align 8
  %188 = load %struct.zone*, %struct.zone** %19, align 8
  %189 = load i32, i32* %6, align 4
  %190 = call i32 @note_zone_scanning_priority(%struct.zone* %188, i32 %189)
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  store i32 %193, i32* %21, align 4
  %194 = load %struct.zone*, %struct.zone** %19, align 8
  %195 = call i32 @zone_idx(%struct.zone* %194)
  store i32 %195, i32* %22, align 4
  %196 = load %struct.zone*, %struct.zone** %19, align 8
  %197 = load i32, i32* %4, align 4
  %198 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %11, i32 0, i32 5
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %21, align 4
  %201 = load i32, i32* %22, align 4
  %202 = call i32 @mem_cgroup_soft_limit_reclaim(%struct.zone* %196, i32 %197, i32 %199, i32 %200, i32 %201)
  %203 = load %struct.zone*, %struct.zone** %19, align 8
  %204 = call i32 @low_wmark_pages(%struct.zone* %203)
  %205 = load %struct.zone*, %struct.zone** %19, align 8
  %206 = getelementptr inbounds %struct.zone, %struct.zone* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @KSWAPD_ZONE_BALANCE_GAP_RATIO, align 4
  %209 = add nsw i32 %207, %208
  %210 = sub nsw i32 %209, 1
  %211 = load i32, i32* @KSWAPD_ZONE_BALANCE_GAP_RATIO, align 4
  %212 = sdiv i32 %210, %211
  %213 = call i64 @min(i32 %204, i32 %212)
  store i64 %213, i64* %23, align 8
  %214 = load %struct.zone*, %struct.zone** %19, align 8
  %215 = load i32, i32* %4, align 4
  %216 = load %struct.zone*, %struct.zone** %19, align 8
  %217 = call i64 @high_wmark_pages(%struct.zone* %216)
  %218 = load i64, i64* %23, align 8
  %219 = add i64 %217, %218
  %220 = load i32, i32* %14, align 4
  %221 = call i32 @zone_watermark_ok_safe(%struct.zone* %214, i32 %215, i64 %219, i32 %220, i32 0)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %227, label %223

223:                                              ; preds = %182
  %224 = load i32, i32* %6, align 4
  %225 = load %struct.zone*, %struct.zone** %19, align 8
  %226 = call i32 @shrink_zone(i32 %224, %struct.zone* %225, %struct.scan_control* %11)
  br label %227

227:                                              ; preds = %223, %182
  %228 = load %struct.reclaim_state*, %struct.reclaim_state** %10, align 8
  %229 = getelementptr inbounds %struct.reclaim_state, %struct.reclaim_state* %228, i32 0, i32 0
  store i64 0, i64* %229, align 8
  %230 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %11, i32 0, i32 6
  %231 = load i64, i64* %230, align 8
  %232 = load i32, i32* @GFP_KERNEL, align 4
  %233 = load i64, i64* %15, align 8
  %234 = call i32 @shrink_slab(i64 %231, i32 %232, i64 %233)
  store i32 %234, i32* %20, align 4
  %235 = load %struct.reclaim_state*, %struct.reclaim_state** %10, align 8
  %236 = getelementptr inbounds %struct.reclaim_state, %struct.reclaim_state* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %11, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = sext i32 %239 to i64
  %241 = add nsw i64 %240, %237
  %242 = trunc i64 %241 to i32
  store i32 %242, i32* %238, align 4
  %243 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %11, i32 0, i32 6
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* %8, align 8
  %246 = add i64 %245, %244
  store i64 %246, i64* %8, align 8
  %247 = load %struct.zone*, %struct.zone** %19, align 8
  %248 = call i64 @zone_is_all_unreclaimable(%struct.zone* %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %227
  br label %319

251:                                              ; preds = %227
  %252 = load i32, i32* %20, align 4
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %266

254:                                              ; preds = %251
  %255 = load %struct.zone*, %struct.zone** %19, align 8
  %256 = getelementptr inbounds %struct.zone, %struct.zone* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.zone*, %struct.zone** %19, align 8
  %259 = call i32 @zone_reclaimable_pages(%struct.zone* %258)
  %260 = mul nsw i32 %259, 6
  %261 = icmp sge i32 %257, %260
  br i1 %261, label %262, label %266

262:                                              ; preds = %254
  %263 = load %struct.zone*, %struct.zone** %19, align 8
  %264 = load i32, i32* @ZONE_ALL_UNRECLAIMABLE, align 4
  %265 = call i32 @zone_set_flag(%struct.zone* %263, i32 %264)
  br label %266

266:                                              ; preds = %262, %254, %251
  %267 = load i64, i64* %8, align 8
  %268 = load i32, i32* @SWAP_CLUSTER_MAX, align 4
  %269 = mul nsw i32 %268, 2
  %270 = sext i32 %269 to i64
  %271 = icmp ugt i64 %267, %270
  br i1 %271, label %272, label %284

272:                                              ; preds = %266
  %273 = load i64, i64* %8, align 8
  %274 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %11, i32 0, i32 3
  %275 = load i32, i32* %274, align 4
  %276 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %11, i32 0, i32 3
  %277 = load i32, i32* %276, align 4
  %278 = sdiv i32 %277, 2
  %279 = add nsw i32 %275, %278
  %280 = sext i32 %279 to i64
  %281 = icmp ugt i64 %273, %280
  br i1 %281, label %282, label %284

282:                                              ; preds = %272
  %283 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %11, i32 0, i32 4
  store i32 1, i32* %283, align 8
  br label %284

284:                                              ; preds = %282, %272, %266
  %285 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %11, i32 0, i32 2
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @PAGE_ALLOC_COSTLY_ORDER, align 4
  %288 = icmp sgt i32 %286, %287
  br i1 %288, label %289, label %296

289:                                              ; preds = %284
  %290 = load %struct.zone*, %struct.zone** %19, align 8
  %291 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %11, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %11, i32 0, i32 5
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @compact_zone_order(%struct.zone* %290, i32 %292, i32 %294, i32 0, i32* %24)
  br label %296

296:                                              ; preds = %289, %284
  %297 = load %struct.zone*, %struct.zone** %19, align 8
  %298 = load i32, i32* %4, align 4
  %299 = load %struct.zone*, %struct.zone** %19, align 8
  %300 = call i64 @high_wmark_pages(%struct.zone* %299)
  %301 = load i32, i32* %14, align 4
  %302 = call i32 @zone_watermark_ok_safe(%struct.zone* %297, i32 %298, i64 %300, i32 %301, i32 0)
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %314, label %304

304:                                              ; preds = %296
  %305 = load %struct.zone*, %struct.zone** %19, align 8
  %306 = load i32, i32* %4, align 4
  %307 = load %struct.zone*, %struct.zone** %19, align 8
  %308 = call i64 @min_wmark_pages(%struct.zone* %307)
  %309 = load i32, i32* %14, align 4
  %310 = call i32 @zone_watermark_ok_safe(%struct.zone* %305, i32 %306, i64 %308, i32 %309, i32 0)
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %313, label %312

312:                                              ; preds = %304
  store i32 1, i32* %16, align 4
  br label %313

313:                                              ; preds = %312, %304
  br label %318

314:                                              ; preds = %296
  %315 = load %struct.zone*, %struct.zone** %19, align 8
  %316 = load i32, i32* @ZONE_CONGESTED, align 4
  %317 = call i32 @zone_clear_flag(%struct.zone* %315, i32 %316)
  br label %318

318:                                              ; preds = %314, %313
  br label %319

319:                                              ; preds = %318, %250, %172, %163
  %320 = load i32, i32* %7, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %7, align 4
  br label %149

322:                                              ; preds = %149
  %323 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %11, i32 0, i32 3
  %324 = load i32, i32* %323, align 4
  %325 = sext i32 %324 to i64
  %326 = load i64, i64* %9, align 8
  %327 = add i64 %326, %325
  store i64 %327, i64* %9, align 8
  %328 = load i32, i32* %5, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %331

330:                                              ; preds = %322
  br label %362

331:                                              ; preds = %322
  %332 = load i64, i64* %8, align 8
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %351

334:                                              ; preds = %331
  %335 = load i32, i32* %6, align 4
  %336 = load i32, i32* @DEF_PRIORITY, align 4
  %337 = sub nsw i32 %336, 2
  %338 = icmp slt i32 %335, %337
  br i1 %338, label %339, label %351

339:                                              ; preds = %334
  %340 = load i32, i32* %16, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %345

342:                                              ; preds = %339
  %343 = load i32, i32* @KSWAPD_SKIP_CONGESTION_WAIT, align 4
  %344 = call i32 @count_vm_event(i32 %343)
  br label %350

345:                                              ; preds = %339
  %346 = load i32, i32* @BLK_RW_ASYNC, align 4
  %347 = load i32, i32* @HZ, align 4
  %348 = sdiv i32 %347, 10
  %349 = call i32 @congestion_wait(i32 %346, i32 %348)
  br label %350

350:                                              ; preds = %345, %342
  br label %351

351:                                              ; preds = %350, %334, %331
  %352 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %11, i32 0, i32 3
  %353 = load i32, i32* %352, align 4
  %354 = load i32, i32* @SWAP_CLUSTER_MAX, align 4
  %355 = icmp sge i32 %353, %354
  br i1 %355, label %356, label %357

356:                                              ; preds = %351
  br label %362

357:                                              ; preds = %351
  %358 = call i32 (...) @cond_resched()
  br label %359

359:                                              ; preds = %357
  %360 = load i32, i32* %6, align 4
  %361 = add nsw i32 %360, -1
  store i32 %361, i32* %6, align 4
  br label %72

362:                                              ; preds = %356, %330, %72
  br label %363

363:                                              ; preds = %362, %127
  store i32 0, i32* %7, align 4
  br label %364

364:                                              ; preds = %383, %363
  %365 = load i32, i32* %7, align 4
  %366 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %367 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = icmp slt i32 %365, %368
  br i1 %369, label %370, label %386

370:                                              ; preds = %364
  %371 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %372 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %371, i32 0, i32 2
  %373 = load %struct.zone*, %struct.zone** %372, align 8
  %374 = load i32, i32* %7, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds %struct.zone, %struct.zone* %373, i64 %375
  store %struct.zone* %376, %struct.zone** %25, align 8
  %377 = load i32, i32* %7, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32, i32* %46, i64 %378
  %380 = load i32, i32* %379, align 4
  %381 = load %struct.zone*, %struct.zone** %25, align 8
  %382 = getelementptr inbounds %struct.zone, %struct.zone* %381, i32 0, i32 2
  store i32 %380, i32* %382, align 4
  br label %383

383:                                              ; preds = %370
  %384 = load i32, i32* %7, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %7, align 4
  br label %364

386:                                              ; preds = %364
  %387 = load i32, i32* %5, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %399, label %389

389:                                              ; preds = %386
  %390 = call i32 (...) @cond_resched()
  %391 = call i32 (...) @try_to_freeze()
  %392 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %11, i32 0, i32 3
  %393 = load i32, i32* %392, align 4
  %394 = load i32, i32* @SWAP_CLUSTER_MAX, align 4
  %395 = icmp slt i32 %393, %394
  br i1 %395, label %396, label %398

396:                                              ; preds = %389
  %397 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %11, i32 0, i32 2
  store i32 0, i32* %397, align 8
  store i32 0, i32* %4, align 4
  br label %398

398:                                              ; preds = %396, %389
  br label %47

399:                                              ; preds = %386
  %400 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %401 = load i64, i64* %9, align 8
  %402 = call i32 @trace_mm_kswapd_ran(%struct.TYPE_5__* %400, i64 %401)
  %403 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %11, i32 0, i32 3
  %404 = load i32, i32* %403, align 4
  %405 = sext i32 %404 to i64
  %406 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %406)
  ret i64 %405
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @count_vm_event(i32) #2

declare dso_local i32 @disable_swap_token(...) #2

declare dso_local i32 @populated_zone(%struct.zone*) #2

declare dso_local i64 @zone_is_all_unreclaimable(%struct.zone*) #2

declare dso_local i32 @age_active_anon(%struct.zone*, %struct.scan_control*, i32) #2

declare dso_local i32 @zone_watermark_ok_safe(%struct.zone*, i32, i64, i32, i32) #2

declare dso_local i64 @high_wmark_pages(%struct.zone*) #2

declare dso_local i32 @zone_reclaimable_pages(%struct.zone*) #2

declare dso_local i32 @zone_watermark_ok(%struct.zone*, i32, i64, i32, i32) #2

declare dso_local i32 @note_zone_scanning_priority(%struct.zone*, i32) #2

declare dso_local i32 @zone_idx(%struct.zone*) #2

declare dso_local i32 @mem_cgroup_soft_limit_reclaim(%struct.zone*, i32, i32, i32, i32) #2

declare dso_local i64 @min(i32, i32) #2

declare dso_local i32 @low_wmark_pages(%struct.zone*) #2

declare dso_local i32 @shrink_zone(i32, %struct.zone*, %struct.scan_control*) #2

declare dso_local i32 @shrink_slab(i64, i32, i64) #2

declare dso_local i32 @zone_set_flag(%struct.zone*, i32) #2

declare dso_local i32 @compact_zone_order(%struct.zone*, i32, i32, i32, i32*) #2

declare dso_local i64 @min_wmark_pages(%struct.zone*) #2

declare dso_local i32 @zone_clear_flag(%struct.zone*, i32) #2

declare dso_local i32 @congestion_wait(i32, i32) #2

declare dso_local i32 @cond_resched(...) #2

declare dso_local i32 @try_to_freeze(...) #2

declare dso_local i32 @trace_mm_kswapd_ran(%struct.TYPE_5__*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
