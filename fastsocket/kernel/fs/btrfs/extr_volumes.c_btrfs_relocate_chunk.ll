; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_btrfs_relocate_chunk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_btrfs_relocate_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.btrfs_root*, %struct.btrfs_root* }
%struct.TYPE_4__ = type { %struct.extent_map_tree }
%struct.extent_map_tree = type { i32 }
%struct.btrfs_trans_handle = type { i32 }
%struct.extent_map = type { i64, i64, i32* }
%struct.map_lookup = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_SYSTEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_root*, i64, i64, i64)* @btrfs_relocate_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_relocate_chunk(%struct.btrfs_root* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.extent_map_tree*, align 8
  %11 = alloca %struct.btrfs_root*, align 8
  %12 = alloca %struct.btrfs_trans_handle*, align 8
  %13 = alloca %struct.extent_map*, align 8
  %14 = alloca %struct.map_lookup*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %18 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = load %struct.btrfs_root*, %struct.btrfs_root** %20, align 8
  store %struct.btrfs_root* %21, %struct.btrfs_root** %6, align 8
  %22 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %23 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load %struct.btrfs_root*, %struct.btrfs_root** %25, align 8
  store %struct.btrfs_root* %26, %struct.btrfs_root** %11, align 8
  %27 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %28 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store %struct.extent_map_tree* %31, %struct.extent_map_tree** %10, align 8
  %32 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @btrfs_can_relocate(%struct.btrfs_root* %32, i64 %33)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %4
  %38 = load i32, i32* @ENOSPC, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %202

40:                                               ; preds = %4
  %41 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @btrfs_relocate_block_group(%struct.btrfs_root* %41, i64 %42)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %15, align 4
  store i32 %47, i32* %5, align 4
  br label %202

48:                                               ; preds = %40
  %49 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %50 = call %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root* %49, i32 0)
  store %struct.btrfs_trans_handle* %50, %struct.btrfs_trans_handle** %12, align 8
  %51 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %12, align 8
  %52 = call i32 @IS_ERR(%struct.btrfs_trans_handle* %51)
  %53 = call i32 @BUG_ON(i32 %52)
  %54 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %55 = call i32 @lock_chunks(%struct.btrfs_root* %54)
  %56 = load %struct.extent_map_tree*, %struct.extent_map_tree** %10, align 8
  %57 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %56, i32 0, i32 0
  %58 = call i32 @read_lock(i32* %57)
  %59 = load %struct.extent_map_tree*, %struct.extent_map_tree** %10, align 8
  %60 = load i64, i64* %9, align 8
  %61 = call %struct.extent_map* @lookup_extent_mapping(%struct.extent_map_tree* %59, i64 %60, i32 1)
  store %struct.extent_map* %61, %struct.extent_map** %13, align 8
  %62 = load %struct.extent_map_tree*, %struct.extent_map_tree** %10, align 8
  %63 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %62, i32 0, i32 0
  %64 = call i32 @read_unlock(i32* %63)
  %65 = load %struct.extent_map*, %struct.extent_map** %13, align 8
  %66 = icmp ne %struct.extent_map* %65, null
  br i1 %66, label %67, label %83

67:                                               ; preds = %48
  %68 = load %struct.extent_map*, %struct.extent_map** %13, align 8
  %69 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %9, align 8
  %72 = icmp sgt i64 %70, %71
  br i1 %72, label %83, label %73

73:                                               ; preds = %67
  %74 = load %struct.extent_map*, %struct.extent_map** %13, align 8
  %75 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.extent_map*, %struct.extent_map** %13, align 8
  %78 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %76, %79
  %81 = load i64, i64* %9, align 8
  %82 = icmp slt i64 %80, %81
  br label %83

83:                                               ; preds = %73, %67, %48
  %84 = phi i1 [ true, %67 ], [ true, %48 ], [ %82, %73 ]
  %85 = zext i1 %84 to i32
  %86 = call i32 @BUG_ON(i32 %85)
  %87 = load %struct.extent_map*, %struct.extent_map** %13, align 8
  %88 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = bitcast i32* %89 to %struct.map_lookup*
  store %struct.map_lookup* %90, %struct.map_lookup** %14, align 8
  store i32 0, i32* %16, align 4
  br label %91

91:                                               ; preds = %141, %83
  %92 = load i32, i32* %16, align 4
  %93 = load %struct.map_lookup*, %struct.map_lookup** %14, align 8
  %94 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %144

97:                                               ; preds = %91
  %98 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %12, align 8
  %99 = load %struct.map_lookup*, %struct.map_lookup** %14, align 8
  %100 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %99, i32 0, i32 2
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = load i32, i32* %16, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.map_lookup*, %struct.map_lookup** %14, align 8
  %108 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %107, i32 0, i32 2
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = load i32, i32* %16, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @btrfs_free_dev_extent(%struct.btrfs_trans_handle* %98, i64 %106, i32 %114)
  store i32 %115, i32* %15, align 4
  %116 = load i32, i32* %15, align 4
  %117 = call i32 @BUG_ON(i32 %116)
  %118 = load %struct.map_lookup*, %struct.map_lookup** %14, align 8
  %119 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %118, i32 0, i32 2
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = load i32, i32* %16, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %97
  %128 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %12, align 8
  %129 = load %struct.map_lookup*, %struct.map_lookup** %14, align 8
  %130 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %129, i32 0, i32 2
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = load i32, i32* %16, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @btrfs_update_device(%struct.btrfs_trans_handle* %128, i64 %136)
  store i32 %137, i32* %15, align 4
  %138 = load i32, i32* %15, align 4
  %139 = call i32 @BUG_ON(i32 %138)
  br label %140

