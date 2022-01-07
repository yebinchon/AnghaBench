; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_updatepage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_updatepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.page = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.nfs_open_context = type { i32 }

@NFSIOS_VFSUPDATEPAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"NFS:       nfs_updatepage(%s/%s %d@%lld)\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"NFS:       nfs_updatepage returns %d (isize %lld)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_updatepage(%struct.file* %0, %struct.page* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfs_open_context*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.nfs_open_context* @nfs_file_open_context(%struct.file* %12)
  store %struct.nfs_open_context* %13, %struct.nfs_open_context** %9, align 8
  %14 = load %struct.page*, %struct.page** %6, align 8
  %15 = getelementptr inbounds %struct.page, %struct.page* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %10, align 8
  store i32 0, i32* %11, align 4
  %19 = load %struct.inode*, %struct.inode** %10, align 8
  %20 = load i32, i32* @NFSIOS_VFSUPDATEPAGE, align 4
  %21 = call i32 @nfs_inc_stats(%struct.inode* %19, i32 %20)
  %22 = load %struct.file*, %struct.file** %5, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.file*, %struct.file** %5, align 8
  %32 = getelementptr inbounds %struct.file, %struct.file* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.page*, %struct.page** %6, align 8
  %41 = call i64 @page_offset(%struct.page* %40)
  %42 = load i32, i32* %7, align 4
  %43 = zext i32 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = call i32 (i8*, i32, i64, ...) @dprintk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %30, i64 %38, i32 %39, i64 %44)
  %46 = load %struct.file*, %struct.file** %5, align 8
  %47 = load %struct.page*, %struct.page** %6, align 8
  %48 = load %struct.inode*, %struct.inode** %10, align 8
  %49 = call i64 @nfs_can_extend_write(%struct.file* %46, %struct.page* %47, %struct.inode* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = add i32 %52, %53
  %55 = load %struct.page*, %struct.page** %6, align 8
  %56 = call i32 @nfs_page_length(%struct.page* %55)
  %57 = call i32 @max(i32 %54, i32 %56)
  store i32 %57, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %51, %4
  %59 = load %struct.nfs_open_context*, %struct.nfs_open_context** %9, align 8
  %60 = load %struct.page*, %struct.page** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @nfs_writepage_setup(%struct.nfs_open_context* %59, %struct.page* %60, i32 %61, i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load %struct.page*, %struct.page** %6, align 8
  %68 = call i32 @nfs_set_pageerror(%struct.page* %67)
  br label %69

69:                                               ; preds = %66, %58
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.inode*, %struct.inode** %10, align 8
  %72 = call i64 @i_size_read(%struct.inode* %71)
  %73 = call i32 (i8*, i32, i64, ...) @dprintk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %70, i64 %72)
  %74 = load i32, i32* %11, align 4
  ret i32 %74
}

declare dso_local %struct.nfs_open_context* @nfs_file_open_context(%struct.file*) #1

declare dso_local i32 @nfs_inc_stats(%struct.inode*, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i64, ...) #1

declare dso_local i64 @page_offset(%struct.page*) #1

declare dso_local i64 @nfs_can_extend_write(%struct.file*, %struct.page*, %struct.inode*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @nfs_page_length(%struct.page*) #1

declare dso_local i32 @nfs_writepage_setup(%struct.nfs_open_context*, %struct.page*, i32, i32) #1

declare dso_local i32 @nfs_set_pageerror(%struct.page*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
