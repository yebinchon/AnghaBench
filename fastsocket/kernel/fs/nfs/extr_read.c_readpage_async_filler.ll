; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_read.c_readpage_async_filler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_read.c_readpage_async_filler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.nfs_readdesc = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.nfs_page = type { i32 }

@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.page*)* @readpage_async_filler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readpage_async_filler(i8* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.nfs_readdesc*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.nfs_page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.nfs_readdesc*
  store %struct.nfs_readdesc* %12, %struct.nfs_readdesc** %6, align 8
  %13 = load %struct.page*, %struct.page** %5, align 8
  %14 = getelementptr inbounds %struct.page, %struct.page* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %7, align 8
  %18 = load %struct.page*, %struct.page** %5, align 8
  %19 = call i32 @nfs_page_length(%struct.page* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.page*, %struct.page** %5, align 8
  %24 = call i32 @nfs_return_empty_page(%struct.page* %23)
  store i32 %24, i32* %3, align 4
  br label %67

25:                                               ; preds = %2
  %26 = load %struct.nfs_readdesc*, %struct.nfs_readdesc** %6, align 8
  %27 = getelementptr inbounds %struct.nfs_readdesc, %struct.nfs_readdesc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.inode*, %struct.inode** %7, align 8
  %30 = load %struct.page*, %struct.page** %5, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call %struct.nfs_page* @nfs_create_request(i32 %28, %struct.inode* %29, %struct.page* %30, i32 0, i32 %31)
  store %struct.nfs_page* %32, %struct.nfs_page** %8, align 8
  %33 = load %struct.nfs_page*, %struct.nfs_page** %8, align 8
  %34 = call i64 @IS_ERR(%struct.nfs_page* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %60

37:                                               ; preds = %25
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load %struct.page*, %struct.page** %5, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %45 = call i32 @zero_user_segment(%struct.page* %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %41, %37
  %47 = load %struct.nfs_readdesc*, %struct.nfs_readdesc** %6, align 8
  %48 = getelementptr inbounds %struct.nfs_readdesc, %struct.nfs_readdesc* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load %struct.nfs_page*, %struct.nfs_page** %8, align 8
  %51 = call i32 @nfs_pageio_add_request(%struct.TYPE_4__* %49, %struct.nfs_page* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %46
  %54 = load %struct.nfs_readdesc*, %struct.nfs_readdesc** %6, align 8
  %55 = getelementptr inbounds %struct.nfs_readdesc, %struct.nfs_readdesc* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %10, align 4
  br label %63

59:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %67

60:                                               ; preds = %36
  %61 = load %struct.nfs_page*, %struct.nfs_page** %8, align 8
  %62 = call i32 @PTR_ERR(%struct.nfs_page* %61)
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %60, %53
  %64 = load %struct.page*, %struct.page** %5, align 8
  %65 = call i32 @unlock_page(%struct.page* %64)
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %63, %59, %22
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @nfs_page_length(%struct.page*) #1

declare dso_local i32 @nfs_return_empty_page(%struct.page*) #1

declare dso_local %struct.nfs_page* @nfs_create_request(i32, %struct.inode*, %struct.page*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.nfs_page*) #1

declare dso_local i32 @zero_user_segment(%struct.page*, i32, i32) #1

declare dso_local i32 @nfs_pageio_add_request(%struct.TYPE_4__*, %struct.nfs_page*) #1

declare dso_local i32 @PTR_ERR(%struct.nfs_page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