140:                                              ; preds = %127, %97
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %16, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %16, align 4
  br label %91

144:                                              ; preds = %91
  %145 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %12, align 8
  %146 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %147 = load i64, i64* %7, align 8
  %148 = load i64, i64* %8, align 8
  %149 = load i64, i64* %9, align 8
  %150 = call i32 @btrfs_free_chunk(%struct.btrfs_trans_handle* %145, %struct.btrfs_root* %146, i64 %147, i64 %148, i64 %149)
  store i32 %150, i32* %15, align 4
  %151 = load i32, i32* %15, align 4
  %152 = call i32 @BUG_ON(i32 %151)
  %153 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %154 = load %struct.map_lookup*, %struct.map_lookup** %14, align 8
  %155 = load i64, i64* %9, align 8
  %156 = load %struct.extent_map*, %struct.extent_map** %13, align 8
  %157 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @trace_btrfs_chunk_free(%struct.btrfs_root* %153, %struct.map_lookup* %154, i64 %155, i64 %158)
  %160 = load %struct.map_lookup*, %struct.map_lookup** %14, align 8
  %161 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @BTRFS_BLOCK_GROUP_SYSTEM, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %144
  %167 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %168 = load i64, i64* %8, align 8
  %169 = load i64, i64* %9, align 8
  %170 = call i32 @btrfs_del_sys_chunk(%struct.btrfs_root* %167, i64 %168, i64 %169)
  store i32 %170, i32* %15, align 4
  %171 = load i32, i32* %15, align 4
  %172 = call i32 @BUG_ON(i32 %171)
  br label %173

173:                                              ; preds = %166, %144
  %174 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %12, align 8
  %175 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %176 = load i64, i64* %9, align 8
  %177 = call i32 @btrfs_remove_block_group(%struct.btrfs_trans_handle* %174, %struct.btrfs_root* %175, i64 %176)
  store i32 %177, i32* %15, align 4
  %178 = load i32, i32* %15, align 4
  %179 = call i32 @BUG_ON(i32 %178)
  %180 = load %struct.extent_map_tree*, %struct.extent_map_tree** %10, align 8
  %181 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %180, i32 0, i32 0
  %182 = call i32 @write_lock(i32* %181)
  %183 = load %struct.extent_map_tree*, %struct.extent_map_tree** %10, align 8
  %184 = load %struct.extent_map*, %struct.extent_map** %13, align 8
  %185 = call i32 @remove_extent_mapping(%struct.extent_map_tree* %183, %struct.extent_map* %184)
  %186 = load %struct.extent_map_tree*, %struct.extent_map_tree** %10, align 8
  %187 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %186, i32 0, i32 0
  %188 = call i32 @write_unlock(i32* %187)
  %189 = load %struct.map_lookup*, %struct.map_lookup** %14, align 8
  %190 = call i32 @kfree(%struct.map_lookup* %189)
  %191 = load %struct.extent_map*, %struct.extent_map** %13, align 8
  %192 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %191, i32 0, i32 2
  store i32* null, i32** %192, align 8
  %193 = load %struct.extent_map*, %struct.extent_map** %13, align 8
  %194 = call i32 @free_extent_map(%struct.extent_map* %193)
  %195 = load %struct.extent_map*, %struct.extent_map** %13, align 8
  %196 = call i32 @free_extent_map(%struct.extent_map* %195)
  %197 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %198 = call i32 @unlock_chunks(%struct.btrfs_root* %197)
  %199 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %12, align 8
  %200 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %201 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %199, %struct.btrfs_root* %200)
  store i32 0, i32* %5, align 4
  br label %202

202:                                              ; preds = %173, %46, %37
  %203 = load i32, i32* %5, align 4
  ret i32 %203
}

declare dso_local i32 @btrfs_can_relocate(%struct.btrfs_root*, i64) #1

declare dso_local i32 @btrfs_relocate_block_group(%struct.btrfs_root*, i64) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @lock_chunks(%struct.btrfs_root*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.extent_map* @lookup_extent_mapping(%struct.extent_map_tree*, i64, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @btrfs_free_dev_extent(%struct.btrfs_trans_handle*, i64, i32) #1

declare dso_local i32 @btrfs_update_device(%struct.btrfs_trans_handle*, i64) #1

declare dso_local i32 @btrfs_free_chunk(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i64, i64, i64) #1

declare dso_local i32 @trace_btrfs_chunk_free(%struct.btrfs_root*, %struct.map_lookup*, i64, i64) #1

declare dso_local i32 @btrfs_del_sys_chunk(%struct.btrfs_root*, i64, i64) #1

declare dso_local i32 @btrfs_remove_block_group(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i64) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @remove_extent_mapping(%struct.extent_map_tree*, %struct.extent_map*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.map_lookup*) #1

declare dso_local i32 @free_extent_map(%struct.extent_map*) #1

declare dso_local i32 @unlock_chunks(%struct.btrfs_root*) #1

declare dso_local i32 @btrfs_end_transaction(%struct.btrfs_trans_handle*, %struct.btrfs_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
