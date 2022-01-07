; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_dump_zpool.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_dump_zpool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i8* }
%struct.TYPE_26__ = type { i32, i32, i32, %struct.TYPE_27__*, i32, i32 }
%struct.TYPE_27__ = type { i32, i32, i32, i32 }

@dump_opt = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"\0ACached configuration:\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"\0AUberblock:\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@mos_refd_objs = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"Deferred frees\00", align 1
@SPA_VERSION_DEADLISTS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"Pool snapshot frees\00", align 1
@SPA_FEATURE_DEVICE_REMOVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"Pool obsolete blocks\00", align 1
@SPA_FEATURE_ASYNC_DESTROY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"Pool dataset frees\00", align 1
@dump_one_dir = common dso_local global i32 0, align 4
@DS_FIND_SNAPSHOTS = common dso_local global i32 0, align 4
@DS_FIND_CHILDREN = common dso_local global i32 0, align 4
@SPA_FEATURES = common dso_local global i64 0, align 8
@spa_feature_table = common dso_local global %struct.TYPE_25__* null, align 8
@ZFEATURE_FLAG_PER_DATASET = common dso_local global i32 0, align 4
@dataset_feature_count = common dso_local global i64* null, align 8
@.str.7 = private unnamed_addr constant [62 x i8] c"%s feature refcount mismatch: %lld datasets != %lld refcount\0A\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"Verified %s feature refcount of %llu is correct\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_26__*)* @dump_zpool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_zpool(%struct.TYPE_26__* %0) #0 {
  %2 = alloca %struct.TYPE_26__*, align 8
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %2, align 8
  %8 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %9 = call %struct.TYPE_27__* @spa_get_dsl(%struct.TYPE_26__* %8)
  store %struct.TYPE_27__* %9, %struct.TYPE_27__** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load i32*, i32** @dump_opt, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 83
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %16 = call i32 @dump_simulated_ddt(%struct.TYPE_26__* %15)
  br label %280

17:                                               ; preds = %1
  %18 = load i32*, i32** @dump_opt, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 101
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %17
  %23 = load i32*, i32** @dump_opt, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 67
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dump_nvlist(i32 %31, i32 8)
  br label %33

33:                                               ; preds = %27, %22, %17
  %34 = load i32*, i32** @dump_opt, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 67
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %40 = call i32 @dump_config(%struct.TYPE_26__* %39)
  br label %41

