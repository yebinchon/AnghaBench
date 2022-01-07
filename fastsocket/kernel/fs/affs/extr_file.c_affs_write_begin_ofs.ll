; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_file.c_affs_write_begin_ofs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_file.c_affs_write_begin_ofs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i64 }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"AFFS: write_begin(%u, %llu, %llu)\0A\00", align 1
@PAGE_CACHE_SHIFT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)* @affs_write_begin_ofs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @affs_write_begin_ofs(%struct.file* %0, %struct.address_space* %1, i64 %2, i32 %3, i32 %4, %struct.page** %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca %struct.inode*, align 8
  %17 = alloca %struct.page*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %9, align 8
  store %struct.address_space* %1, %struct.address_space** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.page** %5, %struct.page*** %14, align 8
  store i8** %6, i8*** %15, align 8
  %20 = load %struct.address_space*, %struct.address_space** %10, align 8
  %21 = getelementptr inbounds %struct.address_space, %struct.address_space* %20, i32 0, i32 0
  %22 = load %struct.inode*, %struct.inode** %21, align 8
  store %struct.inode* %22, %struct.inode** %16, align 8
  store i32 0, i32* %19, align 4
  %23 = load %struct.inode*, %struct.inode** %16, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* %11, align 8
  %29 = load i32, i32* %12, align 4
  %30 = zext i32 %29 to i64
  %31 = add i64 %28, %30
  %32 = trunc i64 %31 to i32
  %33 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %26, i64 %27, i32 %32)
  %34 = load i64, i64* %11, align 8
  %35 = load %struct.inode*, %struct.inode** %16, align 8
  %36 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %34, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %7
  %41 = load %struct.inode*, %struct.inode** %16, align 8
  %42 = load i64, i64* %11, align 8
  %43 = call i32 @affs_extent_file_ofs(%struct.inode* %41, i64 %42)
  store i32 %43, i32* %19, align 4
  %44 = load i32, i32* %19, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %19, align 4
  store i32 %47, i32* %8, align 4
  br label %83

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %7
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %52 = ashr i64 %50, %51
  store i64 %52, i64* %18, align 8
  %53 = load %struct.address_space*, %struct.address_space** %10, align 8
  %54 = load i64, i64* %18, align 8
  %55 = load i32, i32* %13, align 4
  %56 = call %struct.page* @grab_cache_page_write_begin(%struct.address_space* %53, i64 %54, i32 %55)
  store %struct.page* %56, %struct.page** %17, align 8
  %57 = load %struct.page*, %struct.page** %17, align 8
  %58 = icmp ne %struct.page* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %49
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %8, align 4
  br label %83

62:                                               ; preds = %49
  %63 = load %struct.page*, %struct.page** %17, align 8
  %64 = load %struct.page**, %struct.page*** %14, align 8
  store %struct.page* %63, %struct.page** %64, align 8
  %65 = load %struct.page*, %struct.page** %17, align 8
  %66 = call i64 @PageUptodate(%struct.page* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 0, i32* %8, align 4
  br label %83

69:                                               ; preds = %62
  %70 = load %struct.file*, %struct.file** %9, align 8
  %71 = load %struct.page*, %struct.page** %17, align 8
  %72 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %73 = call i32 @affs_do_readpage_ofs(%struct.file* %70, %struct.page* %71, i32 0, i32 %72)
  store i32 %73, i32* %19, align 4
  %74 = load i32, i32* %19, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load %struct.page*, %struct.page** %17, align 8
  %78 = call i32 @unlock_page(%struct.page* %77)
  %79 = load %struct.page*, %struct.page** %17, align 8
  %80 = call i32 @page_cache_release(%struct.page* %79)
  br label %81

81:                                               ; preds = %76, %69
  %82 = load i32, i32* %19, align 4
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %81, %68, %59, %46
  %84 = load i32, i32* %8, align 4
  ret i32 %84
}

declare dso_local i32 @pr_debug(i8*, i32, i64, i32) #1

declare dso_local %struct.TYPE_2__* @AFFS_I(%struct.inode*) #1

declare dso_local i32 @affs_extent_file_ofs(%struct.inode*, i64) #1

declare dso_local %struct.page* @grab_cache_page_write_begin(%struct.address_space*, i64, i32) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @affs_do_readpage_ofs(%struct.file*, %struct.page*, i32, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
