; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_file.c_xfs_rw_ilock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_file.c_xfs_rw_ilock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i32 }
%struct.TYPE_2__ = type { i32 }

@XFS_IOLOCK_EXCL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_inode*, i32)* @xfs_rw_ilock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_rw_ilock(%struct.xfs_inode* %0, i32 %1) #0 {
  %3 = alloca %struct.xfs_inode*, align 8
  %4 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @XFS_IOLOCK_EXCL, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %11 = call %struct.TYPE_2__* @VFS_I(%struct.xfs_inode* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  br label %14

14:                                               ; preds = %9, %2
  %15 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @xfs_ilock(%struct.xfs_inode* %15, i32 %16)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @VFS_I(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_ilock(%struct.xfs_inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
