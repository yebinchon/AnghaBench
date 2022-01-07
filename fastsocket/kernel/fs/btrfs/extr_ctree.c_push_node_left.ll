; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_push_node_left.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_push_node_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i64 }
%struct.btrfs_root = type { i32 }
%struct.extent_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.extent_buffer*, %struct.extent_buffer*, i32)* @push_node_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_node_left(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.extent_buffer* %2, %struct.extent_buffer* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_trans_handle*, align 8
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca %struct.extent_buffer*, align 8
  %10 = alloca %struct.extent_buffer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %7, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %8, align 8
  store %struct.extent_buffer* %2, %struct.extent_buffer** %9, align 8
  store %struct.extent_buffer* %3, %struct.extent_buffer** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %15, align 4
  %16 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %17 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %16)
  store i32 %17, i32* %13, align 4
  %18 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %19 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %18)
  store i32 %19, i32* %14, align 4
  %20 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %21 = call i32 @BTRFS_NODEPTRS_PER_BLOCK(%struct.btrfs_root* %20)
  %22 = load i32, i32* %14, align 4
  %23 = sub nsw i32 %21, %22
  store i32 %23, i32* %12, align 4
  %24 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %25 = call i64 @btrfs_header_generation(%struct.extent_buffer* %24)
  %26 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %27 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @WARN_ON(i32 %30)
  %32 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %33 = call i64 @btrfs_header_generation(%struct.extent_buffer* %32)
  %34 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %35 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @WARN_ON(i32 %38)
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %5
  %43 = load i32, i32* %13, align 4
  %44 = icmp sle i32 %43, 8
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 1, i32* %6, align 4
  br label %138

46:                                               ; preds = %42, %5
  %47 = load i32, i32* %12, align 4
  %48 = icmp sle i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 1, i32* %6, align 4
  br label %138

50:                                               ; preds = %46
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %50
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @min(i32 %54, i32 %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %53
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %12, align 4
  %63 = sub nsw i32 %61, %62
  %64 = icmp slt i32 %63, 8
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load i32, i32* %12, align 4
  %67 = icmp sle i32 %66, 8
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 1, i32* %6, align 4
  br label %138

69:                                               ; preds = %65
  %70 = load i32, i32* %12, align 4
  %71 = sub nsw i32 %70, 8
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %69, %60
  br label %73

73:                                               ; preds = %72, %53
  br label %79

74:                                               ; preds = %50
  %75 = load i32, i32* %13, align 4
  %76 = sub nsw i32 %75, 8
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @min(i32 %76, i32 %77)
  store i32 %78, i32* %12, align 4
  br label %79

79:                                               ; preds = %74, %73
  %80 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %81 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %84 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @tree_mod_log_eb_copy(i32 %82, %struct.extent_buffer* %83, %struct.extent_buffer* %84, i32 %85, i32 0, i32 %86)
  %88 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %89 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %90 = load i32, i32* %14, align 4
  %91 = call i32 @btrfs_node_key_ptr_offset(i32 %90)
  %92 = call i32 @btrfs_node_key_ptr_offset(i32 0)
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 %94, 4
  %96 = trunc i64 %95 to i32
  %97 = call i32 @copy_extent_buffer(%struct.extent_buffer* %88, %struct.extent_buffer* %89, i32 %91, i32 %92, i32 %96)
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %122

101:                                              ; preds = %79
  %102 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %103 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %12, align 4
  %109 = sub nsw i32 %107, %108
  %110 = call i32 @tree_mod_log_eb_move(i32 %104, %struct.extent_buffer* %105, i32 0, i32 %106, i32 %109)
  %111 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %112 = call i32 @btrfs_node_key_ptr_offset(i32 0)
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @btrfs_node_key_ptr_offset(i32 %113)
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %12, align 4
  %117 = sub nsw i32 %115, %116
  %118 = sext i32 %117 to i64
  %119 = mul i64 %118, 4
  %120 = trunc i64 %119 to i32
  %121 = call i32 @memmove_extent_buffer(%struct.extent_buffer* %111, i32 %112, i32 %114, i32 %120)
  br label %122

122:                                              ; preds = %101, %79
  %123 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %12, align 4
  %126 = sub nsw i32 %124, %125
  %127 = call i32 @btrfs_set_header_nritems(%struct.extent_buffer* %123, i32 %126)
  %128 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 %129, %130
  %132 = call i32 @btrfs_set_header_nritems(%struct.extent_buffer* %128, i32 %131)
  %133 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %134 = call i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer* %133)
  %135 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %136 = call i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer* %135)
  %137 = load i32, i32* %15, align 4
  store i32 %137, i32* %6, align 4
  br label %138

138:                                              ; preds = %122, %68, %49, %45
  %139 = load i32, i32* %6, align 4
  ret i32 %139
}

declare dso_local i32 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @BTRFS_NODEPTRS_PER_BLOCK(%struct.btrfs_root*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @btrfs_header_generation(%struct.extent_buffer*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @tree_mod_log_eb_copy(i32, %struct.extent_buffer*, %struct.extent_buffer*, i32, i32, i32) #1

declare dso_local i32 @copy_extent_buffer(%struct.extent_buffer*, %struct.extent_buffer*, i32, i32, i32) #1

declare dso_local i32 @btrfs_node_key_ptr_offset(i32) #1

declare dso_local i32 @tree_mod_log_eb_move(i32, %struct.extent_buffer*, i32, i32, i32) #1

declare dso_local i32 @memmove_extent_buffer(%struct.extent_buffer*, i32, i32, i32) #1

declare dso_local i32 @btrfs_set_header_nritems(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
