; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_namei.c_hpfs_symlink_readpage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_namei.c_hpfs_symlink_readpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.fnode = type { i32 }
%struct.buffer_head = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"SYMLINK\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.page*)* @hpfs_symlink_readpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpfs_symlink_readpage(%struct.file* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.fnode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %11 = load %struct.page*, %struct.page** %5, align 8
  %12 = call i8* @kmap(%struct.page* %11)
  store i8* %12, i8** %6, align 8
  %13 = load %struct.page*, %struct.page** %5, align 8
  %14 = getelementptr inbounds %struct.page, %struct.page* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %7, align 8
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %10, align 4
  %20 = call i32 (...) @lock_kernel()
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.fnode* @hpfs_map_fnode(i32 %23, i32 %26, %struct.buffer_head** %9)
  store %struct.fnode* %27, %struct.fnode** %8, align 8
  %28 = icmp ne %struct.fnode* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  br label %51

30:                                               ; preds = %2
  %31 = load %struct.inode*, %struct.inode** %7, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.fnode*, %struct.fnode** %8, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = call i32 @hpfs_read_ea(i32 %33, %struct.fnode* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %35, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %39 = call i32 @brelse(%struct.buffer_head* %38)
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  br label %51

43:                                               ; preds = %30
  %44 = call i32 (...) @unlock_kernel()
  %45 = load %struct.page*, %struct.page** %5, align 8
  %46 = call i32 @SetPageUptodate(%struct.page* %45)
  %47 = load %struct.page*, %struct.page** %5, align 8
  %48 = call i32 @kunmap(%struct.page* %47)
  %49 = load %struct.page*, %struct.page** %5, align 8
  %50 = call i32 @unlock_page(%struct.page* %49)
  store i32 0, i32* %3, align 4
  br label %60

51:                                               ; preds = %42, %29
  %52 = call i32 (...) @unlock_kernel()
  %53 = load %struct.page*, %struct.page** %5, align 8
  %54 = call i32 @SetPageError(%struct.page* %53)
  %55 = load %struct.page*, %struct.page** %5, align 8
  %56 = call i32 @kunmap(%struct.page* %55)
  %57 = load %struct.page*, %struct.page** %5, align 8
  %58 = call i32 @unlock_page(%struct.page* %57)
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %51, %43
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local %struct.fnode* @hpfs_map_fnode(i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @hpfs_read_ea(i32, %struct.fnode*, i8*, i8*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
