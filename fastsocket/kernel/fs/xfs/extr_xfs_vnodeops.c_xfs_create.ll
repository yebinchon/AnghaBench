; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_vnodeops.c_xfs_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_vnodeops.c_xfs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i32, %struct.TYPE_2__, %struct.xfs_mount* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.xfs_mount = type { i32 }
%struct.xfs_name = type { i32 }
%struct.xfs_trans = type { i32 }
%struct.xfs_dquot = type { i32 }

@B_FALSE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@XFS_DIFLAG_PROJINHERIT = common dso_local global i32 0, align 4
@XFS_PROJID_DEFAULT = common dso_local global i32 0, align 4
@XFS_QMOPT_QUOTALL = common dso_local global i32 0, align 4
@XFS_QMOPT_INHERIT = common dso_local global i32 0, align 4
@XFS_MKDIR_LOG_COUNT = common dso_local global i64 0, align 8
@XFS_TRANS_MKDIR = common dso_local global i32 0, align 4
@XFS_CREATE_LOG_COUNT = common dso_local global i64 0, align 8
@XFS_TRANS_CREATE = common dso_local global i32 0, align 4
@XFS_TRANS_RELEASE_LOG_RES = common dso_local global i64 0, align 8
@XFS_TRANS_PERM_LOG_RES = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@XFS_ILOCK_PARENT = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@XFS_MAXLINK = common dso_local global i64 0, align 8
@EMLINK = common dso_local global i32 0, align 4
@XFS_ICHGTIME_MOD = common dso_local global i32 0, align 4
@XFS_ICHGTIME_CHG = common dso_local global i32 0, align 4
@XFS_ILOG_CORE = common dso_local global i32 0, align 4
@XFS_MOUNT_WSYNC = common dso_local global i32 0, align 4
@XFS_MOUNT_DIRSYNC = common dso_local global i32 0, align 4
@XFS_TRANS_ABORT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_create(%struct.xfs_inode* %0, %struct.xfs_name* %1, i32 %2, i32 %3, %struct.xfs_inode** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_inode*, align 8
  %8 = alloca %struct.xfs_name*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.xfs_inode**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.xfs_mount*, align 8
  %14 = alloca %struct.xfs_inode*, align 8
  %15 = alloca %struct.xfs_trans*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.xfs_dquot*, align 8
  %24 = alloca %struct.xfs_dquot*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %7, align 8
  store %struct.xfs_name* %1, %struct.xfs_name** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.xfs_inode** %4, %struct.xfs_inode*** %11, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @S_ISDIR(i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %31 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %30, i32 0, i32 2
  %32 = load %struct.xfs_mount*, %struct.xfs_mount** %31, align 8
  store %struct.xfs_mount* %32, %struct.xfs_mount** %13, align 8
  store %struct.xfs_inode* null, %struct.xfs_inode** %14, align 8
  store %struct.xfs_trans* null, %struct.xfs_trans** %15, align 8
  %33 = load i64, i64* @B_FALSE, align 8
  store i64 %33, i64* %19, align 8
  store %struct.xfs_dquot* null, %struct.xfs_dquot** %23, align 8
  store %struct.xfs_dquot* null, %struct.xfs_dquot** %24, align 8
  %34 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %35 = load %struct.xfs_name*, %struct.xfs_name** %8, align 8
  %36 = call i32 @trace_xfs_create(%struct.xfs_inode* %34, %struct.xfs_name* %35)
  %37 = load %struct.xfs_mount*, %struct.xfs_mount** %13, align 8
  %38 = call i64 @XFS_FORCED_SHUTDOWN(%struct.xfs_mount* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %5
  %41 = load i32, i32* @EIO, align 4
  %42 = call i32 @XFS_ERROR(i32 %41)
  store i32 %42, i32* %6, align 4
  br label %315

43:                                               ; preds = %5
  %44 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %45 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @XFS_DIFLAG_PROJINHERIT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %53 = call i32 @xfs_get_projid(%struct.xfs_inode* %52)
  store i32 %53, i32* %22, align 4
  br label %56

54:                                               ; preds = %43
  %55 = load i32, i32* @XFS_PROJID_DEFAULT, align 4
  store i32 %55, i32* %22, align 4
  br label %56

56:                                               ; preds = %54, %51
  %57 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %58 = call i32 (...) @current_fsuid()
  %59 = call i32 (...) @current_fsgid()
  %60 = load i32, i32* %22, align 4
  %61 = load i32, i32* @XFS_QMOPT_QUOTALL, align 4
  %62 = load i32, i32* @XFS_QMOPT_INHERIT, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @xfs_qm_vop_dqalloc(%struct.xfs_inode* %57, i32 %58, i32 %59, i32 %60, i32 %63, %struct.xfs_dquot** %23, %struct.xfs_dquot** %24)
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %16, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %56
  %68 = load i32, i32* %16, align 4
  store i32 %68, i32* %6, align 4
  br label %315

69:                                               ; preds = %56
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %69
  store i32 0, i32* %10, align 4
  %73 = load %struct.xfs_mount*, %struct.xfs_mount** %13, align 8
  %74 = load %struct.xfs_name*, %struct.xfs_name** %8, align 8
  %75 = getelementptr inbounds %struct.xfs_name, %struct.xfs_name* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @XFS_MKDIR_SPACE_RES(%struct.xfs_mount* %73, i32 %76)
  store i64 %77, i64* %25, align 8
  %78 = load %struct.xfs_mount*, %struct.xfs_mount** %13, align 8
  %79 = call i64 @XFS_MKDIR_LOG_RES(%struct.xfs_mount* %78)
  store i64 %79, i64* %26, align 8
  %80 = load i64, i64* @XFS_MKDIR_LOG_COUNT, align 8
  store i64 %80, i64* %27, align 8
  %81 = load %struct.xfs_mount*, %struct.xfs_mount** %13, align 8
  %82 = load i32, i32* @XFS_TRANS_MKDIR, align 4
  %83 = call %struct.xfs_trans* @xfs_trans_alloc(%struct.xfs_mount* %81, i32 %82)
  store %struct.xfs_trans* %83, %struct.xfs_trans** %15, align 8
  br label %96

84:                                               ; preds = %69
  %85 = load %struct.xfs_mount*, %struct.xfs_mount** %13, align 8
  %86 = load %struct.xfs_name*, %struct.xfs_name** %8, align 8
  %87 = getelementptr inbounds %struct.xfs_name, %struct.xfs_name* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @XFS_CREATE_SPACE_RES(%struct.xfs_mount* %85, i32 %88)
  store i64 %89, i64* %25, align 8
  %90 = load %struct.xfs_mount*, %struct.xfs_mount** %13, align 8
  %91 = call i64 @XFS_CREATE_LOG_RES(%struct.xfs_mount* %90)
  store i64 %91, i64* %26, align 8
  %92 = load i64, i64* @XFS_CREATE_LOG_COUNT, align 8
  store i64 %92, i64* %27, align 8
  %93 = load %struct.xfs_mount*, %struct.xfs_mount** %13, align 8
  %94 = load i32, i32* @XFS_TRANS_CREATE, align 4
  %95 = call %struct.xfs_trans* @xfs_trans_alloc(%struct.xfs_mount* %93, i32 %94)
  store %struct.xfs_trans* %95, %struct.xfs_trans** %15, align 8
  br label %96

96:                                               ; preds = %84, %72
  %97 = load i64, i64* @XFS_TRANS_RELEASE_LOG_RES, align 8
  store i64 %97, i64* %20, align 8
  %98 = load %struct.xfs_trans*, %struct.xfs_trans** %15, align 8
  %99 = load i64, i64* %25, align 8
  %100 = load i64, i64* %26, align 8
  %101 = load i32, i32* @XFS_TRANS_PERM_LOG_RES, align 4
  %102 = load i64, i64* %27, align 8
  %103 = call i32 @xfs_trans_reserve(%struct.xfs_trans* %98, i64 %99, i64 %100, i32 0, i32 %101, i64 %102)
  store i32 %103, i32* %16, align 4
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* @ENOSPC, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %116

107:                                              ; preds = %96
  %108 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %109 = call i32 @xfs_flush_inodes(%struct.xfs_inode* %108)
  %110 = load %struct.xfs_trans*, %struct.xfs_trans** %15, align 8
  %111 = load i64, i64* %25, align 8
  %112 = load i64, i64* %26, align 8
  %113 = load i32, i32* @XFS_TRANS_PERM_LOG_RES, align 4
  %114 = load i64, i64* %27, align 8
  %115 = call i32 @xfs_trans_reserve(%struct.xfs_trans* %110, i64 %111, i64 %112, i32 0, i32 %113, i64 %114)
  store i32 %115, i32* %16, align 4
  br label %116

116:                                              ; preds = %107, %96
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* @ENOSPC, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %116
  store i64 0, i64* %25, align 8
  %121 = load %struct.xfs_trans*, %struct.xfs_trans** %15, align 8
  %122 = load i64, i64* %26, align 8
  %123 = load i32, i32* @XFS_TRANS_PERM_LOG_RES, align 4
  %124 = load i64, i64* %27, align 8
  %125 = call i32 @xfs_trans_reserve(%struct.xfs_trans* %121, i64 0, i64 %122, i32 0, i32 %123, i64 %124)
  store i32 %125, i32* %16, align 4
  br label %126

126:                                              ; preds = %120, %116
  %127 = load i32, i32* %16, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  store i64 0, i64* %20, align 8
  br label %292

130:                                              ; preds = %126
  %131 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %132 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %133 = load i32, i32* @XFS_ILOCK_PARENT, align 4
  %134 = or i32 %132, %133
  %135 = call i32 @xfs_ilock(%struct.xfs_inode* %131, i32 %134)
  %136 = load i64, i64* @B_TRUE, align 8
  store i64 %136, i64* %19, align 8
  %137 = load i32, i32* %12, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %130
  %140 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %141 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @XFS_MAXLINK, align 8
  %145 = icmp sge i64 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %139
  %147 = load i32, i32* @EMLINK, align 4
  %148 = call i32 @XFS_ERROR(i32 %147)
  store i32 %148, i32* %16, align 4
  br label %292

149:                                              ; preds = %139, %130
  %150 = call i32 @xfs_bmap_init(i32* %17, i32* %18)
  %151 = load %struct.xfs_trans*, %struct.xfs_trans** %15, align 8
  %152 = load %struct.xfs_mount*, %struct.xfs_mount** %13, align 8
  %153 = load %struct.xfs_dquot*, %struct.xfs_dquot** %23, align 8
  %154 = load %struct.xfs_dquot*, %struct.xfs_dquot** %24, align 8
  %155 = load i64, i64* %25, align 8
  %156 = call i32 @xfs_trans_reserve_quota(%struct.xfs_trans* %151, %struct.xfs_mount* %152, %struct.xfs_dquot* %153, %struct.xfs_dquot* %154, i64 %155, i32 1, i32 0)
  store i32 %156, i32* %16, align 4
  %157 = load i32, i32* %16, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %149
  br label %292

160:                                              ; preds = %149
  %161 = load %struct.xfs_trans*, %struct.xfs_trans** %15, align 8
  %162 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %163 = load %struct.xfs_name*, %struct.xfs_name** %8, align 8
  %164 = load i64, i64* %25, align 8
  %165 = call i32 @xfs_dir_canenter(%struct.xfs_trans* %161, %struct.xfs_inode* %162, %struct.xfs_name* %163, i64 %164)
  store i32 %165, i32* %16, align 4
  %166 = load i32, i32* %16, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %160
  br label %292

169:                                              ; preds = %160
  %170 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* %12, align 4
  %173 = icmp ne i32 %172, 0
  %174 = zext i1 %173 to i64
  %175 = select i1 %173, i32 2, i32 1
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* %22, align 4
  %178 = load i64, i64* %25, align 8
  %179 = icmp sgt i64 %178, 0
  %180 = zext i1 %179 to i32
  %181 = call i32 @xfs_dir_ialloc(%struct.xfs_trans** %15, %struct.xfs_inode* %170, i32 %171, i32 %175, i32 %176, i32 %177, i32 %180, %struct.xfs_inode** %14, i32* %21)
  store i32 %181, i32* %16, align 4
  %182 = load i32, i32* %16, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %169
  %185 = load i32, i32* %16, align 4
  %186 = load i32, i32* @ENOSPC, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %184
  br label %292

189:                                              ; preds = %184
  br label %288

190:                                              ; preds = %169
  %191 = load %struct.xfs_trans*, %struct.xfs_trans** %15, align 8
  %192 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %193 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %194 = call i32 @xfs_trans_ijoin_ref(%struct.xfs_trans* %191, %struct.xfs_inode* %192, i32 %193)
  %195 = load i64, i64* @B_FALSE, align 8
  store i64 %195, i64* %19, align 8
  %196 = load %struct.xfs_trans*, %struct.xfs_trans** %15, align 8
  %197 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %198 = load %struct.xfs_name*, %struct.xfs_name** %8, align 8
  %199 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %200 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i64, i64* %25, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %190
  %205 = load i64, i64* %25, align 8
  %206 = load %struct.xfs_mount*, %struct.xfs_mount** %13, align 8
  %207 = call i64 @XFS_IALLOC_SPACE_RES(%struct.xfs_mount* %206)
  %208 = sub nsw i64 %205, %207
  br label %210

209:                                              ; preds = %190
  br label %210

210:                                              ; preds = %209, %204
  %211 = phi i64 [ %208, %204 ], [ 0, %209 ]
  %212 = call i32 @xfs_dir_createname(%struct.xfs_trans* %196, %struct.xfs_inode* %197, %struct.xfs_name* %198, i32 %201, i32* %18, i32* %17, i64 %211)
  store i32 %212, i32* %16, align 4
  %213 = load i32, i32* %16, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %210
  %216 = load i32, i32* %16, align 4
  %217 = load i32, i32* @ENOSPC, align 4
  %218 = icmp ne i32 %216, %217
  %219 = zext i1 %218 to i32
  %220 = call i32 @ASSERT(i32 %219)
  br label %288

221:                                              ; preds = %210
  %222 = load %struct.xfs_trans*, %struct.xfs_trans** %15, align 8
  %223 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %224 = load i32, i32* @XFS_ICHGTIME_MOD, align 4
  %225 = load i32, i32* @XFS_ICHGTIME_CHG, align 4
  %226 = or i32 %224, %225
  %227 = call i32 @xfs_trans_ichgtime(%struct.xfs_trans* %222, %struct.xfs_inode* %223, i32 %226)
  %228 = load %struct.xfs_trans*, %struct.xfs_trans** %15, align 8
  %229 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %230 = load i32, i32* @XFS_ILOG_CORE, align 4
  %231 = call i32 @xfs_trans_log_inode(%struct.xfs_trans* %228, %struct.xfs_inode* %229, i32 %230)
  %232 = load i32, i32* %12, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %250

234:                                              ; preds = %221
  %235 = load %struct.xfs_trans*, %struct.xfs_trans** %15, align 8
  %236 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %237 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %238 = call i32 @xfs_dir_init(%struct.xfs_trans* %235, %struct.xfs_inode* %236, %struct.xfs_inode* %237)
  store i32 %238, i32* %16, align 4
  %239 = load i32, i32* %16, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %234
  br label %286

242:                                              ; preds = %234
  %243 = load %struct.xfs_trans*, %struct.xfs_trans** %15, align 8
  %244 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %245 = call i32 @xfs_bumplink(%struct.xfs_trans* %243, %struct.xfs_inode* %244)
  store i32 %245, i32* %16, align 4
  %246 = load i32, i32* %16, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %242
  br label %286

249:                                              ; preds = %242
  br label %250

250:                                              ; preds = %249, %221
  %251 = load %struct.xfs_mount*, %struct.xfs_mount** %13, align 8
  %252 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @XFS_MOUNT_WSYNC, align 4
  %255 = load i32, i32* @XFS_MOUNT_DIRSYNC, align 4
  %256 = or i32 %254, %255
  %257 = and i32 %253, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %250
  %260 = load %struct.xfs_trans*, %struct.xfs_trans** %15, align 8
  %261 = call i32 @xfs_trans_set_sync(%struct.xfs_trans* %260)
  br label %262

262:                                              ; preds = %259, %250
  %263 = load %struct.xfs_trans*, %struct.xfs_trans** %15, align 8
  %264 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %265 = load %struct.xfs_dquot*, %struct.xfs_dquot** %23, align 8
  %266 = load %struct.xfs_dquot*, %struct.xfs_dquot** %24, align 8
  %267 = call i32 @xfs_qm_vop_create_dqattach(%struct.xfs_trans* %263, %struct.xfs_inode* %264, %struct.xfs_dquot* %265, %struct.xfs_dquot* %266)
  %268 = call i32 @xfs_bmap_finish(%struct.xfs_trans** %15, i32* %17, i32* %21)
  store i32 %268, i32* %16, align 4
  %269 = load i32, i32* %16, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %262
  br label %286

272:                                              ; preds = %262
  %273 = load %struct.xfs_trans*, %struct.xfs_trans** %15, align 8
  %274 = load i64, i64* @XFS_TRANS_RELEASE_LOG_RES, align 8
  %275 = call i32 @xfs_trans_commit(%struct.xfs_trans* %273, i64 %274)
  store i32 %275, i32* %16, align 4
  %276 = load i32, i32* %16, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %272
  br label %296

279:                                              ; preds = %272
  %280 = load %struct.xfs_dquot*, %struct.xfs_dquot** %23, align 8
  %281 = call i32 @xfs_qm_dqrele(%struct.xfs_dquot* %280)
  %282 = load %struct.xfs_dquot*, %struct.xfs_dquot** %24, align 8
  %283 = call i32 @xfs_qm_dqrele(%struct.xfs_dquot* %282)
  %284 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %285 = load %struct.xfs_inode**, %struct.xfs_inode*** %11, align 8
  store %struct.xfs_inode* %284, %struct.xfs_inode** %285, align 8
  store i32 0, i32* %6, align 4
  br label %315

286:                                              ; preds = %271, %248, %241
  %287 = call i32 @xfs_bmap_cancel(i32* %17)
  br label %288

288:                                              ; preds = %286, %215, %189
  %289 = load i64, i64* @XFS_TRANS_ABORT, align 8
  %290 = load i64, i64* %20, align 8
  %291 = or i64 %290, %289
  store i64 %291, i64* %20, align 8
  br label %292

292:                                              ; preds = %288, %188, %168, %159, %146, %129
  %293 = load %struct.xfs_trans*, %struct.xfs_trans** %15, align 8
  %294 = load i64, i64* %20, align 8
  %295 = call i32 @xfs_trans_cancel(%struct.xfs_trans* %293, i64 %294)
  br label %296

296:                                              ; preds = %292, %278
  %297 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %298 = icmp ne %struct.xfs_inode* %297, null
  br i1 %298, label %299, label %302

299:                                              ; preds = %296
  %300 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %301 = call i32 @IRELE(%struct.xfs_inode* %300)
  br label %302

302:                                              ; preds = %299, %296
  %303 = load %struct.xfs_dquot*, %struct.xfs_dquot** %23, align 8
  %304 = call i32 @xfs_qm_dqrele(%struct.xfs_dquot* %303)
  %305 = load %struct.xfs_dquot*, %struct.xfs_dquot** %24, align 8
  %306 = call i32 @xfs_qm_dqrele(%struct.xfs_dquot* %305)
  %307 = load i64, i64* %19, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %313

309:                                              ; preds = %302
  %310 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %311 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %312 = call i32 @xfs_iunlock(%struct.xfs_inode* %310, i32 %311)
  br label %313

313:                                              ; preds = %309, %302
  %314 = load i32, i32* %16, align 4
  store i32 %314, i32* %6, align 4
  br label %315

315:                                              ; preds = %313, %279, %67, %40
  %316 = load i32, i32* %6, align 4
  ret i32 %316
}

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @trace_xfs_create(%struct.xfs_inode*, %struct.xfs_name*) #1

declare dso_local i64 @XFS_FORCED_SHUTDOWN(%struct.xfs_mount*) #1

declare dso_local i32 @XFS_ERROR(i32) #1

declare dso_local i32 @xfs_get_projid(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_qm_vop_dqalloc(%struct.xfs_inode*, i32, i32, i32, i32, %struct.xfs_dquot**, %struct.xfs_dquot**) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @current_fsgid(...) #1

declare dso_local i64 @XFS_MKDIR_SPACE_RES(%struct.xfs_mount*, i32) #1

declare dso_local i64 @XFS_MKDIR_LOG_RES(%struct.xfs_mount*) #1

declare dso_local %struct.xfs_trans* @xfs_trans_alloc(%struct.xfs_mount*, i32) #1

declare dso_local i64 @XFS_CREATE_SPACE_RES(%struct.xfs_mount*, i32) #1

declare dso_local i64 @XFS_CREATE_LOG_RES(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_trans_reserve(%struct.xfs_trans*, i64, i64, i32, i32, i64) #1

declare dso_local i32 @xfs_flush_inodes(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_ilock(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_bmap_init(i32*, i32*) #1

declare dso_local i32 @xfs_trans_reserve_quota(%struct.xfs_trans*, %struct.xfs_mount*, %struct.xfs_dquot*, %struct.xfs_dquot*, i64, i32, i32) #1

declare dso_local i32 @xfs_dir_canenter(%struct.xfs_trans*, %struct.xfs_inode*, %struct.xfs_name*, i64) #1

declare dso_local i32 @xfs_dir_ialloc(%struct.xfs_trans**, %struct.xfs_inode*, i32, i32, i32, i32, i32, %struct.xfs_inode**, i32*) #1

declare dso_local i32 @xfs_trans_ijoin_ref(%struct.xfs_trans*, %struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_dir_createname(%struct.xfs_trans*, %struct.xfs_inode*, %struct.xfs_name*, i32, i32*, i32*, i64) #1

declare dso_local i64 @XFS_IALLOC_SPACE_RES(%struct.xfs_mount*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_trans_ichgtime(%struct.xfs_trans*, %struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_trans_log_inode(%struct.xfs_trans*, %struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_dir_init(%struct.xfs_trans*, %struct.xfs_inode*, %struct.xfs_inode*) #1

declare dso_local i32 @xfs_bumplink(%struct.xfs_trans*, %struct.xfs_inode*) #1

declare dso_local i32 @xfs_trans_set_sync(%struct.xfs_trans*) #1

declare dso_local i32 @xfs_qm_vop_create_dqattach(%struct.xfs_trans*, %struct.xfs_inode*, %struct.xfs_dquot*, %struct.xfs_dquot*) #1

declare dso_local i32 @xfs_bmap_finish(%struct.xfs_trans**, i32*, i32*) #1

declare dso_local i32 @xfs_trans_commit(%struct.xfs_trans*, i64) #1

declare dso_local i32 @xfs_qm_dqrele(%struct.xfs_dquot*) #1

declare dso_local i32 @xfs_bmap_cancel(i32*) #1

declare dso_local i32 @xfs_trans_cancel(%struct.xfs_trans*, i64) #1

declare dso_local i32 @IRELE(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_iunlock(%struct.xfs_inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
