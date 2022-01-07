; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_rename.c_xfs_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_rename.c_xfs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_name = type { i32 }
%struct.TYPE_33__ = type { i32, %struct.TYPE_31__, %struct.TYPE_32__* }
%struct.TYPE_31__ = type { i32, i64, i32 }
%struct.TYPE_32__ = type { i32 }

@S_IFMT = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@XFS_MAXLINK = common dso_local global i64 0, align 8
@EMLINK = common dso_local global i32 0, align 4
@XFS_TRANS_RENAME = common dso_local global i32 0, align 4
@XFS_TRANS_RELEASE_LOG_RES = common dso_local global i32 0, align 4
@XFS_TRANS_PERM_LOG_RES = common dso_local global i32 0, align 4
@XFS_RENAME_LOG_COUNT = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@XFS_DIFLAG_PROJINHERIT = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@XFS_ICHGTIME_MOD = common dso_local global i32 0, align 4
@XFS_ICHGTIME_CHG = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@xfs_name_dotdot = common dso_local global %struct.xfs_name zeroinitializer, align 4
@XFS_ILOG_CORE = common dso_local global i32 0, align 4
@XFS_MOUNT_WSYNC = common dso_local global i32 0, align 4
@XFS_MOUNT_DIRSYNC = common dso_local global i32 0, align 4
@XFS_TRANS_ABORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_rename(%struct.TYPE_33__* %0, %struct.xfs_name* %1, %struct.TYPE_33__* %2, %struct.TYPE_33__* %3, %struct.xfs_name* %4, %struct.TYPE_33__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_33__*, align 8
  %9 = alloca %struct.xfs_name*, align 8
  %10 = alloca %struct.TYPE_33__*, align 8
  %11 = alloca %struct.TYPE_33__*, align 8
  %12 = alloca %struct.xfs_name*, align 8
  %13 = alloca %struct.TYPE_33__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_32__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [4 x %struct.TYPE_33__*], align 16
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %8, align 8
  store %struct.xfs_name* %1, %struct.xfs_name** %9, align 8
  store %struct.TYPE_33__* %2, %struct.TYPE_33__** %10, align 8
  store %struct.TYPE_33__* %3, %struct.TYPE_33__** %11, align 8
  store %struct.xfs_name* %4, %struct.xfs_name** %12, align 8
  store %struct.TYPE_33__* %5, %struct.TYPE_33__** %13, align 8
  store i32* null, i32** %14, align 8
  %26 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_32__*, %struct.TYPE_32__** %27, align 8
  store %struct.TYPE_32__* %28, %struct.TYPE_32__** %15, align 8
  %29 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %30 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %31 = load %struct.xfs_name*, %struct.xfs_name** %9, align 8
  %32 = load %struct.xfs_name*, %struct.xfs_name** %12, align 8
  %33 = call i32 @trace_xfs_rename(%struct.TYPE_33__* %29, %struct.TYPE_33__* %30, %struct.xfs_name* %31, %struct.xfs_name* %32)
  %34 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %35 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %36 = icmp ne %struct.TYPE_33__* %34, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %16, align 4
  %38 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @S_IFMT, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @S_IFDIR, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* %17, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %6
  %50 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %51 = icmp eq %struct.TYPE_33__* %50, null
  br i1 %51, label %52, label %65

52:                                               ; preds = %49
  %53 = load i32, i32* %16, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @XFS_MAXLINK, align 8
  %61 = icmp sge i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i32, i32* @EMLINK, align 4
  %64 = call i32 @XFS_ERROR(i32 %63)
  store i32 %64, i32* %18, align 4
  br label %389

65:                                               ; preds = %55, %52, %49
  br label %66

66:                                               ; preds = %65, %6
  %67 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %68 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %69 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %70 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %71 = getelementptr inbounds [4 x %struct.TYPE_33__*], [4 x %struct.TYPE_33__*]* %23, i64 0, i64 0
  %72 = call i32 @xfs_sort_for_rename(%struct.TYPE_33__* %67, %struct.TYPE_33__* %68, %struct.TYPE_33__* %69, %struct.TYPE_33__* %70, %struct.TYPE_33__** %71, i32* %25)
  %73 = call i32 @xfs_bmap_init(i32* %19, i32* %20)
  %74 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %75 = load i32, i32* @XFS_TRANS_RENAME, align 4
  %76 = call i32* @xfs_trans_alloc(%struct.TYPE_32__* %74, i32 %75)
  store i32* %76, i32** %14, align 8
  %77 = load i32, i32* @XFS_TRANS_RELEASE_LOG_RES, align 4
  store i32 %77, i32* %21, align 4
  %78 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %79 = load %struct.xfs_name*, %struct.xfs_name** %12, align 8
  %80 = getelementptr inbounds %struct.xfs_name, %struct.xfs_name* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @XFS_RENAME_SPACE_RES(%struct.TYPE_32__* %78, i32 %81)
  store i32 %82, i32* %24, align 4
  %83 = load i32*, i32** %14, align 8
  %84 = load i32, i32* %24, align 4
  %85 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %86 = call i32 @XFS_RENAME_LOG_RES(%struct.TYPE_32__* %85)
  %87 = load i32, i32* @XFS_TRANS_PERM_LOG_RES, align 4
  %88 = load i32, i32* @XFS_RENAME_LOG_COUNT, align 4
  %89 = call i32 @xfs_trans_reserve(i32* %83, i32 %84, i32 %86, i32 0, i32 %87, i32 %88)
  store i32 %89, i32* %18, align 4
  %90 = load i32, i32* %18, align 4
  %91 = load i32, i32* @ENOSPC, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %66
  store i32 0, i32* %24, align 4
  %94 = load i32*, i32** %14, align 8
  %95 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %96 = call i32 @XFS_RENAME_LOG_RES(%struct.TYPE_32__* %95)
  %97 = load i32, i32* @XFS_TRANS_PERM_LOG_RES, align 4
  %98 = load i32, i32* @XFS_RENAME_LOG_COUNT, align 4
  %99 = call i32 @xfs_trans_reserve(i32* %94, i32 0, i32 %96, i32 0, i32 %97, i32 %98)
  store i32 %99, i32* %18, align 4
  br label %100

100:                                              ; preds = %93, %66
  %101 = load i32, i32* %18, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32*, i32** %14, align 8
  %105 = call i32 @xfs_trans_cancel(i32* %104, i32 0)
  br label %389

106:                                              ; preds = %100
  %107 = getelementptr inbounds [4 x %struct.TYPE_33__*], [4 x %struct.TYPE_33__*]* %23, i64 0, i64 0
  %108 = call i32 @xfs_qm_vop_rename_dqattach(%struct.TYPE_33__** %107)
  store i32 %108, i32* %18, align 4
  %109 = load i32, i32* %18, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load i32*, i32** %14, align 8
  %113 = load i32, i32* %21, align 4
  %114 = call i32 @xfs_trans_cancel(i32* %112, i32 %113)
  br label %389

115:                                              ; preds = %106
  %116 = getelementptr inbounds [4 x %struct.TYPE_33__*], [4 x %struct.TYPE_33__*]* %23, i64 0, i64 0
  %117 = load i32, i32* %25, align 4
  %118 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %119 = call i32 @xfs_lock_inodes(%struct.TYPE_33__** %116, i32 %117, i32 %118)
  %120 = load i32*, i32** %14, align 8
  %121 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %122 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %123 = call i32 @xfs_trans_ijoin_ref(i32* %120, %struct.TYPE_33__* %121, i32 %122)
  %124 = load i32, i32* %16, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %115
  %127 = load i32*, i32** %14, align 8
  %128 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %129 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %130 = call i32 @xfs_trans_ijoin_ref(i32* %127, %struct.TYPE_33__* %128, i32 %129)
  br label %131

131:                                              ; preds = %126, %115
  %132 = load i32*, i32** %14, align 8
  %133 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %134 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %135 = call i32 @xfs_trans_ijoin_ref(i32* %132, %struct.TYPE_33__* %133, i32 %134)
  %136 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %137 = icmp ne %struct.TYPE_33__* %136, null
  br i1 %137, label %138, label %143

138:                                              ; preds = %131
  %139 = load i32*, i32** %14, align 8
  %140 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %141 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %142 = call i32 @xfs_trans_ijoin_ref(i32* %139, %struct.TYPE_33__* %140, i32 %141)
  br label %143

143:                                              ; preds = %138, %131
  %144 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @XFS_DIFLAG_PROJINHERIT, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %143
  %152 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %153 = call i64 @xfs_get_projid(%struct.TYPE_33__* %152)
  %154 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %155 = call i64 @xfs_get_projid(%struct.TYPE_33__* %154)
  %156 = icmp ne i64 %153, %155
  br label %157

157:                                              ; preds = %151, %143
  %158 = phi i1 [ false, %143 ], [ %156, %151 ]
  %159 = zext i1 %158 to i32
  %160 = call i64 @unlikely(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %157
  %163 = load i32, i32* @EXDEV, align 4
  %164 = call i32 @XFS_ERROR(i32 %163)
  store i32 %164, i32* %18, align 4
  br label %384

165:                                              ; preds = %157
  %166 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %167 = icmp eq %struct.TYPE_33__* %166, null
  br i1 %167, label %168, label %215

168:                                              ; preds = %165
  %169 = load i32*, i32** %14, align 8
  %170 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %171 = load %struct.xfs_name*, %struct.xfs_name** %12, align 8
  %172 = load i32, i32* %24, align 4
  %173 = call i32 @xfs_dir_canenter(i32* %169, %struct.TYPE_33__* %170, %struct.xfs_name* %171, i32 %172)
  store i32 %173, i32* %18, align 4
  %174 = load i32, i32* %18, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %168
  br label %384

177:                                              ; preds = %168
  %178 = load i32*, i32** %14, align 8
  %179 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %180 = load %struct.xfs_name*, %struct.xfs_name** %12, align 8
  %181 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* %24, align 4
  %185 = call i32 @xfs_dir_createname(i32* %178, %struct.TYPE_33__* %179, %struct.xfs_name* %180, i32 %183, i32* %20, i32* %19, i32 %184)
  store i32 %185, i32* %18, align 4
  %186 = load i32, i32* %18, align 4
  %187 = load i32, i32* @ENOSPC, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %177
  br label %384

190:                                              ; preds = %177
  %191 = load i32, i32* %18, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %190
  br label %380

194:                                              ; preds = %190
  %195 = load i32*, i32** %14, align 8
  %196 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %197 = load i32, i32* @XFS_ICHGTIME_MOD, align 4
  %198 = load i32, i32* @XFS_ICHGTIME_CHG, align 4
  %199 = or i32 %197, %198
  %200 = call i32 @xfs_trans_ichgtime(i32* %195, %struct.TYPE_33__* %196, i32 %199)
  %201 = load i32, i32* %16, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %214

203:                                              ; preds = %194
  %204 = load i32, i32* %17, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %214

206:                                              ; preds = %203
  %207 = load i32*, i32** %14, align 8
  %208 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %209 = call i32 @xfs_bumplink(i32* %207, %struct.TYPE_33__* %208)
  store i32 %209, i32* %18, align 4
  %210 = load i32, i32* %18, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %206
  br label %380

213:                                              ; preds = %206
  br label %214

214:                                              ; preds = %213, %203, %194
  br label %275

215:                                              ; preds = %165
  %216 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %217 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @S_IFMT, align 4
  %221 = and i32 %219, %220
  %222 = load i32, i32* @S_IFDIR, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %238

224:                                              ; preds = %215
  %225 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %226 = call i32 @xfs_dir_isempty(%struct.TYPE_33__* %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %224
  %229 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %230 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = icmp sgt i64 %232, 2
  br i1 %233, label %234, label %237

234:                                              ; preds = %228, %224
  %235 = load i32, i32* @EEXIST, align 4
  %236 = call i32 @XFS_ERROR(i32 %235)
  store i32 %236, i32* %18, align 4
  br label %384

237:                                              ; preds = %228
  br label %238

238:                                              ; preds = %237, %215
  %239 = load i32*, i32** %14, align 8
  %240 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %241 = load %struct.xfs_name*, %struct.xfs_name** %12, align 8
  %242 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* %24, align 4
  %246 = call i32 @xfs_dir_replace(i32* %239, %struct.TYPE_33__* %240, %struct.xfs_name* %241, i32 %244, i32* %20, i32* %19, i32 %245)
  store i32 %246, i32* %18, align 4
  %247 = load i32, i32* %18, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %238
  br label %380

250:                                              ; preds = %238
  %251 = load i32*, i32** %14, align 8
  %252 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %253 = load i32, i32* @XFS_ICHGTIME_MOD, align 4
  %254 = load i32, i32* @XFS_ICHGTIME_CHG, align 4
  %255 = or i32 %253, %254
  %256 = call i32 @xfs_trans_ichgtime(i32* %251, %struct.TYPE_33__* %252, i32 %255)
  %257 = load i32*, i32** %14, align 8
  %258 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %259 = call i32 @xfs_droplink(i32* %257, %struct.TYPE_33__* %258)
  store i32 %259, i32* %18, align 4
  %260 = load i32, i32* %18, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %250
  br label %380

263:                                              ; preds = %250
  %264 = load i32, i32* %17, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %274

266:                                              ; preds = %263
  %267 = load i32*, i32** %14, align 8
  %268 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %269 = call i32 @xfs_droplink(i32* %267, %struct.TYPE_33__* %268)
  store i32 %269, i32* %18, align 4
  %270 = load i32, i32* %18, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %266
  br label %380

273:                                              ; preds = %266
  br label %274

274:                                              ; preds = %273, %263
  br label %275

275:                                              ; preds = %274, %214
  %276 = load i32, i32* %16, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %298

278:                                              ; preds = %275
  %279 = load i32, i32* %17, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %298

281:                                              ; preds = %278
  %282 = load i32*, i32** %14, align 8
  %283 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %284 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %285 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* %24, align 4
  %288 = call i32 @xfs_dir_replace(i32* %282, %struct.TYPE_33__* %283, %struct.xfs_name* @xfs_name_dotdot, i32 %286, i32* %20, i32* %19, i32 %287)
  store i32 %288, i32* %18, align 4
  %289 = load i32, i32* %18, align 4
  %290 = load i32, i32* @EEXIST, align 4
  %291 = icmp ne i32 %289, %290
  %292 = zext i1 %291 to i32
  %293 = call i32 @ASSERT(i32 %292)
  %294 = load i32, i32* %18, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %297

296:                                              ; preds = %281
  br label %380

297:                                              ; preds = %281
  br label %298

298:                                              ; preds = %297, %278, %275
  %299 = load i32*, i32** %14, align 8
  %300 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %301 = load i32, i32* @XFS_ICHGTIME_CHG, align 4
  %302 = call i32 @xfs_trans_ichgtime(i32* %299, %struct.TYPE_33__* %300, i32 %301)
  %303 = load i32*, i32** %14, align 8
  %304 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %305 = load i32, i32* @XFS_ILOG_CORE, align 4
  %306 = call i32 @xfs_trans_log_inode(i32* %303, %struct.TYPE_33__* %304, i32 %305)
  %307 = load i32, i32* %17, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %323

309:                                              ; preds = %298
  %310 = load i32, i32* %16, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %315, label %312

312:                                              ; preds = %309
  %313 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %314 = icmp ne %struct.TYPE_33__* %313, null
  br i1 %314, label %315, label %323

315:                                              ; preds = %312, %309
  %316 = load i32*, i32** %14, align 8
  %317 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %318 = call i32 @xfs_droplink(i32* %316, %struct.TYPE_33__* %317)
  store i32 %318, i32* %18, align 4
  %319 = load i32, i32* %18, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %322

321:                                              ; preds = %315
  br label %380

322:                                              ; preds = %315
  br label %323

323:                                              ; preds = %322, %312, %298
  %324 = load i32*, i32** %14, align 8
  %325 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %326 = load %struct.xfs_name*, %struct.xfs_name** %9, align 8
  %327 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %328 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* %24, align 4
  %331 = call i32 @xfs_dir_removename(i32* %324, %struct.TYPE_33__* %325, %struct.xfs_name* %326, i32 %329, i32* %20, i32* %19, i32 %330)
  store i32 %331, i32* %18, align 4
  %332 = load i32, i32* %18, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %335

334:                                              ; preds = %323
  br label %380

335:                                              ; preds = %323
  %336 = load i32*, i32** %14, align 8
  %337 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %338 = load i32, i32* @XFS_ICHGTIME_MOD, align 4
  %339 = load i32, i32* @XFS_ICHGTIME_CHG, align 4
  %340 = or i32 %338, %339
  %341 = call i32 @xfs_trans_ichgtime(i32* %336, %struct.TYPE_33__* %337, i32 %340)
  %342 = load i32*, i32** %14, align 8
  %343 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %344 = load i32, i32* @XFS_ILOG_CORE, align 4
  %345 = call i32 @xfs_trans_log_inode(i32* %342, %struct.TYPE_33__* %343, i32 %344)
  %346 = load i32, i32* %16, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %353

348:                                              ; preds = %335
  %349 = load i32*, i32** %14, align 8
  %350 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %351 = load i32, i32* @XFS_ILOG_CORE, align 4
  %352 = call i32 @xfs_trans_log_inode(i32* %349, %struct.TYPE_33__* %350, i32 %351)
  br label %353

353:                                              ; preds = %348, %335
  %354 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %355 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* @XFS_MOUNT_WSYNC, align 4
  %358 = load i32, i32* @XFS_MOUNT_DIRSYNC, align 4
  %359 = or i32 %357, %358
  %360 = and i32 %356, %359
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %365

362:                                              ; preds = %353
  %363 = load i32*, i32** %14, align 8
  %364 = call i32 @xfs_trans_set_sync(i32* %363)
  br label %365

365:                                              ; preds = %362, %353
  %366 = call i32 @xfs_bmap_finish(i32** %14, i32* %19, i32* %22)
  store i32 %366, i32* %18, align 4
  %367 = load i32, i32* %18, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %376

369:                                              ; preds = %365
  %370 = call i32 @xfs_bmap_cancel(i32* %19)
  %371 = load i32*, i32** %14, align 8
  %372 = load i32, i32* @XFS_TRANS_RELEASE_LOG_RES, align 4
  %373 = load i32, i32* @XFS_TRANS_ABORT, align 4
  %374 = or i32 %372, %373
  %375 = call i32 @xfs_trans_cancel(i32* %371, i32 %374)
  br label %389

376:                                              ; preds = %365
  %377 = load i32*, i32** %14, align 8
  %378 = load i32, i32* @XFS_TRANS_RELEASE_LOG_RES, align 4
  %379 = call i32 @xfs_trans_commit(i32* %377, i32 %378)
  store i32 %379, i32* %7, align 4
  br label %391

380:                                              ; preds = %334, %321, %296, %272, %262, %249, %212, %193
  %381 = load i32, i32* @XFS_TRANS_ABORT, align 4
  %382 = load i32, i32* %21, align 4
  %383 = or i32 %382, %381
  store i32 %383, i32* %21, align 4
  br label %384

384:                                              ; preds = %380, %234, %189, %176, %162
  %385 = call i32 @xfs_bmap_cancel(i32* %19)
  %386 = load i32*, i32** %14, align 8
  %387 = load i32, i32* %21, align 4
  %388 = call i32 @xfs_trans_cancel(i32* %386, i32 %387)
  br label %389

389:                                              ; preds = %384, %369, %111, %103, %62
  %390 = load i32, i32* %18, align 4
  store i32 %390, i32* %7, align 4
  br label %391

391:                                              ; preds = %389, %376
  %392 = load i32, i32* %7, align 4
  ret i32 %392
}

declare dso_local i32 @trace_xfs_rename(%struct.TYPE_33__*, %struct.TYPE_33__*, %struct.xfs_name*, %struct.xfs_name*) #1

declare dso_local i32 @XFS_ERROR(i32) #1

declare dso_local i32 @xfs_sort_for_rename(%struct.TYPE_33__*, %struct.TYPE_33__*, %struct.TYPE_33__*, %struct.TYPE_33__*, %struct.TYPE_33__**, i32*) #1

declare dso_local i32 @xfs_bmap_init(i32*, i32*) #1

declare dso_local i32* @xfs_trans_alloc(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @XFS_RENAME_SPACE_RES(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @xfs_trans_reserve(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XFS_RENAME_LOG_RES(%struct.TYPE_32__*) #1

declare dso_local i32 @xfs_trans_cancel(i32*, i32) #1

declare dso_local i32 @xfs_qm_vop_rename_dqattach(%struct.TYPE_33__**) #1

declare dso_local i32 @xfs_lock_inodes(%struct.TYPE_33__**, i32, i32) #1

declare dso_local i32 @xfs_trans_ijoin_ref(i32*, %struct.TYPE_33__*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @xfs_get_projid(%struct.TYPE_33__*) #1

declare dso_local i32 @xfs_dir_canenter(i32*, %struct.TYPE_33__*, %struct.xfs_name*, i32) #1

declare dso_local i32 @xfs_dir_createname(i32*, %struct.TYPE_33__*, %struct.xfs_name*, i32, i32*, i32*, i32) #1

declare dso_local i32 @xfs_trans_ichgtime(i32*, %struct.TYPE_33__*, i32) #1

declare dso_local i32 @xfs_bumplink(i32*, %struct.TYPE_33__*) #1

declare dso_local i32 @xfs_dir_isempty(%struct.TYPE_33__*) #1

declare dso_local i32 @xfs_dir_replace(i32*, %struct.TYPE_33__*, %struct.xfs_name*, i32, i32*, i32*, i32) #1

declare dso_local i32 @xfs_droplink(i32*, %struct.TYPE_33__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_trans_log_inode(i32*, %struct.TYPE_33__*, i32) #1

declare dso_local i32 @xfs_dir_removename(i32*, %struct.TYPE_33__*, %struct.xfs_name*, i32, i32*, i32*, i32) #1

declare dso_local i32 @xfs_trans_set_sync(i32*) #1

declare dso_local i32 @xfs_bmap_finish(i32**, i32*, i32*) #1

declare dso_local i32 @xfs_bmap_cancel(i32*) #1

declare dso_local i32 @xfs_trans_commit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
