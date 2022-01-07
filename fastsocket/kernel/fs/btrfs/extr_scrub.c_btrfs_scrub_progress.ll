; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_scrub.c_btrfs_scrub_progress.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_scrub.c_btrfs_scrub_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.btrfs_scrub_progress = type { i32 }
%struct.btrfs_device = type { %struct.scrub_dev* }
%struct.scrub_dev = type { i32 }

@ENOTCONN = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_scrub_progress(%struct.btrfs_root* %0, i32 %1, %struct.btrfs_scrub_progress* %2) #0 {
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_scrub_progress*, align 8
  %7 = alloca %struct.btrfs_device*, align 8
  %8 = alloca %struct.scrub_dev*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.btrfs_scrub_progress* %2, %struct.btrfs_scrub_progress** %6, align 8
  store %struct.scrub_dev* null, %struct.scrub_dev** %8, align 8
  %9 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %10 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call %struct.btrfs_device* @btrfs_find_device(%struct.btrfs_root* %16, i32 %17, i32* null, i32* null)
  store %struct.btrfs_device* %18, %struct.btrfs_device** %7, align 8
  %19 = load %struct.btrfs_device*, %struct.btrfs_device** %7, align 8
  %20 = icmp ne %struct.btrfs_device* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.btrfs_device*, %struct.btrfs_device** %7, align 8
  %23 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %22, i32 0, i32 0
  %24 = load %struct.scrub_dev*, %struct.scrub_dev** %23, align 8
  store %struct.scrub_dev* %24, %struct.scrub_dev** %8, align 8
  br label %25

25:                                               ; preds = %21, %3
  %26 = load %struct.scrub_dev*, %struct.scrub_dev** %8, align 8
  %27 = icmp ne %struct.scrub_dev* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.btrfs_scrub_progress*, %struct.btrfs_scrub_progress** %6, align 8
  %30 = load %struct.scrub_dev*, %struct.scrub_dev** %8, align 8
  %31 = getelementptr inbounds %struct.scrub_dev, %struct.scrub_dev* %30, i32 0, i32 0
  %32 = call i32 @memcpy(%struct.btrfs_scrub_progress* %29, i32* %31, i32 4)
  br label %33

33:                                               ; preds = %28, %25
  %34 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %35 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load %struct.btrfs_device*, %struct.btrfs_device** %7, align 8
  %42 = icmp ne %struct.btrfs_device* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %33
  %44 = load %struct.scrub_dev*, %struct.scrub_dev** %8, align 8
  %45 = icmp ne %struct.scrub_dev* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @ENOTCONN, align 4
  %49 = sub nsw i32 0, %48
  br label %50

50:                                               ; preds = %47, %46
  %51 = phi i32 [ 0, %46 ], [ %49, %47 ]
  br label %55

52:                                               ; preds = %33
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  br label %55

55:                                               ; preds = %52, %50
  %56 = phi i32 [ %51, %50 ], [ %54, %52 ]
  ret i32 %56
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.btrfs_device* @btrfs_find_device(%struct.btrfs_root*, i32, i32*, i32*) #1

declare dso_local i32 @memcpy(%struct.btrfs_scrub_progress*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
