; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_read.c_nfs_readpage_async.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_read.c_nfs_readpage_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_open_context = type { i32 }
%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.nfs_page = type { i32 }
%struct.nfs_pageio_descriptor = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.nfs_pageio_descriptor*, %struct.inode*, i32*)* }

@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@nfs_async_read_completion_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_readpage_async(%struct.nfs_open_context* %0, %struct.inode* %1, %struct.page* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfs_open_context*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.nfs_page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfs_pageio_descriptor, align 4
  store %struct.nfs_open_context* %0, %struct.nfs_open_context** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.page* %2, %struct.page** %7, align 8
  %11 = load %struct.page*, %struct.page** %7, align 8
  %12 = call i32 @nfs_page_length(%struct.page* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.page*, %struct.page** %7, align 8
  %17 = call i32 @nfs_return_empty_page(%struct.page* %16)
  store i32 %17, i32* %4, align 4
  br label %51

18:                                               ; preds = %3
  %19 = load %struct.nfs_open_context*, %struct.nfs_open_context** %5, align 8
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = load %struct.page*, %struct.page** %7, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call %struct.nfs_page* @nfs_create_request(%struct.nfs_open_context* %19, %struct.inode* %20, %struct.page* %21, i32 0, i32 %22)
  store %struct.nfs_page* %23, %struct.nfs_page** %8, align 8
  %24 = load %struct.nfs_page*, %struct.nfs_page** %8, align 8
  %25 = call i64 @IS_ERR(%struct.nfs_page* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load %struct.page*, %struct.page** %7, align 8
  %29 = call i32 @unlock_page(%struct.page* %28)
  %30 = load %struct.nfs_page*, %struct.nfs_page** %8, align 8
  %31 = call i32 @PTR_ERR(%struct.nfs_page* %30)
  store i32 %31, i32* %4, align 4
  br label %51

32:                                               ; preds = %18
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load %struct.page*, %struct.page** %7, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %40 = call i32 @zero_user_segment(%struct.page* %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %32
  %42 = load %struct.inode*, %struct.inode** %6, align 8
  %43 = call %struct.TYPE_2__* @NFS_PROTO(%struct.inode* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (%struct.nfs_pageio_descriptor*, %struct.inode*, i32*)*, i32 (%struct.nfs_pageio_descriptor*, %struct.inode*, i32*)** %44, align 8
  %46 = load %struct.inode*, %struct.inode** %6, align 8
  %47 = call i32 %45(%struct.nfs_pageio_descriptor* %10, %struct.inode* %46, i32* @nfs_async_read_completion_ops)
  %48 = load %struct.nfs_page*, %struct.nfs_page** %8, align 8
  %49 = call i32 @nfs_pageio_add_request(%struct.nfs_pageio_descriptor* %10, %struct.nfs_page* %48)
  %50 = call i32 @nfs_pageio_complete(%struct.nfs_pageio_descriptor* %10)
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %41, %27, %15
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @nfs_page_length(%struct.page*) #1

declare dso_local i32 @nfs_return_empty_page(%struct.page*) #1

declare dso_local %struct.nfs_page* @nfs_create_request(%struct.nfs_open_context*, %struct.inode*, %struct.page*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.nfs_page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.nfs_page*) #1

declare dso_local i32 @zero_user_segment(%struct.page*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i32 @nfs_pageio_add_request(%struct.nfs_pageio_descriptor*, %struct.nfs_page*) #1

declare dso_local i32 @nfs_pageio_complete(%struct.nfs_pageio_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
