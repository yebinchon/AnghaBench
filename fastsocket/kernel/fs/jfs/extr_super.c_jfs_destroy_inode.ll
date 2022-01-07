; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_super.c_jfs_destroy_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_super.c_jfs_destroy_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.jfs_inode_info = type { i32, i32, i32 }
%struct.bmap = type { i32* }
%struct.TYPE_2__ = type { %struct.bmap* }

@jfs_inode_cachep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @jfs_destroy_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jfs_destroy_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.jfs_inode_info*, align 8
  %4 = alloca %struct.bmap*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = call %struct.jfs_inode_info* @JFS_IP(%struct.inode* %5)
  store %struct.jfs_inode_info* %6, %struct.jfs_inode_info** %3, align 8
  %7 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %3, align 8
  %8 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %7, i32 0, i32 2
  %9 = call i32 @list_empty(i32* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %3, align 8
  %15 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %14, i32 0, i32 1
  %16 = call i32 @spin_lock_irq(i32* %15)
  %17 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %3, align 8
  %18 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %39

21:                                               ; preds = %1
  %22 = load %struct.inode*, %struct.inode** %2, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.TYPE_2__* @JFS_SBI(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.bmap*, %struct.bmap** %26, align 8
  store %struct.bmap* %27, %struct.bmap** %4, align 8
  %28 = load %struct.bmap*, %struct.bmap** %4, align 8
  %29 = getelementptr inbounds %struct.bmap, %struct.bmap* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %3, align 8
  %32 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %30, i64 %34
  %36 = call i32 @atomic_dec(i32* %35)
  %37 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %3, align 8
  %38 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %37, i32 0, i32 0
  store i32 -1, i32* %38, align 4
  br label %39

39:                                               ; preds = %21, %1
  %40 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %3, align 8
  %41 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %40, i32 0, i32 1
  %42 = call i32 @spin_unlock_irq(i32* %41)
  %43 = load i32, i32* @jfs_inode_cachep, align 4
  %44 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %3, align 8
  %45 = call i32 @kmem_cache_free(i32 %43, %struct.jfs_inode_info* %44)
  ret void
}

declare dso_local %struct.jfs_inode_info* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.TYPE_2__* @JFS_SBI(i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.jfs_inode_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
