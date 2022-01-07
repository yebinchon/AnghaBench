; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_btrfs_close_devices.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_btrfs_close_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_devices = type { %struct.btrfs_fs_devices*, i32 }

@uuid_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_close_devices(%struct.btrfs_fs_devices* %0) #0 {
  %2 = alloca %struct.btrfs_fs_devices*, align 8
  %3 = alloca %struct.btrfs_fs_devices*, align 8
  %4 = alloca i32, align 4
  store %struct.btrfs_fs_devices* %0, %struct.btrfs_fs_devices** %2, align 8
  store %struct.btrfs_fs_devices* null, %struct.btrfs_fs_devices** %3, align 8
  %5 = call i32 @mutex_lock(i32* @uuid_mutex)
  %6 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %2, align 8
  %7 = call i32 @__btrfs_close_devices(%struct.btrfs_fs_devices* %6)
  store i32 %7, i32* %4, align 4
  %8 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %2, align 8
  %9 = getelementptr inbounds %struct.btrfs_fs_devices, %struct.btrfs_fs_devices* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %2, align 8
  %14 = getelementptr inbounds %struct.btrfs_fs_devices, %struct.btrfs_fs_devices* %13, i32 0, i32 0
  %15 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %14, align 8
  store %struct.btrfs_fs_devices* %15, %struct.btrfs_fs_devices** %3, align 8
  %16 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %2, align 8
  %17 = getelementptr inbounds %struct.btrfs_fs_devices, %struct.btrfs_fs_devices* %16, i32 0, i32 0
  store %struct.btrfs_fs_devices* null, %struct.btrfs_fs_devices** %17, align 8
  br label %18

18:                                               ; preds = %12, %1
  %19 = call i32 @mutex_unlock(i32* @uuid_mutex)
  br label %20

20:                                               ; preds = %23, %18
  %21 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %3, align 8
  %22 = icmp ne %struct.btrfs_fs_devices* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %3, align 8
  store %struct.btrfs_fs_devices* %24, %struct.btrfs_fs_devices** %2, align 8
  %25 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %2, align 8
  %26 = getelementptr inbounds %struct.btrfs_fs_devices, %struct.btrfs_fs_devices* %25, i32 0, i32 0
  %27 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %26, align 8
  store %struct.btrfs_fs_devices* %27, %struct.btrfs_fs_devices** %3, align 8
  %28 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %2, align 8
  %29 = call i32 @__btrfs_close_devices(%struct.btrfs_fs_devices* %28)
  %30 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %2, align 8
  %31 = call i32 @free_fs_devices(%struct.btrfs_fs_devices* %30)
  br label %20

32:                                               ; preds = %20
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__btrfs_close_devices(%struct.btrfs_fs_devices*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @free_fs_devices(%struct.btrfs_fs_devices*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
