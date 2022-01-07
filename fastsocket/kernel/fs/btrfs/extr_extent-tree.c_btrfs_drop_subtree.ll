; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c_btrfs_drop_subtree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c_btrfs_drop_subtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.extent_buffer = type { i32 }
%struct.btrfs_path = type { i32*, i64*, %struct.extent_buffer** }
%struct.walk_control = type { i32*, i32, i32, i32, i32, i32, i64, i32, i32* }

@BTRFS_TREE_RELOC_OBJECTID = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@BTRFS_WRITE_LOCK_BLOCKING = common dso_local global i32 0, align 4
@BTRFS_BLOCK_FLAG_FULL_BACKREF = common dso_local global i32 0, align 4
@DROP_REFERENCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_drop_subtree(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.extent_buffer* %2, %struct.extent_buffer* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_trans_handle*, align 8
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca %struct.extent_buffer*, align 8
  %9 = alloca %struct.extent_buffer*, align 8
  %10 = alloca %struct.btrfs_path*, align 8
  %11 = alloca %struct.walk_control*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %6, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %7, align 8
  store %struct.extent_buffer* %2, %struct.extent_buffer** %8, align 8
  store %struct.extent_buffer* %3, %struct.extent_buffer** %9, align 8
  store i32 0, i32* %14, align 4
  %16 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %17 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @BTRFS_TREE_RELOC_OBJECTID, align 8
  %21 = icmp ne i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %24, %struct.btrfs_path** %10, align 8
  %25 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %26 = icmp ne %struct.btrfs_path* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %149

30:                                               ; preds = %4
  %31 = load i32, i32* @GFP_NOFS, align 4
  %32 = call %struct.walk_control* @kzalloc(i32 56, i32 %31)
  store %struct.walk_control* %32, %struct.walk_control** %11, align 8
  %33 = load %struct.walk_control*, %struct.walk_control** %11, align 8
  %34 = icmp ne %struct.walk_control* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %37 = call i32 @btrfs_free_path(%struct.btrfs_path* %36)
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %149

40:                                               ; preds = %30
  %41 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %42 = call i32 @btrfs_assert_tree_locked(%struct.extent_buffer* %41)
  %43 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %44 = call i32 @btrfs_header_level(%struct.extent_buffer* %43)
  store i32 %44, i32* %13, align 4
  %45 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %46 = call i32 @extent_buffer_get(%struct.extent_buffer* %45)
  %47 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %48 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %49 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %48, i32 0, i32 2
  %50 = load %struct.extent_buffer**, %struct.extent_buffer*** %49, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %50, i64 %52
  store %struct.extent_buffer* %47, %struct.extent_buffer** %53, align 8
  %54 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %55 = call i64 @btrfs_header_nritems(%struct.extent_buffer* %54)
  %56 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %57 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  store i64 %55, i64* %61, align 8
  %62 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %63 = call i32 @btrfs_assert_tree_locked(%struct.extent_buffer* %62)
  %64 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %65 = call i32 @btrfs_header_level(%struct.extent_buffer* %64)
  store i32 %65, i32* %12, align 4
  %66 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %67 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %68 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %67, i32 0, i32 2
  %69 = load %struct.extent_buffer**, %struct.extent_buffer*** %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %69, i64 %71
  store %struct.extent_buffer* %66, %struct.extent_buffer** %72, align 8
  %73 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %74 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  store i64 0, i64* %78, align 8
  %79 = load i32, i32* @BTRFS_WRITE_LOCK_BLOCKING, align 4
  %80 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %81 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %79, i32* %85, align 4
  %86 = load %struct.walk_control*, %struct.walk_control** %11, align 8
  %87 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 1, i32* %91, align 4
  %92 = load i32, i32* @BTRFS_BLOCK_FLAG_FULL_BACKREF, align 4
  %93 = load %struct.walk_control*, %struct.walk_control** %11, align 8
  %94 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %93, i32 0, i32 8
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %92, i32* %98, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load %struct.walk_control*, %struct.walk_control** %11, align 8
  %101 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 8
  %102 = load %struct.walk_control*, %struct.walk_control** %11, align 8
  %103 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %102, i32 0, i32 2
  store i32 -1, i32* %103, align 4
  %104 = load i32, i32* @DROP_REFERENCE, align 4
  %105 = load %struct.walk_control*, %struct.walk_control** %11, align 8
  %106 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %105, i32 0, i32 7
  store i32 %104, i32* %106, align 8
  %107 = load %struct.walk_control*, %struct.walk_control** %11, align 8
  %108 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %107, i32 0, i32 6
  store i64 0, i64* %108, align 8
  %109 = load %struct.walk_control*, %struct.walk_control** %11, align 8
  %110 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %109, i32 0, i32 3
  store i32 1, i32* %110, align 8
  %111 = load %struct.walk_control*, %struct.walk_control** %11, align 8
  %112 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %111, i32 0, i32 4
  store i32 1, i32* %112, align 4
  %113 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %114 = call i32 @BTRFS_NODEPTRS_PER_BLOCK(%struct.btrfs_root* %113)
  %115 = load %struct.walk_control*, %struct.walk_control** %11, align 8
  %116 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 8
  br label %117

117:                                              ; preds = %40, %142
  %118 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %119 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %120 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %121 = load %struct.walk_control*, %struct.walk_control** %11, align 8
  %122 = call i32 @walk_down_tree(%struct.btrfs_trans_handle* %118, %struct.btrfs_root* %119, %struct.btrfs_path* %120, %struct.walk_control* %121)
  store i32 %122, i32* %15, align 4
  %123 = load i32, i32* %15, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %117
  %126 = load i32, i32* %15, align 4
  store i32 %126, i32* %14, align 4
  br label %143

127:                                              ; preds = %117
  %128 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %129 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %130 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %131 = load %struct.walk_control*, %struct.walk_control** %11, align 8
  %132 = load i32, i32* %13, align 4
  %133 = call i32 @walk_up_tree(%struct.btrfs_trans_handle* %128, %struct.btrfs_root* %129, %struct.btrfs_path* %130, %struct.walk_control* %131, i32 %132)
  store i32 %133, i32* %15, align 4
  %134 = load i32, i32* %15, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %127
  %137 = load i32, i32* %15, align 4
  store i32 %137, i32* %14, align 4
  br label %138

138:                                              ; preds = %136, %127
  %139 = load i32, i32* %15, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  br label %143

142:                                              ; preds = %138
  br label %117

143:                                              ; preds = %141, %125
  %144 = load %struct.walk_control*, %struct.walk_control** %11, align 8
  %145 = call i32 @kfree(%struct.walk_control* %144)
  %146 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %147 = call i32 @btrfs_free_path(%struct.btrfs_path* %146)
  %148 = load i32, i32* %14, align 4
  store i32 %148, i32* %5, align 4
  br label %149

149:                                              ; preds = %143, %35, %27
  %150 = load i32, i32* %5, align 4
  ret i32 %150
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local %struct.walk_control* @kzalloc(i32, i32) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_assert_tree_locked(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_header_level(%struct.extent_buffer*) #1

declare dso_local i32 @extent_buffer_get(%struct.extent_buffer*) #1

declare dso_local i64 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @BTRFS_NODEPTRS_PER_BLOCK(%struct.btrfs_root*) #1

declare dso_local i32 @walk_down_tree(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.walk_control*) #1

declare dso_local i32 @walk_up_tree(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.walk_control*, i32) #1

declare dso_local i32 @kfree(%struct.walk_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
