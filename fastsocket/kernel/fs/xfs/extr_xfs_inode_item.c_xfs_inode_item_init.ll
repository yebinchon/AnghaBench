; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_inode_item.c_xfs_inode_item_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_inode_item.c_xfs_inode_item_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { %struct.TYPE_4__, i32, %struct.xfs_inode_log_item* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.xfs_inode_log_item = type { %struct.TYPE_3__, i32, %struct.xfs_inode* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.xfs_mount = type { i32 }

@xfs_ili_zone = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@XFS_LI_INODE = common dso_local global i32 0, align 4
@xfs_inode_item_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_inode_item_init(%struct.xfs_inode* %0, %struct.xfs_mount* %1) #0 {
  %3 = alloca %struct.xfs_inode*, align 8
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca %struct.xfs_inode_log_item*, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %3, align 8
  store %struct.xfs_mount* %1, %struct.xfs_mount** %4, align 8
  %6 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %7 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %6, i32 0, i32 2
  %8 = load %struct.xfs_inode_log_item*, %struct.xfs_inode_log_item** %7, align 8
  %9 = icmp eq %struct.xfs_inode_log_item* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @ASSERT(i32 %10)
  %12 = load i32, i32* @xfs_ili_zone, align 4
  %13 = load i32, i32* @KM_SLEEP, align 4
  %14 = call %struct.xfs_inode_log_item* @kmem_zone_zalloc(i32 %12, i32 %13)
  %15 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %16 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %15, i32 0, i32 2
  store %struct.xfs_inode_log_item* %14, %struct.xfs_inode_log_item** %16, align 8
  store %struct.xfs_inode_log_item* %14, %struct.xfs_inode_log_item** %5, align 8
  %17 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %18 = load %struct.xfs_inode_log_item*, %struct.xfs_inode_log_item** %5, align 8
  %19 = getelementptr inbounds %struct.xfs_inode_log_item, %struct.xfs_inode_log_item* %18, i32 0, i32 2
  store %struct.xfs_inode* %17, %struct.xfs_inode** %19, align 8
  %20 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %21 = load %struct.xfs_inode_log_item*, %struct.xfs_inode_log_item** %5, align 8
  %22 = getelementptr inbounds %struct.xfs_inode_log_item, %struct.xfs_inode_log_item* %21, i32 0, i32 1
  %23 = load i32, i32* @XFS_LI_INODE, align 4
  %24 = call i32 @xfs_log_item_init(%struct.xfs_mount* %20, i32* %22, i32 %23, i32* @xfs_inode_item_ops)
  %25 = load i32, i32* @XFS_LI_INODE, align 4
  %26 = load %struct.xfs_inode_log_item*, %struct.xfs_inode_log_item** %5, align 8
  %27 = getelementptr inbounds %struct.xfs_inode_log_item, %struct.xfs_inode_log_item* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 4
  store i32 %25, i32* %28, align 8
  %29 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %30 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.xfs_inode_log_item*, %struct.xfs_inode_log_item** %5, align 8
  %33 = getelementptr inbounds %struct.xfs_inode_log_item, %struct.xfs_inode_log_item* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  store i32 %31, i32* %34, align 4
  %35 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %36 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.xfs_inode_log_item*, %struct.xfs_inode_log_item** %5, align 8
  %40 = getelementptr inbounds %struct.xfs_inode_log_item, %struct.xfs_inode_log_item* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 8
  %42 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %43 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.xfs_inode_log_item*, %struct.xfs_inode_log_item** %5, align 8
  %47 = getelementptr inbounds %struct.xfs_inode_log_item, %struct.xfs_inode_log_item* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %50 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.xfs_inode_log_item*, %struct.xfs_inode_log_item** %5, align 8
  %54 = getelementptr inbounds %struct.xfs_inode_log_item, %struct.xfs_inode_log_item* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.xfs_inode_log_item* @kmem_zone_zalloc(i32, i32) #1

declare dso_local i32 @xfs_log_item_init(%struct.xfs_mount*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
