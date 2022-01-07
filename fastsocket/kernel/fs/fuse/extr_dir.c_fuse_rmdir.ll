; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_fuse_rmdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_fuse_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64 }
%struct.fuse_conn = type { i32 }
%struct.fuse_req = type { %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i32 }

@FUSE_RMDIR = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @fuse_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_rmdir(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fuse_conn*, align 8
  %8 = alloca %struct.fuse_req*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %9)
  store %struct.fuse_conn* %10, %struct.fuse_conn** %7, align 8
  %11 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %12 = call %struct.fuse_req* @fuse_get_req_nopages(%struct.fuse_conn* %11)
  store %struct.fuse_req* %12, %struct.fuse_req** %8, align 8
  %13 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %14 = call i64 @IS_ERR(%struct.fuse_req* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %18 = call i32 @PTR_ERR(%struct.fuse_req* %17)
  store i32 %18, i32* %3, align 4
  br label %88

19:                                               ; preds = %2
  %20 = load i32, i32* @FUSE_RMDIR, align 4
  %21 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %22 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  store i32 %20, i32* %24, align 4
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = call i32 @get_node_id(%struct.inode* %25)
  %27 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %28 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 8
  %31 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %32 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.dentry*, %struct.dentry** %5, align 8
  %35 = getelementptr inbounds %struct.dentry, %struct.dentry* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  %39 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %40 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  store i64 %38, i64* %44, align 8
  %45 = load %struct.dentry*, %struct.dentry** %5, align 8
  %46 = getelementptr inbounds %struct.dentry, %struct.dentry* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %50 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store i32 %48, i32* %54, align 8
  %55 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %56 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %57 = call i32 @fuse_request_send(%struct.fuse_conn* %55, %struct.fuse_req* %56)
  %58 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %59 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %6, align 4
  %63 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %64 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %65 = call i32 @fuse_put_request(%struct.fuse_conn* %63, %struct.fuse_req* %64)
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %19
  %69 = load %struct.dentry*, %struct.dentry** %5, align 8
  %70 = getelementptr inbounds %struct.dentry, %struct.dentry* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @clear_nlink(i32 %71)
  %73 = load %struct.inode*, %struct.inode** %4, align 8
  %74 = call i32 @fuse_invalidate_attr(%struct.inode* %73)
  %75 = load %struct.dentry*, %struct.dentry** %5, align 8
  %76 = call i32 @fuse_invalidate_entry_cache(%struct.dentry* %75)
  br label %86

77:                                               ; preds = %19
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @EINTR, align 4
  %80 = sub nsw i32 0, %79
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load %struct.dentry*, %struct.dentry** %5, align 8
  %84 = call i32 @fuse_invalidate_entry(%struct.dentry* %83)
  br label %85

85:                                               ; preds = %82, %77
  br label %86

86:                                               ; preds = %85, %68
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %16
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local %struct.fuse_req* @fuse_get_req_nopages(%struct.fuse_conn*) #1

declare dso_local i64 @IS_ERR(%struct.fuse_req*) #1

declare dso_local i32 @PTR_ERR(%struct.fuse_req*) #1

declare dso_local i32 @get_node_id(%struct.inode*) #1

declare dso_local i32 @fuse_request_send(%struct.fuse_conn*, %struct.fuse_req*) #1

declare dso_local i32 @fuse_put_request(%struct.fuse_conn*, %struct.fuse_req*) #1

declare dso_local i32 @clear_nlink(i32) #1

declare dso_local i32 @fuse_invalidate_attr(%struct.inode*) #1

declare dso_local i32 @fuse_invalidate_entry_cache(%struct.dentry*) #1

declare dso_local i32 @fuse_invalidate_entry(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
