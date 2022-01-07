; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c_cache_block_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c_cache_block_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_group_cache = type { i64, i32, %struct.btrfs_caching_control*, i64, %struct.TYPE_3__, %struct.btrfs_fs_info* }
%struct.btrfs_caching_control = type { %struct.TYPE_4__, i32, i32, i32, i32, %struct.btrfs_block_group_cache*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.btrfs_fs_info = type { i32, i32, i32, i32, i32 }
%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32 }

@wait = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@caching_thread = common dso_local global i32 0, align 4
@BTRFS_CACHE_FAST = common dso_local global i64 0, align 8
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@BTRFS_CACHE_NO = common dso_local global i64 0, align 8
@BTRFS_MOUNT_SPACE_CACHE = common dso_local global i32 0, align 4
@BTRFS_CACHE_FINISHED = common dso_local global i64 0, align 8
@BTRFS_CACHE_STARTED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_block_group_cache*, %struct.btrfs_trans_handle*, %struct.btrfs_root*, i32)* @cache_block_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_block_group(%struct.btrfs_block_group_cache* %0, %struct.btrfs_trans_handle* %1, %struct.btrfs_root* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_block_group_cache*, align 8
  %7 = alloca %struct.btrfs_trans_handle*, align 8
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.btrfs_fs_info*, align 8
  %11 = alloca %struct.btrfs_caching_control*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.btrfs_caching_control*, align 8
  store %struct.btrfs_block_group_cache* %0, %struct.btrfs_block_group_cache** %6, align 8
  store %struct.btrfs_trans_handle* %1, %struct.btrfs_trans_handle** %7, align 8
  store %struct.btrfs_root* %2, %struct.btrfs_root** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @wait, align 4
  %15 = call i32 @DEFINE_WAIT(i32 %14)
  %16 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %17 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %16, i32 0, i32 5
  %18 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %17, align 8
  store %struct.btrfs_fs_info* %18, %struct.btrfs_fs_info** %10, align 8
  store i32 0, i32* %12, align 4
  %19 = load i32, i32* @GFP_NOFS, align 4
  %20 = call %struct.btrfs_caching_control* @kzalloc(i32 40, i32 %19)
  store %struct.btrfs_caching_control* %20, %struct.btrfs_caching_control** %11, align 8
  %21 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %11, align 8
  %22 = icmp ne %struct.btrfs_caching_control* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %219

26:                                               ; preds = %4
  %27 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %11, align 8
  %28 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %27, i32 0, i32 1
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %11, align 8
  %31 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %30, i32 0, i32 6
  %32 = call i32 @mutex_init(i32* %31)
  %33 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %11, align 8
  %34 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %33, i32 0, i32 3
  %35 = call i32 @init_waitqueue_head(i32* %34)
  %36 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %37 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %11, align 8
  %38 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %37, i32 0, i32 5
  store %struct.btrfs_block_group_cache* %36, %struct.btrfs_block_group_cache** %38, align 8
  %39 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %40 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %11, align 8
  %44 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 8
  %45 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %11, align 8
  %46 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %45, i32 0, i32 2
  %47 = call i32 @atomic_set(i32* %46, i32 1)
  %48 = load i32, i32* @caching_thread, align 4
  %49 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %11, align 8
  %50 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %53 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %52, i32 0, i32 1
  %54 = call i32 @spin_lock(i32* %53)
  br label %55

55:                                               ; preds = %61, %26
  %56 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %57 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @BTRFS_CACHE_FAST, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %84

61:                                               ; preds = %55
  %62 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %63 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %62, i32 0, i32 2
  %64 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %63, align 8
  store %struct.btrfs_caching_control* %64, %struct.btrfs_caching_control** %13, align 8
  %65 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %13, align 8
  %66 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %65, i32 0, i32 2
  %67 = call i32 @atomic_inc(i32* %66)
  %68 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %13, align 8
  %69 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %68, i32 0, i32 3
  %70 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %71 = call i32 @prepare_to_wait(i32* %69, i32* @wait, i32 %70)
  %72 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %73 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %72, i32 0, i32 1
  %74 = call i32 @spin_unlock(i32* %73)
  %75 = call i32 (...) @schedule()
  %76 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %13, align 8
  %77 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %76, i32 0, i32 3
  %78 = call i32 @finish_wait(i32* %77, i32* @wait)
  %79 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %13, align 8
  %80 = call i32 @put_caching_control(%struct.btrfs_caching_control* %79)
  %81 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %82 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %81, i32 0, i32 1
  %83 = call i32 @spin_lock(i32* %82)
  br label %55

84:                                               ; preds = %55
  %85 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %86 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @BTRFS_CACHE_NO, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %84
  %91 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %92 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %91, i32 0, i32 1
  %93 = call i32 @spin_unlock(i32* %92)
  %94 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %11, align 8
  %95 = call i32 @kfree(%struct.btrfs_caching_control* %94)
  store i32 0, i32* %5, align 4
  br label %219

96:                                               ; preds = %84
  %97 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %98 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %97, i32 0, i32 2
  %99 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %98, align 8
  %100 = call i32 @WARN_ON(%struct.btrfs_caching_control* %99)
  %101 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %11, align 8
  %102 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %103 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %102, i32 0, i32 2
  store %struct.btrfs_caching_control* %101, %struct.btrfs_caching_control** %103, align 8
  %104 = load i64, i64* @BTRFS_CACHE_FAST, align 8
  %105 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %106 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  %107 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %108 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %107, i32 0, i32 1
  %109 = call i32 @spin_unlock(i32* %108)
  %110 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %111 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @BTRFS_MOUNT_SPACE_CACHE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %166

116:                                              ; preds = %96
  %117 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %118 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %119 = call i32 @load_free_space_cache(%struct.btrfs_fs_info* %117, %struct.btrfs_block_group_cache* %118)
  store i32 %119, i32* %12, align 4
  %120 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %121 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %120, i32 0, i32 1
  %122 = call i32 @spin_lock(i32* %121)
  %123 = load i32, i32* %12, align 4
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %133

125:                                              ; preds = %116
  %126 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %127 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %126, i32 0, i32 2
  store %struct.btrfs_caching_control* null, %struct.btrfs_caching_control** %127, align 8
  %128 = load i64, i64* @BTRFS_CACHE_FINISHED, align 8
  %129 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %130 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  %131 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %132 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %131, i32 0, i32 3
  store i64 -1, i64* %132, align 8
  br label %148

133:                                              ; preds = %116
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %133
  %137 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %138 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %137, i32 0, i32 2
  store %struct.btrfs_caching_control* null, %struct.btrfs_caching_control** %138, align 8
  %139 = load i64, i64* @BTRFS_CACHE_NO, align 8
  %140 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %141 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %140, i32 0, i32 0
  store i64 %139, i64* %141, align 8
  br label %147

142:                                              ; preds = %133
  %143 = load i8*, i8** @BTRFS_CACHE_STARTED, align 8
  %144 = ptrtoint i8* %143 to i64
  %145 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %146 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %145, i32 0, i32 0
  store i64 %144, i64* %146, align 8
  br label %147

147:                                              ; preds = %142, %136
  br label %148

148:                                              ; preds = %147, %125
  %149 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %150 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %149, i32 0, i32 1
  %151 = call i32 @spin_unlock(i32* %150)
  %152 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %11, align 8
  %153 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %152, i32 0, i32 3
  %154 = call i32 @wake_up(i32* %153)
  %155 = load i32, i32* %12, align 4
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %157, label %165

157:                                              ; preds = %148
  %158 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %11, align 8
  %159 = call i32 @put_caching_control(%struct.btrfs_caching_control* %158)
  %160 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %161 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %164 = call i32 @free_excluded_extents(i32 %162, %struct.btrfs_block_group_cache* %163)
  store i32 0, i32* %5, align 4
  br label %219

165:                                              ; preds = %148
  br label %190

166:                                              ; preds = %96
  %167 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %168 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %167, i32 0, i32 1
  %169 = call i32 @spin_lock(i32* %168)
  %170 = load i32, i32* %9, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %166
  %173 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %174 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %173, i32 0, i32 2
  store %struct.btrfs_caching_control* null, %struct.btrfs_caching_control** %174, align 8
  %175 = load i64, i64* @BTRFS_CACHE_NO, align 8
  %176 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %177 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %176, i32 0, i32 0
  store i64 %175, i64* %177, align 8
  br label %183

178:                                              ; preds = %166
  %179 = load i8*, i8** @BTRFS_CACHE_STARTED, align 8
  %180 = ptrtoint i8* %179 to i64
  %181 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %182 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %181, i32 0, i32 0
  store i64 %180, i64* %182, align 8
  br label %183

183:                                              ; preds = %178, %172
  %184 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %185 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %184, i32 0, i32 1
  %186 = call i32 @spin_unlock(i32* %185)
  %187 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %11, align 8
  %188 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %187, i32 0, i32 3
  %189 = call i32 @wake_up(i32* %188)
  br label %190

190:                                              ; preds = %183, %165
  %191 = load i32, i32* %9, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %190
  %194 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %11, align 8
  %195 = call i32 @put_caching_control(%struct.btrfs_caching_control* %194)
  store i32 0, i32* %5, align 4
  br label %219

196:                                              ; preds = %190
  %197 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %198 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %197, i32 0, i32 2
  %199 = call i32 @down_write(i32* %198)
  %200 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %11, align 8
  %201 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %200, i32 0, i32 2
  %202 = call i32 @atomic_inc(i32* %201)
  %203 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %11, align 8
  %204 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %203, i32 0, i32 1
  %205 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %206 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %205, i32 0, i32 3
  %207 = call i32 @list_add_tail(i32* %204, i32* %206)
  %208 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %209 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %208, i32 0, i32 2
  %210 = call i32 @up_write(i32* %209)
  %211 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %212 = call i32 @btrfs_get_block_group(%struct.btrfs_block_group_cache* %211)
  %213 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %214 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %213, i32 0, i32 1
  %215 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %11, align 8
  %216 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %215, i32 0, i32 0
  %217 = call i32 @btrfs_queue_worker(i32* %214, %struct.TYPE_4__* %216)
  %218 = load i32, i32* %12, align 4
  store i32 %218, i32* %5, align 4
  br label %219

219:                                              ; preds = %196, %193, %157, %90, %23
  %220 = load i32, i32* %5, align 4
  ret i32 %220
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local %struct.btrfs_caching_control* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @put_caching_control(%struct.btrfs_caching_control*) #1

declare dso_local i32 @kfree(%struct.btrfs_caching_control*) #1

declare dso_local i32 @WARN_ON(%struct.btrfs_caching_control*) #1

declare dso_local i32 @load_free_space_cache(%struct.btrfs_fs_info*, %struct.btrfs_block_group_cache*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @free_excluded_extents(i32, %struct.btrfs_block_group_cache*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @btrfs_get_block_group(%struct.btrfs_block_group_cache*) #1

declare dso_local i32 @btrfs_queue_worker(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
