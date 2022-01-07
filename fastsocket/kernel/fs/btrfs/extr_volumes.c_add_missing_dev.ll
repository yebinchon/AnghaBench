; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_add_missing_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_add_missing_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_device = type { i32, i32, i32, i32, %struct.btrfs_fs_devices*, %struct.TYPE_4__, i32, i32, i32 }
%struct.btrfs_fs_devices = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.btrfs_root = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.btrfs_fs_devices* }

@GFP_NOFS = common dso_local global i32 0, align 4
@pending_bios_fn = common dso_local global i32 0, align 4
@BTRFS_UUID_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.btrfs_device* (%struct.btrfs_root*, i32, i32*)* @add_missing_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.btrfs_device* @add_missing_dev(%struct.btrfs_root* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.btrfs_device*, align 8
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.btrfs_device*, align 8
  %9 = alloca %struct.btrfs_fs_devices*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %11 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %13, align 8
  store %struct.btrfs_fs_devices* %14, %struct.btrfs_fs_devices** %9, align 8
  %15 = load i32, i32* @GFP_NOFS, align 4
  %16 = call %struct.btrfs_device* @kzalloc(i32 40, i32 %15)
  store %struct.btrfs_device* %16, %struct.btrfs_device** %8, align 8
  %17 = load %struct.btrfs_device*, %struct.btrfs_device** %8, align 8
  %18 = icmp ne %struct.btrfs_device* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store %struct.btrfs_device* null, %struct.btrfs_device** %4, align 8
  br label %66

20:                                               ; preds = %3
  %21 = load %struct.btrfs_device*, %struct.btrfs_device** %8, align 8
  %22 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %21, i32 0, i32 8
  %23 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %9, align 8
  %24 = getelementptr inbounds %struct.btrfs_fs_devices, %struct.btrfs_fs_devices* %23, i32 0, i32 2
  %25 = call i32 @list_add(i32* %22, i32* %24)
  %26 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %27 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.btrfs_device*, %struct.btrfs_device** %8, align 8
  %32 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %31, i32 0, i32 7
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.btrfs_device*, %struct.btrfs_device** %8, align 8
  %35 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @pending_bios_fn, align 4
  %37 = load %struct.btrfs_device*, %struct.btrfs_device** %8, align 8
  %38 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %9, align 8
  %41 = load %struct.btrfs_device*, %struct.btrfs_device** %8, align 8
  %42 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %41, i32 0, i32 4
  store %struct.btrfs_fs_devices* %40, %struct.btrfs_fs_devices** %42, align 8
  %43 = load %struct.btrfs_device*, %struct.btrfs_device** %8, align 8
  %44 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %9, align 8
  %46 = getelementptr inbounds %struct.btrfs_fs_devices, %struct.btrfs_fs_devices* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %9, align 8
  %50 = getelementptr inbounds %struct.btrfs_fs_devices, %struct.btrfs_fs_devices* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = load %struct.btrfs_device*, %struct.btrfs_device** %8, align 8
  %54 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %53, i32 0, i32 3
  %55 = call i32 @spin_lock_init(i32* %54)
  %56 = load %struct.btrfs_device*, %struct.btrfs_device** %8, align 8
  %57 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %56, i32 0, i32 2
  %58 = call i32 @INIT_LIST_HEAD(i32* %57)
  %59 = load %struct.btrfs_device*, %struct.btrfs_device** %8, align 8
  %60 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* @BTRFS_UUID_SIZE, align 4
  %64 = call i32 @memcpy(i32 %61, i32* %62, i32 %63)
  %65 = load %struct.btrfs_device*, %struct.btrfs_device** %8, align 8
  store %struct.btrfs_device* %65, %struct.btrfs_device** %4, align 8
  br label %66

66:                                               ; preds = %20, %19
  %67 = load %struct.btrfs_device*, %struct.btrfs_device** %4, align 8
  ret %struct.btrfs_device* %67
}

declare dso_local %struct.btrfs_device* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
