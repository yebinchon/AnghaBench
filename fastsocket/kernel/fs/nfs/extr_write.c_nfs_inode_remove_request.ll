; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_inode_remove_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_inode_remove_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_page = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.nfs_inode = type { i32 }

@PG_MAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_page*)* @nfs_inode_remove_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_inode_remove_request(%struct.nfs_page* %0) #0 {
  %2 = alloca %struct.nfs_page*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.nfs_inode*, align 8
  store %struct.nfs_page* %0, %struct.nfs_page** %2, align 8
  %5 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %6 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %11, %struct.inode** %3, align 8
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = call %struct.nfs_inode* @NFS_I(%struct.inode* %12)
  store %struct.nfs_inode* %13, %struct.nfs_inode** %4, align 8
  %14 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %15 = call i32 @NFS_WBACK_BUSY(%struct.nfs_page* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %24 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @set_page_private(i32 %25, i32 0)
  %27 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %28 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ClearPagePrivate(i32 %29)
  %31 = load i32, i32* @PG_MAPPED, align 4
  %32 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %33 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %32, i32 0, i32 0
  %34 = call i32 @clear_bit(i32 %31, i32* %33)
  %35 = load %struct.nfs_inode*, %struct.nfs_inode** %4, align 8
  %36 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %36, align 4
  %39 = load %struct.inode*, %struct.inode** %3, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = call i32 @spin_unlock(i32* %40)
  %42 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %43 = call i32 @nfs_release_request(%struct.nfs_page* %42)
  ret void
}

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @NFS_WBACK_BUSY(%struct.nfs_page*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @set_page_private(i32, i32) #1

declare dso_local i32 @ClearPagePrivate(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nfs_release_request(%struct.nfs_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
