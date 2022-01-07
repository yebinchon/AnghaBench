; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_disk-io.c_end_workqueue_bio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_disk-io.c_end_workqueue_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, %struct.end_io_wq* }
%struct.end_io_wq = type { i32, i32, %struct.TYPE_2__, %struct.btrfs_fs_info* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.btrfs_fs_info = type { i32, i32, i32, i32, i32 }

@end_workqueue_fn = common dso_local global i32 0, align 4
@REQ_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*, i32)* @end_workqueue_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_workqueue_bio(%struct.bio* %0, i32 %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.end_io_wq*, align 8
  %6 = alloca %struct.btrfs_fs_info*, align 8
  store %struct.bio* %0, %struct.bio** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bio*, %struct.bio** %3, align 8
  %8 = getelementptr inbounds %struct.bio, %struct.bio* %7, i32 0, i32 1
  %9 = load %struct.end_io_wq*, %struct.end_io_wq** %8, align 8
  store %struct.end_io_wq* %9, %struct.end_io_wq** %5, align 8
  %10 = load %struct.end_io_wq*, %struct.end_io_wq** %5, align 8
  %11 = getelementptr inbounds %struct.end_io_wq, %struct.end_io_wq* %10, i32 0, i32 3
  %12 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  store %struct.btrfs_fs_info* %12, %struct.btrfs_fs_info** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.end_io_wq*, %struct.end_io_wq** %5, align 8
  %15 = getelementptr inbounds %struct.end_io_wq, %struct.end_io_wq* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @end_workqueue_fn, align 4
  %17 = load %struct.end_io_wq*, %struct.end_io_wq** %5, align 8
  %18 = getelementptr inbounds %struct.end_io_wq, %struct.end_io_wq* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i32 %16, i32* %19, align 8
  %20 = load %struct.end_io_wq*, %struct.end_io_wq** %5, align 8
  %21 = getelementptr inbounds %struct.end_io_wq, %struct.end_io_wq* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.bio*, %struct.bio** %3, align 8
  %24 = getelementptr inbounds %struct.bio, %struct.bio* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @REQ_WRITE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %59

29:                                               ; preds = %2
  %30 = load %struct.end_io_wq*, %struct.end_io_wq** %5, align 8
  %31 = getelementptr inbounds %struct.end_io_wq, %struct.end_io_wq* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %36 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %35, i32 0, i32 4
  %37 = load %struct.end_io_wq*, %struct.end_io_wq** %5, align 8
  %38 = getelementptr inbounds %struct.end_io_wq, %struct.end_io_wq* %37, i32 0, i32 2
  %39 = call i32 @btrfs_queue_worker(i32* %36, %struct.TYPE_2__* %38)
  br label %58

40:                                               ; preds = %29
  %41 = load %struct.end_io_wq*, %struct.end_io_wq** %5, align 8
  %42 = getelementptr inbounds %struct.end_io_wq, %struct.end_io_wq* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %47 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %46, i32 0, i32 3
  %48 = load %struct.end_io_wq*, %struct.end_io_wq** %5, align 8
  %49 = getelementptr inbounds %struct.end_io_wq, %struct.end_io_wq* %48, i32 0, i32 2
  %50 = call i32 @btrfs_queue_worker(i32* %47, %struct.TYPE_2__* %49)
  br label %57

51:                                               ; preds = %40
  %52 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %53 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %52, i32 0, i32 2
  %54 = load %struct.end_io_wq*, %struct.end_io_wq** %5, align 8
  %55 = getelementptr inbounds %struct.end_io_wq, %struct.end_io_wq* %54, i32 0, i32 2
  %56 = call i32 @btrfs_queue_worker(i32* %53, %struct.TYPE_2__* %55)
  br label %57

57:                                               ; preds = %51, %45
  br label %58

58:                                               ; preds = %57, %34
  br label %77

59:                                               ; preds = %2
  %60 = load %struct.end_io_wq*, %struct.end_io_wq** %5, align 8
  %61 = getelementptr inbounds %struct.end_io_wq, %struct.end_io_wq* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %66 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %65, i32 0, i32 1
  %67 = load %struct.end_io_wq*, %struct.end_io_wq** %5, align 8
  %68 = getelementptr inbounds %struct.end_io_wq, %struct.end_io_wq* %67, i32 0, i32 2
  %69 = call i32 @btrfs_queue_worker(i32* %66, %struct.TYPE_2__* %68)
  br label %76

70:                                               ; preds = %59
  %71 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %72 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %71, i32 0, i32 0
  %73 = load %struct.end_io_wq*, %struct.end_io_wq** %5, align 8
  %74 = getelementptr inbounds %struct.end_io_wq, %struct.end_io_wq* %73, i32 0, i32 2
  %75 = call i32 @btrfs_queue_worker(i32* %72, %struct.TYPE_2__* %74)
  br label %76

76:                                               ; preds = %70, %64
  br label %77

77:                                               ; preds = %76, %58
  ret void
}

declare dso_local i32 @btrfs_queue_worker(i32*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
