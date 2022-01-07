; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_vnodeops.c_xfs_symlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_vnodeops.c_xfs_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_41__ = type { i32, %struct.TYPE_39__, %struct.TYPE_38__, %struct.TYPE_40__* }
%struct.TYPE_39__ = type { i32, i32, i32 }
%struct.TYPE_38__ = type { i32, %struct.TYPE_37__ }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_40__ = type { i32, i32 }
%struct.xfs_name = type { i32 }
%struct.xfs_dquot = type { i32 }
%struct.TYPE_42__ = type { i32, i32 }

@B_FALSE = common dso_local global i64 0, align 8
@SYMLINK_MAPS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@XFS_DIFLAG_PROJINHERIT = common dso_local global i32 0, align 4
@XFS_PROJID_DEFAULT = common dso_local global i32 0, align 4
@XFS_QMOPT_QUOTALL = common dso_local global i32 0, align 4
@XFS_QMOPT_INHERIT = common dso_local global i32 0, align 4
@XFS_TRANS_SYMLINK = common dso_local global i32 0, align 4
@XFS_TRANS_RELEASE_LOG_RES = common dso_local global i64 0, align 8
@XFS_TRANS_PERM_LOG_RES = common dso_local global i32 0, align 4
@XFS_SYMLINK_LOG_COUNT = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@XFS_ILOCK_PARENT = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@XFS_DIFLAG_NOSYMLINKS = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_IFEXTENTS = common dso_local global i32 0, align 4
@XFS_IFBROOT = common dso_local global i32 0, align 4
@XFS_IFINLINE = common dso_local global i32 0, align 4
@XFS_DINODE_FMT_LOCAL = common dso_local global i32 0, align 4
@XFS_ILOG_DDATA = common dso_local global i32 0, align 4
@XFS_ILOG_CORE = common dso_local global i32 0, align 4
@XFS_BMAPI_WRITE = common dso_local global i32 0, align 4
@XFS_BMAPI_METADATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XFS_ICHGTIME_MOD = common dso_local global i32 0, align 4
@XFS_ICHGTIME_CHG = common dso_local global i32 0, align 4
@XFS_MOUNT_WSYNC = common dso_local global i32 0, align 4
@XFS_MOUNT_DIRSYNC = common dso_local global i32 0, align 4
@XFS_TRANS_ABORT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_symlink(%struct.TYPE_41__* %0, %struct.xfs_name* %1, i8* %2, i32 %3, %struct.TYPE_41__** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_41__*, align 8
  %8 = alloca %struct.xfs_name*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_41__**, align 8
  %12 = alloca %struct.TYPE_40__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_41__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 8
  %32 = alloca i32, align 4
  %33 = alloca %struct.xfs_dquot*, align 8
  %34 = alloca %struct.xfs_dquot*, align 8
  %35 = alloca i64, align 8
  %36 = alloca i32, align 4
  store %struct.TYPE_41__* %0, %struct.TYPE_41__** %7, align 8
  store %struct.xfs_name* %1, %struct.xfs_name** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_41__** %4, %struct.TYPE_41__*** %11, align 8
  %37 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_40__*, %struct.TYPE_40__** %38, align 8
  store %struct.TYPE_40__* %39, %struct.TYPE_40__** %12, align 8
  %40 = load i64, i64* @B_FALSE, align 8
  store i64 %40, i64* %19, align 8
  %41 = load i32, i32* @SYMLINK_MAPS, align 4
  %42 = zext i32 %41 to i64
  %43 = call i8* @llvm.stacksave()
  store i8* %43, i8** %25, align 8
  %44 = alloca %struct.TYPE_42__, i64 %42, align 16
  store i64 %42, i64* %26, align 8
  %45 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %11, align 8
  store %struct.TYPE_41__* null, %struct.TYPE_41__** %45, align 8
  store i32 0, i32* %15, align 4
  store %struct.TYPE_41__* null, %struct.TYPE_41__** %14, align 8
  store i32* null, i32** %13, align 8
  %46 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %47 = load %struct.xfs_name*, %struct.xfs_name** %8, align 8
  %48 = call i32 @trace_xfs_symlink(%struct.TYPE_41__* %46, %struct.xfs_name* %47)
  %49 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %50 = call i64 @XFS_FORCED_SHUTDOWN(%struct.TYPE_40__* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %5
  %53 = load i32, i32* @EIO, align 4
  %54 = call i32 @XFS_ERROR(i32 %53)
  store i32 %54, i32* %6, align 4
  store i32 1, i32* %36, align 4
  br label %421

55:                                               ; preds = %5
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 @strlen(i8* %56)
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* @MAXPATHLEN, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* @ENAMETOOLONG, align 4
  %63 = call i32 @XFS_ERROR(i32 %62)
  store i32 %63, i32* %6, align 4
  store i32 1, i32* %36, align 4
  br label %421

64:                                               ; preds = %55
  store %struct.xfs_dquot* null, %struct.xfs_dquot** %34, align 8
  store %struct.xfs_dquot* null, %struct.xfs_dquot** %33, align 8
  %65 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @XFS_DIFLAG_PROJINHERIT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %74 = call i32 @xfs_get_projid(%struct.TYPE_41__* %73)
  store i32 %74, i32* %32, align 4
  br label %77

75:                                               ; preds = %64
  %76 = load i32, i32* @XFS_PROJID_DEFAULT, align 4
  store i32 %76, i32* %32, align 4
  br label %77

77:                                               ; preds = %75, %72
  %78 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %79 = call i32 (...) @current_fsuid()
  %80 = call i32 (...) @current_fsgid()
  %81 = load i32, i32* %32, align 4
  %82 = load i32, i32* @XFS_QMOPT_QUOTALL, align 4
  %83 = load i32, i32* @XFS_QMOPT_INHERIT, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @xfs_qm_vop_dqalloc(%struct.TYPE_41__* %78, i32 %79, i32 %80, i32 %81, i32 %84, %struct.xfs_dquot** %33, %struct.xfs_dquot** %34)
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %77
  br label %419

89:                                               ; preds = %77
  %90 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %91 = load i32, i32* @XFS_TRANS_SYMLINK, align 4
  %92 = call i32* @xfs_trans_alloc(%struct.TYPE_40__* %90, i32 %91)
  store i32* %92, i32** %13, align 8
  %93 = load i64, i64* @XFS_TRANS_RELEASE_LOG_RES, align 8
  store i64 %93, i64* %20, align 8
  %94 = load i32, i32* %16, align 4
  %95 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %96 = call i32 @XFS_LITINO(%struct.TYPE_40__* %95)
  %97 = icmp sle i32 %94, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %89
  store i64 0, i64* %23, align 8
  br label %103

99:                                               ; preds = %89
  %100 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %101 = load i32, i32* %16, align 4
  %102 = call i64 @XFS_B_TO_FSB(%struct.TYPE_40__* %100, i32 %101)
  store i64 %102, i64* %23, align 8
  br label %103

103:                                              ; preds = %99, %98
  %104 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %105 = load %struct.xfs_name*, %struct.xfs_name** %8, align 8
  %106 = getelementptr inbounds %struct.xfs_name, %struct.xfs_name* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i64, i64* %23, align 8
  %109 = call i64 @XFS_SYMLINK_SPACE_RES(%struct.TYPE_40__* %104, i32 %107, i64 %108)
  store i64 %109, i64* %35, align 8
  %110 = load i32*, i32** %13, align 8
  %111 = load i64, i64* %35, align 8
  %112 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %113 = call i32 @XFS_SYMLINK_LOG_RES(%struct.TYPE_40__* %112)
  %114 = load i32, i32* @XFS_TRANS_PERM_LOG_RES, align 4
  %115 = load i32, i32* @XFS_SYMLINK_LOG_COUNT, align 4
  %116 = call i32 @xfs_trans_reserve(i32* %110, i64 %111, i32 %113, i32 0, i32 %114, i32 %115)
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* @ENOSPC, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %130

120:                                              ; preds = %103
  %121 = load i64, i64* %23, align 8
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %120
  store i64 0, i64* %35, align 8
  %124 = load i32*, i32** %13, align 8
  %125 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %126 = call i32 @XFS_SYMLINK_LOG_RES(%struct.TYPE_40__* %125)
  %127 = load i32, i32* @XFS_TRANS_PERM_LOG_RES, align 4
  %128 = load i32, i32* @XFS_SYMLINK_LOG_COUNT, align 4
  %129 = call i32 @xfs_trans_reserve(i32* %124, i64 0, i32 %126, i32 0, i32 %127, i32 %128)
  store i32 %129, i32* %15, align 4
  br label %130

130:                                              ; preds = %123, %120, %103
  %131 = load i32, i32* %15, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  store i64 0, i64* %20, align 8
  br label %404

134:                                              ; preds = %130
  %135 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %136 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %137 = load i32, i32* @XFS_ILOCK_PARENT, align 4
  %138 = or i32 %136, %137
  %139 = call i32 @xfs_ilock(%struct.TYPE_41__* %135, i32 %138)
  %140 = load i64, i64* @B_TRUE, align 8
  store i64 %140, i64* %19, align 8
  %141 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @XFS_DIFLAG_NOSYMLINKS, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %134
  %149 = load i32, i32* @EPERM, align 4
  %150 = call i32 @XFS_ERROR(i32 %149)
  store i32 %150, i32* %15, align 4
  br label %404

151:                                              ; preds = %134
  %152 = load i32*, i32** %13, align 8
  %153 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %154 = load %struct.xfs_dquot*, %struct.xfs_dquot** %33, align 8
  %155 = load %struct.xfs_dquot*, %struct.xfs_dquot** %34, align 8
  %156 = load i64, i64* %35, align 8
  %157 = call i32 @xfs_trans_reserve_quota(i32* %152, %struct.TYPE_40__* %153, %struct.xfs_dquot* %154, %struct.xfs_dquot* %155, i64 %156, i32 1, i32 0)
  store i32 %157, i32* %15, align 4
  %158 = load i32, i32* %15, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %151
  br label %404

161:                                              ; preds = %151
  %162 = load i32*, i32** %13, align 8
  %163 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %164 = load %struct.xfs_name*, %struct.xfs_name** %8, align 8
  %165 = load i64, i64* %35, align 8
  %166 = call i32 @xfs_dir_canenter(i32* %162, %struct.TYPE_41__* %163, %struct.xfs_name* %164, i64 %165)
  store i32 %166, i32* %15, align 4
  %167 = load i32, i32* %15, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %161
  br label %404

170:                                              ; preds = %161
  %171 = call i32 @xfs_bmap_init(i32* %17, i32* %18)
  %172 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %173 = load i32, i32* @S_IFLNK, align 4
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* @S_IFMT, align 4
  %176 = xor i32 %175, -1
  %177 = and i32 %174, %176
  %178 = or i32 %173, %177
  %179 = load i32, i32* %32, align 4
  %180 = load i64, i64* %35, align 8
  %181 = icmp sgt i64 %180, 0
  %182 = zext i1 %181 to i32
  %183 = call i32 @xfs_dir_ialloc(i32** %13, %struct.TYPE_41__* %172, i32 %178, i32 1, i32 0, i32 %179, i32 %182, %struct.TYPE_41__** %14, i32* null)
  store i32 %183, i32* %15, align 4
  %184 = load i32, i32* %15, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %170
  %187 = load i32, i32* %15, align 4
  %188 = load i32, i32* @ENOSPC, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %186
  br label %404

191:                                              ; preds = %186
  br label %399

192:                                              ; preds = %170
  %193 = load i32*, i32** %13, align 8
  %194 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %195 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %196 = call i32 @xfs_trans_ijoin_ref(i32* %193, %struct.TYPE_41__* %194, i32 %195)
  %197 = load i64, i64* @B_FALSE, align 8
  store i64 %197, i64* %19, align 8
  %198 = load i32*, i32** %13, align 8
  %199 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %200 = load %struct.xfs_dquot*, %struct.xfs_dquot** %33, align 8
  %201 = load %struct.xfs_dquot*, %struct.xfs_dquot** %34, align 8
  %202 = call i32 @xfs_qm_vop_create_dqattach(i32* %198, %struct.TYPE_41__* %199, %struct.xfs_dquot* %200, %struct.xfs_dquot* %201)
  %203 = load i64, i64* %35, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %192
  %206 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %207 = call i64 @XFS_IALLOC_SPACE_RES(%struct.TYPE_40__* %206)
  %208 = load i64, i64* %35, align 8
  %209 = sub nsw i64 %208, %207
  store i64 %209, i64* %35, align 8
  br label %210

210:                                              ; preds = %205, %192
  %211 = load i32, i32* %16, align 4
  %212 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %213 = call i32 @XFS_IFORK_DSIZE(%struct.TYPE_41__* %212)
  %214 = icmp sle i32 %211, %213
  br i1 %214, label %215, label %257

215:                                              ; preds = %210
  %216 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %217 = load i32, i32* %16, align 4
  %218 = load i32, i32* @XFS_DATA_FORK, align 4
  %219 = call i32 @xfs_idata_realloc(%struct.TYPE_41__* %216, i32 %217, i32 %218)
  %220 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %221 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load i8*, i8** %9, align 8
  %226 = load i32, i32* %16, align 4
  %227 = call i32 @memcpy(i32 %224, i8* %225, i32 %226)
  %228 = load i32, i32* %16, align 4
  %229 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %230 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %230, i32 0, i32 1
  store i32 %228, i32* %231, align 4
  %232 = load i32, i32* @XFS_IFEXTENTS, align 4
  %233 = load i32, i32* @XFS_IFBROOT, align 4
  %234 = or i32 %232, %233
  %235 = xor i32 %234, -1
  %236 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %237 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = and i32 %239, %235
  store i32 %240, i32* %238, align 8
  %241 = load i32, i32* @XFS_IFINLINE, align 4
  %242 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %243 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = or i32 %245, %241
  store i32 %246, i32* %244, align 8
  %247 = load i32, i32* @XFS_DINODE_FMT_LOCAL, align 4
  %248 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %249 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %249, i32 0, i32 2
  store i32 %247, i32* %250, align 4
  %251 = load i32*, i32** %13, align 8
  %252 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %253 = load i32, i32* @XFS_ILOG_DDATA, align 4
  %254 = load i32, i32* @XFS_ILOG_CORE, align 4
  %255 = or i32 %253, %254
  %256 = call i32 @xfs_trans_log_inode(i32* %251, %struct.TYPE_41__* %252, i32 %255)
  br label %347

257:                                              ; preds = %210
  store i64 0, i64* %22, align 8
  %258 = load i32, i32* @SYMLINK_MAPS, align 4
  store i32 %258, i32* %24, align 4
  %259 = load i32*, i32** %13, align 8
  %260 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %261 = load i64, i64* %22, align 8
  %262 = load i64, i64* %23, align 8
  %263 = load i32, i32* @XFS_BMAPI_WRITE, align 4
  %264 = load i32, i32* @XFS_BMAPI_METADATA, align 4
  %265 = or i32 %263, %264
  %266 = load i64, i64* %35, align 8
  %267 = call i32 @xfs_bmapi(i32* %259, %struct.TYPE_41__* %260, i64 %261, i64 %262, i32 %265, i32* %18, i64 %266, %struct.TYPE_42__* %44, i32* %24, i32* %17)
  store i32 %267, i32* %15, align 4
  %268 = load i32, i32* %15, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %257
  br label %396

271:                                              ; preds = %257
  %272 = load i64, i64* %35, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %278

274:                                              ; preds = %271
  %275 = load i64, i64* %23, align 8
  %276 = load i64, i64* %35, align 8
  %277 = sub nsw i64 %276, %275
  store i64 %277, i64* %35, align 8
  br label %278

278:                                              ; preds = %274, %271
  %279 = load i32, i32* %16, align 4
  %280 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %281 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %281, i32 0, i32 1
  store i32 %279, i32* %282, align 4
  %283 = load i32*, i32** %13, align 8
  %284 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %285 = load i32, i32* @XFS_ILOG_CORE, align 4
  %286 = call i32 @xfs_trans_log_inode(i32* %283, %struct.TYPE_41__* %284, i32 %285)
  %287 = load i8*, i8** %9, align 8
  store i8* %287, i8** %28, align 8
  store i32 0, i32* %30, align 4
  br label %288

288:                                              ; preds = %343, %278
  %289 = load i32, i32* %30, align 4
  %290 = load i32, i32* %24, align 4
  %291 = icmp slt i32 %289, %290
  br i1 %291, label %292, label %346

292:                                              ; preds = %288
  %293 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %294 = load i32, i32* %30, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %44, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @XFS_FSB_TO_DADDR(%struct.TYPE_40__* %293, i32 %298)
  store i32 %299, i32* %27, align 4
  %300 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %301 = load i32, i32* %30, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %44, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = call i32 @XFS_FSB_TO_B(%struct.TYPE_40__* %300, i32 %305)
  store i32 %306, i32* %29, align 4
  %307 = load i32*, i32** %13, align 8
  %308 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %309 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* %27, align 4
  %312 = load i32, i32* %29, align 4
  %313 = call i32 @BTOBB(i32 %312)
  %314 = call i32* @xfs_trans_get_buf(i32* %307, i32 %310, i32 %311, i32 %313, i32 0)
  store i32* %314, i32** %31, align 8
  %315 = load i32*, i32** %31, align 8
  %316 = icmp ne i32* %315, null
  br i1 %316, label %319, label %317

317:                                              ; preds = %292
  %318 = load i32, i32* @ENOMEM, align 4
  store i32 %318, i32* %15, align 4
  br label %396

319:                                              ; preds = %292
  %320 = load i32, i32* %16, align 4
  %321 = load i32, i32* %29, align 4
  %322 = icmp slt i32 %320, %321
  br i1 %322, label %323, label %325

323:                                              ; preds = %319
  %324 = load i32, i32* %16, align 4
  store i32 %324, i32* %29, align 4
  br label %325

325:                                              ; preds = %323, %319
  %326 = load i32, i32* %29, align 4
  %327 = load i32, i32* %16, align 4
  %328 = sub nsw i32 %327, %326
  store i32 %328, i32* %16, align 4
  %329 = load i32*, i32** %31, align 8
  %330 = call i32 @XFS_BUF_PTR(i32* %329)
  %331 = load i8*, i8** %28, align 8
  %332 = load i32, i32* %29, align 4
  %333 = call i32 @memcpy(i32 %330, i8* %331, i32 %332)
  %334 = load i32, i32* %29, align 4
  %335 = load i8*, i8** %28, align 8
  %336 = sext i32 %334 to i64
  %337 = getelementptr inbounds i8, i8* %335, i64 %336
  store i8* %337, i8** %28, align 8
  %338 = load i32*, i32** %13, align 8
  %339 = load i32*, i32** %31, align 8
  %340 = load i32, i32* %29, align 4
  %341 = sub nsw i32 %340, 1
  %342 = call i32 @xfs_trans_log_buf(i32* %338, i32* %339, i32 0, i32 %341)
  br label %343

343:                                              ; preds = %325
  %344 = load i32, i32* %30, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %30, align 4
  br label %288

346:                                              ; preds = %288
  br label %347

347:                                              ; preds = %346, %215
  %348 = load i32*, i32** %13, align 8
  %349 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %350 = load %struct.xfs_name*, %struct.xfs_name** %8, align 8
  %351 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %352 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = load i64, i64* %35, align 8
  %355 = call i32 @xfs_dir_createname(i32* %348, %struct.TYPE_41__* %349, %struct.xfs_name* %350, i32 %353, i32* %18, i32* %17, i64 %354)
  store i32 %355, i32* %15, align 4
  %356 = load i32, i32* %15, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %359

358:                                              ; preds = %347
  br label %396

359:                                              ; preds = %347
  %360 = load i32*, i32** %13, align 8
  %361 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %362 = load i32, i32* @XFS_ICHGTIME_MOD, align 4
  %363 = load i32, i32* @XFS_ICHGTIME_CHG, align 4
  %364 = or i32 %362, %363
  %365 = call i32 @xfs_trans_ichgtime(i32* %360, %struct.TYPE_41__* %361, i32 %364)
  %366 = load i32*, i32** %13, align 8
  %367 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %368 = load i32, i32* @XFS_ILOG_CORE, align 4
  %369 = call i32 @xfs_trans_log_inode(i32* %366, %struct.TYPE_41__* %367, i32 %368)
  %370 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %371 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 4
  %373 = load i32, i32* @XFS_MOUNT_WSYNC, align 4
  %374 = load i32, i32* @XFS_MOUNT_DIRSYNC, align 4
  %375 = or i32 %373, %374
  %376 = and i32 %372, %375
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %381

378:                                              ; preds = %359
  %379 = load i32*, i32** %13, align 8
  %380 = call i32 @xfs_trans_set_sync(i32* %379)
  br label %381

381:                                              ; preds = %378, %359
  %382 = call i32 @xfs_bmap_finish(i32** %13, i32* %17, i32* %21)
  store i32 %382, i32* %15, align 4
  %383 = load i32, i32* %15, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %386

385:                                              ; preds = %381
  br label %396

386:                                              ; preds = %381
  %387 = load i32*, i32** %13, align 8
  %388 = load i64, i64* @XFS_TRANS_RELEASE_LOG_RES, align 8
  %389 = call i32 @xfs_trans_commit(i32* %387, i64 %388)
  store i32 %389, i32* %15, align 4
  %390 = load %struct.xfs_dquot*, %struct.xfs_dquot** %33, align 8
  %391 = call i32 @xfs_qm_dqrele(%struct.xfs_dquot* %390)
  %392 = load %struct.xfs_dquot*, %struct.xfs_dquot** %34, align 8
  %393 = call i32 @xfs_qm_dqrele(%struct.xfs_dquot* %392)
  %394 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %395 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %11, align 8
  store %struct.TYPE_41__* %394, %struct.TYPE_41__** %395, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %36, align 4
  br label %421

396:                                              ; preds = %385, %358, %317, %270
  %397 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %398 = call i32 @IRELE(%struct.TYPE_41__* %397)
  br label %399

399:                                              ; preds = %396, %191
  %400 = call i32 @xfs_bmap_cancel(i32* %17)
  %401 = load i64, i64* @XFS_TRANS_ABORT, align 8
  %402 = load i64, i64* %20, align 8
  %403 = or i64 %402, %401
  store i64 %403, i64* %20, align 8
  br label %404

404:                                              ; preds = %399, %190, %169, %160, %148, %133
  %405 = load i32*, i32** %13, align 8
  %406 = load i64, i64* %20, align 8
  %407 = call i32 @xfs_trans_cancel(i32* %405, i64 %406)
  %408 = load %struct.xfs_dquot*, %struct.xfs_dquot** %33, align 8
  %409 = call i32 @xfs_qm_dqrele(%struct.xfs_dquot* %408)
  %410 = load %struct.xfs_dquot*, %struct.xfs_dquot** %34, align 8
  %411 = call i32 @xfs_qm_dqrele(%struct.xfs_dquot* %410)
  %412 = load i64, i64* %19, align 8
  %413 = icmp ne i64 %412, 0
  br i1 %413, label %414, label %418

414:                                              ; preds = %404
  %415 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %416 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %417 = call i32 @xfs_iunlock(%struct.TYPE_41__* %415, i32 %416)
  br label %418

418:                                              ; preds = %414, %404
  br label %419

419:                                              ; preds = %418, %88
  %420 = load i32, i32* %15, align 4
  store i32 %420, i32* %6, align 4
  store i32 1, i32* %36, align 4
  br label %421

421:                                              ; preds = %419, %386, %61, %52
  %422 = load i8*, i8** %25, align 8
  call void @llvm.stackrestore(i8* %422)
  %423 = load i32, i32* %6, align 4
  ret i32 %423
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trace_xfs_symlink(%struct.TYPE_41__*, %struct.xfs_name*) #2

declare dso_local i64 @XFS_FORCED_SHUTDOWN(%struct.TYPE_40__*) #2

declare dso_local i32 @XFS_ERROR(i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @xfs_get_projid(%struct.TYPE_41__*) #2

declare dso_local i32 @xfs_qm_vop_dqalloc(%struct.TYPE_41__*, i32, i32, i32, i32, %struct.xfs_dquot**, %struct.xfs_dquot**) #2

declare dso_local i32 @current_fsuid(...) #2

declare dso_local i32 @current_fsgid(...) #2

declare dso_local i32* @xfs_trans_alloc(%struct.TYPE_40__*, i32) #2

declare dso_local i32 @XFS_LITINO(%struct.TYPE_40__*) #2

declare dso_local i64 @XFS_B_TO_FSB(%struct.TYPE_40__*, i32) #2

declare dso_local i64 @XFS_SYMLINK_SPACE_RES(%struct.TYPE_40__*, i32, i64) #2

declare dso_local i32 @xfs_trans_reserve(i32*, i64, i32, i32, i32, i32) #2

declare dso_local i32 @XFS_SYMLINK_LOG_RES(%struct.TYPE_40__*) #2

declare dso_local i32 @xfs_ilock(%struct.TYPE_41__*, i32) #2

declare dso_local i32 @xfs_trans_reserve_quota(i32*, %struct.TYPE_40__*, %struct.xfs_dquot*, %struct.xfs_dquot*, i64, i32, i32) #2

declare dso_local i32 @xfs_dir_canenter(i32*, %struct.TYPE_41__*, %struct.xfs_name*, i64) #2

declare dso_local i32 @xfs_bmap_init(i32*, i32*) #2

declare dso_local i32 @xfs_dir_ialloc(i32**, %struct.TYPE_41__*, i32, i32, i32, i32, i32, %struct.TYPE_41__**, i32*) #2

declare dso_local i32 @xfs_trans_ijoin_ref(i32*, %struct.TYPE_41__*, i32) #2

declare dso_local i32 @xfs_qm_vop_create_dqattach(i32*, %struct.TYPE_41__*, %struct.xfs_dquot*, %struct.xfs_dquot*) #2

declare dso_local i64 @XFS_IALLOC_SPACE_RES(%struct.TYPE_40__*) #2

declare dso_local i32 @XFS_IFORK_DSIZE(%struct.TYPE_41__*) #2

declare dso_local i32 @xfs_idata_realloc(%struct.TYPE_41__*, i32, i32) #2

declare dso_local i32 @memcpy(i32, i8*, i32) #2

declare dso_local i32 @xfs_trans_log_inode(i32*, %struct.TYPE_41__*, i32) #2

declare dso_local i32 @xfs_bmapi(i32*, %struct.TYPE_41__*, i64, i64, i32, i32*, i64, %struct.TYPE_42__*, i32*, i32*) #2

declare dso_local i32 @XFS_FSB_TO_DADDR(%struct.TYPE_40__*, i32) #2

declare dso_local i32 @XFS_FSB_TO_B(%struct.TYPE_40__*, i32) #2

declare dso_local i32* @xfs_trans_get_buf(i32*, i32, i32, i32, i32) #2

declare dso_local i32 @BTOBB(i32) #2

declare dso_local i32 @XFS_BUF_PTR(i32*) #2

declare dso_local i32 @xfs_trans_log_buf(i32*, i32*, i32, i32) #2

declare dso_local i32 @xfs_dir_createname(i32*, %struct.TYPE_41__*, %struct.xfs_name*, i32, i32*, i32*, i64) #2

declare dso_local i32 @xfs_trans_ichgtime(i32*, %struct.TYPE_41__*, i32) #2

declare dso_local i32 @xfs_trans_set_sync(i32*) #2

declare dso_local i32 @xfs_bmap_finish(i32**, i32*, i32*) #2

declare dso_local i32 @xfs_trans_commit(i32*, i64) #2

declare dso_local i32 @xfs_qm_dqrele(%struct.xfs_dquot*) #2

declare dso_local i32 @IRELE(%struct.TYPE_41__*) #2

declare dso_local i32 @xfs_bmap_cancel(i32*) #2

declare dso_local i32 @xfs_trans_cancel(i32*, i64) #2

declare dso_local i32 @xfs_iunlock(%struct.TYPE_41__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
