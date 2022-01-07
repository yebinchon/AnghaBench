; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c___finish_chunk_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c___finish_chunk_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32, %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.btrfs_root* }
%struct.map_lookup = type { i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.btrfs_device* }
%struct.btrfs_device = type { i32, i32, i32 }
%struct.btrfs_key = type { i32, i32, i32 }
%struct.btrfs_chunk = type { %struct.btrfs_stripe }
%struct.btrfs_stripe = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_UUID_SIZE = common dso_local global i32 0, align 4
@BTRFS_FIRST_CHUNK_TREE_OBJECTID = common dso_local global i32 0, align 4
@BTRFS_CHUNK_ITEM_KEY = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_SYSTEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.map_lookup*, i32, i32, i32)* @__finish_chunk_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__finish_chunk_alloc(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.map_lookup* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_trans_handle*, align 8
  %9 = alloca %struct.btrfs_root*, align 8
  %10 = alloca %struct.map_lookup*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.btrfs_key, align 4
  %16 = alloca %struct.btrfs_root*, align 8
  %17 = alloca %struct.btrfs_device*, align 8
  %18 = alloca %struct.btrfs_chunk*, align 8
  %19 = alloca %struct.btrfs_stripe*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %8, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %9, align 8
  store %struct.map_lookup* %2, %struct.map_lookup** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %23 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %24 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load %struct.btrfs_root*, %struct.btrfs_root** %26, align 8
  store %struct.btrfs_root* %27, %struct.btrfs_root** %16, align 8
  %28 = load %struct.map_lookup*, %struct.map_lookup** %10, align 8
  %29 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @btrfs_chunk_item_size(i32 %30)
  store i64 %31, i64* %20, align 8
  store i32 0, i32* %21, align 4
  %32 = load i64, i64* %20, align 8
  %33 = load i32, i32* @GFP_NOFS, align 4
  %34 = call %struct.btrfs_chunk* @kzalloc(i64 %32, i32 %33)
  store %struct.btrfs_chunk* %34, %struct.btrfs_chunk** %18, align 8
  %35 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %18, align 8
  %36 = icmp ne %struct.btrfs_chunk* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %6
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %212

40:                                               ; preds = %6
  store i32 0, i32* %21, align 4
  br label %41

41:                                               ; preds = %67, %40
  %42 = load i32, i32* %21, align 4
  %43 = load %struct.map_lookup*, %struct.map_lookup** %10, align 8
  %44 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %70

47:                                               ; preds = %41
  %48 = load %struct.map_lookup*, %struct.map_lookup** %10, align 8
  %49 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %48, i32 0, i32 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = load i32, i32* %21, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load %struct.btrfs_device*, %struct.btrfs_device** %54, align 8
  store %struct.btrfs_device* %55, %struct.btrfs_device** %17, align 8
  %56 = load i32, i32* %13, align 4
  %57 = load %struct.btrfs_device*, %struct.btrfs_device** %17, align 8
  %58 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %62 = load %struct.btrfs_device*, %struct.btrfs_device** %17, align 8
  %63 = call i32 @btrfs_update_device(%struct.btrfs_trans_handle* %61, %struct.btrfs_device* %62)
  store i32 %63, i32* %22, align 4
  %64 = load i32, i32* %22, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %47
  br label %208

67:                                               ; preds = %47
  %68 = load i32, i32* %21, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %21, align 4
  br label %41

70:                                               ; preds = %41
  %71 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %72 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %71, i32 0, i32 2
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = call i32 @spin_lock(i32* %74)
  %76 = load i32, i32* %13, align 4
  %77 = load %struct.map_lookup*, %struct.map_lookup** %10, align 8
  %78 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = mul nsw i32 %76, %79
  %81 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %82 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %81, i32 0, i32 2
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sub nsw i32 %85, %80
  store i32 %86, i32* %84, align 8
  %87 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %88 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %87, i32 0, i32 2
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = call i32 @spin_unlock(i32* %90)
  store i32 0, i32* %21, align 4
  %92 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %18, align 8
  %93 = getelementptr inbounds %struct.btrfs_chunk, %struct.btrfs_chunk* %92, i32 0, i32 0
  store %struct.btrfs_stripe* %93, %struct.btrfs_stripe** %19, align 8
  br label %94

94:                                               ; preds = %100, %70
  %95 = load i32, i32* %21, align 4
  %96 = load %struct.map_lookup*, %struct.map_lookup** %10, align 8
  %97 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %137

100:                                              ; preds = %94
  %101 = load %struct.map_lookup*, %struct.map_lookup** %10, align 8
  %102 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %101, i32 0, i32 4
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = load i32, i32* %21, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load %struct.btrfs_device*, %struct.btrfs_device** %107, align 8
  store %struct.btrfs_device* %108, %struct.btrfs_device** %17, align 8
  %109 = load %struct.map_lookup*, %struct.map_lookup** %10, align 8
  %110 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %109, i32 0, i32 4
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = load i32, i32* %21, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  store i32 %116, i32* %14, align 4
  %117 = load %struct.btrfs_stripe*, %struct.btrfs_stripe** %19, align 8
  %118 = load %struct.btrfs_device*, %struct.btrfs_device** %17, align 8
  %119 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @btrfs_set_stack_stripe_devid(%struct.btrfs_stripe* %117, i32 %120)
  %122 = load %struct.btrfs_stripe*, %struct.btrfs_stripe** %19, align 8
  %123 = load i32, i32* %14, align 4
  %124 = call i32 @btrfs_set_stack_stripe_offset(%struct.btrfs_stripe* %122, i32 %123)
  %125 = load %struct.btrfs_stripe*, %struct.btrfs_stripe** %19, align 8
  %126 = getelementptr inbounds %struct.btrfs_stripe, %struct.btrfs_stripe* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.btrfs_device*, %struct.btrfs_device** %17, align 8
  %129 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @BTRFS_UUID_SIZE, align 4
  %132 = call i32 @memcpy(i32 %127, i32 %130, i32 %131)
  %133 = load %struct.btrfs_stripe*, %struct.btrfs_stripe** %19, align 8
  %134 = getelementptr inbounds %struct.btrfs_stripe, %struct.btrfs_stripe* %133, i32 1
  store %struct.btrfs_stripe* %134, %struct.btrfs_stripe** %19, align 8
  %135 = load i32, i32* %21, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %21, align 4
  br label %94

137:                                              ; preds = %94
  %138 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %18, align 8
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @btrfs_set_stack_chunk_length(%struct.btrfs_chunk* %138, i32 %139)
  %141 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %18, align 8
  %142 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %143 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @btrfs_set_stack_chunk_owner(%struct.btrfs_chunk* %141, i32 %145)
  %147 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %18, align 8
  %148 = load %struct.map_lookup*, %struct.map_lookup** %10, align 8
  %149 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @btrfs_set_stack_chunk_stripe_len(%struct.btrfs_chunk* %147, i32 %150)
  %152 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %18, align 8
  %153 = load %struct.map_lookup*, %struct.map_lookup** %10, align 8
  %154 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @btrfs_set_stack_chunk_type(%struct.btrfs_chunk* %152, i32 %155)
  %157 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %18, align 8
  %158 = load %struct.map_lookup*, %struct.map_lookup** %10, align 8
  %159 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @btrfs_set_stack_chunk_num_stripes(%struct.btrfs_chunk* %157, i32 %160)
  %162 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %18, align 8
  %163 = load %struct.map_lookup*, %struct.map_lookup** %10, align 8
  %164 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @btrfs_set_stack_chunk_io_align(%struct.btrfs_chunk* %162, i32 %165)
  %167 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %18, align 8
  %168 = load %struct.map_lookup*, %struct.map_lookup** %10, align 8
  %169 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @btrfs_set_stack_chunk_io_width(%struct.btrfs_chunk* %167, i32 %170)
  %172 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %18, align 8
  %173 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %174 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @btrfs_set_stack_chunk_sector_size(%struct.btrfs_chunk* %172, i32 %175)
  %177 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %18, align 8
  %178 = load %struct.map_lookup*, %struct.map_lookup** %10, align 8
  %179 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @btrfs_set_stack_chunk_sub_stripes(%struct.btrfs_chunk* %177, i32 %180)
  %182 = load i32, i32* @BTRFS_FIRST_CHUNK_TREE_OBJECTID, align 4
  %183 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %15, i32 0, i32 2
  store i32 %182, i32* %183, align 4
  %184 = load i32, i32* @BTRFS_CHUNK_ITEM_KEY, align 4
  %185 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %15, i32 0, i32 1
  store i32 %184, i32* %185, align 4
  %186 = load i32, i32* %11, align 4
  %187 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %15, i32 0, i32 0
  store i32 %186, i32* %187, align 4
  %188 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %189 = load %struct.btrfs_root*, %struct.btrfs_root** %16, align 8
  %190 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %18, align 8
  %191 = load i64, i64* %20, align 8
  %192 = call i32 @btrfs_insert_item(%struct.btrfs_trans_handle* %188, %struct.btrfs_root* %189, %struct.btrfs_key* %15, %struct.btrfs_chunk* %190, i64 %191)
  store i32 %192, i32* %22, align 4
  %193 = load i32, i32* %22, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %207

195:                                              ; preds = %137
  %196 = load %struct.map_lookup*, %struct.map_lookup** %10, align 8
  %197 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @BTRFS_BLOCK_GROUP_SYSTEM, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %195
  %203 = load %struct.btrfs_root*, %struct.btrfs_root** %16, align 8
  %204 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %18, align 8
  %205 = load i64, i64* %20, align 8
  %206 = call i32 @btrfs_add_system_chunk(%struct.btrfs_root* %203, %struct.btrfs_key* %15, %struct.btrfs_chunk* %204, i64 %205)
  store i32 %206, i32* %22, align 4
  br label %207

207:                                              ; preds = %202, %195, %137
  br label %208

208:                                              ; preds = %207, %66
  %209 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %18, align 8
  %210 = call i32 @kfree(%struct.btrfs_chunk* %209)
  %211 = load i32, i32* %22, align 4
  store i32 %211, i32* %7, align 4
  br label %212

212:                                              ; preds = %208, %37
  %213 = load i32, i32* %7, align 4
  ret i32 %213
}

