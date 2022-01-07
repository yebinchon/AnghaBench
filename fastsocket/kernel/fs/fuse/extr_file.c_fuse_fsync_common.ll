; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_fsync_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_fsync_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.fuse_file* }
%struct.fuse_file = type { i32 }
%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.fuse_conn = type { i32, i32 }
%struct.fuse_req = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, %struct.fuse_fsync_in* }
%struct.fuse_fsync_in = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@FUSE_FSYNCDIR = common dso_local global i32 0, align 4
@FUSE_FSYNC = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_fsync_common(%struct.file* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.fuse_conn*, align 8
  %12 = alloca %struct.fuse_file*, align 8
  %13 = alloca %struct.fuse_req*, align 8
  %14 = alloca %struct.fuse_fsync_in, align 4
  %15 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.dentry*, %struct.dentry** %7, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 0
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %10, align 8
  %19 = load %struct.inode*, %struct.inode** %10, align 8
  %20 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %19)
  store %struct.fuse_conn* %20, %struct.fuse_conn** %11, align 8
  %21 = load %struct.file*, %struct.file** %6, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 0
  %23 = load %struct.fuse_file*, %struct.fuse_file** %22, align 8
  store %struct.fuse_file* %23, %struct.fuse_file** %12, align 8
  %24 = load %struct.inode*, %struct.inode** %10, align 8
  %25 = call i64 @is_bad_inode(%struct.inode* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %136

30:                                               ; preds = %4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load %struct.fuse_conn*, %struct.fuse_conn** %11, align 8
  %35 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %33, %30
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.fuse_conn*, %struct.fuse_conn** %11, align 8
  %43 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41, %33
  store i32 0, i32* %5, align 4
  br label %136

47:                                               ; preds = %41, %38
  %48 = load %struct.inode*, %struct.inode** %10, align 8
  %49 = call i32 @write_inode_now(%struct.inode* %48, i32 0)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %15, align 4
  store i32 %53, i32* %5, align 4
  br label %136

54:                                               ; preds = %47
  %55 = load %struct.inode*, %struct.inode** %10, align 8
  %56 = call i32 @fuse_sync_writes(%struct.inode* %55)
  %57 = load %struct.fuse_conn*, %struct.fuse_conn** %11, align 8
  %58 = call %struct.fuse_req* @fuse_get_req_nopages(%struct.fuse_conn* %57)
  store %struct.fuse_req* %58, %struct.fuse_req** %13, align 8
  %59 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %60 = call i64 @IS_ERR(%struct.fuse_req* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %64 = call i32 @PTR_ERR(%struct.fuse_req* %63)
  store i32 %64, i32* %5, align 4
  br label %136

65:                                               ; preds = %54
  %66 = call i32 @memset(%struct.fuse_fsync_in* %14, i32 0, i32 8)
  %67 = load %struct.fuse_file*, %struct.fuse_file** %12, align 8
  %68 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.fuse_fsync_in, %struct.fuse_fsync_in* %14, i32 0, i32 1
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 1, i32 0
  %75 = getelementptr inbounds %struct.fuse_fsync_in, %struct.fuse_fsync_in* %14, i32 0, i32 0
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %65
  %79 = load i32, i32* @FUSE_FSYNCDIR, align 4
  br label %82

80:                                               ; preds = %65
  %81 = load i32, i32* @FUSE_FSYNC, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  %84 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %85 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  store i32 %83, i32* %87, align 4
  %88 = load %struct.inode*, %struct.inode** %10, align 8
  %89 = call i32 @get_node_id(%struct.inode* %88)
  %90 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %91 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  store i32 %89, i32* %93, align 8
  %94 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %95 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  store i32 1, i32* %96, align 8
  %97 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %98 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i64 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  store i32 8, i32* %102, align 8
  %103 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %104 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  store %struct.fuse_fsync_in* %14, %struct.fuse_fsync_in** %108, align 8
  %109 = load %struct.fuse_conn*, %struct.fuse_conn** %11, align 8
  %110 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %111 = call i32 @fuse_request_send(%struct.fuse_conn* %109, %struct.fuse_req* %110)
  %112 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %113 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  store i32 %116, i32* %15, align 4
  %117 = load %struct.fuse_conn*, %struct.fuse_conn** %11, align 8
  %118 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %119 = call i32 @fuse_put_request(%struct.fuse_conn* %117, %struct.fuse_req* %118)
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* @ENOSYS, align 4
  %122 = sub nsw i32 0, %121
  %123 = icmp eq i32 %120, %122
  br i1 %123, label %124, label %134

124:                                              ; preds = %82
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load %struct.fuse_conn*, %struct.fuse_conn** %11, align 8
  %129 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %128, i32 0, i32 1
  store i32 1, i32* %129, align 4
  br label %133

130:                                              ; preds = %124
  %131 = load %struct.fuse_conn*, %struct.fuse_conn** %11, align 8
  %132 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %131, i32 0, i32 0
  store i32 1, i32* %132, align 4
  br label %133

133:                                              ; preds = %130, %127
  store i32 0, i32* %15, align 4
  br label %134

134:                                              ; preds = %133, %82
  %135 = load i32, i32* %15, align 4
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %134, %62, %52, %46, %27
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @write_inode_now(%struct.inode*, i32) #1

declare dso_local i32 @fuse_sync_writes(%struct.inode*) #1

declare dso_local %struct.fuse_req* @fuse_get_req_nopages(%struct.fuse_conn*) #1

declare dso_local i64 @IS_ERR(%struct.fuse_req*) #1

declare dso_local i32 @PTR_ERR(%struct.fuse_req*) #1

declare dso_local i32 @memset(%struct.fuse_fsync_in*, i32, i32) #1

declare dso_local i32 @get_node_id(%struct.inode*) #1

declare dso_local i32 @fuse_request_send(%struct.fuse_conn*, %struct.fuse_req*) #1

declare dso_local i32 @fuse_put_request(%struct.fuse_conn*, %struct.fuse_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
