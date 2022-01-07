; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_chunk_usage_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_chunk_usage_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_balance_args = type { i32 }
%struct.btrfs_block_group_cache = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, i64, %struct.btrfs_balance_args*)* @chunk_usage_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chunk_usage_filter(%struct.btrfs_fs_info* %0, i64 %1, %struct.btrfs_balance_args* %2) #0 {
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.btrfs_balance_args*, align 8
  %7 = alloca %struct.btrfs_block_group_cache*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.btrfs_balance_args* %2, %struct.btrfs_balance_args** %6, align 8
  store i32 1, i32* %10, align 4
  %11 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call %struct.btrfs_block_group_cache* @btrfs_lookup_block_group(%struct.btrfs_fs_info* %11, i64 %12)
  store %struct.btrfs_block_group_cache* %13, %struct.btrfs_block_group_cache** %7, align 8
  %14 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %15 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %14, i32 0, i32 1
  %16 = call i64 @btrfs_block_group_used(i32* %15)
  store i64 %16, i64* %8, align 8
  %17 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %18 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.btrfs_balance_args*, %struct.btrfs_balance_args** %6, align 8
  %22 = getelementptr inbounds %struct.btrfs_balance_args, %struct.btrfs_balance_args* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @div_factor_fine(i32 %20, i32 %23)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %28, %3
  %30 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %31 = call i32 @btrfs_put_block_group(%struct.btrfs_block_group_cache* %30)
  %32 = load i32, i32* %10, align 4
  ret i32 %32
}

declare dso_local %struct.btrfs_block_group_cache* @btrfs_lookup_block_group(%struct.btrfs_fs_info*, i64) #1

declare dso_local i64 @btrfs_block_group_used(i32*) #1

declare dso_local i64 @div_factor_fine(i32, i32) #1

declare dso_local i32 @btrfs_put_block_group(%struct.btrfs_block_group_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
