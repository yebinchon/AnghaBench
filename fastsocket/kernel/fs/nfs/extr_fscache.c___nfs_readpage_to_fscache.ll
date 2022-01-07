; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_fscache.c___nfs_readpage_to_fscache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_fscache.c___nfs_readpage_to_fscache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@FSCACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"NFS: readpage_to_fscache(fsc:%p/p:%p(i:%lx f:%lx)/%d)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"NFS:     readpage_to_fscache: p:%p(i:%lu f:%lx) ret %d\0A\00", align 1
@NFSIOS_FSCACHE_PAGES_WRITTEN_FAIL = common dso_local global i32 0, align 4
@NFSIOS_FSCACHE_PAGES_UNCACHED = common dso_local global i32 0, align 4
@NFSIOS_FSCACHE_PAGES_WRITTEN_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__nfs_readpage_to_fscache(%struct.inode* %0, %struct.page* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @FSCACHE, align 4
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call %struct.TYPE_2__* @NFS_I(%struct.inode* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to %struct.page*
  %15 = load %struct.page*, %struct.page** %5, align 8
  %16 = load %struct.page*, %struct.page** %5, align 8
  %17 = getelementptr inbounds %struct.page, %struct.page* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.page*, %struct.page** %5, align 8
  %20 = getelementptr inbounds %struct.page, %struct.page* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 (i32, i8*, %struct.page*, %struct.page*, i32, i32, ...) @dfprintk(i32 %8, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), %struct.page* %14, %struct.page* %15, i32 %18, i32 %21, i32 %22)
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = call %struct.TYPE_2__* @NFS_I(%struct.inode* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.page*, %struct.page** %5, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32 @fscache_write_page(i32 %27, %struct.page* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* @FSCACHE, align 4
  %32 = load %struct.page*, %struct.page** %5, align 8
  %33 = load %struct.page*, %struct.page** %5, align 8
  %34 = getelementptr inbounds %struct.page, %struct.page* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to %struct.page*
  %38 = load %struct.page*, %struct.page** %5, align 8
  %39 = getelementptr inbounds %struct.page, %struct.page* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 (i32, i8*, %struct.page*, %struct.page*, i32, i32, ...) @dfprintk(i32 %31, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), %struct.page* %32, %struct.page* %37, i32 %40, i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %3
  %46 = load %struct.inode*, %struct.inode** %4, align 8
  %47 = call %struct.TYPE_2__* @NFS_I(%struct.inode* %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.page*, %struct.page** %5, align 8
  %51 = call i32 @fscache_uncache_page(i32 %49, %struct.page* %50)
  %52 = load %struct.inode*, %struct.inode** %4, align 8
  %53 = load i32, i32* @NFSIOS_FSCACHE_PAGES_WRITTEN_FAIL, align 4
  %54 = call i32 @nfs_add_fscache_stats(%struct.inode* %52, i32 %53, i32 1)
  %55 = load %struct.inode*, %struct.inode** %4, align 8
  %56 = load i32, i32* @NFSIOS_FSCACHE_PAGES_UNCACHED, align 4
  %57 = call i32 @nfs_add_fscache_stats(%struct.inode* %55, i32 %56, i32 1)
  br label %62

58:                                               ; preds = %3
  %59 = load %struct.inode*, %struct.inode** %4, align 8
  %60 = load i32, i32* @NFSIOS_FSCACHE_PAGES_WRITTEN_OK, align 4
  %61 = call i32 @nfs_add_fscache_stats(%struct.inode* %59, i32 %60, i32 1)
  br label %62

62:                                               ; preds = %58, %45
  ret void
}

declare dso_local i32 @dfprintk(i32, i8*, %struct.page*, %struct.page*, i32, i32, ...) #1

declare dso_local %struct.TYPE_2__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @fscache_write_page(i32, %struct.page*, i32) #1

declare dso_local i32 @fscache_uncache_page(i32, %struct.page*) #1

declare dso_local i32 @nfs_add_fscache_stats(%struct.inode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
