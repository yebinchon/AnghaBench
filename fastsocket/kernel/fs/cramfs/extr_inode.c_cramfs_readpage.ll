; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cramfs/extr_inode.c_cramfs_readpage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cramfs/extr_inode.c_cramfs_readpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.page = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }

@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@read_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"cramfs: bad compressed blocksize %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.page*)* @cramfs_readpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cramfs_readpage(%struct.file* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %14 = load %struct.page*, %struct.page** %5, align 8
  %15 = getelementptr inbounds %struct.page, %struct.page* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %6, align 8
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %23 = add nsw i32 %21, %22
  %24 = sub nsw i32 %23, 1
  %25 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %26 = ashr i32 %24, %25
  store i32 %26, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %27 = load %struct.page*, %struct.page** %5, align 8
  %28 = call i8* @kmap(%struct.page* %27)
  store i8* %28, i8** %9, align 8
  %29 = load %struct.page*, %struct.page** %5, align 8
  %30 = getelementptr inbounds %struct.page, %struct.page* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %105

34:                                               ; preds = %2
  %35 = load %struct.inode*, %struct.inode** %6, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 1
  %37 = load %struct.super_block*, %struct.super_block** %36, align 8
  store %struct.super_block* %37, %struct.super_block** %10, align 8
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = call i32 @OFFSET(%struct.inode* %38)
  %40 = load %struct.page*, %struct.page** %5, align 8
  %41 = getelementptr inbounds %struct.page, %struct.page* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = mul nsw i32 %42, 4
  %44 = add nsw i32 %39, %43
  store i32 %44, i32* %11, align 4
  %45 = load %struct.inode*, %struct.inode** %6, align 8
  %46 = call i32 @OFFSET(%struct.inode* %45)
  %47 = load i32, i32* %7, align 4
  %48 = mul nsw i32 %47, 4
  %49 = add nsw i32 %46, %48
  store i32 %49, i32* %12, align 4
  %50 = call i32 @mutex_lock(i32* @read_mutex)
  %51 = load %struct.page*, %struct.page** %5, align 8
  %52 = getelementptr inbounds %struct.page, %struct.page* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %34
  %56 = load %struct.super_block*, %struct.super_block** %10, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sub nsw i32 %57, 4
  %59 = call i64 @cramfs_read(%struct.super_block* %56, i32 %58, i32 4)
  %60 = inttoptr i64 %59 to i32*
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %55, %34
  %63 = load %struct.super_block*, %struct.super_block** %10, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i64 @cramfs_read(%struct.super_block* %63, i32 %64, i32 4)
  %66 = inttoptr i64 %65 to i32*
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %12, align 4
  %69 = sub nsw i32 %67, %68
  store i32 %69, i32* %13, align 4
  %70 = call i32 @mutex_unlock(i32* @read_mutex)
  %71 = load i32, i32* %13, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %62
  br label %104

74:                                               ; preds = %62
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %77 = shl i32 %76, 1
  %78 = icmp sgt i32 %75, %77
  %79 = zext i1 %78 to i32
  %80 = call i64 @unlikely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %83)
  br label %122

85:                                               ; preds = %74
  %86 = call i32 @mutex_lock(i32* @read_mutex)
  %87 = load i8*, i8** %9, align 8
  %88 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %89 = load %struct.super_block*, %struct.super_block** %10, align 8
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %13, align 4
  %92 = call i64 @cramfs_read(%struct.super_block* %89, i32 %90, i32 %91)
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @cramfs_uncompress_block(i8* %87, i32 %88, i64 %92, i32 %93)
  store i32 %94, i32* %8, align 4
  %95 = call i32 @mutex_unlock(i32* @read_mutex)
  %96 = load i32, i32* %8, align 4
  %97 = icmp slt i32 %96, 0
  %98 = zext i1 %97 to i32
  %99 = call i64 @unlikely(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %85
  br label %122

102:                                              ; preds = %85
  br label %103

103:                                              ; preds = %102
  br label %104

104:                                              ; preds = %103, %73
  br label %105

105:                                              ; preds = %104, %2
  %106 = load i8*, i8** %9, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr i8, i8* %106, i64 %108
  %110 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %111 = load i32, i32* %8, align 4
  %112 = sub nsw i32 %110, %111
  %113 = call i32 @memset(i8* %109, i32 0, i32 %112)
  %114 = load %struct.page*, %struct.page** %5, align 8
  %115 = call i32 @flush_dcache_page(%struct.page* %114)
  %116 = load %struct.page*, %struct.page** %5, align 8
  %117 = call i32 @kunmap(%struct.page* %116)
  %118 = load %struct.page*, %struct.page** %5, align 8
  %119 = call i32 @SetPageUptodate(%struct.page* %118)
  %120 = load %struct.page*, %struct.page** %5, align 8
  %121 = call i32 @unlock_page(%struct.page* %120)
  store i32 0, i32* %3, align 4
  br label %131

122:                                              ; preds = %101, %82
  %123 = load %struct.page*, %struct.page** %5, align 8
  %124 = call i32 @kunmap(%struct.page* %123)
  %125 = load %struct.page*, %struct.page** %5, align 8
  %126 = call i32 @ClearPageUptodate(%struct.page* %125)
  %127 = load %struct.page*, %struct.page** %5, align 8
  %128 = call i32 @SetPageError(%struct.page* %127)
  %129 = load %struct.page*, %struct.page** %5, align 8
  %130 = call i32 @unlock_page(%struct.page* %129)
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %122, %105
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @OFFSET(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @cramfs_read(%struct.super_block*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @cramfs_uncompress_block(i8*, i32, i64, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @ClearPageUptodate(%struct.page*) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
