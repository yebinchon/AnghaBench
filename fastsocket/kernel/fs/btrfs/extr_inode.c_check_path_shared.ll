; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_check_path_shared.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_check_path_shared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { %struct.extent_buffer** }
%struct.extent_buffer = type { i32, i32 }

@BTRFS_MAX_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_root*, %struct.btrfs_path*)* @check_path_shared to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_path_shared(%struct.btrfs_root* %0, %struct.btrfs_path* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca %struct.btrfs_path*, align 8
  %6 = alloca %struct.extent_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %4, align 8
  store %struct.btrfs_path* %1, %struct.btrfs_path** %5, align 8
  store i32 1, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %50, %2
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @BTRFS_MAX_LEVEL, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %53

14:                                               ; preds = %10
  %15 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %16 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %15, i32 0, i32 0
  %17 = load %struct.extent_buffer**, %struct.extent_buffer*** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %17, i64 %19
  %21 = load %struct.extent_buffer*, %struct.extent_buffer** %20, align 8
  %22 = icmp ne %struct.extent_buffer* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  br label %53

24:                                               ; preds = %14
  %25 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %26 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %25, i32 0, i32 0
  %27 = load %struct.extent_buffer**, %struct.extent_buffer*** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %27, i64 %29
  %31 = load %struct.extent_buffer*, %struct.extent_buffer** %30, align 8
  store %struct.extent_buffer* %31, %struct.extent_buffer** %6, align 8
  %32 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %33 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %34 = call i32 @btrfs_block_can_be_shared(%struct.btrfs_root* %32, %struct.extent_buffer* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %24
  br label %50

37:                                               ; preds = %24
  %38 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %39 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %40 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %43 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @btrfs_lookup_extent_info(i32* null, %struct.btrfs_root* %38, i32 %41, i32 %44, i32* %8, i32* null)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %54

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49, %36
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %10

53:                                               ; preds = %23, %10
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %48
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @btrfs_block_can_be_shared(%struct.btrfs_root*, %struct.extent_buffer*) #1

declare dso_local i32 @btrfs_lookup_extent_info(i32*, %struct.btrfs_root*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
