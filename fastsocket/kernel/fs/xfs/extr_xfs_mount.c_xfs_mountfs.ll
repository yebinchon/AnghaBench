; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_mount.c_xfs_mountfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_mount.c_xfs_mountfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_54__ = type { i32, i32, i32, i64, i64, i64, %struct.TYPE_53__, %struct.TYPE_55__*, i32, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_53__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_55__ = type { i64, %struct.TYPE_52__ }
%struct.TYPE_52__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"correcting sb_features alignment problem\00", align 1
@XFS_SB_FEATURES2 = common dso_local global i32 0, align 4
@XFS_SB_BAD_FEATURES2 = common dso_local global i32 0, align 4
@XFS_MOUNT_NOATTR2 = common dso_local global i32 0, align 4
@XFS_MOUNT_ATTR2 = common dso_local global i32 0, align 4
@XFS_SB_VERSIONNUM = common dso_local global i32 0, align 4
@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_ATTR_FORK = common dso_local global i32 0, align 4
@XFS_INODE_BIG_CLUSTER_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"RT mount failed\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Failed per-ag init: %d\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"no log defined\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"xfs_mountfs\00", align 1
@XFS_ERRLEVEL_LOW = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"log mount failed\00", align 1
@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"failed to read root inode\00", align 1
@S_IFMT = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [43 x i8] c"corrupted root inode %llu: not a directory\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"xfs_mountfs_int(2)\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"failed to read RT inodes\00", align 1
@XFS_MOUNT_RDONLY = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"failed to write sb changes\00", align 1
@XFS_ALL_QUOTA_ACCT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"resetting quota flags\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"log mount finish failed\00", align 1
@.str.13 = private unnamed_addr constant [68 x i8] c"Unable to allocate reserve blocks. Continuing without reserve pool.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_mountfs(%struct.TYPE_54__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_54__*, align 8
  %4 = alloca %struct.TYPE_53__*, align 8
  %5 = alloca %struct.TYPE_55__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_54__* %0, %struct.TYPE_54__** %3, align 8
  %10 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %10, i32 0, i32 6
  store %struct.TYPE_53__* %11, %struct.TYPE_53__** %4, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %13 = load %struct.TYPE_53__*, %struct.TYPE_53__** %4, align 8
  %14 = call i32 @xfs_mount_common(%struct.TYPE_54__* %12, %struct.TYPE_53__* %13)
  %15 = load %struct.TYPE_53__*, %struct.TYPE_53__** %4, align 8
  %16 = call i64 @xfs_sb_has_mismatched_features2(%struct.TYPE_53__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %58

18:                                               ; preds = %1
  %19 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %20 = call i32 (%struct.TYPE_54__*, i8*, ...) @xfs_warn(%struct.TYPE_54__* %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.TYPE_53__*, %struct.TYPE_53__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %21, i32 0, i32 10
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_53__*, %struct.TYPE_53__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.TYPE_53__*, %struct.TYPE_53__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %28, i32 0, i32 9
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_53__*, %struct.TYPE_53__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %31, i32 0, i32 10
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @XFS_SB_FEATURES2, align 4
  %34 = load i32, i32* @XFS_SB_BAD_FEATURES2, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %40, i32 0, i32 6
  %42 = call i64 @xfs_sb_version_hasattr2(%struct.TYPE_53__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %18
  %45 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @XFS_MOUNT_NOATTR2, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* @XFS_MOUNT_ATTR2, align 4
  %53 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %51, %44, %18
  br label %58

58:                                               ; preds = %57, %1
  %59 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %59, i32 0, i32 6
  %61 = call i64 @xfs_sb_version_hasattr2(%struct.TYPE_53__* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %90

63:                                               ; preds = %58
  %64 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @XFS_MOUNT_NOATTR2, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %90

70:                                               ; preds = %63
  %71 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %71, i32 0, i32 6
  %73 = call i32 @xfs_sb_version_removeattr2(%struct.TYPE_53__* %72)
  %74 = load i32, i32* @XFS_SB_FEATURES2, align 4
  %75 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load %struct.TYPE_53__*, %struct.TYPE_53__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %79, i32 0, i32 9
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %70
  %84 = load i32, i32* @XFS_SB_VERSIONNUM, align 4
  %85 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %83, %70
  br label %90

90:                                               ; preds = %89, %63, %58
  %91 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %92 = call i32 @xfs_update_alignment(%struct.TYPE_54__* %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %439

96:                                               ; preds = %90
  %97 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %98 = call i32 @xfs_alloc_compute_maxlevels(%struct.TYPE_54__* %97)
  %99 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %100 = load i32, i32* @XFS_DATA_FORK, align 4
  %101 = call i32 @xfs_bmap_compute_maxlevels(%struct.TYPE_54__* %99, i32 %100)
  %102 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %103 = load i32, i32* @XFS_ATTR_FORK, align 4
  %104 = call i32 @xfs_bmap_compute_maxlevels(%struct.TYPE_54__* %102, i32 %103)
  %105 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %106 = call i32 @xfs_ialloc_compute_maxlevels(%struct.TYPE_54__* %105)
  %107 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %108 = call i32 @xfs_set_maxicount(%struct.TYPE_54__* %107)
  %109 = load %struct.TYPE_53__*, %struct.TYPE_53__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %109, i32 0, i32 8
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @xfs_max_file_offset(i32 %111)
  %113 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %113, i32 0, i32 14
  store i32 %112, i32* %114, align 8
  %115 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %116 = call i32 @xfs_uuid_mount(%struct.TYPE_54__* %115)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %96
  br label %439

120:                                              ; preds = %96
  %121 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %122 = call i32 @xfs_set_rw_sizes(%struct.TYPE_54__* %121)
  %123 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %124 = call i32 @xfs_set_low_space_thresholds(%struct.TYPE_54__* %123)
  %125 = load i32, i32* @XFS_INODE_BIG_CLUSTER_SIZE, align 4
  %126 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %126, i32 0, i32 13
  store i32 %125, i32* %127, align 4
  %128 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %129 = call i32 @xfs_set_inoalignment(%struct.TYPE_54__* %128)
  %130 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %131 = call i32 @xfs_check_sizes(%struct.TYPE_54__* %130)
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %120
  br label %436

135:                                              ; preds = %120
  %136 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %137 = call i32 @xfs_rtmount_init(%struct.TYPE_54__* %136)
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* %9, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %142 = call i32 (%struct.TYPE_54__*, i8*, ...) @xfs_warn(%struct.TYPE_54__* %141, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %436

143:                                              ; preds = %135
  %144 = load %struct.TYPE_53__*, %struct.TYPE_53__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %144, i32 0, i32 7
  %146 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %146, i32 0, i32 12
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @uuid_getnodeuniq(i32* %145, i32 %148)
  %150 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %150, i32 0, i32 11
  store i64 0, i64* %151, align 8
  %152 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %153 = call i32 @xfs_dir_mount(%struct.TYPE_54__* %152)
  %154 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %154, i32 0, i32 6
  %156 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = mul nsw i32 %157, 37
  %159 = sdiv i32 %158, 100
  %160 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 8
  %162 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %163 = call i32 @xfs_trans_init(%struct.TYPE_54__* %162)
  %164 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %164, i32 0, i32 10
  %166 = call i32 @spin_lock_init(i32* %165)
  %167 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %167, i32 0, i32 9
  %169 = load i32, i32* @GFP_ATOMIC, align 4
  %170 = call i32 @INIT_RADIX_TREE(i32* %168, i32 %169)
  %171 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %172 = load %struct.TYPE_53__*, %struct.TYPE_53__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %175, i32 0, i32 8
  %177 = call i32 @xfs_initialize_perag(%struct.TYPE_54__* %171, i32 %174, i32* %176)
  store i32 %177, i32* %9, align 4
  %178 = load i32, i32* %9, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %143
  %181 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %182 = load i32, i32* %9, align 4
  %183 = call i32 (%struct.TYPE_54__*, i8*, ...) @xfs_warn(%struct.TYPE_54__* %181, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %182)
  br label %436

184:                                              ; preds = %143
  %185 = load %struct.TYPE_53__*, %struct.TYPE_53__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %197, label %189

189:                                              ; preds = %184
  %190 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %191 = call i32 (%struct.TYPE_54__*, i8*, ...) @xfs_warn(%struct.TYPE_54__* %190, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %192 = load i32, i32* @XFS_ERRLEVEL_LOW, align 4
  %193 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %194 = call i32 @XFS_ERROR_REPORT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %192, %struct.TYPE_54__* %193)
  %195 = load i32, i32* @EFSCORRUPTED, align 4
  %196 = call i32 @XFS_ERROR(i32 %195)
  store i32 %196, i32* %9, align 4
  br label %433

197:                                              ; preds = %184
  %198 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %199 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %203 = load %struct.TYPE_53__*, %struct.TYPE_53__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %203, i32 0, i32 6
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @XFS_FSB_TO_DADDR(%struct.TYPE_54__* %202, i32 %205)
  %207 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %208 = load %struct.TYPE_53__*, %struct.TYPE_53__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @XFS_FSB_TO_BB(%struct.TYPE_54__* %207, i32 %210)
  %212 = call i32 @xfs_log_mount(%struct.TYPE_54__* %198, i64 %201, i32 %206, i32 %211)
  store i32 %212, i32* %9, align 4
  %213 = load i32, i32* %9, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %197
  %216 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %217 = call i32 (%struct.TYPE_54__*, i8*, ...) @xfs_warn(%struct.TYPE_54__* %216, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %410

218:                                              ; preds = %197
  %219 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %219, i32 0, i32 6
  %221 = call i64 @xfs_sb_version_haslazysbcount(%struct.TYPE_53__* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %243

223:                                              ; preds = %218
  %224 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %225 = call i32 @XFS_LAST_UNMOUNT_WAS_CLEAN(%struct.TYPE_54__* %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %243, label %227

227:                                              ; preds = %223
  %228 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %228, i32 0, i32 6
  %230 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %229, i32 0, i32 4
  %231 = load i32, i32* %230, align 8
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %243, label %233

233:                                              ; preds = %227
  %234 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %235 = load %struct.TYPE_53__*, %struct.TYPE_53__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @xfs_initialize_perag_data(%struct.TYPE_54__* %234, i32 %237)
  store i32 %238, i32* %9, align 4
  %239 = load i32, i32* %9, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %233
  br label %410

242:                                              ; preds = %233
  br label %243

243:                                              ; preds = %242, %227, %223, %218
  %244 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %245 = load %struct.TYPE_53__*, %struct.TYPE_53__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %249 = call i32 @xfs_iget(%struct.TYPE_54__* %244, i32* null, i32 %247, i32 0, i32 %248, %struct.TYPE_55__** %5)
  store i32 %249, i32* %9, align 4
  %250 = load i32, i32* %9, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %243
  %253 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %254 = call i32 (%struct.TYPE_54__*, i8*, ...) @xfs_warn(%struct.TYPE_54__* %253, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %407

255:                                              ; preds = %243
  %256 = load %struct.TYPE_55__*, %struct.TYPE_55__** %5, align 8
  %257 = icmp ne %struct.TYPE_55__* %256, null
  %258 = zext i1 %257 to i32
  %259 = call i32 @ASSERT(i32 %258)
  %260 = load %struct.TYPE_55__*, %struct.TYPE_55__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @S_IFMT, align 4
  %265 = and i32 %263, %264
  %266 = load i32, i32* @S_IFDIR, align 4
  %267 = icmp ne i32 %265, %266
  %268 = zext i1 %267 to i32
  %269 = call i64 @unlikely(i32 %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %285

271:                                              ; preds = %255
  %272 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %273 = load %struct.TYPE_55__*, %struct.TYPE_55__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = call i32 (%struct.TYPE_54__*, i8*, ...) @xfs_warn(%struct.TYPE_54__* %272, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i64 %275)
  %277 = load %struct.TYPE_55__*, %struct.TYPE_55__** %5, align 8
  %278 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %279 = call i32 @xfs_iunlock(%struct.TYPE_55__* %277, i32 %278)
  %280 = load i32, i32* @XFS_ERRLEVEL_LOW, align 4
  %281 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %282 = call i32 @XFS_ERROR_REPORT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %280, %struct.TYPE_54__* %281)
  %283 = load i32, i32* @EFSCORRUPTED, align 4
  %284 = call i32 @XFS_ERROR(i32 %283)
  store i32 %284, i32* %9, align 4
  br label %404

285:                                              ; preds = %255
  %286 = load %struct.TYPE_55__*, %struct.TYPE_55__** %5, align 8
  %287 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %287, i32 0, i32 7
  store %struct.TYPE_55__* %286, %struct.TYPE_55__** %288, align 8
  %289 = load %struct.TYPE_55__*, %struct.TYPE_55__** %5, align 8
  %290 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %291 = call i32 @xfs_iunlock(%struct.TYPE_55__* %289, i32 %290)
  %292 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %293 = call i32 @xfs_rtmount_inodes(%struct.TYPE_54__* %292)
  store i32 %293, i32* %9, align 4
  %294 = load i32, i32* %9, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %299

296:                                              ; preds = %285
  %297 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %298 = call i32 (%struct.TYPE_54__*, i8*, ...) @xfs_warn(%struct.TYPE_54__* %297, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  br label %404

299:                                              ; preds = %285
  %300 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %301 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %323

304:                                              ; preds = %299
  %305 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %306 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* @XFS_MOUNT_RDONLY, align 4
  %309 = and i32 %307, %308
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %323, label %311

311:                                              ; preds = %304
  %312 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %313 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = call i32 @xfs_mount_log_sb(%struct.TYPE_54__* %312, i32 %315)
  store i32 %316, i32* %9, align 4
  %317 = load i32, i32* %9, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %322

319:                                              ; preds = %311
  %320 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %321 = call i32 (%struct.TYPE_54__*, i8*, ...) @xfs_warn(%struct.TYPE_54__* %320, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  br label %401

322:                                              ; preds = %311
  br label %323

323:                                              ; preds = %322, %304, %299
  %324 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %325 = call i64 @XFS_IS_QUOTA_RUNNING(%struct.TYPE_54__* %324)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %334

327:                                              ; preds = %323
  %328 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %329 = call i32 @xfs_qm_newmount(%struct.TYPE_54__* %328, i64* %7, i64* %8)
  store i32 %329, i32* %9, align 4
  %330 = load i32, i32* %9, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %333

332:                                              ; preds = %327
  br label %401

333:                                              ; preds = %327
  br label %359

334:                                              ; preds = %323
  %335 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %336 = call i32 @XFS_IS_QUOTA_ON(%struct.TYPE_54__* %335)
  %337 = icmp ne i32 %336, 0
  %338 = xor i1 %337, true
  %339 = zext i1 %338 to i32
  %340 = call i32 @ASSERT(i32 %339)
  %341 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %342 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %341, i32 0, i32 6
  %343 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = load i32, i32* @XFS_ALL_QUOTA_ACCT, align 4
  %346 = and i32 %344, %345
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %358

348:                                              ; preds = %334
  %349 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %350 = call i32 @xfs_notice(%struct.TYPE_54__* %349, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  %351 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %352 = call i32 @xfs_mount_reset_sbqflags(%struct.TYPE_54__* %351)
  store i32 %352, i32* %9, align 4
  %353 = load i32, i32* %9, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %357

355:                                              ; preds = %348
  %356 = load i32, i32* %9, align 4
  store i32 %356, i32* %2, align 4
  br label %441

357:                                              ; preds = %348
  br label %358

358:                                              ; preds = %357, %334
  br label %359

359:                                              ; preds = %358, %333
  %360 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %361 = call i32 @xfs_log_mount_finish(%struct.TYPE_54__* %360)
  store i32 %361, i32* %9, align 4
  %362 = load i32, i32* %9, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %367

364:                                              ; preds = %359
  %365 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %366 = call i32 (%struct.TYPE_54__*, i8*, ...) @xfs_warn(%struct.TYPE_54__* %365, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  br label %401

367:                                              ; preds = %359
  %368 = load i64, i64* %7, align 8
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %382

370:                                              ; preds = %367
  %371 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %372 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %371, i32 0, i32 4
  %373 = load i64, i64* %372, align 8
  %374 = icmp eq i64 %373, 0
  %375 = zext i1 %374 to i32
  %376 = call i32 @ASSERT(i32 %375)
  %377 = load i64, i64* %8, align 8
  %378 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %379 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %378, i32 0, i32 4
  store i64 %377, i64* %379, align 8
  %380 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %381 = call i32 @xfs_qm_mount_quotas(%struct.TYPE_54__* %380)
  br label %382

382:                                              ; preds = %370, %367
  %383 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %384 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  %386 = load i32, i32* @XFS_MOUNT_RDONLY, align 4
  %387 = and i32 %385, %386
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %400, label %389

389:                                              ; preds = %382
  %390 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %391 = call i32 @xfs_default_resblks(%struct.TYPE_54__* %390)
  store i32 %391, i32* %6, align 4
  %392 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %393 = call i32 @xfs_reserve_blocks(%struct.TYPE_54__* %392, i32* %6, i32* null)
  store i32 %393, i32* %9, align 4
  %394 = load i32, i32* %9, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %399

396:                                              ; preds = %389
  %397 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %398 = call i32 (%struct.TYPE_54__*, i8*, ...) @xfs_warn(%struct.TYPE_54__* %397, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13, i64 0, i64 0))
  br label %399

399:                                              ; preds = %396, %389
  br label %400

400:                                              ; preds = %399, %382
  store i32 0, i32* %2, align 4
  br label %441

401:                                              ; preds = %364, %332, %319
  %402 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %403 = call i32 @xfs_rtunmount_inodes(%struct.TYPE_54__* %402)
  br label %404

404:                                              ; preds = %401, %296, %271
  %405 = load %struct.TYPE_55__*, %struct.TYPE_55__** %5, align 8
  %406 = call i32 @IRELE(%struct.TYPE_55__* %405)
  br label %407

407:                                              ; preds = %404, %252
  %408 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %409 = call i32 @xfs_log_unmount(%struct.TYPE_54__* %408)
  br label %410

410:                                              ; preds = %407, %241, %215
  %411 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %412 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %411, i32 0, i32 3
  %413 = load i64, i64* %412, align 8
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %415, label %428

415:                                              ; preds = %410
  %416 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %417 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %416, i32 0, i32 3
  %418 = load i64, i64* %417, align 8
  %419 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %420 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %419, i32 0, i32 5
  %421 = load i64, i64* %420, align 8
  %422 = icmp ne i64 %418, %421
  br i1 %422, label %423, label %428

423:                                              ; preds = %415
  %424 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %425 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %424, i32 0, i32 3
  %426 = load i64, i64* %425, align 8
  %427 = call i32 @xfs_wait_buftarg(i64 %426)
  br label %428

428:                                              ; preds = %423, %415, %410
  %429 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %430 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %429, i32 0, i32 5
  %431 = load i64, i64* %430, align 8
  %432 = call i32 @xfs_wait_buftarg(i64 %431)
  br label %433

433:                                              ; preds = %428, %189
  %434 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %435 = call i32 @xfs_free_perag(%struct.TYPE_54__* %434)
  br label %436

436:                                              ; preds = %433, %180, %140, %134
  %437 = load %struct.TYPE_54__*, %struct.TYPE_54__** %3, align 8
  %438 = call i32 @xfs_uuid_unmount(%struct.TYPE_54__* %437)
  br label %439

439:                                              ; preds = %436, %119, %95
  %440 = load i32, i32* %9, align 4
  store i32 %440, i32* %2, align 4
  br label %441

441:                                              ; preds = %439, %400, %355
  %442 = load i32, i32* %2, align 4
  ret i32 %442
}

declare dso_local i32 @xfs_mount_common(%struct.TYPE_54__*, %struct.TYPE_53__*) #1

declare dso_local i64 @xfs_sb_has_mismatched_features2(%struct.TYPE_53__*) #1

declare dso_local i32 @xfs_warn(%struct.TYPE_54__*, i8*, ...) #1

declare dso_local i64 @xfs_sb_version_hasattr2(%struct.TYPE_53__*) #1

declare dso_local i32 @xfs_sb_version_removeattr2(%struct.TYPE_53__*) #1

declare dso_local i32 @xfs_update_alignment(%struct.TYPE_54__*) #1

declare dso_local i32 @xfs_alloc_compute_maxlevels(%struct.TYPE_54__*) #1

declare dso_local i32 @xfs_bmap_compute_maxlevels(%struct.TYPE_54__*, i32) #1

declare dso_local i32 @xfs_ialloc_compute_maxlevels(%struct.TYPE_54__*) #1

declare dso_local i32 @xfs_set_maxicount(%struct.TYPE_54__*) #1

declare dso_local i32 @xfs_max_file_offset(i32) #1

declare dso_local i32 @xfs_uuid_mount(%struct.TYPE_54__*) #1

declare dso_local i32 @xfs_set_rw_sizes(%struct.TYPE_54__*) #1

declare dso_local i32 @xfs_set_low_space_thresholds(%struct.TYPE_54__*) #1

declare dso_local i32 @xfs_set_inoalignment(%struct.TYPE_54__*) #1

declare dso_local i32 @xfs_check_sizes(%struct.TYPE_54__*) #1

declare dso_local i32 @xfs_rtmount_init(%struct.TYPE_54__*) #1

declare dso_local i32 @uuid_getnodeuniq(i32*, i32) #1

declare dso_local i32 @xfs_dir_mount(%struct.TYPE_54__*) #1

declare dso_local i32 @xfs_trans_init(%struct.TYPE_54__*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_RADIX_TREE(i32*, i32) #1

declare dso_local i32 @xfs_initialize_perag(%struct.TYPE_54__*, i32, i32*) #1

declare dso_local i32 @XFS_ERROR_REPORT(i8*, i32, %struct.TYPE_54__*) #1

declare dso_local i32 @XFS_ERROR(i32) #1

declare dso_local i32 @xfs_log_mount(%struct.TYPE_54__*, i64, i32, i32) #1

declare dso_local i32 @XFS_FSB_TO_DADDR(%struct.TYPE_54__*, i32) #1

declare dso_local i32 @XFS_FSB_TO_BB(%struct.TYPE_54__*, i32) #1

declare dso_local i64 @xfs_sb_version_haslazysbcount(%struct.TYPE_53__*) #1

declare dso_local i32 @XFS_LAST_UNMOUNT_WAS_CLEAN(%struct.TYPE_54__*) #1

declare dso_local i32 @xfs_initialize_perag_data(%struct.TYPE_54__*, i32) #1

declare dso_local i32 @xfs_iget(%struct.TYPE_54__*, i32*, i32, i32, i32, %struct.TYPE_55__**) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @xfs_iunlock(%struct.TYPE_55__*, i32) #1

declare dso_local i32 @xfs_rtmount_inodes(%struct.TYPE_54__*) #1

declare dso_local i32 @xfs_mount_log_sb(%struct.TYPE_54__*, i32) #1

declare dso_local i64 @XFS_IS_QUOTA_RUNNING(%struct.TYPE_54__*) #1

declare dso_local i32 @xfs_qm_newmount(%struct.TYPE_54__*, i64*, i64*) #1

declare dso_local i32 @XFS_IS_QUOTA_ON(%struct.TYPE_54__*) #1

declare dso_local i32 @xfs_notice(%struct.TYPE_54__*, i8*) #1

declare dso_local i32 @xfs_mount_reset_sbqflags(%struct.TYPE_54__*) #1

declare dso_local i32 @xfs_log_mount_finish(%struct.TYPE_54__*) #1

declare dso_local i32 @xfs_qm_mount_quotas(%struct.TYPE_54__*) #1

declare dso_local i32 @xfs_default_resblks(%struct.TYPE_54__*) #1

declare dso_local i32 @xfs_reserve_blocks(%struct.TYPE_54__*, i32*, i32*) #1

declare dso_local i32 @xfs_rtunmount_inodes(%struct.TYPE_54__*) #1

declare dso_local i32 @IRELE(%struct.TYPE_55__*) #1

declare dso_local i32 @xfs_log_unmount(%struct.TYPE_54__*) #1

declare dso_local i32 @xfs_wait_buftarg(i64) #1

declare dso_local i32 @xfs_free_perag(%struct.TYPE_54__*) #1

declare dso_local i32 @xfs_uuid_unmount(%struct.TYPE_54__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
