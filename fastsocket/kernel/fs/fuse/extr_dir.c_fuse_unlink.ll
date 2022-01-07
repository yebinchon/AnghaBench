; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_fuse_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_fuse_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.inode*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64 }
%struct.fuse_conn = type { i32 }
%struct.fuse_req = type { %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i32 }

@FUSE_UNLINK = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @fuse_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_unlink(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fuse_conn*, align 8
  %8 = alloca %struct.fuse_req*, align 8
  %9 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %10)
  store %struct.fuse_conn* %11, %struct.fuse_conn** %7, align 8
  %12 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %13 = call %struct.fuse_req* @fuse_get_req_nopages(%struct.fuse_conn* %12)
  store %struct.fuse_req* %13, %struct.fuse_req** %8, align 8
  %14 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %15 = call i64 @IS_ERR(%struct.fuse_req* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %19 = call i32 @PTR_ERR(%struct.fuse_req* %18)
  store i32 %19, i32* %3, align 4
  br label %92

20:                                               ; preds = %2
  %21 = load i32, i32* @FUSE_UNLINK, align 4
  %22 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %23 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  store i32 %21, i32* %25, align 4
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = call i32 @get_node_id(%struct.inode* %26)
  %28 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %29 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i32 %27, i32* %31, align 8
  %32 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %33 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.dentry*, %struct.dentry** %5, align 8
  %36 = getelementptr inbounds %struct.dentry, %struct.dentry* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  %40 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %41 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  store i64 %39, i64* %45, align 8
  %46 = load %struct.dentry*, %struct.dentry** %5, align 8
  %47 = getelementptr inbounds %struct.dentry, %struct.dentry* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %51 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i32 %49, i32* %55, align 8
  %56 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %57 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %58 = call i32 @fuse_request_send(%struct.fuse_conn* %56, %struct.fuse_req* %57)
  %59 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %60 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %6, align 4
  %64 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %65 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %66 = call i32 @fuse_put_request(%struct.fuse_conn* %64, %struct.fuse_req* %65)
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %20
  %70 = load %struct.dentry*, %struct.dentry** %5, align 8
  %71 = getelementptr inbounds %struct.dentry, %struct.dentry* %70, i32 0, i32 0
  %72 = load %struct.inode*, %struct.inode** %71, align 8
  store %struct.inode* %72, %struct.inode** %9, align 8
  %73 = load %struct.inode*, %struct.inode** %9, align 8
  %74 = call i32 @clear_nlink(%struct.inode* %73)
  %75 = load %struct.inode*, %struct.inode** %9, align 8
  %76 = call i32 @fuse_invalidate_attr(%struct.inode* %75)
  %77 = load %struct.inode*, %struct.inode** %4, align 8
  %78 = call i32 @fuse_invalidate_attr(%struct.inode* %77)
  %79 = load %struct.dentry*, %struct.dentry** %5, align 8
  %80 = call i32 @fuse_invalidate_entry_cache(%struct.dentry* %79)
  br label %90

81:                                               ; preds = %20
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @EINTR, align 4
  %84 = sub nsw i32 0, %83
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load %struct.dentry*, %struct.dentry** %5, align 8
  %88 = call i32 @fuse_invalidate_entry(%struct.dentry* %87)
  br label %89

89:                                               ; preds = %86, %81
  br label %90

90:                                               ; preds = %89, %69
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %17
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local %struct.fuse_req* @fuse_get_req_nopages(%struct.fuse_conn*) #1

declare dso_local i64 @IS_ERR(%struct.fuse_req*) #1

declare dso_local i32 @PTR_ERR(%struct.fuse_req*) #1

declare dso_local i32 @get_node_id(%struct.inode*) #1

declare dso_local i32 @fuse_request_send(%struct.fuse_conn*, %struct.fuse_req*) #1

declare dso_local i32 @fuse_put_request(%struct.fuse_conn*, %struct.fuse_req*) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @fuse_invalidate_attr(%struct.inode*) #1

declare dso_local i32 @fuse_invalidate_entry_cache(%struct.dentry*) #1

declare dso_local i32 @fuse_invalidate_entry(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
