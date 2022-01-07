; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_file.c_jfs_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_file.c_jfs_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.jfs_inode_info = type { i32, i32 }
%struct.bmap = type { i32* }
%struct.TYPE_2__ = type { %struct.bmap* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @jfs_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jfs_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.jfs_inode_info*, align 8
  %6 = alloca %struct.bmap*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = call %struct.jfs_inode_info* @JFS_IP(%struct.inode* %7)
  store %struct.jfs_inode_info* %8, %struct.jfs_inode_info** %5, align 8
  %9 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %10 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %9, i32 0, i32 1
  %11 = call i32 @spin_lock_irq(i32* %10)
  %12 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %13 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %34

16:                                               ; preds = %2
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_2__* @JFS_SBI(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.bmap*, %struct.bmap** %21, align 8
  store %struct.bmap* %22, %struct.bmap** %6, align 8
  %23 = load %struct.bmap*, %struct.bmap** %6, align 8
  %24 = getelementptr inbounds %struct.bmap, %struct.bmap* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %27 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %25, i64 %29
  %31 = call i32 @atomic_dec(i32* %30)
  %32 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %33 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %32, i32 0, i32 0
  store i32 -1, i32* %33, align 4
  br label %34

34:                                               ; preds = %16, %2
  %35 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %36 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %35, i32 0, i32 1
  %37 = call i32 @spin_unlock_irq(i32* %36)
  ret i32 0
}

declare dso_local %struct.jfs_inode_info* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.TYPE_2__* @JFS_SBI(i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
