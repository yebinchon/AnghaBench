; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_buffered_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_buffered_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.fuse_conn = type { i32 }
%struct.fuse_req = type { i32, %struct.TYPE_8__, %struct.TYPE_6__*, %struct.page**, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.fuse_io_priv = type { %struct.file*, i32 }

@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.inode*, i32, i32, %struct.page*)* @fuse_buffered_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_buffered_write(%struct.file* %0, %struct.inode* %1, i32 %2, i32 %3, %struct.page* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.fuse_conn*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.fuse_req*, align 8
  %17 = alloca %struct.fuse_io_priv, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.page* %4, %struct.page** %11, align 8
  %18 = load %struct.inode*, %struct.inode** %8, align 8
  %19 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %18)
  store %struct.fuse_conn* %19, %struct.fuse_conn** %14, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %22 = sub nsw i32 %21, 1
  %23 = and i32 %20, %22
  store i32 %23, i32* %15, align 4
  %24 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %17, i32 0, i32 0
  %25 = load %struct.file*, %struct.file** %7, align 8
  store %struct.file* %25, %struct.file** %24, align 8
  %26 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %17, i32 0, i32 1
  store i32 0, i32* %26, align 8
  %27 = load %struct.inode*, %struct.inode** %8, align 8
  %28 = call i64 @is_bad_inode(%struct.inode* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %122

33:                                               ; preds = %5
  %34 = load %struct.inode*, %struct.inode** %8, align 8
  %35 = load %struct.page*, %struct.page** %11, align 8
  %36 = getelementptr inbounds %struct.page, %struct.page* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @fuse_wait_on_page_writeback(%struct.inode* %34, i32 %37)
  %39 = load %struct.fuse_conn*, %struct.fuse_conn** %14, align 8
  %40 = call %struct.fuse_req* @fuse_get_req(%struct.fuse_conn* %39, i32 1)
  store %struct.fuse_req* %40, %struct.fuse_req** %16, align 8
  %41 = load %struct.fuse_req*, %struct.fuse_req** %16, align 8
  %42 = call i64 @IS_ERR(%struct.fuse_req* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %33
  %45 = load %struct.fuse_req*, %struct.fuse_req** %16, align 8
  %46 = call i32 @PTR_ERR(%struct.fuse_req* %45)
  store i32 %46, i32* %6, align 4
  br label %122

47:                                               ; preds = %33
  %48 = load %struct.fuse_req*, %struct.fuse_req** %16, align 8
  %49 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.fuse_req*, %struct.fuse_req** %16, align 8
  %52 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load %struct.page*, %struct.page** %11, align 8
  %54 = load %struct.fuse_req*, %struct.fuse_req** %16, align 8
  %55 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %54, i32 0, i32 3
  %56 = load %struct.page**, %struct.page*** %55, align 8
  %57 = getelementptr inbounds %struct.page*, %struct.page** %56, i64 0
  store %struct.page* %53, %struct.page** %57, align 8
  %58 = load i32, i32* %15, align 4
  %59 = load %struct.fuse_req*, %struct.fuse_req** %16, align 8
  %60 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %59, i32 0, i32 2
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i32 %58, i32* %63, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.fuse_req*, %struct.fuse_req** %16, align 8
  %66 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %65, i32 0, i32 2
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  store i32 %64, i32* %69, align 4
  %70 = load %struct.fuse_req*, %struct.fuse_req** %16, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i64 @fuse_send_write(%struct.fuse_req* %70, %struct.fuse_io_priv* %17, i32 %71, i32 %72, i32* null)
  store i64 %73, i64* %13, align 8
  %74 = load %struct.fuse_req*, %struct.fuse_req** %16, align 8
  %75 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %12, align 4
  %79 = load %struct.fuse_conn*, %struct.fuse_conn** %14, align 8
  %80 = load %struct.fuse_req*, %struct.fuse_req** %16, align 8
  %81 = call i32 @fuse_put_request(%struct.fuse_conn* %79, %struct.fuse_req* %80)
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %47
  %85 = load i64, i64* %13, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* @EIO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %12, align 4
  br label %90

90:                                               ; preds = %87, %84, %47
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %109, label %93

93:                                               ; preds = %90
  %94 = load i64, i64* %13, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = add i64 %96, %94
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %9, align 4
  %99 = load %struct.inode*, %struct.inode** %8, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @fuse_write_update_size(%struct.inode* %99, i32 %100)
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %93
  %106 = load %struct.page*, %struct.page** %11, align 8
  %107 = call i32 @SetPageUptodate(%struct.page* %106)
  br label %108

108:                                              ; preds = %105, %93
  br label %109

109:                                              ; preds = %108, %90
  %110 = load %struct.inode*, %struct.inode** %8, align 8
  %111 = call i32 @fuse_invalidate_attr(%struct.inode* %110)
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  br label %119

117:                                              ; preds = %109
  %118 = load i64, i64* %13, align 8
  br label %119

119:                                              ; preds = %117, %114
  %120 = phi i64 [ %116, %114 ], [ %118, %117 ]
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %119, %44, %30
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @fuse_wait_on_page_writeback(%struct.inode*, i32) #1

declare dso_local %struct.fuse_req* @fuse_get_req(%struct.fuse_conn*, i32) #1

declare dso_local i64 @IS_ERR(%struct.fuse_req*) #1

declare dso_local i32 @PTR_ERR(%struct.fuse_req*) #1

declare dso_local i64 @fuse_send_write(%struct.fuse_req*, %struct.fuse_io_priv*, i32, i32, i32*) #1

declare dso_local i32 @fuse_put_request(%struct.fuse_conn*, %struct.fuse_req*) #1

declare dso_local i32 @fuse_write_update_size(%struct.inode*, i32) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @fuse_invalidate_attr(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
