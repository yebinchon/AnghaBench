; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_scrub.c_btrfs_scrub_cancel_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_scrub.c_btrfs_scrub_cancel_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32, i32 }
%struct.btrfs_device = type { %struct.scrub_dev* }
%struct.scrub_dev = type { i32 }

@ENOTCONN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_scrub_cancel_dev(%struct.btrfs_root* %0, %struct.btrfs_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca %struct.btrfs_device*, align 8
  %6 = alloca %struct.btrfs_fs_info*, align 8
  %7 = alloca %struct.scrub_dev*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %4, align 8
  store %struct.btrfs_device* %1, %struct.btrfs_device** %5, align 8
  %8 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %9 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %8, i32 0, i32 0
  %10 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  store %struct.btrfs_fs_info* %10, %struct.btrfs_fs_info** %6, align 8
  %11 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %12 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.btrfs_device*, %struct.btrfs_device** %5, align 8
  %15 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %14, i32 0, i32 0
  %16 = load %struct.scrub_dev*, %struct.scrub_dev** %15, align 8
  store %struct.scrub_dev* %16, %struct.scrub_dev** %7, align 8
  %17 = load %struct.scrub_dev*, %struct.scrub_dev** %7, align 8
  %18 = icmp ne %struct.scrub_dev* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %21 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %20, i32 0, i32 0
  %22 = call i32 @mutex_unlock(i32* %21)
  %23 = load i32, i32* @ENOTCONN, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %54

25:                                               ; preds = %2
  %26 = load %struct.scrub_dev*, %struct.scrub_dev** %7, align 8
  %27 = getelementptr inbounds %struct.scrub_dev, %struct.scrub_dev* %26, i32 0, i32 0
  %28 = call i32 @atomic_inc(i32* %27)
  br label %29

29:                                               ; preds = %34, %25
  %30 = load %struct.btrfs_device*, %struct.btrfs_device** %5, align 8
  %31 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %30, i32 0, i32 0
  %32 = load %struct.scrub_dev*, %struct.scrub_dev** %31, align 8
  %33 = icmp ne %struct.scrub_dev* %32, null
  br i1 %33, label %34, label %50

34:                                               ; preds = %29
  %35 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %36 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %39 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.btrfs_device*, %struct.btrfs_device** %5, align 8
  %42 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %41, i32 0, i32 0
  %43 = load %struct.scrub_dev*, %struct.scrub_dev** %42, align 8
  %44 = icmp eq %struct.scrub_dev* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 @wait_event(i32 %40, i32 %45)
  %47 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %48 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %47, i32 0, i32 0
  %49 = call i32 @mutex_lock(i32* %48)
  br label %29

50:                                               ; preds = %29
  %51 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %52 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %50, %19
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
