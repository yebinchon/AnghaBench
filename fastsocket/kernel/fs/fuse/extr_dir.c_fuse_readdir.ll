; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_fuse_readdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_fuse_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.fuse_conn = type { i64 }
%struct.fuse_req = type { i32, %struct.TYPE_12__, %struct.TYPE_9__*, %struct.page** }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@FUSE_READDIRPLUS = common dso_local global i32 0, align 4
@FUSE_READDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @fuse_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_readdir(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.fuse_conn*, align 8
  %13 = alloca %struct.fuse_req*, align 8
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %11, align 8
  %21 = load %struct.inode*, %struct.inode** %11, align 8
  %22 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %21)
  store %struct.fuse_conn* %22, %struct.fuse_conn** %12, align 8
  store i32 0, i32* %14, align 4
  %23 = load %struct.inode*, %struct.inode** %11, align 8
  %24 = call i64 @is_bad_inode(%struct.inode* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %140

29:                                               ; preds = %3
  %30 = load %struct.fuse_conn*, %struct.fuse_conn** %12, align 8
  %31 = call %struct.fuse_req* @fuse_get_req(%struct.fuse_conn* %30, i32 1)
  store %struct.fuse_req* %31, %struct.fuse_req** %13, align 8
  %32 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %33 = call i64 @IS_ERR(%struct.fuse_req* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %37 = call i32 @PTR_ERR(%struct.fuse_req* %36)
  store i32 %37, i32* %4, align 4
  br label %140

38:                                               ; preds = %29
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.page* @alloc_page(i32 %39)
  store %struct.page* %40, %struct.page** %10, align 8
  %41 = load %struct.page*, %struct.page** %10, align 8
  %42 = icmp ne %struct.page* %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %38
  %44 = load %struct.fuse_conn*, %struct.fuse_conn** %12, align 8
  %45 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %46 = call i32 @fuse_put_request(%struct.fuse_conn* %44, %struct.fuse_req* %45)
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %140

49:                                               ; preds = %38
  %50 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %51 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %54 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load %struct.page*, %struct.page** %10, align 8
  %56 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %57 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %56, i32 0, i32 3
  %58 = load %struct.page**, %struct.page*** %57, align 8
  %59 = getelementptr inbounds %struct.page*, %struct.page** %58, i64 0
  store %struct.page* %55, %struct.page** %59, align 8
  %60 = load i32, i32* @PAGE_SIZE, align 4
  %61 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %62 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %61, i32 0, i32 2
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  store i32 %60, i32* %65, align 4
  %66 = load %struct.fuse_conn*, %struct.fuse_conn** %12, align 8
  %67 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %49
  %71 = load %struct.fuse_conn*, %struct.fuse_conn** %12, align 8
  %72 = call i32 @fuse_get_attr_version(%struct.fuse_conn* %71)
  store i32 %72, i32* %14, align 4
  %73 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %74 = load %struct.file*, %struct.file** %5, align 8
  %75 = load %struct.file*, %struct.file** %5, align 8
  %76 = getelementptr inbounds %struct.file, %struct.file* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @PAGE_SIZE, align 4
  %79 = load i32, i32* @FUSE_READDIRPLUS, align 4
  %80 = call i32 @fuse_read_fill(%struct.fuse_req* %73, %struct.file* %74, i32 %77, i32 %78, i32 %79)
  br label %90

81:                                               ; preds = %49
  %82 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %83 = load %struct.file*, %struct.file** %5, align 8
  %84 = load %struct.file*, %struct.file** %5, align 8
  %85 = getelementptr inbounds %struct.file, %struct.file* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @PAGE_SIZE, align 4
  %88 = load i32, i32* @FUSE_READDIR, align 4
  %89 = call i32 @fuse_read_fill(%struct.fuse_req* %82, %struct.file* %83, i32 %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %81, %70
  %91 = load %struct.fuse_conn*, %struct.fuse_conn** %12, align 8
  %92 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %93 = call i32 @fuse_request_send(%struct.fuse_conn* %91, %struct.fuse_req* %92)
  %94 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %95 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %9, align 8
  %101 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %102 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %8, align 4
  %106 = load %struct.fuse_conn*, %struct.fuse_conn** %12, align 8
  %107 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %108 = call i32 @fuse_put_request(%struct.fuse_conn* %106, %struct.fuse_req* %107)
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %134, label %111

111:                                              ; preds = %90
  %112 = load %struct.fuse_conn*, %struct.fuse_conn** %12, align 8
  %113 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %111
  %117 = load %struct.page*, %struct.page** %10, align 8
  %118 = call i32 @page_address(%struct.page* %117)
  %119 = load i64, i64* %9, align 8
  %120 = load %struct.file*, %struct.file** %5, align 8
  %121 = load i8*, i8** %6, align 8
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* %14, align 4
  %124 = call i32 @parse_dirplusfile(i32 %118, i64 %119, %struct.file* %120, i8* %121, i32 %122, i32 %123)
  store i32 %124, i32* %8, align 4
  br label %133

125:                                              ; preds = %111
  %126 = load %struct.page*, %struct.page** %10, align 8
  %127 = call i32 @page_address(%struct.page* %126)
  %128 = load i64, i64* %9, align 8
  %129 = load %struct.file*, %struct.file** %5, align 8
  %130 = load i8*, i8** %6, align 8
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @parse_dirfile(i32 %127, i64 %128, %struct.file* %129, i8* %130, i32 %131)
  store i32 %132, i32* %8, align 4
  br label %133

133:                                              ; preds = %125, %116
  br label %134

134:                                              ; preds = %133, %90
  %135 = load %struct.page*, %struct.page** %10, align 8
  %136 = call i32 @__free_page(%struct.page* %135)
  %137 = load %struct.inode*, %struct.inode** %11, align 8
  %138 = call i32 @fuse_invalidate_attr(%struct.inode* %137)
  %139 = load i32, i32* %8, align 4
  store i32 %139, i32* %4, align 4
  br label %140

140:                                              ; preds = %134, %43, %35, %26
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local %struct.fuse_req* @fuse_get_req(%struct.fuse_conn*, i32) #1

declare dso_local i64 @IS_ERR(%struct.fuse_req*) #1

declare dso_local i32 @PTR_ERR(%struct.fuse_req*) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @fuse_put_request(%struct.fuse_conn*, %struct.fuse_req*) #1

declare dso_local i32 @fuse_get_attr_version(%struct.fuse_conn*) #1

declare dso_local i32 @fuse_read_fill(%struct.fuse_req*, %struct.file*, i32, i32, i32) #1

declare dso_local i32 @fuse_request_send(%struct.fuse_conn*, %struct.fuse_req*) #1

declare dso_local i32 @parse_dirplusfile(i32, i64, %struct.file*, i8*, i32, i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @parse_dirfile(i32, i64, %struct.file*, i8*, i32) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @fuse_invalidate_attr(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
