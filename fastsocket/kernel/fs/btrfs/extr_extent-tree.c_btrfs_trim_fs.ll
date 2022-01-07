; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c_btrfs_trim_fs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c_btrfs_trim_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32, i32 }
%struct.fstrim_range = type { i64, i64, i64 }
%struct.btrfs_block_group_cache = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_trim_fs(%struct.btrfs_root* %0, %struct.fstrim_range* %1) #0 {
  %3 = alloca %struct.btrfs_root*, align 8
  %4 = alloca %struct.fstrim_range*, align 8
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca %struct.btrfs_block_group_cache*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %3, align 8
  store %struct.fstrim_range* %1, %struct.fstrim_range** %4, align 8
  %13 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %14 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %13, i32 0, i32 0
  %15 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  store %struct.btrfs_fs_info* %15, %struct.btrfs_fs_info** %5, align 8
  store %struct.btrfs_block_group_cache* null, %struct.btrfs_block_group_cache** %6, align 8
  store i64 0, i64* %10, align 8
  %16 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %17 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @btrfs_super_total_bytes(i32 %18)
  store i64 %19, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %20 = load %struct.fstrim_range*, %struct.fstrim_range** %4, align 8
  %21 = getelementptr inbounds %struct.fstrim_range, %struct.fstrim_range* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %11, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %27 = load %struct.fstrim_range*, %struct.fstrim_range** %4, align 8
  %28 = getelementptr inbounds %struct.fstrim_range, %struct.fstrim_range* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call %struct.btrfs_block_group_cache* @btrfs_lookup_first_block_group(%struct.btrfs_fs_info* %26, i64 %29)
  store %struct.btrfs_block_group_cache* %30, %struct.btrfs_block_group_cache** %6, align 8
  br label %37

31:                                               ; preds = %2
  %32 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %33 = load %struct.fstrim_range*, %struct.fstrim_range** %4, align 8
  %34 = getelementptr inbounds %struct.fstrim_range, %struct.fstrim_range* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call %struct.btrfs_block_group_cache* @btrfs_lookup_block_group(%struct.btrfs_fs_info* %32, i64 %35)
  store %struct.btrfs_block_group_cache* %36, %struct.btrfs_block_group_cache** %6, align 8
  br label %37

37:                                               ; preds = %31, %25
  br label %38

38:                                               ; preds = %121, %37
  %39 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %40 = icmp ne %struct.btrfs_block_group_cache* %39, null
  br i1 %40, label %41, label %127

41:                                               ; preds = %38
  %42 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %43 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.fstrim_range*, %struct.fstrim_range** %4, align 8
  %47 = getelementptr inbounds %struct.fstrim_range, %struct.fstrim_range* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.fstrim_range*, %struct.fstrim_range** %4, align 8
  %50 = getelementptr inbounds %struct.fstrim_range, %struct.fstrim_range* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %48, %51
  %53 = icmp sge i64 %45, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %41
  %55 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %56 = call i32 @btrfs_put_block_group(%struct.btrfs_block_group_cache* %55)
  br label %127

57:                                               ; preds = %41
  %58 = load %struct.fstrim_range*, %struct.fstrim_range** %4, align 8
  %59 = getelementptr inbounds %struct.fstrim_range, %struct.fstrim_range* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %62 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @max(i64 %60, i64 %64)
  store i64 %65, i64* %8, align 8
  %66 = load %struct.fstrim_range*, %struct.fstrim_range** %4, align 8
  %67 = getelementptr inbounds %struct.fstrim_range, %struct.fstrim_range* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.fstrim_range*, %struct.fstrim_range** %4, align 8
  %70 = getelementptr inbounds %struct.fstrim_range, %struct.fstrim_range* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %68, %71
  %73 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %74 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %78 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %76, %80
  %82 = call i64 @min(i64 %72, i64 %81)
  store i64 %82, i64* %9, align 8
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* %8, align 8
  %85 = sub nsw i64 %83, %84
  %86 = load %struct.fstrim_range*, %struct.fstrim_range** %4, align 8
  %87 = getelementptr inbounds %struct.fstrim_range, %struct.fstrim_range* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp sge i64 %85, %88
  br i1 %89, label %90, label %121

90:                                               ; preds = %57
  %91 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %92 = call i32 @block_group_cache_done(%struct.btrfs_block_group_cache* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %104, label %94

94:                                               ; preds = %90
  %95 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %96 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %97 = call i32 @cache_block_group(%struct.btrfs_block_group_cache* %95, i32* null, %struct.btrfs_root* %96, i32 0)
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %94
  %101 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %102 = call i32 @wait_block_group_cache_done(%struct.btrfs_block_group_cache* %101)
  br label %103

103:                                              ; preds = %100, %94
  br label %104

104:                                              ; preds = %103, %90
  %105 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %106 = load i64, i64* %8, align 8
  %107 = load i64, i64* %9, align 8
  %108 = load %struct.fstrim_range*, %struct.fstrim_range** %4, align 8
  %109 = getelementptr inbounds %struct.fstrim_range, %struct.fstrim_range* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @btrfs_trim_block_group(%struct.btrfs_block_group_cache* %105, i64* %7, i64 %106, i64 %107, i64 %110)
  store i32 %111, i32* %12, align 4
  %112 = load i64, i64* %7, align 8
  %113 = load i64, i64* %10, align 8
  %114 = add nsw i64 %113, %112
  store i64 %114, i64* %10, align 8
  %115 = load i32, i32* %12, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %104
  %118 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %119 = call i32 @btrfs_put_block_group(%struct.btrfs_block_group_cache* %118)
  br label %127

120:                                              ; preds = %104
  br label %121

121:                                              ; preds = %120, %57
  %122 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %123 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %126 = call %struct.btrfs_block_group_cache* @next_block_group(i32 %124, %struct.btrfs_block_group_cache* %125)
  store %struct.btrfs_block_group_cache* %126, %struct.btrfs_block_group_cache** %6, align 8
  br label %38

127:                                              ; preds = %117, %54, %38
  %128 = load i64, i64* %10, align 8
  %129 = load %struct.fstrim_range*, %struct.fstrim_range** %4, align 8
  %130 = getelementptr inbounds %struct.fstrim_range, %struct.fstrim_range* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  %131 = load i32, i32* %12, align 4
  ret i32 %131
}

declare dso_local i64 @btrfs_super_total_bytes(i32) #1

declare dso_local %struct.btrfs_block_group_cache* @btrfs_lookup_first_block_group(%struct.btrfs_fs_info*, i64) #1

declare dso_local %struct.btrfs_block_group_cache* @btrfs_lookup_block_group(%struct.btrfs_fs_info*, i64) #1

declare dso_local i32 @btrfs_put_block_group(%struct.btrfs_block_group_cache*) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @block_group_cache_done(%struct.btrfs_block_group_cache*) #1

declare dso_local i32 @cache_block_group(%struct.btrfs_block_group_cache*, i32*, %struct.btrfs_root*, i32) #1

declare dso_local i32 @wait_block_group_cache_done(%struct.btrfs_block_group_cache*) #1

declare dso_local i32 @btrfs_trim_block_group(%struct.btrfs_block_group_cache*, i64*, i64, i64, i64) #1

declare dso_local %struct.btrfs_block_group_cache* @next_block_group(i32, %struct.btrfs_block_group_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
