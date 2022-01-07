; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_readpage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_readpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.page = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.fuse_io_priv = type { %struct.file*, i32 }
%struct.fuse_conn = type { i32 }
%struct.fuse_req = type { i32, %struct.TYPE_8__, %struct.TYPE_6__*, %struct.page** }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@PAGE_CACHE_SIZE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.page*)* @fuse_readpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_readpage(%struct.file* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.fuse_io_priv, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.fuse_conn*, align 8
  %8 = alloca %struct.fuse_req*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %14 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %5, i32 0, i32 0
  %15 = load %struct.file*, %struct.file** %3, align 8
  store %struct.file* %15, %struct.file** %14, align 8
  %16 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %5, i32 0, i32 1
  store i32 0, i32* %16, align 8
  %17 = load %struct.page*, %struct.page** %4, align 8
  %18 = getelementptr inbounds %struct.page, %struct.page* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %6, align 8
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %22)
  store %struct.fuse_conn* %23, %struct.fuse_conn** %7, align 8
  %24 = load %struct.page*, %struct.page** %4, align 8
  %25 = call i64 @page_offset(%struct.page* %24)
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  store i64 %26, i64* %11, align 8
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %13, align 4
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  %30 = call i64 @is_bad_inode(%struct.inode* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  br label %100

33:                                               ; preds = %2
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = load %struct.page*, %struct.page** %4, align 8
  %36 = getelementptr inbounds %struct.page, %struct.page* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @fuse_wait_on_page_writeback(%struct.inode* %34, i32 %37)
  %39 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %40 = call %struct.fuse_req* @fuse_get_req(%struct.fuse_conn* %39, i32 1)
  store %struct.fuse_req* %40, %struct.fuse_req** %8, align 8
  %41 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %42 = call i32 @PTR_ERR(%struct.fuse_req* %41)
  store i32 %42, i32* %13, align 4
  %43 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %44 = call i64 @IS_ERR(%struct.fuse_req* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  br label %100

47:                                               ; preds = %33
  %48 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %49 = call i32 @fuse_get_attr_version(%struct.fuse_conn* %48)
  store i32 %49, i32* %12, align 4
  %50 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %51 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  %53 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %54 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  store i32 1, i32* %55, align 4
  %56 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %57 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load %struct.page*, %struct.page** %4, align 8
  %59 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %60 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %59, i32 0, i32 3
  %61 = load %struct.page**, %struct.page*** %60, align 8
  %62 = getelementptr inbounds %struct.page*, %struct.page** %61, i64 0
  store %struct.page* %58, %struct.page** %62, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %65 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %64, i32 0, i32 2
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store i64 %63, i64* %68, align 8
  %69 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* %11, align 8
  %72 = call i64 @fuse_send_read(%struct.fuse_req* %69, %struct.fuse_io_priv* %5, i64 %70, i64 %71, i32* null)
  store i64 %72, i64* %9, align 8
  %73 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %74 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %13, align 4
  %78 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %79 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %80 = call i32 @fuse_put_request(%struct.fuse_conn* %78, %struct.fuse_req* %79)
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %97, label %83

83:                                               ; preds = %47
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* %11, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  %88 = load %struct.inode*, %struct.inode** %6, align 8
  %89 = load i64, i64* %10, align 8
  %90 = load i64, i64* %9, align 8
  %91 = add i64 %89, %90
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @fuse_read_update_size(%struct.inode* %88, i64 %91, i32 %92)
  br label %94

94:                                               ; preds = %87, %83
  %95 = load %struct.page*, %struct.page** %4, align 8
  %96 = call i32 @SetPageUptodate(%struct.page* %95)
  br label %97

97:                                               ; preds = %94, %47
  %98 = load %struct.inode*, %struct.inode** %6, align 8
  %99 = call i32 @fuse_invalidate_attr(%struct.inode* %98)
  br label %100

100:                                              ; preds = %97, %46, %32
  %101 = load %struct.page*, %struct.page** %4, align 8
  %102 = call i32 @unlock_page(%struct.page* %101)
  %103 = load i32, i32* %13, align 4
  ret i32 %103
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i64 @page_offset(%struct.page*) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @fuse_wait_on_page_writeback(%struct.inode*, i32) #1

declare dso_local %struct.fuse_req* @fuse_get_req(%struct.fuse_conn*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.fuse_req*) #1

declare dso_local i64 @IS_ERR(%struct.fuse_req*) #1

declare dso_local i32 @fuse_get_attr_version(%struct.fuse_conn*) #1

declare dso_local i64 @fuse_send_read(%struct.fuse_req*, %struct.fuse_io_priv*, i64, i64, i32*) #1

declare dso_local i32 @fuse_put_request(%struct.fuse_conn*, %struct.fuse_req*) #1

declare dso_local i32 @fuse_read_update_size(%struct.inode*, i64, i32) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @fuse_invalidate_attr(%struct.inode*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
