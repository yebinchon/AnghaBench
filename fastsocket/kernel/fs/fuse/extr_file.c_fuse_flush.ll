; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.fuse_file*, %struct.TYPE_9__ }
%struct.fuse_file = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.fuse_conn = type { i32 }
%struct.fuse_req = type { i32, %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, %struct.fuse_flush_in* }
%struct.fuse_flush_in = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@FUSE_FLUSH = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32)* @fuse_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_flush(%struct.file* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.fuse_conn*, align 8
  %8 = alloca %struct.fuse_file*, align 8
  %9 = alloca %struct.fuse_req*, align 8
  %10 = alloca %struct.fuse_flush_in, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %6, align 8
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %18)
  store %struct.fuse_conn* %19, %struct.fuse_conn** %7, align 8
  %20 = load %struct.file*, %struct.file** %4, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 0
  %22 = load %struct.fuse_file*, %struct.fuse_file** %21, align 8
  store %struct.fuse_file* %22, %struct.fuse_file** %8, align 8
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = call i64 @is_bad_inode(%struct.inode* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %96

29:                                               ; preds = %2
  %30 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %31 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %96

35:                                               ; preds = %29
  %36 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %37 = load %struct.file*, %struct.file** %4, align 8
  %38 = call %struct.fuse_req* @fuse_get_req_nofail_nopages(%struct.fuse_conn* %36, %struct.file* %37)
  store %struct.fuse_req* %38, %struct.fuse_req** %9, align 8
  %39 = call i32 @memset(%struct.fuse_flush_in* %10, i32 0, i32 8)
  %40 = load %struct.fuse_file*, %struct.fuse_file** %8, align 8
  %41 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.fuse_flush_in, %struct.fuse_flush_in* %10, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  %44 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @fuse_lock_owner_id(%struct.fuse_conn* %44, i32 %45)
  %47 = getelementptr inbounds %struct.fuse_flush_in, %struct.fuse_flush_in* %10, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @FUSE_FLUSH, align 4
  %49 = load %struct.fuse_req*, %struct.fuse_req** %9, align 8
  %50 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  store i32 %48, i32* %52, align 4
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  %54 = call i32 @get_node_id(%struct.inode* %53)
  %55 = load %struct.fuse_req*, %struct.fuse_req** %9, align 8
  %56 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  store i32 %54, i32* %58, align 8
  %59 = load %struct.fuse_req*, %struct.fuse_req** %9, align 8
  %60 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.fuse_req*, %struct.fuse_req** %9, align 8
  %63 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  store i32 8, i32* %67, align 8
  %68 = load %struct.fuse_req*, %struct.fuse_req** %9, align 8
  %69 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  store %struct.fuse_flush_in* %10, %struct.fuse_flush_in** %73, align 8
  %74 = load %struct.fuse_req*, %struct.fuse_req** %9, align 8
  %75 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %77 = load %struct.fuse_req*, %struct.fuse_req** %9, align 8
  %78 = call i32 @fuse_request_send(%struct.fuse_conn* %76, %struct.fuse_req* %77)
  %79 = load %struct.fuse_req*, %struct.fuse_req** %9, align 8
  %80 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %11, align 4
  %84 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %85 = load %struct.fuse_req*, %struct.fuse_req** %9, align 8
  %86 = call i32 @fuse_put_request(%struct.fuse_conn* %84, %struct.fuse_req* %85)
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* @ENOSYS, align 4
  %89 = sub nsw i32 0, %88
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %35
  %92 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %93 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %92, i32 0, i32 0
  store i32 1, i32* %93, align 4
  store i32 0, i32* %11, align 4
  br label %94

94:                                               ; preds = %91, %35
  %95 = load i32, i32* %11, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %94, %34, %26
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local %struct.fuse_req* @fuse_get_req_nofail_nopages(%struct.fuse_conn*, %struct.file*) #1

declare dso_local i32 @memset(%struct.fuse_flush_in*, i32, i32) #1

declare dso_local i32 @fuse_lock_owner_id(%struct.fuse_conn*, i32) #1

declare dso_local i32 @get_node_id(%struct.inode*) #1

declare dso_local i32 @fuse_request_send(%struct.fuse_conn*, %struct.fuse_req*) #1

declare dso_local i32 @fuse_put_request(%struct.fuse_conn*, %struct.fuse_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
