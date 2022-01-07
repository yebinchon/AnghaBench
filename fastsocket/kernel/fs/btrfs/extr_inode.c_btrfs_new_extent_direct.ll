; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_new_extent_direct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_new_extent_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.extent_map = type { i64, i64, i64, i64, i64, i32, i32 }
%struct.btrfs_root = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.btrfs_trans_handle = type { i32* }
%struct.extent_map_tree = type { i32 }
%struct.btrfs_key = type { i64, i32 }
%struct.TYPE_6__ = type { i64, %struct.extent_map_tree, %struct.btrfs_root* }

@EXTENT_MAP_HOLE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EXTENT_FLAG_PINNED = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.extent_map* (%struct.inode*, %struct.extent_map*, i64, i64)* @btrfs_new_extent_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.extent_map* @btrfs_new_extent_direct(%struct.inode* %0, %struct.extent_map* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.extent_map*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.extent_map*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.btrfs_root*, align 8
  %11 = alloca %struct.btrfs_trans_handle*, align 8
  %12 = alloca %struct.extent_map_tree*, align 8
  %13 = alloca %struct.btrfs_key, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.extent_map* %1, %struct.extent_map** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %17)
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = load %struct.btrfs_root*, %struct.btrfs_root** %19, align 8
  store %struct.btrfs_root* %20, %struct.btrfs_root** %10, align 8
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %21)
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  store %struct.extent_map_tree* %23, %struct.extent_map_tree** %12, align 8
  store i32 0, i32* %16, align 4
  %24 = load %struct.extent_map*, %struct.extent_map** %7, align 8
  %25 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @EXTENT_MAP_HOLE, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %41, label %29

29:                                               ; preds = %4
  %30 = load %struct.extent_map*, %struct.extent_map** %7, align 8
  %31 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.extent_map*, %struct.extent_map** %7, align 8
  %37 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %35, %29, %4
  %42 = load %struct.extent_map*, %struct.extent_map** %7, align 8
  %43 = call i32 @free_extent_map(%struct.extent_map* %42)
  store %struct.extent_map* null, %struct.extent_map** %7, align 8
  store i32 1, i32* %16, align 4
  %44 = load %struct.inode*, %struct.inode** %6, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = add nsw i64 %46, %47
  %49 = sub nsw i64 %48, 1
  %50 = call i32 @btrfs_drop_extent_cache(%struct.inode* %44, i64 %45, i64 %49, i32 0)
  br label %51

51:                                               ; preds = %41, %35
  %52 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %53 = call %struct.btrfs_trans_handle* @btrfs_join_transaction(%struct.btrfs_root* %52)
  store %struct.btrfs_trans_handle* %53, %struct.btrfs_trans_handle** %11, align 8
  %54 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %11, align 8
  %55 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %11, align 8
  %59 = call %struct.extent_map* @ERR_CAST(%struct.btrfs_trans_handle* %58)
  store %struct.extent_map* %59, %struct.extent_map** %5, align 8
  br label %201

60:                                               ; preds = %51
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.inode*, %struct.inode** %6, align 8
  %63 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %62)
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sle i64 %61, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load i64, i64* %9, align 8
  %69 = icmp slt i64 %68, 65536
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %11, align 8
  %72 = load %struct.inode*, %struct.inode** %6, align 8
  %73 = call i32 @btrfs_add_inode_defrag(%struct.btrfs_trans_handle* %71, %struct.inode* %72)
  br label %74

74:                                               ; preds = %70, %67, %60
  %75 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %76 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %11, align 8
  %80 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %79, i32 0, i32 0
  store i32* %78, i32** %80, align 8
  %81 = load %struct.inode*, %struct.inode** %6, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* %9, align 8
  %84 = call i64 @get_extent_allocation_hint(%struct.inode* %81, i64 %82, i64 %83)
  store i64 %84, i64* %14, align 8
  %85 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %11, align 8
  %86 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %87 = load i64, i64* %9, align 8
  %88 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %89 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i64, i64* %14, align 8
  %92 = call i32 @btrfs_reserve_extent(%struct.btrfs_trans_handle* %85, %struct.btrfs_root* %86, i64 %87, i32 %90, i32 0, i64 %91, %struct.btrfs_key* %13, i32 1)
  store i32 %92, i32* %15, align 4
  %93 = load i32, i32* %15, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %74
  %96 = load i32, i32* %15, align 4
  %97 = call %struct.extent_map* @ERR_PTR(i32 %96)
  store %struct.extent_map* %97, %struct.extent_map** %7, align 8
  br label %196

98:                                               ; preds = %74
  %99 = load %struct.extent_map*, %struct.extent_map** %7, align 8
  %100 = icmp ne %struct.extent_map* %99, null
  br i1 %100, label %110, label %101

101:                                              ; preds = %98
  %102 = call %struct.extent_map* (...) @alloc_extent_map()
  store %struct.extent_map* %102, %struct.extent_map** %7, align 8
  %103 = load %struct.extent_map*, %struct.extent_map** %7, align 8
  %104 = icmp ne %struct.extent_map* %103, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  %108 = call %struct.extent_map* @ERR_PTR(i32 %107)
  store %struct.extent_map* %108, %struct.extent_map** %7, align 8
  br label %196

109:                                              ; preds = %101
  br label %110

