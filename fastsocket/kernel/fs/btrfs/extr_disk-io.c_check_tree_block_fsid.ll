; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_disk-io.c_check_tree_block_fsid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_disk-io.c_check_tree_block_fsid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.btrfs_fs_devices* }
%struct.btrfs_fs_devices = type { %struct.btrfs_fs_devices*, i32 }
%struct.extent_buffer = type { i32 }

@BTRFS_UUID_SIZE = common dso_local global i32 0, align 4
@BTRFS_FSID_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_root*, %struct.extent_buffer*)* @check_tree_block_fsid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_tree_block_fsid(%struct.btrfs_root* %0, %struct.extent_buffer* %1) #0 {
  %3 = alloca %struct.btrfs_root*, align 8
  %4 = alloca %struct.extent_buffer*, align 8
  %5 = alloca %struct.btrfs_fs_devices*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %3, align 8
  store %struct.extent_buffer* %1, %struct.extent_buffer** %4, align 8
  %9 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %10 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %12, align 8
  store %struct.btrfs_fs_devices* %13, %struct.btrfs_fs_devices** %5, align 8
  %14 = load i32, i32* @BTRFS_UUID_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  store i32 1, i32* %8, align 4
  %18 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  %19 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  %20 = call i64 @btrfs_header_fsid(%struct.extent_buffer* %19)
  %21 = load i32, i32* @BTRFS_FSID_SIZE, align 4
  %22 = call i32 @read_extent_buffer(%struct.extent_buffer* %18, i32* %17, i64 %20, i32 %21)
  br label %23

23:                                               ; preds = %34, %2
  %24 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %5, align 8
  %25 = icmp ne %struct.btrfs_fs_devices* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %5, align 8
  %28 = getelementptr inbounds %struct.btrfs_fs_devices, %struct.btrfs_fs_devices* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @BTRFS_FSID_SIZE, align 4
  %31 = call i32 @memcmp(i32* %17, i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  br label %38

34:                                               ; preds = %26
  %35 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %5, align 8
  %36 = getelementptr inbounds %struct.btrfs_fs_devices, %struct.btrfs_fs_devices* %35, i32 0, i32 0
  %37 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %36, align 8
  store %struct.btrfs_fs_devices* %37, %struct.btrfs_fs_devices** %5, align 8
  br label %23

38:                                               ; preds = %33, %23
  %39 = load i32, i32* %8, align 4
  %40 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %40)
  ret i32 %39
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @read_extent_buffer(%struct.extent_buffer*, i32*, i64, i32) #2

declare dso_local i64 @btrfs_header_fsid(%struct.extent_buffer*) #2

declare dso_local i32 @memcmp(i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
