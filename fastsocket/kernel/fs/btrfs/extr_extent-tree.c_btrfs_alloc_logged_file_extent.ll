; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c_btrfs_alloc_logged_file_extent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c_btrfs_alloc_logged_file_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_key = type { i64, i64 }
%struct.btrfs_block_group_cache = type { i32 }
%struct.btrfs_caching_control = type { i64, i32 }

@RESERVE_ALLOC_NO_ACCOUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_alloc_logged_file_extent(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, i64 %2, i64 %3, i64 %4, %struct.btrfs_key* %5) #0 {
  %7 = alloca %struct.btrfs_trans_handle*, align 8
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.btrfs_key*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.btrfs_block_group_cache*, align 8
  %15 = alloca %struct.btrfs_caching_control*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %7, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.btrfs_key* %5, %struct.btrfs_key** %12, align 8
  %18 = load %struct.btrfs_key*, %struct.btrfs_key** %12, align 8
  %19 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %16, align 8
  %21 = load %struct.btrfs_key*, %struct.btrfs_key** %12, align 8
  %22 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %17, align 8
  %24 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %25 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.btrfs_key*, %struct.btrfs_key** %12, align 8
  %28 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call %struct.btrfs_block_group_cache* @btrfs_lookup_block_group(i32 %26, i64 %29)
  store %struct.btrfs_block_group_cache* %30, %struct.btrfs_block_group_cache** %14, align 8
  %31 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %14, align 8
  %32 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %33 = call i32 @cache_block_group(%struct.btrfs_block_group_cache* %31, %struct.btrfs_trans_handle* %32, i32* null, i32 0)
  %34 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %14, align 8
  %35 = call %struct.btrfs_caching_control* @get_caching_control(%struct.btrfs_block_group_cache* %34)
  store %struct.btrfs_caching_control* %35, %struct.btrfs_caching_control** %15, align 8
  %36 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %15, align 8
  %37 = icmp ne %struct.btrfs_caching_control* %36, null
  br i1 %37, label %51, label %38

38:                                               ; preds = %6
  %39 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %14, align 8
  %40 = call i32 @block_group_cache_done(%struct.btrfs_block_group_cache* %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUG_ON(i32 %43)
  %45 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %14, align 8
  %46 = load i64, i64* %16, align 8
  %47 = load i64, i64* %17, align 8
  %48 = call i32 @btrfs_remove_free_space(%struct.btrfs_block_group_cache* %45, i64 %46, i64 %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @BUG_ON(i32 %49)
  br label %121

51:                                               ; preds = %6
  %52 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %15, align 8
  %53 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %52, i32 0, i32 1
  %54 = call i32 @mutex_lock(i32* %53)
  %55 = load i64, i64* %16, align 8
  %56 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %15, align 8
  %57 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sge i64 %55, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %51
  %61 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %62 = load i64, i64* %16, align 8
  %63 = load i64, i64* %17, align 8
  %64 = call i32 @add_excluded_extent(%struct.btrfs_root* %61, i64 %62, i64 %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @BUG_ON(i32 %65)
  br label %115

67:                                               ; preds = %51
  %68 = load i64, i64* %16, align 8
  %69 = load i64, i64* %17, align 8
  %70 = add nsw i64 %68, %69
  %71 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %15, align 8
  %72 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp sle i64 %70, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %67
  %76 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %14, align 8
  %77 = load i64, i64* %16, align 8
  %78 = load i64, i64* %17, align 8
  %79 = call i32 @btrfs_remove_free_space(%struct.btrfs_block_group_cache* %76, i64 %77, i64 %78)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @BUG_ON(i32 %80)
  br label %114

82:                                               ; preds = %67
  %83 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %15, align 8
  %84 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %16, align 8
  %87 = sub nsw i64 %85, %86
  store i64 %87, i64* %17, align 8
  %88 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %14, align 8
  %89 = load i64, i64* %16, align 8
  %90 = load i64, i64* %17, align 8
  %91 = call i32 @btrfs_remove_free_space(%struct.btrfs_block_group_cache* %88, i64 %89, i64 %90)
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @BUG_ON(i32 %92)
  %94 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %15, align 8
  %95 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %16, align 8
  %97 = load %struct.btrfs_key*, %struct.btrfs_key** %12, align 8
  %98 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.btrfs_key*, %struct.btrfs_key** %12, align 8
  %101 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %99, %102
  %104 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %15, align 8
  %105 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = sub nsw i64 %103, %106
  store i64 %107, i64* %17, align 8
  %108 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %109 = load i64, i64* %16, align 8
  %110 = load i64, i64* %17, align 8
  %111 = call i32 @add_excluded_extent(%struct.btrfs_root* %108, i64 %109, i64 %110)
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @BUG_ON(i32 %112)
  br label %114

114:                                              ; preds = %82, %75
  br label %115

115:                                              ; preds = %114, %60
  %116 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %15, align 8
  %117 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %116, i32 0, i32 1
  %118 = call i32 @mutex_unlock(i32* %117)
  %119 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %15, align 8
  %120 = call i32 @put_caching_control(%struct.btrfs_caching_control* %119)
  br label %121

121:                                              ; preds = %115, %38
  %122 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %14, align 8
  %123 = load %struct.btrfs_key*, %struct.btrfs_key** %12, align 8
  %124 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i32, i32* @RESERVE_ALLOC_NO_ACCOUNT, align 4
  %127 = call i32 @btrfs_update_reserved_bytes(%struct.btrfs_block_group_cache* %122, i64 %125, i32 %126)
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* %13, align 4
  %129 = call i32 @BUG_ON(i32 %128)
  %130 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %14, align 8
  %131 = call i32 @btrfs_put_block_group(%struct.btrfs_block_group_cache* %130)
  %132 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %133 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %134 = load i64, i64* %9, align 8
  %135 = load i64, i64* %10, align 8
  %136 = load i64, i64* %11, align 8
  %137 = load %struct.btrfs_key*, %struct.btrfs_key** %12, align 8
  %138 = call i32 @alloc_reserved_file_extent(%struct.btrfs_trans_handle* %132, %struct.btrfs_root* %133, i32 0, i64 %134, i32 0, i64 %135, i64 %136, %struct.btrfs_key* %137, i32 1)
  store i32 %138, i32* %13, align 4
  %139 = load i32, i32* %13, align 4
  ret i32 %139
}

declare dso_local %struct.btrfs_block_group_cache* @btrfs_lookup_block_group(i32, i64) #1

declare dso_local i32 @cache_block_group(%struct.btrfs_block_group_cache*, %struct.btrfs_trans_handle*, i32*, i32) #1

declare dso_local %struct.btrfs_caching_control* @get_caching_control(%struct.btrfs_block_group_cache*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @block_group_cache_done(%struct.btrfs_block_group_cache*) #1

declare dso_local i32 @btrfs_remove_free_space(%struct.btrfs_block_group_cache*, i64, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @add_excluded_extent(%struct.btrfs_root*, i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @put_caching_control(%struct.btrfs_caching_control*) #1

declare dso_local i32 @btrfs_update_reserved_bytes(%struct.btrfs_block_group_cache*, i64, i32) #1

declare dso_local i32 @btrfs_put_block_group(%struct.btrfs_block_group_cache*) #1

declare dso_local i32 @alloc_reserved_file_extent(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i32, i64, i32, i64, i64, %struct.btrfs_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
