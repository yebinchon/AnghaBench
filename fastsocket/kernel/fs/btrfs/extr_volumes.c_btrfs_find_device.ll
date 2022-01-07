; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_btrfs_find_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_btrfs_find_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_device = type { i32 }
%struct.btrfs_root = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.btrfs_fs_devices* }
%struct.btrfs_fs_devices = type { %struct.btrfs_fs_devices*, i32, i32 }

@BTRFS_UUID_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.btrfs_device* @btrfs_find_device(%struct.btrfs_root* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.btrfs_device*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.btrfs_device*, align 8
  %11 = alloca %struct.btrfs_fs_devices*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %13 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %15, align 8
  store %struct.btrfs_fs_devices* %16, %struct.btrfs_fs_devices** %11, align 8
  br label %17

17:                                               ; preds = %42, %4
  %18 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %11, align 8
  %19 = icmp ne %struct.btrfs_fs_devices* %18, null
  br i1 %19, label %20, label %46

20:                                               ; preds = %17
  %21 = load i32*, i32** %9, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %11, align 8
  %25 = getelementptr inbounds %struct.btrfs_fs_devices, %struct.btrfs_fs_devices* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* @BTRFS_UUID_SIZE, align 4
  %29 = call i32 @memcmp(i32 %26, i32* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %23, %20
  %32 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %11, align 8
  %33 = getelementptr inbounds %struct.btrfs_fs_devices, %struct.btrfs_fs_devices* %32, i32 0, i32 1
  %34 = load i32, i32* %7, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = call %struct.btrfs_device* @__find_device(i32* %33, i32 %34, i32* %35)
  store %struct.btrfs_device* %36, %struct.btrfs_device** %10, align 8
  %37 = load %struct.btrfs_device*, %struct.btrfs_device** %10, align 8
  %38 = icmp ne %struct.btrfs_device* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load %struct.btrfs_device*, %struct.btrfs_device** %10, align 8
  store %struct.btrfs_device* %40, %struct.btrfs_device** %5, align 8
  br label %47

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %23
  %43 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %11, align 8
  %44 = getelementptr inbounds %struct.btrfs_fs_devices, %struct.btrfs_fs_devices* %43, i32 0, i32 0
  %45 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %44, align 8
  store %struct.btrfs_fs_devices* %45, %struct.btrfs_fs_devices** %11, align 8
  br label %17

46:                                               ; preds = %17
  store %struct.btrfs_device* null, %struct.btrfs_device** %5, align 8
  br label %47

47:                                               ; preds = %46, %39
  %48 = load %struct.btrfs_device*, %struct.btrfs_device** %5, align 8
  ret %struct.btrfs_device* %48
}

declare dso_local i32 @memcmp(i32, i32*, i32) #1

declare dso_local %struct.btrfs_device* @__find_device(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
