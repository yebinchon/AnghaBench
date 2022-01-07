; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_read.c_nfs_readpage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_read.c_nfs_readpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.page = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.nfs_open_context = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"NFS: nfs_readpage (%p %ld@%lu)\0A\00", align 1
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@NFSIOS_VFSREADPAGE = common dso_local global i32 0, align 4
@NFSIOS_READPAGES = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_readpage(%struct.file* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.nfs_open_context*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %9 = load %struct.page*, %struct.page** %5, align 8
  %10 = getelementptr inbounds %struct.page, %struct.page* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %7, align 8
  %14 = load %struct.page*, %struct.page** %5, align 8
  %15 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %16 = load %struct.page*, %struct.page** %5, align 8
  %17 = getelementptr inbounds %struct.page, %struct.page* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.page* %14, i32 %15, i32 %18)
  %20 = load %struct.inode*, %struct.inode** %7, align 8
  %21 = load i32, i32* @NFSIOS_VFSREADPAGE, align 4
  %22 = call i32 @nfs_inc_stats(%struct.inode* %20, i32 %21)
  %23 = load %struct.inode*, %struct.inode** %7, align 8
  %24 = load i32, i32* @NFSIOS_READPAGES, align 4
  %25 = call i32 @nfs_add_stats(%struct.inode* %23, i32 %24, i32 1)
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = load %struct.page*, %struct.page** %5, align 8
  %28 = call i32 @nfs_wb_page(%struct.inode* %26, %struct.page* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %83

32:                                               ; preds = %2
  %33 = load %struct.page*, %struct.page** %5, align 8
  %34 = call i64 @PageUptodate(%struct.page* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %83

37:                                               ; preds = %32
  %38 = load i32, i32* @ESTALE, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %8, align 4
  %40 = load %struct.inode*, %struct.inode** %7, align 8
  %41 = call i64 @NFS_STALE(%struct.inode* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %83

44:                                               ; preds = %37
  %45 = load %struct.file*, %struct.file** %4, align 8
  %46 = icmp eq %struct.file* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load i32, i32* @EBADF, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %8, align 4
  %50 = load %struct.inode*, %struct.inode** %7, align 8
  %51 = load i32, i32* @FMODE_READ, align 4
  %52 = call %struct.nfs_open_context* @nfs_find_open_context(%struct.inode* %50, i32* null, i32 %51)
  store %struct.nfs_open_context* %52, %struct.nfs_open_context** %6, align 8
  %53 = load %struct.nfs_open_context*, %struct.nfs_open_context** %6, align 8
  %54 = icmp eq %struct.nfs_open_context* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %83

56:                                               ; preds = %47
  br label %61

57:                                               ; preds = %44
  %58 = load %struct.file*, %struct.file** %4, align 8
  %59 = call i32 @nfs_file_open_context(%struct.file* %58)
  %60 = call %struct.nfs_open_context* @get_nfs_open_context(i32 %59)
  store %struct.nfs_open_context* %60, %struct.nfs_open_context** %6, align 8
  br label %61

61:                                               ; preds = %57, %56
  %62 = load %struct.inode*, %struct.inode** %7, align 8
  %63 = call i32 @IS_SYNC(%struct.inode* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %61
  %66 = load %struct.nfs_open_context*, %struct.nfs_open_context** %6, align 8
  %67 = load %struct.inode*, %struct.inode** %7, align 8
  %68 = load %struct.page*, %struct.page** %5, align 8
  %69 = call i32 @nfs_readpage_from_fscache(%struct.nfs_open_context* %66, %struct.inode* %67, %struct.page* %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %79

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73, %61
  %75 = load %struct.nfs_open_context*, %struct.nfs_open_context** %6, align 8
  %76 = load %struct.inode*, %struct.inode** %7, align 8
  %77 = load %struct.page*, %struct.page** %5, align 8
  %78 = call i32 @nfs_readpage_async(%struct.nfs_open_context* %75, %struct.inode* %76, %struct.page* %77)
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %74, %72
  %80 = load %struct.nfs_open_context*, %struct.nfs_open_context** %6, align 8
  %81 = call i32 @put_nfs_open_context(%struct.nfs_open_context* %80)
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %3, align 4
  br label %87

83:                                               ; preds = %55, %43, %36, %31
  %84 = load %struct.page*, %struct.page** %5, align 8
  %85 = call i32 @unlock_page(%struct.page* %84)
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %83, %79
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @dprintk(i8*, %struct.page*, i32, i32) #1

declare dso_local i32 @nfs_inc_stats(%struct.inode*, i32) #1

declare dso_local i32 @nfs_add_stats(%struct.inode*, i32, i32) #1

declare dso_local i32 @nfs_wb_page(%struct.inode*, %struct.page*) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i64 @NFS_STALE(%struct.inode*) #1

declare dso_local %struct.nfs_open_context* @nfs_find_open_context(%struct.inode*, i32*, i32) #1

declare dso_local %struct.nfs_open_context* @get_nfs_open_context(i32) #1

declare dso_local i32 @nfs_file_open_context(%struct.file*) #1

declare dso_local i32 @IS_SYNC(%struct.inode*) #1

declare dso_local i32 @nfs_readpage_from_fscache(%struct.nfs_open_context*, %struct.inode*, %struct.page*) #1

declare dso_local i32 @nfs_readpage_async(%struct.nfs_open_context*, %struct.inode*, %struct.page*) #1

declare dso_local i32 @put_nfs_open_context(%struct.nfs_open_context*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
