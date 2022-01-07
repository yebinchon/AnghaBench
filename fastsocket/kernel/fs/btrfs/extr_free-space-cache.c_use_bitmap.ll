; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_free-space-cache.c_use_bitmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_free-space-cache.c_use_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_free_space_ctl = type { i32, i32, %struct.btrfs_block_group_cache* }
%struct.btrfs_block_group_cache = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.btrfs_free_space = type { i32 }

@BITS_PER_BITMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_free_space_ctl*, %struct.btrfs_free_space*)* @use_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @use_bitmap(%struct.btrfs_free_space_ctl* %0, %struct.btrfs_free_space* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_free_space_ctl*, align 8
  %5 = alloca %struct.btrfs_free_space*, align 8
  %6 = alloca %struct.btrfs_block_group_cache*, align 8
  store %struct.btrfs_free_space_ctl* %0, %struct.btrfs_free_space_ctl** %4, align 8
  store %struct.btrfs_free_space* %1, %struct.btrfs_free_space** %5, align 8
  %7 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %4, align 8
  %8 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %7, i32 0, i32 2
  %9 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  store %struct.btrfs_block_group_cache* %9, %struct.btrfs_block_group_cache** %6, align 8
  %10 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %4, align 8
  %11 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %4, align 8
  %14 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %2
  %18 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %5, align 8
  %19 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %22 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %23, 4
  %25 = icmp sle i32 %20, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %17
  %27 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %4, align 8
  %28 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = mul nsw i32 %29, 2
  %31 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %4, align 8
  %32 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp sle i32 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %52

36:                                               ; preds = %26
  br label %38

37:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %52

38:                                               ; preds = %36
  br label %39

39:                                               ; preds = %38, %2
  %40 = load i32, i32* @BITS_PER_BITMAP, align 4
  %41 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %42 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %40, %43
  %45 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %46 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %44, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %52

51:                                               ; preds = %39
  store i32 1, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %50, %37, %35
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
