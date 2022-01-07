; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_fuse_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_fuse_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_8__, %struct.inode* }
%struct.TYPE_8__ = type { i32, %struct.fuse_link_in* }
%struct.fuse_link_in = type { i32 }
%struct.fuse_conn = type { i32 }
%struct.fuse_req = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, %struct.fuse_link_in* }
%struct.TYPE_5__ = type { i32 }

@FUSE_LINK = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* @fuse_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_link(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fuse_link_in, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.fuse_conn*, align 8
  %12 = alloca %struct.fuse_req*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 1
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %10, align 8
  %16 = load %struct.inode*, %struct.inode** %10, align 8
  %17 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %16)
  store %struct.fuse_conn* %17, %struct.fuse_conn** %11, align 8
  %18 = load %struct.fuse_conn*, %struct.fuse_conn** %11, align 8
  %19 = call %struct.fuse_req* @fuse_get_req_nopages(%struct.fuse_conn* %18)
  store %struct.fuse_req* %19, %struct.fuse_req** %12, align 8
  %20 = load %struct.fuse_req*, %struct.fuse_req** %12, align 8
  %21 = call i64 @IS_ERR(%struct.fuse_req* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load %struct.fuse_req*, %struct.fuse_req** %12, align 8
  %25 = call i32 @PTR_ERR(%struct.fuse_req* %24)
  store i32 %25, i32* %4, align 4
  br label %92

26:                                               ; preds = %3
  %27 = call i32 @memset(%struct.fuse_link_in* %9, i32 0, i32 4)
  %28 = load %struct.inode*, %struct.inode** %10, align 8
  %29 = call i32 @get_node_id(%struct.inode* %28)
  %30 = getelementptr inbounds %struct.fuse_link_in, %struct.fuse_link_in* %9, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @FUSE_LINK, align 4
  %32 = load %struct.fuse_req*, %struct.fuse_req** %12, align 8
  %33 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 8
  %36 = load %struct.fuse_req*, %struct.fuse_req** %12, align 8
  %37 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  store i32 2, i32* %38, align 8
  %39 = load %struct.fuse_req*, %struct.fuse_req** %12, align 8
  %40 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i32 4, i32* %44, align 8
  %45 = load %struct.fuse_req*, %struct.fuse_req** %12, align 8
  %46 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  store %struct.fuse_link_in* %9, %struct.fuse_link_in** %50, align 8
  %51 = load %struct.dentry*, %struct.dentry** %7, align 8
  %52 = getelementptr inbounds %struct.dentry, %struct.dentry* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  %56 = load %struct.fuse_req*, %struct.fuse_req** %12, align 8
  %57 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i32 %55, i32* %61, align 8
  %62 = load %struct.dentry*, %struct.dentry** %7, align 8
  %63 = getelementptr inbounds %struct.dentry, %struct.dentry* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load %struct.fuse_link_in*, %struct.fuse_link_in** %64, align 8
  %66 = load %struct.fuse_req*, %struct.fuse_req** %12, align 8
  %67 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  store %struct.fuse_link_in* %65, %struct.fuse_link_in** %71, align 8
  %72 = load %struct.fuse_conn*, %struct.fuse_conn** %11, align 8
  %73 = load %struct.fuse_req*, %struct.fuse_req** %12, align 8
  %74 = load %struct.inode*, %struct.inode** %6, align 8
  %75 = load %struct.dentry*, %struct.dentry** %7, align 8
  %76 = load %struct.inode*, %struct.inode** %10, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @create_new_entry(%struct.fuse_conn* %72, %struct.fuse_req* %73, %struct.inode* %74, %struct.dentry* %75, i32 %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %26
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @EINTR, align 4
  %85 = sub nsw i32 0, %84
  %86 = icmp eq i32 %83, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %82, %26
  %88 = load %struct.inode*, %struct.inode** %10, align 8
  %89 = call i32 @fuse_invalidate_attr(%struct.inode* %88)
  br label %90

90:                                               ; preds = %87, %82
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %90, %23
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local %struct.fuse_req* @fuse_get_req_nopages(%struct.fuse_conn*) #1

declare dso_local i64 @IS_ERR(%struct.fuse_req*) #1

declare dso_local i32 @PTR_ERR(%struct.fuse_req*) #1

declare dso_local i32 @memset(%struct.fuse_link_in*, i32, i32) #1

declare dso_local i32 @get_node_id(%struct.inode*) #1

declare dso_local i32 @create_new_entry(%struct.fuse_conn*, %struct.fuse_req*, %struct.inode*, %struct.dentry*, i32) #1

declare dso_local i32 @fuse_invalidate_attr(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
