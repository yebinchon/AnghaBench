; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_tree-log.c_walk_log_tree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_tree-log.c_walk_log_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { %struct.TYPE_2__, %struct.extent_buffer* }
%struct.TYPE_2__ = type { i64 }
%struct.extent_buffer = type { i32, i32 }
%struct.walk_control = type { i32 (%struct.btrfs_root.0*, %struct.extent_buffer.1*, %struct.walk_control*, i32)*, i64 }
%struct.btrfs_root.0 = type opaque
%struct.extent_buffer.1 = type opaque
%struct.btrfs_path = type { %struct.extent_buffer**, i64* }

@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_TREE_LOG_OBJECTID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.walk_control*)* @walk_log_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @walk_log_tree(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.walk_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_trans_handle*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.walk_control*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.btrfs_path*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.extent_buffer*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %5, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %6, align 8
  store %struct.walk_control* %2, %struct.walk_control** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %15, %struct.btrfs_path** %11, align 8
  %16 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %17 = icmp ne %struct.btrfs_path* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %193

21:                                               ; preds = %3
  %22 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %23 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %22, i32 0, i32 1
  %24 = load %struct.extent_buffer*, %struct.extent_buffer** %23, align 8
  %25 = call i32 @btrfs_header_level(%struct.extent_buffer* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %13, align 4
  %27 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %28 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %27, i32 0, i32 1
  %29 = load %struct.extent_buffer*, %struct.extent_buffer** %28, align 8
  %30 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %31 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %30, i32 0, i32 0
  %32 = load %struct.extent_buffer**, %struct.extent_buffer*** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %32, i64 %34
  store %struct.extent_buffer* %29, %struct.extent_buffer** %35, align 8
  %36 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %37 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %36, i32 0, i32 1
  %38 = load %struct.extent_buffer*, %struct.extent_buffer** %37, align 8
  %39 = call i32 @extent_buffer_get(%struct.extent_buffer* %38)
  %40 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %41 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %21, %74
  %47 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %48 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %49 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %50 = load %struct.walk_control*, %struct.walk_control** %7, align 8
  %51 = call i32 @walk_down_log_tree(%struct.btrfs_trans_handle* %47, %struct.btrfs_root* %48, %struct.btrfs_path* %49, i32* %10, %struct.walk_control* %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %75

55:                                               ; preds = %46
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %8, align 4
  br label %156

60:                                               ; preds = %55
  %61 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %62 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %63 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %64 = load %struct.walk_control*, %struct.walk_control** %7, align 8
  %65 = call i32 @walk_up_log_tree(%struct.btrfs_trans_handle* %61, %struct.btrfs_root* %62, %struct.btrfs_path* %63, i32* %10, %struct.walk_control* %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %75

69:                                               ; preds = %60
  %70 = load i32, i32* %9, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %8, align 4
  br label %156

74:                                               ; preds = %69
  br label %46

75:                                               ; preds = %68, %54
  %76 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %77 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %76, i32 0, i32 0
  %78 = load %struct.extent_buffer**, %struct.extent_buffer*** %77, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %78, i64 %80
  %82 = load %struct.extent_buffer*, %struct.extent_buffer** %81, align 8
  %83 = icmp ne %struct.extent_buffer* %82, null
  br i1 %83, label %84, label %155

84:                                               ; preds = %75
  %85 = load %struct.walk_control*, %struct.walk_control** %7, align 8
  %86 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %85, i32 0, i32 0
  %87 = load i32 (%struct.btrfs_root.0*, %struct.extent_buffer.1*, %struct.walk_control*, i32)*, i32 (%struct.btrfs_root.0*, %struct.extent_buffer.1*, %struct.walk_control*, i32)** %86, align 8
  %88 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %89 = bitcast %struct.btrfs_root* %88 to %struct.btrfs_root.0*
  %90 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %91 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %90, i32 0, i32 0
  %92 = load %struct.extent_buffer**, %struct.extent_buffer*** %91, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %92, i64 %94
  %96 = load %struct.extent_buffer*, %struct.extent_buffer** %95, align 8
  %97 = bitcast %struct.extent_buffer* %96 to %struct.extent_buffer.1*
  %98 = load %struct.walk_control*, %struct.walk_control** %7, align 8
  %99 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %100 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %99, i32 0, i32 0
  %101 = load %struct.extent_buffer**, %struct.extent_buffer*** %100, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %101, i64 %103
  %105 = load %struct.extent_buffer*, %struct.extent_buffer** %104, align 8
  %106 = call i32 @btrfs_header_generation(%struct.extent_buffer* %105)
  %107 = call i32 %87(%struct.btrfs_root.0* %89, %struct.extent_buffer.1* %97, %struct.walk_control* %98, i32 %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %84
  br label %156

111:                                              ; preds = %84
  %112 = load %struct.walk_control*, %struct.walk_control** %7, align 8
  %113 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %154

116:                                              ; preds = %111
  %117 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %118 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %117, i32 0, i32 0
  %119 = load %struct.extent_buffer**, %struct.extent_buffer*** %118, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %119, i64 %121
  %123 = load %struct.extent_buffer*, %struct.extent_buffer** %122, align 8
  store %struct.extent_buffer* %123, %struct.extent_buffer** %14, align 8
  %124 = load %struct.extent_buffer*, %struct.extent_buffer** %14, align 8
  %125 = call i32 @btrfs_tree_lock(%struct.extent_buffer* %124)
  %126 = load %struct.extent_buffer*, %struct.extent_buffer** %14, align 8
  %127 = call i32 @btrfs_set_lock_blocking(%struct.extent_buffer* %126)
  %128 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %129 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %130 = load %struct.extent_buffer*, %struct.extent_buffer** %14, align 8
  %131 = call i32 @clean_tree_block(%struct.btrfs_trans_handle* %128, %struct.btrfs_root* %129, %struct.extent_buffer* %130)
  %132 = load %struct.extent_buffer*, %struct.extent_buffer** %14, align 8
  %133 = call i32 @btrfs_wait_tree_block_writeback(%struct.extent_buffer* %132)
  %134 = load %struct.extent_buffer*, %struct.extent_buffer** %14, align 8
  %135 = call i32 @btrfs_tree_unlock(%struct.extent_buffer* %134)
  %136 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %137 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @BTRFS_TREE_LOG_OBJECTID, align 8
  %141 = icmp ne i64 %139, %140
  %142 = zext i1 %141 to i32
  %143 = call i32 @WARN_ON(i32 %142)
  %144 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %145 = load %struct.extent_buffer*, %struct.extent_buffer** %14, align 8
  %146 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.extent_buffer*, %struct.extent_buffer** %14, align 8
  %149 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @btrfs_free_and_pin_reserved_extent(%struct.btrfs_root* %144, i32 %147, i32 %150)
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @BUG_ON(i32 %152)
  br label %154

154:                                              ; preds = %116, %111
  br label %155

155:                                              ; preds = %154, %75
  br label %156

156:                                              ; preds = %155, %110, %72, %58
  store i32 0, i32* %12, align 4
  br label %157

157:                                              ; preds = %186, %156
  %158 = load i32, i32* %12, align 4
  %159 = load i32, i32* %13, align 4
  %160 = icmp sle i32 %158, %159
  br i1 %160, label %161, label %189

161:                                              ; preds = %157
  %162 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %163 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %162, i32 0, i32 0
  %164 = load %struct.extent_buffer**, %struct.extent_buffer*** %163, align 8
  %165 = load i32, i32* %12, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %164, i64 %166
  %168 = load %struct.extent_buffer*, %struct.extent_buffer** %167, align 8
  %169 = icmp ne %struct.extent_buffer* %168, null
  br i1 %169, label %170, label %185

170:                                              ; preds = %161
  %171 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %172 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %171, i32 0, i32 0
  %173 = load %struct.extent_buffer**, %struct.extent_buffer*** %172, align 8
  %174 = load i32, i32* %12, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %173, i64 %175
  %177 = load %struct.extent_buffer*, %struct.extent_buffer** %176, align 8
  %178 = call i32 @free_extent_buffer(%struct.extent_buffer* %177)
  %179 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %180 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %179, i32 0, i32 0
  %181 = load %struct.extent_buffer**, %struct.extent_buffer*** %180, align 8
  %182 = load i32, i32* %12, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %181, i64 %183
  store %struct.extent_buffer* null, %struct.extent_buffer** %184, align 8
  br label %185

185:                                              ; preds = %170, %161
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %12, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %12, align 4
  br label %157

189:                                              ; preds = %157
  %190 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %191 = call i32 @btrfs_free_path(%struct.btrfs_path* %190)
  %192 = load i32, i32* %8, align 4
  store i32 %192, i32* %4, align 4
  br label %193

193:                                              ; preds = %189, %18
  %194 = load i32, i32* %4, align 4
  ret i32 %194
}

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @btrfs_header_level(%struct.extent_buffer*) #1

declare dso_local i32 @extent_buffer_get(%struct.extent_buffer*) #1

declare dso_local i32 @walk_down_log_tree(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, i32*, %struct.walk_control*) #1

declare dso_local i32 @walk_up_log_tree(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, i32*, %struct.walk_control*) #1

declare dso_local i32 @btrfs_header_generation(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_tree_lock(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_set_lock_blocking(%struct.extent_buffer*) #1

declare dso_local i32 @clean_tree_block(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.extent_buffer*) #1

declare dso_local i32 @btrfs_wait_tree_block_writeback(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_tree_unlock(%struct.extent_buffer*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @btrfs_free_and_pin_reserved_extent(%struct.btrfs_root*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @free_extent_buffer(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
