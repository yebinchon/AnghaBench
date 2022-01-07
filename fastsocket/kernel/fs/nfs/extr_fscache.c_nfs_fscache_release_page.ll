; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_fscache.c_nfs_fscache_release_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_fscache.c_nfs_fscache_release_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nfs_inode = type { %struct.fscache_cookie* }
%struct.fscache_cookie = type { i32 }

@FSCACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"NFS: fscache releasepage (0x%p/0x%p/0x%p)\0A\00", align 1
@NFSIOS_FSCACHE_PAGES_UNCACHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_fscache_release_page(%struct.page* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfs_inode*, align 8
  %7 = alloca %struct.fscache_cookie*, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.page*, %struct.page** %4, align 8
  %9 = call i64 @PageFsCache(%struct.page* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %45

11:                                               ; preds = %2
  %12 = load %struct.page*, %struct.page** %4, align 8
  %13 = getelementptr inbounds %struct.page, %struct.page* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.nfs_inode* @NFS_I(i32 %16)
  store %struct.nfs_inode* %17, %struct.nfs_inode** %6, align 8
  %18 = load %struct.nfs_inode*, %struct.nfs_inode** %6, align 8
  %19 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %18, i32 0, i32 0
  %20 = load %struct.fscache_cookie*, %struct.fscache_cookie** %19, align 8
  store %struct.fscache_cookie* %20, %struct.fscache_cookie** %7, align 8
  %21 = load %struct.fscache_cookie*, %struct.fscache_cookie** %7, align 8
  %22 = icmp ne %struct.fscache_cookie* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load i32, i32* @FSCACHE, align 4
  %27 = load %struct.fscache_cookie*, %struct.fscache_cookie** %7, align 8
  %28 = load %struct.page*, %struct.page** %4, align 8
  %29 = load %struct.nfs_inode*, %struct.nfs_inode** %6, align 8
  %30 = call i32 @dfprintk(i32 %26, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), %struct.fscache_cookie* %27, %struct.page* %28, %struct.nfs_inode* %29)
  %31 = load %struct.fscache_cookie*, %struct.fscache_cookie** %7, align 8
  %32 = load %struct.page*, %struct.page** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @fscache_maybe_release_page(%struct.fscache_cookie* %31, %struct.page* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %46

37:                                               ; preds = %11
  %38 = load %struct.page*, %struct.page** %4, align 8
  %39 = getelementptr inbounds %struct.page, %struct.page* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @NFSIOS_FSCACHE_PAGES_UNCACHED, align 4
  %44 = call i32 @nfs_add_fscache_stats(i32 %42, i32 %43, i32 1)
  br label %45

45:                                               ; preds = %37, %2
  store i32 1, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %36
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @PageFsCache(%struct.page*) #1

declare dso_local %struct.nfs_inode* @NFS_I(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dfprintk(i32, i8*, %struct.fscache_cookie*, %struct.page*, %struct.nfs_inode*) #1

declare dso_local i32 @fscache_maybe_release_page(%struct.fscache_cookie*, %struct.page*, i32) #1

declare dso_local i32 @nfs_add_fscache_stats(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
