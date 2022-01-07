; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_cont_expand.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_cont_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i64 }
%struct.extent_io_tree = type { i32 }
%struct.extent_map = type { i32 }
%struct.extent_state = type { i32 }
%struct.btrfs_ordered_extent = type { i32 }
%struct.TYPE_2__ = type { %struct.extent_io_tree, %struct.btrfs_root* }

@GFP_NOFS = common dso_local global i32 0, align 4
@EXTENT_FLAG_PREALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_cont_expand(%struct.inode* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.btrfs_trans_handle*, align 8
  %9 = alloca %struct.btrfs_root*, align 8
  %10 = alloca %struct.extent_io_tree*, align 8
  %11 = alloca %struct.extent_map*, align 8
  %12 = alloca %struct.extent_state*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.btrfs_ordered_extent*, align 8
  %21 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load %struct.btrfs_root*, %struct.btrfs_root** %24, align 8
  store %struct.btrfs_root* %25, %struct.btrfs_root** %9, align 8
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store %struct.extent_io_tree* %28, %struct.extent_io_tree** %10, align 8
  store %struct.extent_map* null, %struct.extent_map** %11, align 8
  store %struct.extent_state* null, %struct.extent_state** %12, align 8
  %29 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %30 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %31, 1
  store i64 %32, i64* %13, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %13, align 8
  %35 = add nsw i64 %33, %34
  %36 = load i64, i64* %13, align 8
  %37 = xor i64 %36, -1
  %38 = and i64 %35, %37
  store i64 %38, i64* %14, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %13, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i64, i64* %13, align 8
  %43 = xor i64 %42, -1
  %44 = and i64 %41, %43
  store i64 %44, i64* %15, align 8
  store i32 0, i32* %19, align 4
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %14, align 8
  %47 = icmp sle i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %202

49:                                               ; preds = %3
  br label %50

50:                                               ; preds = %49, %68
  %51 = load %struct.inode*, %struct.inode** %5, align 8
  %52 = load i64, i64* %14, align 8
  %53 = load i64, i64* %15, align 8
  %54 = load i64, i64* %14, align 8
  %55 = sub nsw i64 %53, %54
  %56 = call i32 @btrfs_wait_ordered_range(%struct.inode* %51, i64 %52, i64 %55)
  %57 = load %struct.extent_io_tree*, %struct.extent_io_tree** %10, align 8
  %58 = load i64, i64* %14, align 8
  %59 = load i64, i64* %15, align 8
  %60 = sub nsw i64 %59, 1
  %61 = call i32 @lock_extent_bits(%struct.extent_io_tree* %57, i64 %58, i64 %60, i32 0, %struct.extent_state** %12)
  %62 = load %struct.inode*, %struct.inode** %5, align 8
  %63 = load i64, i64* %14, align 8
  %64 = call %struct.btrfs_ordered_extent* @btrfs_lookup_ordered_extent(%struct.inode* %62, i64 %63)
  store %struct.btrfs_ordered_extent* %64, %struct.btrfs_ordered_extent** %20, align 8
  %65 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %20, align 8
  %66 = icmp ne %struct.btrfs_ordered_extent* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %50
  br label %77

68:                                               ; preds = %50
  %69 = load %struct.extent_io_tree*, %struct.extent_io_tree** %10, align 8
  %70 = load i64, i64* %14, align 8
  %71 = load i64, i64* %15, align 8
  %72 = sub nsw i64 %71, 1
  %73 = load i32, i32* @GFP_NOFS, align 4
  %74 = call i32 @unlock_extent_cached(%struct.extent_io_tree* %69, i64 %70, i64 %72, %struct.extent_state** %12, i32 %73)
  %75 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %20, align 8
  %76 = call i32 @btrfs_put_ordered_extent(%struct.btrfs_ordered_extent* %75)
  br label %50

77:                                               ; preds = %67
  %78 = load i64, i64* %14, align 8
  store i64 %78, i64* %17, align 8
  br label %79

79:                                               ; preds = %77, %191
  %80 = load %struct.inode*, %struct.inode** %5, align 8
  %81 = load i64, i64* %17, align 8
  %82 = load i64, i64* %15, align 8
  %83 = load i64, i64* %17, align 8
  %84 = sub nsw i64 %82, %83
  %85 = trunc i64 %84 to i32
  %86 = call %struct.extent_map* @btrfs_get_extent(%struct.inode* %80, i32* null, i32 0, i64 %81, i32 %85, i32 0)
  store %struct.extent_map* %86, %struct.extent_map** %11, align 8
  %87 = load %struct.extent_map*, %struct.extent_map** %11, align 8
  %88 = call i64 @IS_ERR(%struct.extent_map* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %79
  %91 = load %struct.extent_map*, %struct.extent_map** %11, align 8
  %92 = call i32 @PTR_ERR(%struct.extent_map* %91)
  store i32 %92, i32* %19, align 4
  br label %192

93:                                               ; preds = %79
  %94 = load %struct.extent_map*, %struct.extent_map** %11, align 8
  %95 = call i32 @extent_map_end(%struct.extent_map* %94)
  %96 = load i64, i64* %15, align 8
  %97 = call i64 @min(i32 %95, i64 %96)
  store i64 %97, i64* %16, align 8
  %98 = load i64, i64* %16, align 8
  %99 = load i64, i64* %13, align 8
  %100 = add nsw i64 %98, %99
  %101 = load i64, i64* %13, align 8
  %102 = xor i64 %101, -1
  %103 = and i64 %100, %102
  store i64 %103, i64* %16, align 8
  %104 = load i32, i32* @EXTENT_FLAG_PREALLOC, align 4
  %105 = load %struct.extent_map*, %struct.extent_map** %11, align 8
  %106 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %105, i32 0, i32 0
  %107 = call i32 @test_bit(i32 %104, i32* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %183, label %109

109:                                              ; preds = %93
  store i64 0, i64* %21, align 8
  %110 = load i64, i64* %16, align 8
  %111 = load i64, i64* %17, align 8
  %112 = sub nsw i64 %110, %111
  store i64 %112, i64* %18, align 8
  %113 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %114 = call %struct.extent_map* @btrfs_start_transaction(%struct.btrfs_root* %113, i32 3)
  %115 = bitcast %struct.extent_map* %114 to %struct.btrfs_trans_handle*
  store %struct.btrfs_trans_handle* %115, %struct.btrfs_trans_handle** %8, align 8
  %116 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %117 = bitcast %struct.btrfs_trans_handle* %116 to %struct.extent_map*
  %118 = call i64 @IS_ERR(%struct.extent_map* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %109
  %121 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %122 = bitcast %struct.btrfs_trans_handle* %121 to %struct.extent_map*
  %123 = call i32 @PTR_ERR(%struct.extent_map* %122)
  store i32 %123, i32* %19, align 4
  br label %192

124:                                              ; preds = %109
  %125 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %126 = bitcast %struct.btrfs_trans_handle* %125 to %struct.extent_map*
  %127 = load %struct.inode*, %struct.inode** %5, align 8
  %128 = load i64, i64* %17, align 8
  %129 = load i64, i64* %17, align 8
  %130 = load i64, i64* %18, align 8
  %131 = add nsw i64 %129, %130
  %132 = call i32 @btrfs_drop_extents(%struct.extent_map* %126, %struct.inode* %127, i64 %128, i64 %131, i64* %21, i32 1)
  store i32 %132, i32* %19, align 4
  %133 = load i32, i32* %19, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %124
  %136 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %137 = bitcast %struct.btrfs_trans_handle* %136 to %struct.extent_map*
  %138 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %139 = load i32, i32* %19, align 4
  %140 = call i32 @btrfs_abort_transaction(%struct.extent_map* %137, %struct.btrfs_root* %138, i32 %139)
  %141 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %142 = bitcast %struct.btrfs_trans_handle* %141 to %struct.extent_map*
  %143 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %144 = call i32 @btrfs_end_transaction(%struct.extent_map* %142, %struct.btrfs_root* %143)
  br label %192

145:                                              ; preds = %124
  %146 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %147 = bitcast %struct.btrfs_trans_handle* %146 to %struct.extent_map*
  %148 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %149 = load %struct.inode*, %struct.inode** %5, align 8
  %150 = call i32 @btrfs_ino(%struct.inode* %149)
  %151 = load i64, i64* %17, align 8
  %152 = load i64, i64* %18, align 8
  %153 = load i64, i64* %18, align 8
  %154 = call i32 @btrfs_insert_file_extent(%struct.extent_map* %147, %struct.btrfs_root* %148, i32 %150, i64 %151, i32 0, i32 0, i64 %152, i32 0, i64 %153, i32 0, i32 0, i32 0)
  store i32 %154, i32* %19, align 4
  %155 = load i32, i32* %19, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %145
  %158 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %159 = bitcast %struct.btrfs_trans_handle* %158 to %struct.extent_map*
  %160 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %161 = load i32, i32* %19, align 4
  %162 = call i32 @btrfs_abort_transaction(%struct.extent_map* %159, %struct.btrfs_root* %160, i32 %161)
  %163 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %164 = bitcast %struct.btrfs_trans_handle* %163 to %struct.extent_map*
  %165 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %166 = call i32 @btrfs_end_transaction(%struct.extent_map* %164, %struct.btrfs_root* %165)
  br label %192

167:                                              ; preds = %145
  %168 = load %struct.inode*, %struct.inode** %5, align 8
  %169 = load i64, i64* %14, align 8
  %170 = load i64, i64* %16, align 8
  %171 = sub nsw i64 %170, 1
  %172 = trunc i64 %171 to i32
  %173 = call i32 @btrfs_drop_extent_cache(%struct.inode* %168, i64 %169, i32 %172, i32 0)
  %174 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %175 = bitcast %struct.btrfs_trans_handle* %174 to %struct.extent_map*
  %176 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %177 = load %struct.inode*, %struct.inode** %5, align 8
  %178 = call i32 @btrfs_update_inode(%struct.extent_map* %175, %struct.btrfs_root* %176, %struct.inode* %177)
  %179 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %180 = bitcast %struct.btrfs_trans_handle* %179 to %struct.extent_map*
  %181 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %182 = call i32 @btrfs_end_transaction(%struct.extent_map* %180, %struct.btrfs_root* %181)
  br label %183

183:                                              ; preds = %167, %93
  %184 = load %struct.extent_map*, %struct.extent_map** %11, align 8
  %185 = call i32 @free_extent_map(%struct.extent_map* %184)
  store %struct.extent_map* null, %struct.extent_map** %11, align 8
  %186 = load i64, i64* %16, align 8
  store i64 %186, i64* %17, align 8
  %187 = load i64, i64* %17, align 8
  %188 = load i64, i64* %15, align 8
  %189 = icmp sge i64 %187, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %183
  br label %192

191:                                              ; preds = %183
  br label %79

192:                                              ; preds = %190, %157, %135, %120, %90
  %193 = load %struct.extent_map*, %struct.extent_map** %11, align 8
  %194 = call i32 @free_extent_map(%struct.extent_map* %193)
  %195 = load %struct.extent_io_tree*, %struct.extent_io_tree** %10, align 8
  %196 = load i64, i64* %14, align 8
  %197 = load i64, i64* %15, align 8
  %198 = sub nsw i64 %197, 1
  %199 = load i32, i32* @GFP_NOFS, align 4
  %200 = call i32 @unlock_extent_cached(%struct.extent_io_tree* %195, i64 %196, i64 %198, %struct.extent_state** %12, i32 %199)
  %201 = load i32, i32* %19, align 4
  store i32 %201, i32* %4, align 4
  br label %202

202:                                              ; preds = %192, %48
  %203 = load i32, i32* %4, align 4
  ret i32 %203
}

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @btrfs_wait_ordered_range(%struct.inode*, i64, i64) #1

declare dso_local i32 @lock_extent_bits(%struct.extent_io_tree*, i64, i64, i32, %struct.extent_state**) #1

declare dso_local %struct.btrfs_ordered_extent* @btrfs_lookup_ordered_extent(%struct.inode*, i64) #1

declare dso_local i32 @unlock_extent_cached(%struct.extent_io_tree*, i64, i64, %struct.extent_state**, i32) #1

declare dso_local i32 @btrfs_put_ordered_extent(%struct.btrfs_ordered_extent*) #1

declare dso_local %struct.extent_map* @btrfs_get_extent(%struct.inode*, i32*, i32, i64, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.extent_map*) #1

declare dso_local i32 @PTR_ERR(%struct.extent_map*) #1

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @extent_map_end(%struct.extent_map*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.extent_map* @btrfs_start_transaction(%struct.btrfs_root*, i32) #1

declare dso_local i32 @btrfs_drop_extents(%struct.extent_map*, %struct.inode*, i64, i64, i64*, i32) #1

declare dso_local i32 @btrfs_abort_transaction(%struct.extent_map*, %struct.btrfs_root*, i32) #1

declare dso_local i32 @btrfs_end_transaction(%struct.extent_map*, %struct.btrfs_root*) #1

declare dso_local i32 @btrfs_insert_file_extent(%struct.extent_map*, %struct.btrfs_root*, i32, i64, i32, i32, i64, i32, i64, i32, i32, i32) #1

declare dso_local i32 @btrfs_ino(%struct.inode*) #1

declare dso_local i32 @btrfs_drop_extent_cache(%struct.inode*, i64, i32, i32) #1

declare dso_local i32 @btrfs_update_inode(%struct.extent_map*, %struct.btrfs_root*, %struct.inode*) #1

declare dso_local i32 @free_extent_map(%struct.extent_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
