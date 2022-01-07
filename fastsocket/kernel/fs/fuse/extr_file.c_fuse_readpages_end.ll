; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_readpages_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_readpages_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { i32 }
%struct.fuse_req = type { i32, i64, %struct.TYPE_14__, %struct.page**, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_9__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.page = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_conn*, %struct.fuse_req*)* @fuse_readpages_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_readpages_end(%struct.fuse_conn* %0, %struct.fuse_req* %1) #0 {
  %3 = alloca %struct.fuse_conn*, align 8
  %4 = alloca %struct.fuse_req*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.page*, align 8
  store %struct.fuse_conn* %0, %struct.fuse_conn** %3, align 8
  store %struct.fuse_req* %1, %struct.fuse_req** %4, align 8
  %11 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %12 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  %17 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %18 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  %24 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %25 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %24, i32 0, i32 3
  %26 = load %struct.page**, %struct.page*** %25, align 8
  %27 = getelementptr inbounds %struct.page*, %struct.page** %26, i64 0
  %28 = load %struct.page*, %struct.page** %27, align 8
  %29 = getelementptr inbounds %struct.page, %struct.page* %28, i32 0, i32 0
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load %struct.inode*, %struct.inode** %31, align 8
  store %struct.inode* %32, %struct.inode** %8, align 8
  %33 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %34 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %60, label %39

39:                                               ; preds = %2
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %39
  %44 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %45 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %44, i32 0, i32 3
  %46 = load %struct.page**, %struct.page*** %45, align 8
  %47 = getelementptr inbounds %struct.page*, %struct.page** %46, i64 0
  %48 = load %struct.page*, %struct.page** %47, align 8
  %49 = call i64 @page_offset(%struct.page* %48)
  %50 = load i64, i64* %7, align 8
  %51 = add i64 %49, %50
  store i64 %51, i64* %9, align 8
  %52 = load %struct.inode*, %struct.inode** %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %55 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @fuse_read_update_size(%struct.inode* %52, i64 %53, i32 %58)
  br label %60

60:                                               ; preds = %43, %39, %2
  %61 = load %struct.inode*, %struct.inode** %8, align 8
  %62 = call i32 @fuse_invalidate_attr(%struct.inode* %61)
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %92, %60
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %66 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %95

69:                                               ; preds = %63
  %70 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %71 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %70, i32 0, i32 3
  %72 = load %struct.page**, %struct.page*** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.page*, %struct.page** %72, i64 %74
  %76 = load %struct.page*, %struct.page** %75, align 8
  store %struct.page* %76, %struct.page** %10, align 8
  %77 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %78 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %69
  %84 = load %struct.page*, %struct.page** %10, align 8
  %85 = call i32 @SetPageUptodate(%struct.page* %84)
  br label %89

86:                                               ; preds = %69
  %87 = load %struct.page*, %struct.page** %10, align 8
  %88 = call i32 @SetPageError(%struct.page* %87)
  br label %89

89:                                               ; preds = %86, %83
  %90 = load %struct.page*, %struct.page** %10, align 8
  %91 = call i32 @unlock_page(%struct.page* %90)
  br label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %63

95:                                               ; preds = %63
  %96 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %97 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %102 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @fuse_file_put(i64 %103)
  br label %105

105:                                              ; preds = %100, %95
  ret void
}

declare dso_local i64 @page_offset(%struct.page*) #1

declare dso_local i32 @fuse_read_update_size(%struct.inode*, i64, i32) #1

declare dso_local i32 @fuse_invalidate_attr(%struct.inode*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @fuse_file_put(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
