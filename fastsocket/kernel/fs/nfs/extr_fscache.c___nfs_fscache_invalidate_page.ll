; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_fscache.c___nfs_fscache_invalidate_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_fscache.c___nfs_fscache_invalidate_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32 }
%struct.nfs_inode = type { %struct.fscache_cookie* }
%struct.fscache_cookie = type { i32 }

@FSCACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"NFS: fscache invalidatepage (0x%p/0x%p/0x%p)\0A\00", align 1
@NFSIOS_FSCACHE_PAGES_UNCACHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__nfs_fscache_invalidate_page(%struct.page* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.nfs_inode*, align 8
  %6 = alloca %struct.fscache_cookie*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = call %struct.nfs_inode* @NFS_I(%struct.inode* %7)
  store %struct.nfs_inode* %8, %struct.nfs_inode** %5, align 8
  %9 = load %struct.nfs_inode*, %struct.nfs_inode** %5, align 8
  %10 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %9, i32 0, i32 0
  %11 = load %struct.fscache_cookie*, %struct.fscache_cookie** %10, align 8
  store %struct.fscache_cookie* %11, %struct.fscache_cookie** %6, align 8
  %12 = load %struct.fscache_cookie*, %struct.fscache_cookie** %6, align 8
  %13 = icmp ne %struct.fscache_cookie* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load i32, i32* @FSCACHE, align 4
  %18 = load %struct.fscache_cookie*, %struct.fscache_cookie** %6, align 8
  %19 = load %struct.page*, %struct.page** %3, align 8
  %20 = load %struct.nfs_inode*, %struct.nfs_inode** %5, align 8
  %21 = call i32 @dfprintk(i32 %17, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), %struct.fscache_cookie* %18, %struct.page* %19, %struct.nfs_inode* %20)
  %22 = load %struct.fscache_cookie*, %struct.fscache_cookie** %6, align 8
  %23 = load %struct.page*, %struct.page** %3, align 8
  %24 = call i32 @fscache_wait_on_page_write(%struct.fscache_cookie* %22, %struct.page* %23)
  %25 = load %struct.page*, %struct.page** %3, align 8
  %26 = call i32 @PageLocked(%struct.page* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load %struct.fscache_cookie*, %struct.fscache_cookie** %6, align 8
  %32 = load %struct.page*, %struct.page** %3, align 8
  %33 = call i32 @fscache_uncache_page(%struct.fscache_cookie* %31, %struct.page* %32)
  %34 = load %struct.page*, %struct.page** %3, align 8
  %35 = getelementptr inbounds %struct.page, %struct.page* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @NFSIOS_FSCACHE_PAGES_UNCACHED, align 4
  %40 = call i32 @nfs_add_fscache_stats(i32 %38, i32 %39, i32 1)
  ret void
}

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dfprintk(i32, i8*, %struct.fscache_cookie*, %struct.page*, %struct.nfs_inode*) #1

declare dso_local i32 @fscache_wait_on_page_write(%struct.fscache_cookie*, %struct.page*) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @fscache_uncache_page(%struct.fscache_cookie*, %struct.page*) #1

declare dso_local i32 @nfs_add_fscache_stats(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