41:                                               ; preds = %38, %33
  %42 = load i32*, i32** @dump_opt, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 117
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %47, i32 0, i32 4
  %49 = call i32 @dump_uberblock(i32* %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %46, %41
  %51 = load i32*, i32** @dump_opt, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 68
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %57 = call i32 @dump_all_ddts(%struct.TYPE_26__* %56)
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i32*, i32** @dump_opt, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 100
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %61, 2
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load i32*, i32** @dump_opt, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 109
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63, %58
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %70 = call i32 @dump_metaslabs(%struct.TYPE_26__* %69)
  br label %71

71:                                               ; preds = %68, %63
  %72 = load i32*, i32** @dump_opt, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 77
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %78 = call i32 @dump_metaslab_groups(%struct.TYPE_26__* %77)
  br label %79

79:                                               ; preds = %76, %71
  %80 = load i32*, i32** @dump_opt, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 100
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %79
  %85 = load i32*, i32** @dump_opt, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 105
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %229

89:                                               ; preds = %84, %79
  %90 = call i32 @range_tree_create(i32* null, i32* null)
  store i32 %90, i32* @mos_refd_objs, align 4
  %91 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @dump_dir(i32 %93)
  %95 = load i32*, i32** @dump_opt, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 100
  %97 = load i32, i32* %96, align 4
  %98 = icmp sge i32 %97, 3
  br i1 %98, label %99, label %145

99:                                               ; preds = %89
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %101, align 8
  store %struct.TYPE_27__* %102, %struct.TYPE_27__** %5, align 8
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %103, i32 0, i32 2
  %105 = call i32 @dump_full_bpobj(i32* %104, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %106 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %107 = call i64 @spa_version(%struct.TYPE_26__* %106)
  %108 = load i64, i64* @SPA_VERSION_DEADLISTS, align 8
  %109 = icmp sge i64 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %99
  %111 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %111, i32 0, i32 2
  %113 = call i32 @dump_full_bpobj(i32* %112, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 0)
  br label %114

114:                                              ; preds = %110, %99
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 1
  %117 = call i64 @bpobj_is_open(i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %114
  %120 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %121 = load i32, i32* @SPA_FEATURE_DEVICE_REMOVAL, align 4
  %122 = call i32 @spa_feature_is_enabled(%struct.TYPE_26__* %120, i32 %121)
  %123 = call i32 @ASSERT(i32 %122)
  %124 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %124, i32 0, i32 1
  %126 = call i32 @dump_full_bpobj(i32* %125, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 0)
  br label %127

127:                                              ; preds = %119, %114
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %129 = load i32, i32* @SPA_FEATURE_ASYNC_DESTROY, align 4
  %130 = call i64 @spa_feature_is_active(%struct.TYPE_26__* %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %127
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @dump_bptree(i32 %135, i32 %138, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %140

140:                                              ; preds = %132, %127
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @dump_dtl(i32 %143, i32 0)
  br label %145

145:                                              ; preds = %140, %89
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %147 = call i32 @spa_name(%struct.TYPE_26__* %146)
  %148 = load i32, i32* @dump_one_dir, align 4
  %149 = load i32, i32* @DS_FIND_SNAPSHOTS, align 4
  %150 = load i32, i32* @DS_FIND_CHILDREN, align 4
  %151 = or i32 %149, %150
  %152 = call i32 @dmu_objset_find(i32 %147, i32 %148, i32* null, i32 %151)
  %153 = load i32, i32* %4, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %145
  %156 = load i32*, i32** @dump_opt, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 76
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %155
  %161 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %162 = call i32 @dump_mos_leaks(%struct.TYPE_26__* %161)
  store i32 %162, i32* %4, align 4
  br label %163

163:                                              ; preds = %160, %155, %145
  store i64 0, i64* %6, align 8
  br label %164

164:                                              ; preds = %219, %163
  %165 = load i64, i64* %6, align 8
  %166 = load i64, i64* @SPA_FEATURES, align 8
  %167 = icmp ult i64 %165, %166
  br i1 %167, label %168, label %222

168:                                              ; preds = %164
  %169 = load %struct.TYPE_25__*, %struct.TYPE_25__** @spa_feature_table, align 8
  %170 = load i64, i64* %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %169, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @ZFEATURE_FLAG_PER_DATASET, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %183, label %177

177:                                              ; preds = %168
  %178 = load i64*, i64** @dataset_feature_count, align 8
  %179 = load i64, i64* %6, align 8
  %180 = getelementptr inbounds i64, i64* %178, i64 %179
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @ASSERT0(i64 %181)
  br label %219

183:                                              ; preds = %168
  %184 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %185 = load %struct.TYPE_25__*, %struct.TYPE_25__** @spa_feature_table, align 8
  %186 = load i64, i64* %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %185, i64 %186
  %188 = call i32 @feature_get_refcount(%struct.TYPE_26__* %184, %struct.TYPE_25__* %187, i64* %7)
  %189 = load i64*, i64** @dataset_feature_count, align 8
  %190 = load i64, i64* %6, align 8
  %191 = getelementptr inbounds i64, i64* %189, i64 %190
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* %7, align 8
  %194 = icmp ne i64 %192, %193
  br i1 %194, label %195, label %209

195:                                              ; preds = %183
  %196 = load %struct.TYPE_25__*, %struct.TYPE_25__** @spa_feature_table, align 8
  %197 = load i64, i64* %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %196, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %198, i32 0, i32 1
  %200 = load i8*, i8** %199, align 8
  %201 = load i64*, i64** @dataset_feature_count, align 8
  %202 = load i64, i64* %6, align 8
  %203 = getelementptr inbounds i64, i64* %201, i64 %202
  %204 = load i64, i64* %203, align 8
  %205 = trunc i64 %204 to i32
  %206 = load i64, i64* %7, align 8
  %207 = trunc i64 %206 to i32
  %208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0), i8* %200, i32 %205, i32 %207)
  store i32 2, i32* %4, align 4
  br label %218

209:                                              ; preds = %183
  %210 = load %struct.TYPE_25__*, %struct.TYPE_25__** @spa_feature_table, align 8
  %211 = load i64, i64* %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %210, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %212, i32 0, i32 1
  %214 = load i8*, i8** %213, align 8
  %215 = load i64, i64* %7, align 8
  %216 = trunc i64 %215 to i32
  %217 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i8* %214, i32 %216)
  br label %218

218:                                              ; preds = %209, %195
  br label %219

219:                                              ; preds = %218, %177
  %220 = load i64, i64* %6, align 8
  %221 = add i64 %220, 1
  store i64 %221, i64* %6, align 8
  br label %164

222:                                              ; preds = %164
  %223 = load i32, i32* %4, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %222
  %226 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %227 = call i32 @verify_device_removal_feature_counts(%struct.TYPE_26__* %226)
  store i32 %227, i32* %4, align 4
  br label %228

228:                                              ; preds = %225, %222
  br label %229

229:                                              ; preds = %228, %84
  %230 = load i32, i32* %4, align 4
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %245

232:                                              ; preds = %229
  %233 = load i32*, i32** @dump_opt, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 98
  %235 = load i32, i32* %234, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %242, label %237

237:                                              ; preds = %232
  %238 = load i32*, i32** @dump_opt, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 99
  %240 = load i32, i32* %239, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %237, %232
  %243 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %244 = call i32 @dump_block_stats(%struct.TYPE_26__* %243)
  store i32 %244, i32* %4, align 4
  br label %245

245:                                              ; preds = %242, %237, %229
  %246 = load i32, i32* %4, align 4
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %245
  %249 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %250 = call i32 @verify_spacemap_refcounts(%struct.TYPE_26__* %249)
  store i32 %250, i32* %4, align 4
  br label %251

251:                                              ; preds = %248, %245
  %252 = load i32*, i32** @dump_opt, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 115
  %254 = load i32, i32* %253, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %251
  %257 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %258 = call i32 @show_pool_stats(%struct.TYPE_26__* %257)
  br label %259

259:                                              ; preds = %256, %251
  %260 = load i32*, i32** @dump_opt, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 104
  %262 = load i32, i32* %261, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %259
  %265 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %266 = call i32 @dump_history(%struct.TYPE_26__* %265)
  br label %267

267:                                              ; preds = %264, %259
  %268 = load i32, i32* %4, align 4
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %267
  %271 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %272 = call i32 @verify_checkpoint(%struct.TYPE_26__* %271)
  store i32 %272, i32* %4, align 4
  br label %273

273:                                              ; preds = %270, %267
  %274 = load i32, i32* %4, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %280

276:                                              ; preds = %273
  %277 = call i32 (...) @dump_debug_buffer()
  %278 = load i32, i32* %4, align 4
  %279 = call i32 @exit(i32 %278) #3
  unreachable

280:                                              ; preds = %14, %273
  ret void
}

declare dso_local %struct.TYPE_27__* @spa_get_dsl(%struct.TYPE_26__*) #1

declare dso_local i32 @dump_simulated_ddt(%struct.TYPE_26__*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @dump_nvlist(i32, i32) #1

declare dso_local i32 @dump_config(%struct.TYPE_26__*) #1

declare dso_local i32 @dump_uberblock(i32*, i8*, i8*) #1

declare dso_local i32 @dump_all_ddts(%struct.TYPE_26__*) #1

declare dso_local i32 @dump_metaslabs(%struct.TYPE_26__*) #1

declare dso_local i32 @dump_metaslab_groups(%struct.TYPE_26__*) #1

declare dso_local i32 @range_tree_create(i32*, i32*) #1

declare dso_local i32 @dump_dir(i32) #1

declare dso_local i32 @dump_full_bpobj(i32*, i8*, i32) #1

declare dso_local i64 @spa_version(%struct.TYPE_26__*) #1

declare dso_local i64 @bpobj_is_open(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spa_feature_is_enabled(%struct.TYPE_26__*, i32) #1

declare dso_local i64 @spa_feature_is_active(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @dump_bptree(i32, i32, i8*) #1

declare dso_local i32 @dump_dtl(i32, i32) #1

declare dso_local i32 @dmu_objset_find(i32, i32, i32*, i32) #1

declare dso_local i32 @spa_name(%struct.TYPE_26__*) #1

declare dso_local i32 @dump_mos_leaks(%struct.TYPE_26__*) #1

declare dso_local i32 @ASSERT0(i64) #1

declare dso_local i32 @feature_get_refcount(%struct.TYPE_26__*, %struct.TYPE_25__*, i64*) #1

declare dso_local i32 @verify_device_removal_feature_counts(%struct.TYPE_26__*) #1

declare dso_local i32 @dump_block_stats(%struct.TYPE_26__*) #1

declare dso_local i32 @verify_spacemap_refcounts(%struct.TYPE_26__*) #1

declare dso_local i32 @show_pool_stats(%struct.TYPE_26__*) #1

declare dso_local i32 @dump_history(%struct.TYPE_26__*) #1

declare dso_local i32 @verify_checkpoint(%struct.TYPE_26__*) #1

declare dso_local i32 @dump_debug_buffer(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
