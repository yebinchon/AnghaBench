; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_inode.c_fuse_statfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_inode.c_fuse_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.kstatfs = type { i32 }
%struct.fuse_conn = type { i32 }
%struct.fuse_req = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.fuse_statfs_out* }
%struct.fuse_statfs_out = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, i32 }

@FUSE_SUPER_MAGIC = common dso_local global i32 0, align 4
@FUSE_STATFS = common dso_local global i32 0, align 4
@FUSE_COMPAT_STATFS_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.kstatfs*)* @fuse_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.kstatfs*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.fuse_conn*, align 8
  %8 = alloca %struct.fuse_req*, align 8
  %9 = alloca %struct.fuse_statfs_out, align 4
  %10 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %5, align 8
  %11 = load %struct.dentry*, %struct.dentry** %4, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 1
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %6, align 8
  %14 = load %struct.super_block*, %struct.super_block** %6, align 8
  %15 = call %struct.fuse_conn* @get_fuse_conn_super(%struct.super_block* %14)
  store %struct.fuse_conn* %15, %struct.fuse_conn** %7, align 8
  %16 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %17 = call i32 @fuse_allow_current_process(%struct.fuse_conn* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @FUSE_SUPER_MAGIC, align 4
  %21 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %22 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  store i32 0, i32* %3, align 4
  br label %95

23:                                               ; preds = %2
  %24 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %25 = call %struct.fuse_req* @fuse_get_req_nopages(%struct.fuse_conn* %24)
  store %struct.fuse_req* %25, %struct.fuse_req** %8, align 8
  %26 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %27 = call i64 @IS_ERR(%struct.fuse_req* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %31 = call i32 @PTR_ERR(%struct.fuse_req* %30)
  store i32 %31, i32* %3, align 4
  br label %95

32:                                               ; preds = %23
  %33 = call i32 @memset(%struct.fuse_statfs_out* %9, i32 0, i32 4)
  %34 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %35 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* @FUSE_STATFS, align 4
  %38 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %39 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  store i32 %37, i32* %41, align 4
  %42 = load %struct.dentry*, %struct.dentry** %4, align 8
  %43 = getelementptr inbounds %struct.dentry, %struct.dentry* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @get_node_id(i32 %44)
  %46 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %47 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 8
  %50 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %51 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %54 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %55, 4
  br i1 %56, label %57, label %60

57:                                               ; preds = %32
  %58 = load i32, i32* @FUSE_COMPAT_STATFS_SIZE, align 4
  %59 = sext i32 %58 to i64
  br label %61

60:                                               ; preds = %32
  br label %61

61:                                               ; preds = %60, %57
  %62 = phi i64 [ %59, %57 ], [ 4, %60 ]
  %63 = trunc i64 %62 to i32
  %64 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %65 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  store i32 %63, i32* %69, align 8
  %70 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %71 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  store %struct.fuse_statfs_out* %9, %struct.fuse_statfs_out** %75, align 8
  %76 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %77 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %78 = call i32 @fuse_request_send(%struct.fuse_conn* %76, %struct.fuse_req* %77)
  %79 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %80 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %61
  %87 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %88 = getelementptr inbounds %struct.fuse_statfs_out, %struct.fuse_statfs_out* %9, i32 0, i32 0
  %89 = call i32 @convert_fuse_statfs(%struct.kstatfs* %87, i32* %88)
  br label %90

90:                                               ; preds = %86, %61
  %91 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %92 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %93 = call i32 @fuse_put_request(%struct.fuse_conn* %91, %struct.fuse_req* %92)
  %94 = load i32, i32* %10, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %90, %29, %19
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.fuse_conn* @get_fuse_conn_super(%struct.super_block*) #1

declare dso_local i32 @fuse_allow_current_process(%struct.fuse_conn*) #1

declare dso_local %struct.fuse_req* @fuse_get_req_nopages(%struct.fuse_conn*) #1

declare dso_local i64 @IS_ERR(%struct.fuse_req*) #1

declare dso_local i32 @PTR_ERR(%struct.fuse_req*) #1

declare dso_local i32 @memset(%struct.fuse_statfs_out*, i32, i32) #1

declare dso_local i32 @get_node_id(i32) #1

declare dso_local i32 @fuse_request_send(%struct.fuse_conn*, %struct.fuse_req*) #1

declare dso_local i32 @convert_fuse_statfs(%struct.kstatfs*, i32*) #1

declare dso_local i32 @fuse_put_request(%struct.fuse_conn*, %struct.fuse_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
