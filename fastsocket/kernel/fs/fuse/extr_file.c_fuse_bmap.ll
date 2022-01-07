; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_bmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_bmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.fuse_conn = type { i32 }
%struct.fuse_req = type { %struct.TYPE_14__, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.fuse_bmap_out* }
%struct.fuse_bmap_out = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, %struct.fuse_bmap_in* }
%struct.fuse_bmap_in = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@FUSE_BMAP = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, i32)* @fuse_bmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_bmap(%struct.address_space* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.fuse_conn*, align 8
  %8 = alloca %struct.fuse_req*, align 8
  %9 = alloca %struct.fuse_bmap_in, align 4
  %10 = alloca %struct.fuse_bmap_out, align 4
  %11 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.address_space*, %struct.address_space** %4, align 8
  %13 = getelementptr inbounds %struct.address_space, %struct.address_space* %12, i32 0, i32 0
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %6, align 8
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %15)
  store %struct.fuse_conn* %16, %struct.fuse_conn** %7, align 8
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %25 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %2
  store i32 0, i32* %3, align 4
  br label %114

29:                                               ; preds = %23
  %30 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %31 = call %struct.fuse_req* @fuse_get_req_nopages(%struct.fuse_conn* %30)
  store %struct.fuse_req* %31, %struct.fuse_req** %8, align 8
  %32 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %33 = call i64 @IS_ERR(%struct.fuse_req* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %114

36:                                               ; preds = %29
  %37 = call i32 @memset(%struct.fuse_bmap_in* %9, i32 0, i32 8)
  %38 = load i32, i32* %5, align 4
  %39 = getelementptr inbounds %struct.fuse_bmap_in, %struct.fuse_bmap_in* %9, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load %struct.inode*, %struct.inode** %6, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.fuse_bmap_in, %struct.fuse_bmap_in* %9, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @FUSE_BMAP, align 4
  %47 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %48 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  store i32 %46, i32* %50, align 4
  %51 = load %struct.inode*, %struct.inode** %6, align 8
  %52 = call i32 @get_node_id(%struct.inode* %51)
  %53 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %54 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 8
  %57 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %58 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %61 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  store i32 8, i32* %65, align 8
  %66 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %67 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  store %struct.fuse_bmap_in* %9, %struct.fuse_bmap_in** %71, align 8
  %72 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %73 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %76 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  store i32 4, i32* %80, align 8
  %81 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %82 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  store %struct.fuse_bmap_out* %10, %struct.fuse_bmap_out** %86, align 8
  %87 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %88 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %89 = call i32 @fuse_request_send(%struct.fuse_conn* %87, %struct.fuse_req* %88)
  %90 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %91 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %11, align 4
  %95 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %96 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %97 = call i32 @fuse_put_request(%struct.fuse_conn* %95, %struct.fuse_req* %96)
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* @ENOSYS, align 4
  %100 = sub nsw i32 0, %99
  %101 = icmp eq i32 %98, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %36
  %103 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %104 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %103, i32 0, i32 0
  store i32 1, i32* %104, align 4
  br label %105

105:                                              ; preds = %102, %36
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  br label %112

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.fuse_bmap_out, %struct.fuse_bmap_out* %10, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  br label %112

112:                                              ; preds = %109, %108
  %113 = phi i32 [ 0, %108 ], [ %111, %109 ]
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %112, %35, %28
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local %struct.fuse_req* @fuse_get_req_nopages(%struct.fuse_conn*) #1

declare dso_local i64 @IS_ERR(%struct.fuse_req*) #1

declare dso_local i32 @memset(%struct.fuse_bmap_in*, i32, i32) #1

declare dso_local i32 @get_node_id(%struct.inode*) #1

declare dso_local i32 @fuse_request_send(%struct.fuse_conn*, %struct.fuse_req*) #1

declare dso_local i32 @fuse_put_request(%struct.fuse_conn*, %struct.fuse_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
