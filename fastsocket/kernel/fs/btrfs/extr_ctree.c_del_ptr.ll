; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_del_ptr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_del_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { %struct.extent_buffer*, i32 }
%struct.extent_buffer = type { i32 }
%struct.btrfs_path = type { %struct.extent_buffer** }
%struct.btrfs_disk_key = type { i32 }

@MOD_LOG_KEY_REMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, i32, i32, i32)* @del_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @del_ptr(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.btrfs_path* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.btrfs_trans_handle*, align 8
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca %struct.btrfs_path*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.extent_buffer*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.btrfs_disk_key, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %7, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %8, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %18 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %17, i32 0, i32 0
  %19 = load %struct.extent_buffer**, %struct.extent_buffer*** %18, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %19, i64 %21
  %23 = load %struct.extent_buffer*, %struct.extent_buffer** %22, align 8
  store %struct.extent_buffer* %23, %struct.extent_buffer** %13, align 8
  %24 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %25 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %24)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %14, align 4
  %28 = sub nsw i32 %27, 1
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %64

30:                                               ; preds = %6
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %30
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %38 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 1
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %11, align 4
  %46 = sub nsw i32 %44, %45
  %47 = sub nsw i32 %46, 1
  %48 = call i32 @tree_mod_log_eb_move(i32 %39, %struct.extent_buffer* %40, i32 %41, i32 %43, i32 %47)
  br label %49

49:                                               ; preds = %36, %33, %30
  %50 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @btrfs_node_key_ptr_offset(i32 %51)
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 1
  %55 = call i32 @btrfs_node_key_ptr_offset(i32 %54)
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %11, align 4
  %58 = sub nsw i32 %56, %57
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = mul i64 4, %60
  %62 = trunc i64 %61 to i32
  %63 = call i32 @memmove_extent_buffer(%struct.extent_buffer* %50, i32 %52, i32 %55, i32 %62)
  br label %83

64:                                               ; preds = %6
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %64
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %67
  %71 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %72 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @MOD_LOG_KEY_REMOVE, align 4
  %77 = call i32 @tree_mod_log_insert_key(i32 %73, %struct.extent_buffer* %74, i32 %75, i32 %76)
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %15, align 4
  %79 = icmp slt i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @BUG_ON(i32 %80)
  br label %82

82:                                               ; preds = %70, %67, %64
  br label %83

83:                                               ; preds = %82, %49
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %14, align 4
  %86 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @btrfs_set_header_nritems(%struct.extent_buffer* %86, i32 %87)
  %89 = load i32, i32* %14, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %109

91:                                               ; preds = %83
  %92 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %93 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %94 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %93, i32 0, i32 0
  %95 = load %struct.extent_buffer*, %struct.extent_buffer** %94, align 8
  %96 = icmp eq %struct.extent_buffer* %92, %95
  br i1 %96, label %97, label %109

97:                                               ; preds = %91
  %98 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %99 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %98, i32 0, i32 0
  %100 = load %struct.extent_buffer*, %struct.extent_buffer** %99, align 8
  %101 = call i32 @btrfs_header_level(%struct.extent_buffer* %100)
  %102 = icmp ne i32 %101, 1
  %103 = zext i1 %102 to i32
  %104 = call i32 @BUG_ON(i32 %103)
  %105 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %106 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %105, i32 0, i32 0
  %107 = load %struct.extent_buffer*, %struct.extent_buffer** %106, align 8
  %108 = call i32 @btrfs_set_header_level(%struct.extent_buffer* %107, i32 0)
  br label %122

109:                                              ; preds = %91, %83
  %110 = load i32, i32* %11, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %109
  %113 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %114 = call i32 @btrfs_node_key(%struct.extent_buffer* %113, %struct.btrfs_disk_key* %16, i32 0)
  %115 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %116 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %117 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %118 = load i32, i32* %10, align 4
  %119 = add nsw i32 %118, 1
  %120 = call i32 @fixup_low_keys(%struct.btrfs_trans_handle* %115, %struct.btrfs_root* %116, %struct.btrfs_path* %117, %struct.btrfs_disk_key* %16, i32 %119)
  br label %121

121:                                              ; preds = %112, %109
  br label %122

122:                                              ; preds = %121, %97
  %123 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %124 = call i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer* %123)
  ret void
}

declare dso_local i32 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @tree_mod_log_eb_move(i32, %struct.extent_buffer*, i32, i32, i32) #1

declare dso_local i32 @memmove_extent_buffer(%struct.extent_buffer*, i32, i32, i32) #1

declare dso_local i32 @btrfs_node_key_ptr_offset(i32) #1

declare dso_local i32 @tree_mod_log_insert_key(i32, %struct.extent_buffer*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @btrfs_set_header_nritems(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_header_level(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_set_header_level(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_node_key(%struct.extent_buffer*, %struct.btrfs_disk_key*, i32) #1

declare dso_local i32 @fixup_low_keys(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.btrfs_disk_key*, i32) #1

declare dso_local i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
