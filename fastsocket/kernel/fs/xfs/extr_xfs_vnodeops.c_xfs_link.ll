; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_vnodeops.c_xfs_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_vnodeops.c_xfs_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_21__, %struct.TYPE_22__* }
%struct.TYPE_21__ = type { i64, i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.xfs_name = type { i32 }

@EIO = common dso_local global i32 0, align 4
@XFS_TRANS_LINK = common dso_local global i32 0, align 4
@XFS_TRANS_RELEASE_LOG_RES = common dso_local global i32 0, align 4
@XFS_TRANS_PERM_LOG_RES = common dso_local global i32 0, align 4
@XFS_LINK_LOG_COUNT = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@XFS_MAXLINK = common dso_local global i64 0, align 8
@EMLINK = common dso_local global i32 0, align 4
@XFS_DIFLAG_PROJINHERIT = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@XFS_ICHGTIME_MOD = common dso_local global i32 0, align 4
@XFS_ICHGTIME_CHG = common dso_local global i32 0, align 4
@XFS_ILOG_CORE = common dso_local global i32 0, align 4
@XFS_MOUNT_WSYNC = common dso_local global i32 0, align 4
@XFS_MOUNT_DIRSYNC = common dso_local global i32 0, align 4
@XFS_TRANS_ABORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_link(%struct.TYPE_23__* %0, %struct.TYPE_23__* %1, %struct.xfs_name* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.xfs_name*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %6, align 8
  store %struct.xfs_name* %2, %struct.xfs_name** %7, align 8
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  store %struct.TYPE_22__* %18, %struct.TYPE_22__** %8, align 8
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %20 = load %struct.xfs_name*, %struct.xfs_name** %7, align 8
  %21 = call i32 @trace_xfs_link(%struct.TYPE_23__* %19, %struct.xfs_name* %20)
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @S_ISDIR(i32 %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %32 = call i64 @XFS_FORCED_SHUTDOWN(%struct.TYPE_22__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load i32, i32* @EIO, align 4
  %36 = call i32 @XFS_ERROR(i32 %35)
  store i32 %36, i32* %4, align 4
  br label %195

37:                                               ; preds = %3
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %39 = call i32 @xfs_qm_dqattach(%struct.TYPE_23__* %38, i32 0)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %193

43:                                               ; preds = %37
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %45 = call i32 @xfs_qm_dqattach(%struct.TYPE_23__* %44, i32 0)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %193

49:                                               ; preds = %43
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %51 = load i32, i32* @XFS_TRANS_LINK, align 4
  %52 = call i32* @xfs_trans_alloc(%struct.TYPE_22__* %50, i32 %51)
  store i32* %52, i32** %9, align 8
  %53 = load i32, i32* @XFS_TRANS_RELEASE_LOG_RES, align 4
  store i32 %53, i32* %13, align 4
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %55 = load %struct.xfs_name*, %struct.xfs_name** %7, align 8
  %56 = getelementptr inbounds %struct.xfs_name, %struct.xfs_name* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @XFS_LINK_SPACE_RES(%struct.TYPE_22__* %54, i32 %57)
  store i32 %58, i32* %15, align 4
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %15, align 4
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %62 = call i32 @XFS_LINK_LOG_RES(%struct.TYPE_22__* %61)
  %63 = load i32, i32* @XFS_TRANS_PERM_LOG_RES, align 4
  %64 = load i32, i32* @XFS_LINK_LOG_COUNT, align 4
  %65 = call i32 @xfs_trans_reserve(i32* %59, i32 %60, i32 %62, i32 0, i32 %63, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @ENOSPC, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %49
  store i32 0, i32* %15, align 4
  %70 = load i32*, i32** %9, align 8
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %72 = call i32 @XFS_LINK_LOG_RES(%struct.TYPE_22__* %71)
  %73 = load i32, i32* @XFS_TRANS_PERM_LOG_RES, align 4
  %74 = load i32, i32* @XFS_LINK_LOG_COUNT, align 4
  %75 = call i32 @xfs_trans_reserve(i32* %70, i32 0, i32 %72, i32 0, i32 %73, i32 %74)
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %69, %49
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 0, i32* %13, align 4
  br label %189

80:                                               ; preds = %76
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %83 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %84 = call i32 @xfs_lock_two_inodes(%struct.TYPE_23__* %81, %struct.TYPE_23__* %82, i32 %83)
  %85 = load i32*, i32** %9, align 8
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %87 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %88 = call i32 @xfs_trans_ijoin_ref(i32* %85, %struct.TYPE_23__* %86, i32 %87)
  %89 = load i32*, i32** %9, align 8
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %91 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %92 = call i32 @xfs_trans_ijoin_ref(i32* %89, %struct.TYPE_23__* %90, i32 %91)
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @XFS_MAXLINK, align 8
  %98 = icmp sge i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %80
  %100 = load i32, i32* @EMLINK, align 4
  %101 = call i32 @XFS_ERROR(i32 %100)
  store i32 %101, i32* %10, align 4
  br label %189

102:                                              ; preds = %80
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @XFS_DIFLAG_PROJINHERIT, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %102
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %112 = call i64 @xfs_get_projid(%struct.TYPE_23__* %111)
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %114 = call i64 @xfs_get_projid(%struct.TYPE_23__* %113)
  %115 = icmp ne i64 %112, %114
  br label %116

116:                                              ; preds = %110, %102
  %117 = phi i1 [ false, %102 ], [ %115, %110 ]
  %118 = zext i1 %117 to i32
  %119 = call i64 @unlikely(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i32, i32* @EXDEV, align 4
  %123 = call i32 @XFS_ERROR(i32 %122)
  store i32 %123, i32* %10, align 4
  br label %189

124:                                              ; preds = %116
  %125 = load i32*, i32** %9, align 8
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %127 = load %struct.xfs_name*, %struct.xfs_name** %7, align 8
  %128 = load i32, i32* %15, align 4
  %129 = call i32 @xfs_dir_canenter(i32* %125, %struct.TYPE_23__* %126, %struct.xfs_name* %127, i32 %128)
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %10, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %124
  br label %189

133:                                              ; preds = %124
  %134 = call i32 @xfs_bmap_init(i32* %11, i32* %12)
  %135 = load i32*, i32** %9, align 8
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %137 = load %struct.xfs_name*, %struct.xfs_name** %7, align 8
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %15, align 4
  %142 = call i32 @xfs_dir_createname(i32* %135, %struct.TYPE_23__* %136, %struct.xfs_name* %137, i32 %140, i32* %12, i32* %11, i32 %141)
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* %10, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %133
  br label %185

146:                                              ; preds = %133
  %147 = load i32*, i32** %9, align 8
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %149 = load i32, i32* @XFS_ICHGTIME_MOD, align 4
  %150 = load i32, i32* @XFS_ICHGTIME_CHG, align 4
  %151 = or i32 %149, %150
  %152 = call i32 @xfs_trans_ichgtime(i32* %147, %struct.TYPE_23__* %148, i32 %151)
  %153 = load i32*, i32** %9, align 8
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %155 = load i32, i32* @XFS_ILOG_CORE, align 4
  %156 = call i32 @xfs_trans_log_inode(i32* %153, %struct.TYPE_23__* %154, i32 %155)
  %157 = load i32*, i32** %9, align 8
  %158 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %159 = call i32 @xfs_bumplink(i32* %157, %struct.TYPE_23__* %158)
  store i32 %159, i32* %10, align 4
  %160 = load i32, i32* %10, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %146
  br label %185

163:                                              ; preds = %146
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @XFS_MOUNT_WSYNC, align 4
  %168 = load i32, i32* @XFS_MOUNT_DIRSYNC, align 4
  %169 = or i32 %167, %168
  %170 = and i32 %166, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %163
  %173 = load i32*, i32** %9, align 8
  %174 = call i32 @xfs_trans_set_sync(i32* %173)
  br label %175

175:                                              ; preds = %172, %163
  %176 = call i32 @xfs_bmap_finish(i32** %9, i32* %11, i32* %14)
  store i32 %176, i32* %10, align 4
  %177 = load i32, i32* %10, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %175
  %180 = call i32 @xfs_bmap_cancel(i32* %11)
  br label %185

181:                                              ; preds = %175
  %182 = load i32*, i32** %9, align 8
  %183 = load i32, i32* @XFS_TRANS_RELEASE_LOG_RES, align 4
  %184 = call i32 @xfs_trans_commit(i32* %182, i32 %183)
  store i32 %184, i32* %4, align 4
  br label %195

185:                                              ; preds = %179, %162, %145
  %186 = load i32, i32* @XFS_TRANS_ABORT, align 4
  %187 = load i32, i32* %13, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %13, align 4
  br label %189

189:                                              ; preds = %185, %132, %121, %99, %79
  %190 = load i32*, i32** %9, align 8
  %191 = load i32, i32* %13, align 4
  %192 = call i32 @xfs_trans_cancel(i32* %190, i32 %191)
  br label %193

193:                                              ; preds = %189, %48, %42
  %194 = load i32, i32* %10, align 4
  store i32 %194, i32* %4, align 4
  br label %195

195:                                              ; preds = %193, %181, %34
  %196 = load i32, i32* %4, align 4
  ret i32 %196
}

declare dso_local i32 @trace_xfs_link(%struct.TYPE_23__*, %struct.xfs_name*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i64 @XFS_FORCED_SHUTDOWN(%struct.TYPE_22__*) #1

declare dso_local i32 @XFS_ERROR(i32) #1

declare dso_local i32 @xfs_qm_dqattach(%struct.TYPE_23__*, i32) #1

declare dso_local i32* @xfs_trans_alloc(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @XFS_LINK_SPACE_RES(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @xfs_trans_reserve(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XFS_LINK_LOG_RES(%struct.TYPE_22__*) #1

declare dso_local i32 @xfs_lock_two_inodes(%struct.TYPE_23__*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @xfs_trans_ijoin_ref(i32*, %struct.TYPE_23__*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @xfs_get_projid(%struct.TYPE_23__*) #1

declare dso_local i32 @xfs_dir_canenter(i32*, %struct.TYPE_23__*, %struct.xfs_name*, i32) #1

declare dso_local i32 @xfs_bmap_init(i32*, i32*) #1

declare dso_local i32 @xfs_dir_createname(i32*, %struct.TYPE_23__*, %struct.xfs_name*, i32, i32*, i32*, i32) #1

declare dso_local i32 @xfs_trans_ichgtime(i32*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @xfs_trans_log_inode(i32*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @xfs_bumplink(i32*, %struct.TYPE_23__*) #1

declare dso_local i32 @xfs_trans_set_sync(i32*) #1

declare dso_local i32 @xfs_bmap_finish(i32**, i32*, i32*) #1

declare dso_local i32 @xfs_bmap_cancel(i32*) #1

declare dso_local i32 @xfs_trans_commit(i32*, i32) #1

declare dso_local i32 @xfs_trans_cancel(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
