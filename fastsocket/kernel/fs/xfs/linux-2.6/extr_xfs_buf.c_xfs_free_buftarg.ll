; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_buf.c_xfs_free_buftarg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_buf.c_xfs_free_buftarg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32 }
%struct.xfs_buftarg = type { i32, i32 }

@XFS_MOUNT_BARRIER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_free_buftarg(%struct.xfs_mount* %0, %struct.xfs_buftarg* %1) #0 {
  %3 = alloca %struct.xfs_mount*, align 8
  %4 = alloca %struct.xfs_buftarg*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %3, align 8
  store %struct.xfs_buftarg* %1, %struct.xfs_buftarg** %4, align 8
  %5 = load %struct.xfs_buftarg*, %struct.xfs_buftarg** %4, align 8
  %6 = getelementptr inbounds %struct.xfs_buftarg, %struct.xfs_buftarg* %5, i32 0, i32 1
  %7 = call i32 @unregister_shrinker(i32* %6)
  %8 = load %struct.xfs_buftarg*, %struct.xfs_buftarg** %4, align 8
  %9 = call i32 @xfs_flush_buftarg(%struct.xfs_buftarg* %8, i32 1)
  %10 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %11 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @XFS_MOUNT_BARRIER, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.xfs_buftarg*, %struct.xfs_buftarg** %4, align 8
  %18 = call i32 @xfs_blkdev_issue_flush(%struct.xfs_buftarg* %17)
  br label %19

19:                                               ; preds = %16, %2
  %20 = load %struct.xfs_buftarg*, %struct.xfs_buftarg** %4, align 8
  %21 = getelementptr inbounds %struct.xfs_buftarg, %struct.xfs_buftarg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @kthread_stop(i32 %22)
  %24 = load %struct.xfs_buftarg*, %struct.xfs_buftarg** %4, align 8
  %25 = call i32 @kmem_free(%struct.xfs_buftarg* %24)
  ret void
}

declare dso_local i32 @unregister_shrinker(i32*) #1

declare dso_local i32 @xfs_flush_buftarg(%struct.xfs_buftarg*, i32) #1

declare dso_local i32 @xfs_blkdev_issue_flush(%struct.xfs_buftarg*) #1

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @kmem_free(%struct.xfs_buftarg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
