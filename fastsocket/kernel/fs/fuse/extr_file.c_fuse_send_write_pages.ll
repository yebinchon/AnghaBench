; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_send_write_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_send_write_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_req = type { i32, %struct.TYPE_6__, %struct.page**, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.file = type { i32 }
%struct.inode = type { i32 }
%struct.fuse_io_priv = type { %struct.file*, i32 }

@PAGE_CACHE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.fuse_req*, %struct.file*, %struct.inode*, i32, i64)* @fuse_send_write_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fuse_send_write_pages(%struct.fuse_req* %0, %struct.file* %1, %struct.inode* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.fuse_req*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.fuse_io_priv, align 8
  %15 = alloca %struct.page*, align 8
  store %struct.fuse_req* %0, %struct.fuse_req** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %16 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %14, i32 0, i32 0
  %17 = load %struct.file*, %struct.file** %7, align 8
  store %struct.file* %17, %struct.file** %16, align 8
  %18 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %14, i32 0, i32 1
  store i32 0, i32* %18, align 8
  store i32 0, i32* %13, align 4
  br label %19

19:                                               ; preds = %37, %5
  %20 = load i32, i32* %13, align 4
  %21 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %22 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %19
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %28 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %27, i32 0, i32 2
  %29 = load %struct.page**, %struct.page*** %28, align 8
  %30 = load i32, i32* %13, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.page*, %struct.page** %29, i64 %31
  %33 = load %struct.page*, %struct.page** %32, align 8
  %34 = getelementptr inbounds %struct.page, %struct.page* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @fuse_wait_on_page_writeback(%struct.inode* %26, i32 %35)
  br label %37

37:                                               ; preds = %25
  %38 = load i32, i32* %13, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %13, align 4
  br label %19

40:                                               ; preds = %19
  %41 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i64, i64* %10, align 8
  %44 = call i64 @fuse_send_write(%struct.fuse_req* %41, %struct.fuse_io_priv* %14, i32 %42, i64 %43, i32* null)
  store i64 %44, i64* %11, align 8
  %45 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %46 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %45, i32 0, i32 3
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %12, align 4
  %51 = load i64, i64* %11, align 8
  store i64 %51, i64* %10, align 8
  store i32 0, i32* %13, align 4
  br label %52

52:                                               ; preds = %102, %40
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %55 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ult i32 %53, %56
  br i1 %57, label %58, label %105

58:                                               ; preds = %52
  %59 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %60 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %59, i32 0, i32 2
  %61 = load %struct.page**, %struct.page*** %60, align 8
  %62 = load i32, i32* %13, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.page*, %struct.page** %61, i64 %63
  %65 = load %struct.page*, %struct.page** %64, align 8
  store %struct.page* %65, %struct.page** %15, align 8
  %66 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %67 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %58
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %72
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %78 = icmp uge i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load %struct.page*, %struct.page** %15, align 8
  %81 = call i32 @SetPageUptodate(%struct.page* %80)
  br label %82

82:                                               ; preds = %79, %75, %72, %58
  %83 = load i64, i64* %10, align 8
  %84 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %85 = load i32, i32* %12, align 4
  %86 = zext i32 %85 to i64
  %87 = sub i64 %84, %86
  %88 = icmp ugt i64 %83, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %82
  %90 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %91 = load i32, i32* %12, align 4
  %92 = zext i32 %91 to i64
  %93 = sub i64 %90, %92
  %94 = load i64, i64* %10, align 8
  %95 = sub i64 %94, %93
  store i64 %95, i64* %10, align 8
  br label %97

96:                                               ; preds = %82
  store i64 0, i64* %10, align 8
  br label %97

97:                                               ; preds = %96, %89
  store i32 0, i32* %12, align 4
  %98 = load %struct.page*, %struct.page** %15, align 8
  %99 = call i32 @unlock_page(%struct.page* %98)
  %100 = load %struct.page*, %struct.page** %15, align 8
  %101 = call i32 @page_cache_release(%struct.page* %100)
  br label %102

102:                                              ; preds = %97
  %103 = load i32, i32* %13, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %13, align 4
  br label %52

105:                                              ; preds = %52
  %106 = load i64, i64* %11, align 8
  ret i64 %106
}

declare dso_local i32 @fuse_wait_on_page_writeback(%struct.inode*, i32) #1

declare dso_local i64 @fuse_send_write(%struct.fuse_req*, %struct.fuse_io_priv*, i32, i64, i32*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
