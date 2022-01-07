; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_addr.c_v9fs_vfs_readpage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_addr.c_v9fs_vfs_readpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }

@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@PAGE_CACHE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.page*)* @v9fs_vfs_readpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_vfs_readpage(%struct.file* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.inode*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %10 = load %struct.page*, %struct.page** %5, align 8
  %11 = getelementptr inbounds %struct.page, %struct.page* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %9, align 8
  %15 = load i32, i32* @P9_DEBUG_VFS, align 4
  %16 = call i32 @P9_DPRINTK(i32 %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.page*, %struct.page** %5, align 8
  %18 = call i32 @PageLocked(%struct.page* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.inode*, %struct.inode** %9, align 8
  %24 = load %struct.page*, %struct.page** %5, align 8
  %25 = call i32 @v9fs_readpage_from_fscache(%struct.inode* %23, %struct.page* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %69

30:                                               ; preds = %2
  %31 = load %struct.page*, %struct.page** %5, align 8
  %32 = call i8* @kmap(%struct.page* %31)
  store i8* %32, i8** %8, align 8
  %33 = load %struct.page*, %struct.page** %5, align 8
  %34 = call i32 @page_offset(%struct.page* %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.file*, %struct.file** %4, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @v9fs_file_readn(%struct.file* %35, i8* %36, i32* null, i64 %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %30
  %43 = load %struct.inode*, %struct.inode** %9, align 8
  %44 = load %struct.page*, %struct.page** %5, align 8
  %45 = call i32 @v9fs_uncache_page(%struct.inode* %43, %struct.page* %44)
  br label %63

46:                                               ; preds = %30
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = sub nsw i64 %51, %53
  %55 = call i32 @memset(i8* %50, i32 0, i64 %54)
  %56 = load %struct.page*, %struct.page** %5, align 8
  %57 = call i32 @flush_dcache_page(%struct.page* %56)
  %58 = load %struct.page*, %struct.page** %5, align 8
  %59 = call i32 @SetPageUptodate(%struct.page* %58)
  %60 = load %struct.inode*, %struct.inode** %9, align 8
  %61 = load %struct.page*, %struct.page** %5, align 8
  %62 = call i32 @v9fs_readpage_to_fscache(%struct.inode* %60, %struct.page* %61)
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %46, %42
  %64 = load %struct.page*, %struct.page** %5, align 8
  %65 = call i32 @kunmap(%struct.page* %64)
  %66 = load %struct.page*, %struct.page** %5, align 8
  %67 = call i32 @unlock_page(%struct.page* %66)
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %63, %28
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @P9_DPRINTK(i32, i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @v9fs_readpage_from_fscache(%struct.inode*, %struct.page*) #1

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @page_offset(%struct.page*) #1

declare dso_local i32 @v9fs_file_readn(%struct.file*, i8*, i32*, i64, i32) #1

declare dso_local i32 @v9fs_uncache_page(%struct.inode*, %struct.page*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @v9fs_readpage_to_fscache(%struct.inode*, %struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
