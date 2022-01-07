; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_fuse_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_fuse_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.fuse_conn = type { i32 }
%struct.fuse_req = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, %struct.fuse_access_in* }
%struct.fuse_access_in = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@MAY_READ = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4
@FUSE_ACCESS = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32)* @fuse_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_access(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fuse_conn*, align 8
  %7 = alloca %struct.fuse_req*, align 8
  %8 = alloca %struct.fuse_access_in, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %10)
  store %struct.fuse_conn* %11, %struct.fuse_conn** %6, align 8
  %12 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %13 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %82

17:                                               ; preds = %2
  %18 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %19 = call %struct.fuse_req* @fuse_get_req_nopages(%struct.fuse_conn* %18)
  store %struct.fuse_req* %19, %struct.fuse_req** %7, align 8
  %20 = load %struct.fuse_req*, %struct.fuse_req** %7, align 8
  %21 = call i64 @IS_ERR(%struct.fuse_req* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.fuse_req*, %struct.fuse_req** %7, align 8
  %25 = call i32 @PTR_ERR(%struct.fuse_req* %24)
  store i32 %25, i32* %3, align 4
  br label %82

26:                                               ; preds = %17
  %27 = call i32 @memset(%struct.fuse_access_in* %8, i32 0, i32 4)
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @MAY_READ, align 4
  %30 = load i32, i32* @MAY_WRITE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @MAY_EXEC, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %28, %33
  %35 = getelementptr inbounds %struct.fuse_access_in, %struct.fuse_access_in* %8, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @FUSE_ACCESS, align 4
  %37 = load %struct.fuse_req*, %struct.fuse_req** %7, align 8
  %38 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  store i32 %36, i32* %40, align 4
  %41 = load %struct.inode*, %struct.inode** %4, align 8
  %42 = call i32 @get_node_id(%struct.inode* %41)
  %43 = load %struct.fuse_req*, %struct.fuse_req** %7, align 8
  %44 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i32 %42, i32* %46, align 8
  %47 = load %struct.fuse_req*, %struct.fuse_req** %7, align 8
  %48 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.fuse_req*, %struct.fuse_req** %7, align 8
  %51 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i32 4, i32* %55, align 8
  %56 = load %struct.fuse_req*, %struct.fuse_req** %7, align 8
  %57 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  store %struct.fuse_access_in* %8, %struct.fuse_access_in** %61, align 8
  %62 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %63 = load %struct.fuse_req*, %struct.fuse_req** %7, align 8
  %64 = call i32 @fuse_request_send(%struct.fuse_conn* %62, %struct.fuse_req* %63)
  %65 = load %struct.fuse_req*, %struct.fuse_req** %7, align 8
  %66 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %9, align 4
  %70 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %71 = load %struct.fuse_req*, %struct.fuse_req** %7, align 8
  %72 = call i32 @fuse_put_request(%struct.fuse_conn* %70, %struct.fuse_req* %71)
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @ENOSYS, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %26
  %78 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %79 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %78, i32 0, i32 0
  store i32 1, i32* %79, align 4
  store i32 0, i32* %9, align 4
  br label %80

80:                                               ; preds = %77, %26
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %23, %16
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local %struct.fuse_req* @fuse_get_req_nopages(%struct.fuse_conn*) #1

declare dso_local i64 @IS_ERR(%struct.fuse_req*) #1

declare dso_local i32 @PTR_ERR(%struct.fuse_req*) #1

declare dso_local i32 @memset(%struct.fuse_access_in*, i32, i32) #1

declare dso_local i32 @get_node_id(%struct.inode*) #1

declare dso_local i32 @fuse_request_send(%struct.fuse_conn*, %struct.fuse_req*) #1

declare dso_local i32 @fuse_put_request(%struct.fuse_conn*, %struct.fuse_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