declare dso_local i64 @btrfs_chunk_item_size(i32) #1

declare dso_local %struct.btrfs_chunk* @kzalloc(i64, i32) #1

declare dso_local i32 @btrfs_update_device(%struct.btrfs_trans_handle*, %struct.btrfs_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @btrfs_set_stack_stripe_devid(%struct.btrfs_stripe*, i32) #1

declare dso_local i32 @btrfs_set_stack_stripe_offset(%struct.btrfs_stripe*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @btrfs_set_stack_chunk_length(%struct.btrfs_chunk*, i32) #1

declare dso_local i32 @btrfs_set_stack_chunk_owner(%struct.btrfs_chunk*, i32) #1

declare dso_local i32 @btrfs_set_stack_chunk_stripe_len(%struct.btrfs_chunk*, i32) #1

declare dso_local i32 @btrfs_set_stack_chunk_type(%struct.btrfs_chunk*, i32) #1

declare dso_local i32 @btrfs_set_stack_chunk_num_stripes(%struct.btrfs_chunk*, i32) #1

declare dso_local i32 @btrfs_set_stack_chunk_io_align(%struct.btrfs_chunk*, i32) #1

declare dso_local i32 @btrfs_set_stack_chunk_io_width(%struct.btrfs_chunk*, i32) #1

declare dso_local i32 @btrfs_set_stack_chunk_sector_size(%struct.btrfs_chunk*, i32) #1

declare dso_local i32 @btrfs_set_stack_chunk_sub_stripes(%struct.btrfs_chunk*, i32) #1

declare dso_local i32 @btrfs_insert_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_chunk*, i64) #1

declare dso_local i32 @btrfs_add_system_chunk(%struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_chunk*, i64) #1

declare dso_local i32 @kfree(%struct.btrfs_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
