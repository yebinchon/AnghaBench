; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_read_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_read_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.fuse_conn = type { i32 }
%struct.fuse_req = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64, i8* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FUSE_READLINK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dentry*)* @read_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_link(%struct.dentry* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.fuse_conn*, align 8
  %6 = alloca %struct.fuse_req*, align 8
  %7 = alloca i8*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  %8 = load %struct.dentry*, %struct.dentry** %3, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 0
  %10 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %10, %struct.inode** %4, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %11)
  store %struct.fuse_conn* %12, %struct.fuse_conn** %5, align 8
  %13 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %14 = call %struct.fuse_req* @fuse_get_req_nopages(%struct.fuse_conn* %13)
  store %struct.fuse_req* %14, %struct.fuse_req** %6, align 8
  %15 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %16 = call i64 @IS_ERR(%struct.fuse_req* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %20 = call i8* @ERR_CAST(%struct.fuse_req* %19)
  store i8* %20, i8** %2, align 8
  br label %101

21:                                               ; preds = %1
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i64 @__get_free_page(i32 %22)
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  %30 = call i8* @ERR_PTR(i32 %29)
  store i8* %30, i8** %7, align 8
  br label %94

31:                                               ; preds = %21
  %32 = load i32, i32* @FUSE_READLINK, align 4
  %33 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %34 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  store i32 %32, i32* %36, align 4
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = call i32 @get_node_id(%struct.inode* %37)
  %39 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %40 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 8
  %43 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %44 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %47 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  %49 = load i64, i64* @PAGE_SIZE, align 8
  %50 = sub i64 %49, 1
  %51 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %52 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  store i64 %50, i64* %56, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %59 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  store i8* %57, i8** %63, align 8
  %64 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %65 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %66 = call i32 @fuse_request_send(%struct.fuse_conn* %64, %struct.fuse_req* %65)
  %67 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %68 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %31
  %74 = load i8*, i8** %7, align 8
  %75 = ptrtoint i8* %74 to i64
  %76 = call i32 @free_page(i64 %75)
  %77 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %78 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i8* @ERR_PTR(i32 %81)
  store i8* %82, i8** %7, align 8
  br label %93

83:                                               ; preds = %31
  %84 = load i8*, i8** %7, align 8
  %85 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %86 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i64 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i8, i8* %84, i64 %91
  store i8 0, i8* %92, align 1
  br label %93

93:                                               ; preds = %83, %73
  br label %94

94:                                               ; preds = %93, %27
  %95 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %96 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %97 = call i32 @fuse_put_request(%struct.fuse_conn* %95, %struct.fuse_req* %96)
  %98 = load %struct.inode*, %struct.inode** %4, align 8
  %99 = call i32 @fuse_invalidate_attr(%struct.inode* %98)
  %100 = load i8*, i8** %7, align 8
  store i8* %100, i8** %2, align 8
  br label %101

101:                                              ; preds = %94, %18
  %102 = load i8*, i8** %2, align 8
  ret i8* %102
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local %struct.fuse_req* @fuse_get_req_nopages(%struct.fuse_conn*) #1

declare dso_local i64 @IS_ERR(%struct.fuse_req*) #1

declare dso_local i8* @ERR_CAST(%struct.fuse_req*) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @get_node_id(%struct.inode*) #1

declare dso_local i32 @fuse_request_send(%struct.fuse_conn*, %struct.fuse_req*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @fuse_put_request(%struct.fuse_conn*, %struct.fuse_req*) #1

declare dso_local i32 @fuse_invalidate_attr(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