110:                                              ; preds = %109, %98
  %111 = load i64, i64* %8, align 8
  %112 = load %struct.extent_map*, %struct.extent_map** %7, align 8
  %113 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load %struct.extent_map*, %struct.extent_map** %7, align 8
  %115 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.extent_map*, %struct.extent_map** %7, align 8
  %118 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %117, i32 0, i32 2
  store i64 %116, i64* %118, align 8
  %119 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %13, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.extent_map*, %struct.extent_map** %7, align 8
  %122 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %121, i32 0, i32 1
  store i64 %120, i64* %122, align 8
  %123 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %13, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.extent_map*, %struct.extent_map** %7, align 8
  %126 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %125, i32 0, i32 6
  store i32 %124, i32* %126, align 4
  %127 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %13, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.extent_map*, %struct.extent_map** %7, align 8
  %130 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %129, i32 0, i32 3
  store i64 %128, i64* %130, align 8
  %131 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %132 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %131, i32 0, i32 0
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.extent_map*, %struct.extent_map** %7, align 8
  %139 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %138, i32 0, i32 5
  store i32 %137, i32* %139, align 8
  %140 = load %struct.extent_map*, %struct.extent_map** %7, align 8
  %141 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %140, i32 0, i32 4
  store i64 0, i64* %141, align 8
  %142 = load i32, i32* @EXTENT_FLAG_PINNED, align 4
  %143 = load %struct.extent_map*, %struct.extent_map** %7, align 8
  %144 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %143, i32 0, i32 4
  %145 = call i32 @set_bit(i32 %142, i64* %144)
  br label %146

146:                                              ; preds = %164, %110
  %147 = load i32, i32* %16, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %174

149:                                              ; preds = %146
  %150 = load %struct.extent_map_tree*, %struct.extent_map_tree** %12, align 8
  %151 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %150, i32 0, i32 0
  %152 = call i32 @write_lock(i32* %151)
  %153 = load %struct.extent_map_tree*, %struct.extent_map_tree** %12, align 8
  %154 = load %struct.extent_map*, %struct.extent_map** %7, align 8
  %155 = call i32 @add_extent_mapping(%struct.extent_map_tree* %153, %struct.extent_map* %154)
  store i32 %155, i32* %15, align 4
  %156 = load %struct.extent_map_tree*, %struct.extent_map_tree** %12, align 8
  %157 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %156, i32 0, i32 0
  %158 = call i32 @write_unlock(i32* %157)
  %159 = load i32, i32* %15, align 4
  %160 = load i32, i32* @EEXIST, align 4
  %161 = sub nsw i32 0, %160
  %162 = icmp ne i32 %159, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %149
  br label %174

164:                                              ; preds = %149
  %165 = load %struct.inode*, %struct.inode** %6, align 8
  %166 = load i64, i64* %8, align 8
  %167 = load i64, i64* %8, align 8
  %168 = load %struct.extent_map*, %struct.extent_map** %7, align 8
  %169 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = add nsw i64 %167, %170
  %172 = sub nsw i64 %171, 1
  %173 = call i32 @btrfs_drop_extent_cache(%struct.inode* %165, i64 %166, i64 %172, i32 0)
  br label %146

174:                                              ; preds = %163, %146
  %175 = load %struct.inode*, %struct.inode** %6, align 8
  %176 = load i64, i64* %8, align 8
  %177 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %13, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %13, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %13, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @btrfs_add_ordered_extent_dio(%struct.inode* %175, i64 %176, i32 %178, i64 %180, i64 %182, i32 0)
  store i32 %183, i32* %15, align 4
  %184 = load i32, i32* %15, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %195

186:                                              ; preds = %174
  %187 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %188 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %13, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %13, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = call i32 @btrfs_free_reserved_extent(%struct.btrfs_root* %187, i32 %189, i64 %191)
  %193 = load i32, i32* %15, align 4
  %194 = call %struct.extent_map* @ERR_PTR(i32 %193)
  store %struct.extent_map* %194, %struct.extent_map** %7, align 8
  br label %195

195:                                              ; preds = %186, %174
  br label %196

196:                                              ; preds = %195, %105, %95
  %197 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %11, align 8
  %198 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %199 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %197, %struct.btrfs_root* %198)
  %200 = load %struct.extent_map*, %struct.extent_map** %7, align 8
  store %struct.extent_map* %200, %struct.extent_map** %5, align 8
  br label %201

201:                                              ; preds = %196, %57
  %202 = load %struct.extent_map*, %struct.extent_map** %5, align 8
  ret %struct.extent_map* %202
}

declare dso_local %struct.TYPE_6__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @free_extent_map(%struct.extent_map*) #1

declare dso_local i32 @btrfs_drop_extent_cache(%struct.inode*, i64, i64, i32) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_join_transaction(%struct.btrfs_root*) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local %struct.extent_map* @ERR_CAST(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_add_inode_defrag(%struct.btrfs_trans_handle*, %struct.inode*) #1

declare dso_local i64 @get_extent_allocation_hint(%struct.inode*, i64, i64) #1

declare dso_local i32 @btrfs_reserve_extent(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i64, i32, i32, i64, %struct.btrfs_key*, i32) #1

declare dso_local %struct.extent_map* @ERR_PTR(i32) #1

declare dso_local %struct.extent_map* @alloc_extent_map(...) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @add_extent_mapping(%struct.extent_map_tree*, %struct.extent_map*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @btrfs_add_ordered_extent_dio(%struct.inode*, i64, i32, i64, i64, i32) #1

declare dso_local i32 @btrfs_free_reserved_extent(%struct.btrfs_root*, i32, i64) #1

declare dso_local i32 @btrfs_end_transaction(%struct.btrfs_trans_handle*, %struct.btrfs_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
