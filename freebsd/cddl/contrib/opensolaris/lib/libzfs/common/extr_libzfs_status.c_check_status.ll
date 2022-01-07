; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_status.c_check_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_status.c_check_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i64 }

@ZPOOL_CONFIG_VERSION = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_STATS = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_STATE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_SCAN_STATS = common dso_local global i32 0, align 4
@POOL_SCAN_RESILVER = common dso_local global i64 0, align 8
@DSS_SCANNING = common dso_local global i64 0, align 8
@ZPOOL_STATUS_RESILVERING = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_HOSTID = common dso_local global i32 0, align 4
@POOL_STATE_ACTIVE = common dso_local global i64 0, align 8
@ZPOOL_STATUS_HOSTID_MISMATCH = common dso_local global i32 0, align 4
@VDEV_STATE_CANT_OPEN = common dso_local global i64 0, align 8
@VDEV_AUX_VERSION_NEWER = common dso_local global i64 0, align 8
@ZPOOL_STATUS_VERSION_NEWER = common dso_local global i32 0, align 4
@VDEV_AUX_UNSUP_FEAT = common dso_local global i64 0, align 8
@ZPOOL_CONFIG_LOAD_INFO = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_CAN_RDONLY = common dso_local global i32 0, align 4
@ZPOOL_STATUS_UNSUP_FEAT_WRITE = common dso_local global i32 0, align 4
@ZPOOL_STATUS_UNSUP_FEAT_READ = common dso_local global i32 0, align 4
@VDEV_AUX_BAD_GUID_SUM = common dso_local global i64 0, align 8
@ZPOOL_STATUS_BAD_GUID_SUM = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_SUSPENDED = common dso_local global i32 0, align 4
@ZIO_FAILURE_MODE_CONTINUE = common dso_local global i64 0, align 8
@ZPOOL_STATUS_IO_FAILURE_CONTINUE = common dso_local global i32 0, align 4
@ZPOOL_STATUS_IO_FAILURE_WAIT = common dso_local global i32 0, align 4
@VDEV_AUX_BAD_LOG = common dso_local global i64 0, align 8
@ZPOOL_STATUS_BAD_LOG = common dso_local global i32 0, align 4
@vdev_faulted = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@ZPOOL_STATUS_FAULTED_DEV_NR = common dso_local global i32 0, align 4
@vdev_missing = common dso_local global i32 0, align 4
@ZPOOL_STATUS_MISSING_DEV_NR = common dso_local global i32 0, align 4
@vdev_broken = common dso_local global i32 0, align 4
@ZPOOL_STATUS_CORRUPT_LABEL_NR = common dso_local global i32 0, align 4
@VDEV_AUX_CORRUPT_DATA = common dso_local global i64 0, align 8
@ZPOOL_STATUS_CORRUPT_POOL = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_ERRCOUNT = common dso_local global i32 0, align 4
@ZPOOL_STATUS_CORRUPT_DATA = common dso_local global i32 0, align 4
@ZPOOL_STATUS_FAULTED_DEV_R = common dso_local global i32 0, align 4
@ZPOOL_STATUS_MISSING_DEV_R = common dso_local global i32 0, align 4
@ZPOOL_STATUS_CORRUPT_LABEL_R = common dso_local global i32 0, align 4
@vdev_errors = common dso_local global i32 0, align 4
@ZPOOL_STATUS_FAILING_DEV = common dso_local global i32 0, align 4
@vdev_offlined = common dso_local global i32 0, align 4
@ZPOOL_STATUS_OFFLINE_DEV = common dso_local global i32 0, align 4
@vdev_removed = common dso_local global i32 0, align 4
@ZPOOL_STATUS_REMOVED_DEV = common dso_local global i32 0, align 4
@vdev_non_native_ashift = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ZPOOL_STATUS_NON_NATIVE_ASHIFT = common dso_local global i32 0, align 4
@SPA_VERSION = common dso_local global i64 0, align 8
@ZPOOL_STATUS_VERSION_OLDER = common dso_local global i32 0, align 4
@SPA_VERSION_FEATURES = common dso_local global i64 0, align 8
@ZPOOL_CONFIG_ENABLED_FEAT = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_FEATURE_STATS = common dso_local global i32 0, align 4
@SPA_FEATURES = common dso_local global i32 0, align 4
@spa_feature_table = common dso_local global %struct.TYPE_5__* null, align 8
@ZPOOL_STATUS_FEAT_DISABLED = common dso_local global i32 0, align 4
@ZPOOL_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @check_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_status(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %8, align 8
  store i64 0, i64* %15, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* @ZPOOL_CONFIG_VERSION, align 4
  %22 = call i64 @nvlist_lookup_uint64(i32* %20, i32 %21, i64* %12)
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @verify(i32 %24)
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %28 = call i64 @nvlist_lookup_nvlist(i32* %26, i32 %27, i32** %6)
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @verify(i32 %30)
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* @ZPOOL_CONFIG_VDEV_STATS, align 4
  %34 = bitcast %struct.TYPE_6__** %7 to i64**
  %35 = call i64 @nvlist_lookup_uint64_array(i32* %32, i32 %33, i64** %34, i32* %9)
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @verify(i32 %37)
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* @ZPOOL_CONFIG_POOL_STATE, align 4
  %41 = call i64 @nvlist_lookup_uint64(i32* %39, i32 %40, i64* %13)
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @verify(i32 %43)
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* @ZPOOL_CONFIG_SCAN_STATS, align 4
  %47 = bitcast %struct.TYPE_7__** %8 to i64**
  %48 = call i64 @nvlist_lookup_uint64_array(i32* %45, i32 %46, i64** %47, i32* %10)
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = icmp ne %struct.TYPE_7__* %49, null
  br i1 %50, label %51, label %65

51:                                               ; preds = %2
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @POOL_SCAN_RESILVER, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @DSS_SCANNING, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* @ZPOOL_STATUS_RESILVERING, align 4
  store i32 %64, i32* %3, align 4
  br label %345

65:                                               ; preds = %57, %51, %2
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* @ZPOOL_CONFIG_HOSTID, align 4
  %68 = call i64 @nvlist_lookup_uint64(i32* %66, i32 %67, i64* %15)
  %69 = load i64, i64* %15, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %65
  %72 = load i64, i64* %15, align 8
  %73 = call i64 (...) @gethostid()
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load i64, i64* %13, align 8
  %77 = load i64, i64* @POOL_STATE_ACTIVE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* @ZPOOL_STATUS_HOSTID_MISMATCH, align 4
  store i32 %80, i32* %3, align 4
  br label %345

81:                                               ; preds = %75, %71, %65
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @VDEV_STATE_CANT_OPEN, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %81
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @VDEV_AUX_VERSION_NEWER, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i32, i32* @ZPOOL_STATUS_VERSION_NEWER, align 4
  store i32 %94, i32* %3, align 4
  br label %345

95:                                               ; preds = %87, %81
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @VDEV_STATE_CANT_OPEN, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %122

101:                                              ; preds = %95
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @VDEV_AUX_UNSUP_FEAT, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %122

107:                                              ; preds = %101
  %108 = load i32*, i32** %4, align 8
  %109 = load i32, i32* @ZPOOL_CONFIG_LOAD_INFO, align 4
  %110 = call i64 @nvlist_lookup_nvlist(i32* %108, i32 %109, i32** %16)
  %111 = icmp eq i64 %110, 0
  %112 = zext i1 %111 to i32
  %113 = call i32 @verify(i32 %112)
  %114 = load i32*, i32** %16, align 8
  %115 = load i32, i32* @ZPOOL_CONFIG_CAN_RDONLY, align 4
  %116 = call i64 @nvlist_exists(i32* %114, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %107
  %119 = load i32, i32* @ZPOOL_STATUS_UNSUP_FEAT_WRITE, align 4
  store i32 %119, i32* %3, align 4
  br label %345

120:                                              ; preds = %107
  %121 = load i32, i32* @ZPOOL_STATUS_UNSUP_FEAT_READ, align 4
  store i32 %121, i32* %3, align 4
  br label %345

122:                                              ; preds = %101, %95
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @VDEV_STATE_CANT_OPEN, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %136

128:                                              ; preds = %122
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @VDEV_AUX_BAD_GUID_SUM, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %128
  %135 = load i32, i32* @ZPOOL_STATUS_BAD_GUID_SUM, align 4
  store i32 %135, i32* %3, align 4
  br label %345

136:                                              ; preds = %128, %122
  %137 = load i32*, i32** %4, align 8
  %138 = load i32, i32* @ZPOOL_CONFIG_SUSPENDED, align 4
  %139 = call i64 @nvlist_lookup_uint64(i32* %137, i32 %138, i64* %14)
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %136
  %142 = load i64, i64* %14, align 8
  %143 = load i64, i64* @ZIO_FAILURE_MODE_CONTINUE, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = load i32, i32* @ZPOOL_STATUS_IO_FAILURE_CONTINUE, align 4
  store i32 %146, i32* %3, align 4
  br label %345

147:                                              ; preds = %141
  %148 = load i32, i32* @ZPOOL_STATUS_IO_FAILURE_WAIT, align 4
  store i32 %148, i32* %3, align 4
  br label %345

149:                                              ; preds = %136
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @VDEV_STATE_CANT_OPEN, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %163

155:                                              ; preds = %149
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @VDEV_AUX_BAD_LOG, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %155
  %162 = load i32, i32* @ZPOOL_STATUS_BAD_LOG, align 4
  store i32 %162, i32* %3, align 4
  br label %345

163:                                              ; preds = %155, %149
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @VDEV_STATE_CANT_OPEN, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %177

169:                                              ; preds = %163
  %170 = load i32*, i32** %6, align 8
  %171 = load i32, i32* @vdev_faulted, align 4
  %172 = load i32, i32* @B_TRUE, align 4
  %173 = call i64 @find_vdev_problem(i32* %170, i32 %171, i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %169
  %176 = load i32, i32* @ZPOOL_STATUS_FAULTED_DEV_NR, align 4
  store i32 %176, i32* %3, align 4
  br label %345

177:                                              ; preds = %169, %163
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @VDEV_STATE_CANT_OPEN, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %191

183:                                              ; preds = %177
  %184 = load i32*, i32** %6, align 8
  %185 = load i32, i32* @vdev_missing, align 4
  %186 = load i32, i32* @B_TRUE, align 4
  %187 = call i64 @find_vdev_problem(i32* %184, i32 %185, i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %183
  %190 = load i32, i32* @ZPOOL_STATUS_MISSING_DEV_NR, align 4
  store i32 %190, i32* %3, align 4
  br label %345

191:                                              ; preds = %183, %177
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @VDEV_STATE_CANT_OPEN, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %205

197:                                              ; preds = %191
  %198 = load i32*, i32** %6, align 8
  %199 = load i32, i32* @vdev_broken, align 4
  %200 = load i32, i32* @B_TRUE, align 4
  %201 = call i64 @find_vdev_problem(i32* %198, i32 %199, i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %197
  %204 = load i32, i32* @ZPOOL_STATUS_CORRUPT_LABEL_NR, align 4
  store i32 %204, i32* %3, align 4
  br label %345

205:                                              ; preds = %197, %191
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @VDEV_STATE_CANT_OPEN, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %219

211:                                              ; preds = %205
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @VDEV_AUX_CORRUPT_DATA, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %219

217:                                              ; preds = %211
  %218 = load i32, i32* @ZPOOL_STATUS_CORRUPT_POOL, align 4
  store i32 %218, i32* %3, align 4
  br label %345

219:                                              ; preds = %211, %205
  %220 = load i64, i64* %5, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %233, label %222

222:                                              ; preds = %219
  %223 = load i32*, i32** %4, align 8
  %224 = load i32, i32* @ZPOOL_CONFIG_ERRCOUNT, align 4
  %225 = call i64 @nvlist_lookup_uint64(i32* %223, i32 %224, i64* %11)
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %227, label %232

227:                                              ; preds = %222
  %228 = load i64, i64* %11, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %227
  %231 = load i32, i32* @ZPOOL_STATUS_CORRUPT_DATA, align 4
  store i32 %231, i32* %3, align 4
  br label %345

232:                                              ; preds = %227, %222
  br label %233

233:                                              ; preds = %232, %219
  %234 = load i32*, i32** %6, align 8
  %235 = load i32, i32* @vdev_faulted, align 4
  %236 = load i32, i32* @B_TRUE, align 4
  %237 = call i64 @find_vdev_problem(i32* %234, i32 %235, i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %233
  %240 = load i32, i32* @ZPOOL_STATUS_FAULTED_DEV_R, align 4
  store i32 %240, i32* %3, align 4
  br label %345

241:                                              ; preds = %233
  %242 = load i32*, i32** %6, align 8
  %243 = load i32, i32* @vdev_missing, align 4
  %244 = load i32, i32* @B_TRUE, align 4
  %245 = call i64 @find_vdev_problem(i32* %242, i32 %243, i32 %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %241
  %248 = load i32, i32* @ZPOOL_STATUS_MISSING_DEV_R, align 4
  store i32 %248, i32* %3, align 4
  br label %345

249:                                              ; preds = %241
  %250 = load i32*, i32** %6, align 8
  %251 = load i32, i32* @vdev_broken, align 4
  %252 = load i32, i32* @B_TRUE, align 4
  %253 = call i64 @find_vdev_problem(i32* %250, i32 %251, i32 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %257

255:                                              ; preds = %249
  %256 = load i32, i32* @ZPOOL_STATUS_CORRUPT_LABEL_R, align 4
  store i32 %256, i32* %3, align 4
  br label %345

257:                                              ; preds = %249
  %258 = load i64, i64* %5, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %268, label %260

260:                                              ; preds = %257
  %261 = load i32*, i32** %6, align 8
  %262 = load i32, i32* @vdev_errors, align 4
  %263 = load i32, i32* @B_TRUE, align 4
  %264 = call i64 @find_vdev_problem(i32* %261, i32 %262, i32 %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %260
  %267 = load i32, i32* @ZPOOL_STATUS_FAILING_DEV, align 4
  store i32 %267, i32* %3, align 4
  br label %345

268:                                              ; preds = %260, %257
  %269 = load i32*, i32** %6, align 8
  %270 = load i32, i32* @vdev_offlined, align 4
  %271 = load i32, i32* @B_TRUE, align 4
  %272 = call i64 @find_vdev_problem(i32* %269, i32 %270, i32 %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %276

274:                                              ; preds = %268
  %275 = load i32, i32* @ZPOOL_STATUS_OFFLINE_DEV, align 4
  store i32 %275, i32* %3, align 4
  br label %345

276:                                              ; preds = %268
  %277 = load i32*, i32** %6, align 8
  %278 = load i32, i32* @vdev_removed, align 4
  %279 = load i32, i32* @B_TRUE, align 4
  %280 = call i64 @find_vdev_problem(i32* %277, i32 %278, i32 %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %276
  %283 = load i32, i32* @ZPOOL_STATUS_REMOVED_DEV, align 4
  store i32 %283, i32* %3, align 4
  br label %345

284:                                              ; preds = %276
  %285 = load i32*, i32** %6, align 8
  %286 = load i32, i32* @vdev_non_native_ashift, align 4
  %287 = load i32, i32* @B_FALSE, align 4
  %288 = call i64 @find_vdev_problem(i32* %285, i32 %286, i32 %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %292

290:                                              ; preds = %284
  %291 = load i32, i32* @ZPOOL_STATUS_NON_NATIVE_ASHIFT, align 4
  store i32 %291, i32* %3, align 4
  br label %345

292:                                              ; preds = %284
  %293 = load i64, i64* %12, align 8
  %294 = call i64 @SPA_VERSION_IS_SUPPORTED(i64 %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %302

296:                                              ; preds = %292
  %297 = load i64, i64* %12, align 8
  %298 = load i64, i64* @SPA_VERSION, align 8
  %299 = icmp ne i64 %297, %298
  br i1 %299, label %300, label %302

300:                                              ; preds = %296
  %301 = load i32, i32* @ZPOOL_STATUS_VERSION_OLDER, align 4
  store i32 %301, i32* %3, align 4
  br label %345

302:                                              ; preds = %296, %292
  %303 = load i64, i64* %12, align 8
  %304 = load i64, i64* @SPA_VERSION_FEATURES, align 8
  %305 = icmp sge i64 %303, %304
  br i1 %305, label %306, label %343

306:                                              ; preds = %302
  %307 = load i64, i64* %5, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %316

309:                                              ; preds = %306
  %310 = load i32*, i32** %4, align 8
  %311 = load i32, i32* @ZPOOL_CONFIG_LOAD_INFO, align 4
  %312 = call i32* @fnvlist_lookup_nvlist(i32* %310, i32 %311)
  store i32* %312, i32** %18, align 8
  %313 = load i32*, i32** %18, align 8
  %314 = load i32, i32* @ZPOOL_CONFIG_ENABLED_FEAT, align 4
  %315 = call i32* @fnvlist_lookup_nvlist(i32* %313, i32 %314)
  store i32* %315, i32** %18, align 8
  br label %320

316:                                              ; preds = %306
  %317 = load i32*, i32** %4, align 8
  %318 = load i32, i32* @ZPOOL_CONFIG_FEATURE_STATS, align 4
  %319 = call i32* @fnvlist_lookup_nvlist(i32* %317, i32 %318)
  store i32* %319, i32** %18, align 8
  br label %320

320:                                              ; preds = %316, %309
  store i32 0, i32* %17, align 4
  br label %321

321:                                              ; preds = %339, %320
  %322 = load i32, i32* %17, align 4
  %323 = load i32, i32* @SPA_FEATURES, align 4
  %324 = icmp slt i32 %322, %323
  br i1 %324, label %325, label %342

325:                                              ; preds = %321
  %326 = load %struct.TYPE_5__*, %struct.TYPE_5__** @spa_feature_table, align 8
  %327 = load i32, i32* %17, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %326, i64 %328
  store %struct.TYPE_5__* %329, %struct.TYPE_5__** %19, align 8
  %330 = load i32*, i32** %18, align 8
  %331 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %332 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = call i64 @nvlist_exists(i32* %330, i32 %333)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %338, label %336

336:                                              ; preds = %325
  %337 = load i32, i32* @ZPOOL_STATUS_FEAT_DISABLED, align 4
  store i32 %337, i32* %3, align 4
  br label %345

338:                                              ; preds = %325
  br label %339

339:                                              ; preds = %338
  %340 = load i32, i32* %17, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %17, align 4
  br label %321

342:                                              ; preds = %321
  br label %343

343:                                              ; preds = %342, %302
  %344 = load i32, i32* @ZPOOL_STATUS_OK, align 4
  store i32 %344, i32* %3, align 4
  br label %345

345:                                              ; preds = %343, %336, %300, %290, %282, %274, %266, %255, %247, %239, %230, %217, %203, %189, %175, %161, %147, %145, %134, %120, %118, %93, %79, %63
  %346 = load i32, i32* %3, align 4
  ret i32 %346
}

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #1

declare dso_local i64 @nvlist_lookup_uint64_array(i32*, i32, i64**, i32*) #1

declare dso_local i64 @gethostid(...) #1

declare dso_local i64 @nvlist_exists(i32*, i32) #1

declare dso_local i64 @find_vdev_problem(i32*, i32, i32) #1

declare dso_local i64 @SPA_VERSION_IS_SUPPORTED(i64) #1

declare dso_local i32* @fnvlist_lookup_nvlist(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
