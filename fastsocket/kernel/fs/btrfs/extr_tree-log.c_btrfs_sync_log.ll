; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_tree-log.c_btrfs_sync_log.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_tree-log.c_btrfs_sync_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i64 }
%struct.btrfs_root = type { i32, i64, i64, i32*, i32*, i32, %struct.TYPE_4__*, %struct.TYPE_5__*, i32, i32, i32, i64, i32, i64, %struct.btrfs_root* }
%struct.TYPE_4__ = type { i64, i32, i32, %struct.btrfs_root* }
%struct.TYPE_5__ = type { i32 }

@SSD = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EXTENT_DIRTY = common dso_local global i32 0, align 4
@EXTENT_NEW = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_sync_log(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_trans_handle*, align 8
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.btrfs_root*, align 8
  %11 = alloca %struct.btrfs_root*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %4, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %5, align 8
  %14 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %15 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %14, i32 0, i32 14
  %16 = load %struct.btrfs_root*, %struct.btrfs_root** %15, align 8
  store %struct.btrfs_root* %16, %struct.btrfs_root** %10, align 8
  %17 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %18 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %17, i32 0, i32 6
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 3
  %21 = load %struct.btrfs_root*, %struct.btrfs_root** %20, align 8
  store %struct.btrfs_root* %21, %struct.btrfs_root** %11, align 8
  store i64 0, i64* %12, align 8
  %22 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %23 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %22, i32 0, i32 5
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %26 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = srem i32 %27, 2
  store i32 %28, i32* %6, align 4
  %29 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %30 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = call i64 @atomic_read(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %2
  %38 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %39 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %40 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %41 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @wait_log_commit(%struct.btrfs_trans_handle* %38, %struct.btrfs_root* %39, i32 %42)
  %44 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %45 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %44, i32 0, i32 5
  %46 = call i32 @mutex_unlock(i32* %45)
  store i32 0, i32* %3, align 4
  br label %455

47:                                               ; preds = %2
  %48 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %49 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = call i32 @atomic_set(i32* %53, i32 1)
  %55 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %56 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  %60 = srem i32 %59, 2
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %57, i64 %61
  %63 = call i64 @atomic_read(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %47
  %66 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %67 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %68 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %69 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %70, 1
  %72 = call i32 @wait_log_commit(%struct.btrfs_trans_handle* %66, %struct.btrfs_root* %67, i32 %71)
  br label %73

73:                                               ; preds = %65, %47
  br label %74

74:                                               ; preds = %73, %105
  %75 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %76 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %13, align 8
  %78 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %79 = load i32, i32* @SSD, align 4
  %80 = call i32 @btrfs_test_opt(%struct.btrfs_root* %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %95, label %82

82:                                               ; preds = %74
  %83 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %84 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %83, i32 0, i32 13
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %89 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %88, i32 0, i32 5
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = call i32 @schedule_timeout_uninterruptible(i32 1)
  %92 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %93 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %92, i32 0, i32 5
  %94 = call i32 @mutex_lock(i32* %93)
  br label %95

95:                                               ; preds = %87, %82, %74
  %96 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %97 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %98 = call i32 @wait_for_writer(%struct.btrfs_trans_handle* %96, %struct.btrfs_root* %97)
  %99 = load i64, i64* %13, align 8
  %100 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %101 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %99, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  br label %106

105:                                              ; preds = %95
  br label %74

106:                                              ; preds = %104
  %107 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %108 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %107, i32 0, i32 6
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %113 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %111, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %106
  %117 = load i32, i32* @EAGAIN, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %9, align 4
  %119 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %120 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %119, i32 0, i32 5
  %121 = call i32 @mutex_unlock(i32* %120)
  br label %428

122:                                              ; preds = %106
  %123 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %124 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  store i64 %126, i64* %12, align 8
  %127 = load i64, i64* %12, align 8
  %128 = urem i64 %127, 2
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %122
  %131 = load i32, i32* @EXTENT_DIRTY, align 4
  store i32 %131, i32* %8, align 4
  br label %134

132:                                              ; preds = %122
  %133 = load i32, i32* @EXTENT_NEW, align 4
  store i32 %133, i32* %8, align 4
  br label %134

134:                                              ; preds = %132, %130
  %135 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %136 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %137 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %136, i32 0, i32 8
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @btrfs_write_marked_extents(%struct.btrfs_root* %135, i32* %137, i32 %138)
  store i32 %139, i32* %9, align 4
  %140 = load i32, i32* %9, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %134
  %143 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %144 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %145 = load i32, i32* %9, align 4
  %146 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %143, %struct.btrfs_root* %144, i32 %145)
  %147 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %148 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %147, i32 0, i32 5
  %149 = call i32 @mutex_unlock(i32* %148)
  br label %428

150:                                              ; preds = %134
  %151 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %152 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %151, i32 0, i32 12
  %153 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %154 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %153, i32 0, i32 7
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %154, align 8
  %156 = call i32 @btrfs_set_root_node(i32* %152, %struct.TYPE_5__* %155)
  %157 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %158 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %157, i32 0, i32 1
  store i64 0, i64* %158, align 8
  %159 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %160 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %160, align 8
  %163 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %164 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %167 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 8
  %168 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %169 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %168, i32 0, i32 11
  store i64 0, i64* %169, align 8
  %170 = call i32 (...) @smp_mb()
  %171 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %172 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %171, i32 0, i32 5
  %173 = call i32 @mutex_unlock(i32* %172)
  %174 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %175 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %174, i32 0, i32 5
  %176 = call i32 @mutex_lock(i32* %175)
  %177 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %178 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %178, align 8
  %181 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %182 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %181, i32 0, i32 10
  %183 = call i32 @atomic_inc(i32* %182)
  %184 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %185 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %184, i32 0, i32 5
  %186 = call i32 @mutex_unlock(i32* %185)
  %187 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %188 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %189 = call i32 @update_log_root(%struct.btrfs_trans_handle* %187, %struct.btrfs_root* %188)
  store i32 %189, i32* %9, align 4
  %190 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %191 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %190, i32 0, i32 5
  %192 = call i32 @mutex_lock(i32* %191)
  %193 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %194 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %193, i32 0, i32 10
  %195 = call i64 @atomic_dec_and_test(i32* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %208

197:                                              ; preds = %150
  %198 = call i32 (...) @smp_mb()
  %199 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %200 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %199, i32 0, i32 9
  %201 = call i64 @waitqueue_active(i32* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %197
  %204 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %205 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %204, i32 0, i32 9
  %206 = call i32 @wake_up(i32* %205)
  br label %207

207:                                              ; preds = %203, %197
  br label %208

208:                                              ; preds = %207, %150
  %209 = load i32, i32* %9, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %242

211:                                              ; preds = %208
  %212 = load i32, i32* %9, align 4
  %213 = load i32, i32* @ENOSPC, align 4
  %214 = sub nsw i32 0, %213
  %215 = icmp ne i32 %212, %214
  br i1 %215, label %216, label %224

216:                                              ; preds = %211
  %217 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %218 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %219 = load i32, i32* %9, align 4
  %220 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %217, %struct.btrfs_root* %218, i32 %219)
  %221 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %222 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %221, i32 0, i32 5
  %223 = call i32 @mutex_unlock(i32* %222)
  br label %428

224:                                              ; preds = %211
  %225 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %226 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %229 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %228, i32 0, i32 6
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 0
  store i64 %227, i64* %231, align 8
  %232 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %233 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %234 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %233, i32 0, i32 8
  %235 = load i32, i32* %8, align 4
  %236 = call i32 @btrfs_wait_marked_extents(%struct.btrfs_root* %232, i32* %234, i32 %235)
  %237 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %238 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %237, i32 0, i32 5
  %239 = call i32 @mutex_unlock(i32* %238)
  %240 = load i32, i32* @EAGAIN, align 4
  %241 = sub nsw i32 0, %240
  store i32 %241, i32* %9, align 4
  br label %428

242:                                              ; preds = %208
  %243 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %244 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = srem i32 %245, 2
  store i32 %246, i32* %7, align 4
  %247 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %248 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %247, i32 0, i32 4
  %249 = load i32*, i32** %248, align 8
  %250 = load i32, i32* %7, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  %253 = call i64 @atomic_read(i32* %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %270

255:                                              ; preds = %242
  %256 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %257 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %258 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %257, i32 0, i32 8
  %259 = load i32, i32* %8, align 4
  %260 = call i32 @btrfs_wait_marked_extents(%struct.btrfs_root* %256, i32* %258, i32 %259)
  %261 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %262 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %263 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %264 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @wait_log_commit(%struct.btrfs_trans_handle* %261, %struct.btrfs_root* %262, i32 %265)
  %267 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %268 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %267, i32 0, i32 5
  %269 = call i32 @mutex_unlock(i32* %268)
  store i32 0, i32* %9, align 4
  br label %428

270:                                              ; preds = %242
  %271 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %272 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %271, i32 0, i32 4
  %273 = load i32*, i32** %272, align 8
  %274 = load i32, i32* %7, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %273, i64 %275
  %277 = call i32 @atomic_set(i32* %276, i32 1)
  %278 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %279 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %278, i32 0, i32 4
  %280 = load i32*, i32** %279, align 8
  %281 = load i32, i32* %7, align 4
  %282 = add nsw i32 %281, 1
  %283 = srem i32 %282, 2
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %280, i64 %284
  %286 = call i64 @atomic_read(i32* %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %296

288:                                              ; preds = %270
  %289 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %290 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %291 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %292 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = sub nsw i32 %293, 1
  %295 = call i32 @wait_log_commit(%struct.btrfs_trans_handle* %289, %struct.btrfs_root* %290, i32 %294)
  br label %296

296:                                              ; preds = %288, %270
  %297 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %298 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %299 = call i32 @wait_for_writer(%struct.btrfs_trans_handle* %297, %struct.btrfs_root* %298)
  %300 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %301 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %300, i32 0, i32 6
  %302 = load %struct.TYPE_4__*, %struct.TYPE_4__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %306 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = icmp eq i64 %304, %307
  br i1 %308, label %309, label %320

309:                                              ; preds = %296
  %310 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %311 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %312 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %311, i32 0, i32 8
  %313 = load i32, i32* %8, align 4
  %314 = call i32 @btrfs_wait_marked_extents(%struct.btrfs_root* %310, i32* %312, i32 %313)
  %315 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %316 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %315, i32 0, i32 5
  %317 = call i32 @mutex_unlock(i32* %316)
  %318 = load i32, i32* @EAGAIN, align 4
  %319 = sub nsw i32 0, %318
  store i32 %319, i32* %9, align 4
  br label %402

320:                                              ; preds = %296
  %321 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %322 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %323 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %322, i32 0, i32 8
  %324 = load i32, i32* @EXTENT_DIRTY, align 4
  %325 = load i32, i32* @EXTENT_NEW, align 4
  %326 = or i32 %324, %325
  %327 = call i32 @btrfs_write_and_wait_marked_extents(%struct.btrfs_root* %321, i32* %323, i32 %326)
  store i32 %327, i32* %9, align 4
  %328 = load i32, i32* %9, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %338

330:                                              ; preds = %320
  %331 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %332 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %333 = load i32, i32* %9, align 4
  %334 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %331, %struct.btrfs_root* %332, i32 %333)
  %335 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %336 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %335, i32 0, i32 5
  %337 = call i32 @mutex_unlock(i32* %336)
  br label %402

338:                                              ; preds = %320
  %339 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %340 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %341 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %340, i32 0, i32 8
  %342 = load i32, i32* %8, align 4
  %343 = call i32 @btrfs_wait_marked_extents(%struct.btrfs_root* %339, i32* %341, i32 %342)
  %344 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %345 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %344, i32 0, i32 6
  %346 = load %struct.TYPE_4__*, %struct.TYPE_4__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %346, i32 0, i32 2
  %348 = load i32, i32* %347, align 4
  %349 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %350 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %349, i32 0, i32 7
  %351 = load %struct.TYPE_5__*, %struct.TYPE_5__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  %354 = call i32 @btrfs_set_super_log_root(i32 %348, i32 %353)
  %355 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %356 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %355, i32 0, i32 6
  %357 = load %struct.TYPE_4__*, %struct.TYPE_4__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %361 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %360, i32 0, i32 7
  %362 = load %struct.TYPE_5__*, %struct.TYPE_5__** %361, align 8
  %363 = call i32 @btrfs_header_level(%struct.TYPE_5__* %362)
  %364 = call i32 @btrfs_set_super_log_root_level(i32 %359, i32 %363)
  %365 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %366 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %365, i32 0, i32 1
  store i64 0, i64* %366, align 8
  %367 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %368 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %368, align 8
  %371 = call i32 (...) @smp_mb()
  %372 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %373 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %372, i32 0, i32 5
  %374 = call i32 @mutex_unlock(i32* %373)
  %375 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %376 = call i32 @btrfs_scrub_pause_super(%struct.btrfs_root* %375)
  %377 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %378 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %379 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %378, i32 0, i32 6
  %380 = load %struct.TYPE_4__*, %struct.TYPE_4__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %380, i32 0, i32 1
  %382 = load i32, i32* %381, align 8
  %383 = call i32 @write_ctree_super(%struct.btrfs_trans_handle* %377, i32 %382, i32 1)
  %384 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %385 = call i32 @btrfs_scrub_continue_super(%struct.btrfs_root* %384)
  store i32 0, i32* %9, align 4
  %386 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %387 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %386, i32 0, i32 5
  %388 = call i32 @mutex_lock(i32* %387)
  %389 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %390 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %389, i32 0, i32 2
  %391 = load i64, i64* %390, align 8
  %392 = load i64, i64* %12, align 8
  %393 = icmp ult i64 %391, %392
  br i1 %393, label %394, label %398

394:                                              ; preds = %338
  %395 = load i64, i64* %12, align 8
  %396 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %397 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %396, i32 0, i32 2
  store i64 %395, i64* %397, align 8
  br label %398

398:                                              ; preds = %394, %338
  %399 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %400 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %399, i32 0, i32 5
  %401 = call i32 @mutex_unlock(i32* %400)
  br label %402

402:                                              ; preds = %398, %330, %309
  %403 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %404 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %403, i32 0, i32 4
  %405 = load i32*, i32** %404, align 8
  %406 = load i32, i32* %7, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i32, i32* %405, i64 %407
  %409 = call i32 @atomic_set(i32* %408, i32 0)
  %410 = call i32 (...) @smp_mb()
  %411 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %412 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %411, i32 0, i32 3
  %413 = load i32*, i32** %412, align 8
  %414 = load i32, i32* %7, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i32, i32* %413, i64 %415
  %417 = call i64 @waitqueue_active(i32* %416)
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %419, label %427

419:                                              ; preds = %402
  %420 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %421 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %420, i32 0, i32 3
  %422 = load i32*, i32** %421, align 8
  %423 = load i32, i32* %7, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i32, i32* %422, i64 %424
  %426 = call i32 @wake_up(i32* %425)
  br label %427

427:                                              ; preds = %419, %402
  br label %428

428:                                              ; preds = %427, %255, %224, %216, %142, %116
  %429 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %430 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %429, i32 0, i32 4
  %431 = load i32*, i32** %430, align 8
  %432 = load i32, i32* %6, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i32, i32* %431, i64 %433
  %435 = call i32 @atomic_set(i32* %434, i32 0)
  %436 = call i32 (...) @smp_mb()
  %437 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %438 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %437, i32 0, i32 3
  %439 = load i32*, i32** %438, align 8
  %440 = load i32, i32* %6, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i32, i32* %439, i64 %441
  %443 = call i64 @waitqueue_active(i32* %442)
  %444 = icmp ne i64 %443, 0
  br i1 %444, label %445, label %453

445:                                              ; preds = %428
  %446 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %447 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %446, i32 0, i32 3
  %448 = load i32*, i32** %447, align 8
  %449 = load i32, i32* %6, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i32, i32* %448, i64 %450
  %452 = call i32 @wake_up(i32* %451)
  br label %453

453:                                              ; preds = %445, %428
  %454 = load i32, i32* %9, align 4
  store i32 %454, i32* %3, align 4
  br label %455

455:                                              ; preds = %453, %37
  %456 = load i32, i32* %3, align 4
  ret i32 %456
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @wait_log_commit(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @btrfs_test_opt(%struct.btrfs_root*, i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @wait_for_writer(%struct.btrfs_trans_handle*, %struct.btrfs_root*) #1

declare dso_local i32 @btrfs_write_marked_extents(%struct.btrfs_root*, i32*, i32) #1

declare dso_local i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i32) #1

declare dso_local i32 @btrfs_set_root_node(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @update_log_root(%struct.btrfs_trans_handle*, %struct.btrfs_root*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @btrfs_wait_marked_extents(%struct.btrfs_root*, i32*, i32) #1

declare dso_local i32 @btrfs_write_and_wait_marked_extents(%struct.btrfs_root*, i32*, i32) #1

declare dso_local i32 @btrfs_set_super_log_root(i32, i32) #1

declare dso_local i32 @btrfs_set_super_log_root_level(i32, i32) #1

declare dso_local i32 @btrfs_header_level(%struct.TYPE_5__*) #1

declare dso_local i32 @btrfs_scrub_pause_super(%struct.btrfs_root*) #1

declare dso_local i32 @write_ctree_super(%struct.btrfs_trans_handle*, i32, i32) #1

declare dso_local i32 @btrfs_scrub_continue_super(%struct.btrfs_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
