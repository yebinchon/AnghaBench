; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_vnodeops.c_xfs_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_vnodeops.c_xfs_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_name = type { i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_22__, %struct.TYPE_23__* }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@XFS_TRANS_RMDIR = common dso_local global i32 0, align 4
@XFS_DEFAULT_LOG_COUNT = common dso_local global i64 0, align 8
@XFS_TRANS_REMOVE = common dso_local global i32 0, align 4
@XFS_REMOVE_LOG_COUNT = common dso_local global i64 0, align 8
@XFS_TRANS_RELEASE_LOG_RES = common dso_local global i32 0, align 4
@XFS_TRANS_PERM_LOG_RES = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@XFS_TRANS_ABORT = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@XFS_ILOG_CORE = common dso_local global i32 0, align 4
@XFS_ICHGTIME_MOD = common dso_local global i32 0, align 4
@XFS_ICHGTIME_CHG = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@XFS_MOUNT_WSYNC = common dso_local global i32 0, align 4
@XFS_MOUNT_DIRSYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_remove(%struct.TYPE_24__* %0, %struct.xfs_name* %1, %struct.TYPE_24__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.xfs_name*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store %struct.xfs_name* %1, %struct.xfs_name** %6, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %7, align 8
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  store %struct.TYPE_23__* %21, %struct.TYPE_23__** %8, align 8
  store i32* null, i32** %9, align 8
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @S_ISDIR(i32 %25)
  store i32 %26, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %28 = load %struct.xfs_name*, %struct.xfs_name** %6, align 8
  %29 = call i32 @trace_xfs_remove(%struct.TYPE_24__* %27, %struct.xfs_name* %28)
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %31 = call i64 @XFS_FORCED_SHUTDOWN(%struct.TYPE_23__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load i32, i32* @EIO, align 4
  %35 = call i32 @XFS_ERROR(i32 %34)
  store i32 %35, i32* %4, align 4
  br label %235

36:                                               ; preds = %3
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %38 = call i32 @xfs_qm_dqattach(%struct.TYPE_24__* %37, i32 0)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %233

42:                                               ; preds = %36
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %44 = call i32 @xfs_qm_dqattach(%struct.TYPE_24__* %43, i32 0)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %233

48:                                               ; preds = %42
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %53 = load i32, i32* @XFS_TRANS_RMDIR, align 4
  %54 = call i32* @xfs_trans_alloc(%struct.TYPE_23__* %52, i32 %53)
  store i32* %54, i32** %9, align 8
  %55 = load i64, i64* @XFS_DEFAULT_LOG_COUNT, align 8
  store i64 %55, i64* %18, align 8
  br label %61

56:                                               ; preds = %48
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %58 = load i32, i32* @XFS_TRANS_REMOVE, align 4
  %59 = call i32* @xfs_trans_alloc(%struct.TYPE_23__* %57, i32 %58)
  store i32* %59, i32** %9, align 8
  %60 = load i64, i64* @XFS_REMOVE_LOG_COUNT, align 8
  store i64 %60, i64* %18, align 8
  br label %61

61:                                               ; preds = %56, %51
  %62 = load i32, i32* @XFS_TRANS_RELEASE_LOG_RES, align 4
  store i32 %62, i32* %14, align 4
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %64 = call i64 @XFS_REMOVE_SPACE_RES(%struct.TYPE_23__* %63)
  store i64 %64, i64* %17, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = load i64, i64* %17, align 8
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %68 = call i32 @XFS_REMOVE_LOG_RES(%struct.TYPE_23__* %67)
  %69 = load i32, i32* @XFS_TRANS_PERM_LOG_RES, align 4
  %70 = load i64, i64* %18, align 8
  %71 = call i32 @xfs_trans_reserve(i32* %65, i64 %66, i32 %68, i32 0, i32 %69, i64 %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @ENOSPC, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %61
  store i64 0, i64* %17, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %78 = call i32 @XFS_REMOVE_LOG_RES(%struct.TYPE_23__* %77)
  %79 = load i32, i32* @XFS_TRANS_PERM_LOG_RES, align 4
  %80 = load i64, i64* %18, align 8
  %81 = call i32 @xfs_trans_reserve(i32* %76, i64 0, i32 %78, i32 0, i32 %79, i64 %80)
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %75, %61
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @ENOSPC, align 4
  %88 = icmp ne i32 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @ASSERT(i32 %89)
  store i32 0, i32* %14, align 4
  br label %229

91:                                               ; preds = %82
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %94 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %95 = call i32 @xfs_lock_two_inodes(%struct.TYPE_24__* %92, %struct.TYPE_24__* %93, i32 %94)
  %96 = load i32*, i32** %9, align 8
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %98 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %99 = call i32 @xfs_trans_ijoin_ref(i32* %96, %struct.TYPE_24__* %97, i32 %98)
  %100 = load i32*, i32** %9, align 8
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %102 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %103 = call i32 @xfs_trans_ijoin_ref(i32* %100, %struct.TYPE_24__* %101, i32 %102)
  %104 = load i32, i32* @XFS_TRANS_ABORT, align 4
  %105 = load i32, i32* %14, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %147

109:                                              ; preds = %91
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp sge i32 %113, 2
  %115 = zext i1 %114 to i32
  %116 = call i32 @ASSERT(i32 %115)
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 2
  br i1 %121, label %122, label %125

122:                                              ; preds = %109
  %123 = load i32, i32* @ENOTEMPTY, align 4
  %124 = call i32 @XFS_ERROR(i32 %123)
  store i32 %124, i32* %11, align 4
  br label %229

125:                                              ; preds = %109
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %127 = call i32 @xfs_dir_isempty(%struct.TYPE_24__* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %125
  %130 = load i32, i32* @ENOTEMPTY, align 4
  %131 = call i32 @XFS_ERROR(i32 %130)
  store i32 %131, i32* %11, align 4
  br label %229

132:                                              ; preds = %125
  %133 = load i32*, i32** %9, align 8
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %135 = call i32 @xfs_droplink(i32* %133, %struct.TYPE_24__* %134)
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* %11, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  br label %229

139:                                              ; preds = %132
  %140 = load i32*, i32** %9, align 8
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %142 = call i32 @xfs_droplink(i32* %140, %struct.TYPE_24__* %141)
  store i32 %142, i32* %11, align 4
  %143 = load i32, i32* %11, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  br label %229

146:                                              ; preds = %139
  br label %152

147:                                              ; preds = %91
  %148 = load i32*, i32** %9, align 8
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %150 = load i32, i32* @XFS_ILOG_CORE, align 4
  %151 = call i32 @xfs_trans_log_inode(i32* %148, %struct.TYPE_24__* %149, i32 %150)
  br label %152

152:                                              ; preds = %147, %146
  %153 = load i32*, i32** %9, align 8
  %154 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %155 = load i32, i32* @XFS_ICHGTIME_MOD, align 4
  %156 = load i32, i32* @XFS_ICHGTIME_CHG, align 4
  %157 = or i32 %155, %156
  %158 = call i32 @xfs_trans_ichgtime(i32* %153, %struct.TYPE_24__* %154, i32 %157)
  %159 = load i32*, i32** %9, align 8
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %161 = call i32 @xfs_droplink(i32* %159, %struct.TYPE_24__* %160)
  store i32 %161, i32* %11, align 4
  %162 = load i32, i32* %11, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %152
  br label %229

165:                                              ; preds = %152
  %166 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %169, 0
  %171 = zext i1 %170 to i32
  store i32 %171, i32* %16, align 4
  %172 = call i32 @xfs_bmap_init(i32* %12, i32* %13)
  %173 = load i32*, i32** %9, align 8
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %175 = load %struct.xfs_name*, %struct.xfs_name** %6, align 8
  %176 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i64, i64* %17, align 8
  %180 = call i32 @xfs_dir_removename(i32* %173, %struct.TYPE_24__* %174, %struct.xfs_name* %175, i32 %178, i32* %13, i32* %12, i64 %179)
  store i32 %180, i32* %11, align 4
  %181 = load i32, i32* %11, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %165
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* @ENOENT, align 4
  %186 = icmp ne i32 %184, %185
  %187 = zext i1 %186 to i32
  %188 = call i32 @ASSERT(i32 %187)
  br label %227

189:                                              ; preds = %165
  %190 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @XFS_MOUNT_WSYNC, align 4
  %194 = load i32, i32* @XFS_MOUNT_DIRSYNC, align 4
  %195 = or i32 %193, %194
  %196 = and i32 %192, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %189
  %199 = load i32*, i32** %9, align 8
  %200 = call i32 @xfs_trans_set_sync(i32* %199)
  br label %201

201:                                              ; preds = %198, %189
  %202 = call i32 @xfs_bmap_finish(i32** %9, i32* %12, i32* %15)
  store i32 %202, i32* %11, align 4
  %203 = load i32, i32* %11, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %201
  br label %227

206:                                              ; preds = %201
  %207 = load i32*, i32** %9, align 8
  %208 = load i32, i32* @XFS_TRANS_RELEASE_LOG_RES, align 4
  %209 = call i32 @xfs_trans_commit(i32* %207, i32 %208)
  store i32 %209, i32* %11, align 4
  %210 = load i32, i32* %11, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %206
  br label %233

213:                                              ; preds = %206
  %214 = load i32, i32* %10, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %226, label %216

216:                                              ; preds = %213
  %217 = load i32, i32* %16, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %226

219:                                              ; preds = %216
  %220 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %221 = call i64 @xfs_inode_is_filestream(%struct.TYPE_24__* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %219
  %224 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %225 = call i32 @xfs_filestream_deassociate(%struct.TYPE_24__* %224)
  br label %226

226:                                              ; preds = %223, %219, %216, %213
  store i32 0, i32* %4, align 4
  br label %235

227:                                              ; preds = %205, %183
  %228 = call i32 @xfs_bmap_cancel(i32* %12)
  br label %229

229:                                              ; preds = %227, %164, %145, %138, %129, %122, %85
  %230 = load i32*, i32** %9, align 8
  %231 = load i32, i32* %14, align 4
  %232 = call i32 @xfs_trans_cancel(i32* %230, i32 %231)
  br label %233

233:                                              ; preds = %229, %212, %47, %41
  %234 = load i32, i32* %11, align 4
  store i32 %234, i32* %4, align 4
  br label %235

235:                                              ; preds = %233, %226, %33
  %236 = load i32, i32* %4, align 4
  ret i32 %236
}

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @trace_xfs_remove(%struct.TYPE_24__*, %struct.xfs_name*) #1

declare dso_local i64 @XFS_FORCED_SHUTDOWN(%struct.TYPE_23__*) #1

declare dso_local i32 @XFS_ERROR(i32) #1

declare dso_local i32 @xfs_qm_dqattach(%struct.TYPE_24__*, i32) #1

declare dso_local i32* @xfs_trans_alloc(%struct.TYPE_23__*, i32) #1

declare dso_local i64 @XFS_REMOVE_SPACE_RES(%struct.TYPE_23__*) #1

declare dso_local i32 @xfs_trans_reserve(i32*, i64, i32, i32, i32, i64) #1

declare dso_local i32 @XFS_REMOVE_LOG_RES(%struct.TYPE_23__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_lock_two_inodes(%struct.TYPE_24__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @xfs_trans_ijoin_ref(i32*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @xfs_dir_isempty(%struct.TYPE_24__*) #1

declare dso_local i32 @xfs_droplink(i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @xfs_trans_log_inode(i32*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @xfs_trans_ichgtime(i32*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @xfs_bmap_init(i32*, i32*) #1

declare dso_local i32 @xfs_dir_removename(i32*, %struct.TYPE_24__*, %struct.xfs_name*, i32, i32*, i32*, i64) #1

declare dso_local i32 @xfs_trans_set_sync(i32*) #1

declare dso_local i32 @xfs_bmap_finish(i32**, i32*, i32*) #1

declare dso_local i32 @xfs_trans_commit(i32*, i32) #1

declare dso_local i64 @xfs_inode_is_filestream(%struct.TYPE_24__*) #1

declare dso_local i32 @xfs_filestream_deassociate(%struct.TYPE_24__*) #1

declare dso_local i32 @xfs_bmap_cancel(i32*) #1

declare dso_local i32 @xfs_trans_cancel(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
