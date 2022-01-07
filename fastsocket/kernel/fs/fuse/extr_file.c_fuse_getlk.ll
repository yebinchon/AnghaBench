; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_getlk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_getlk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.file_lock = type { i32 }
%struct.fuse_conn = type { i32 }
%struct.fuse_req = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.fuse_lk_out* }
%struct.fuse_lk_out = type { i32 }

@FUSE_GETLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.file_lock*)* @fuse_getlk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_getlk(%struct.file* %0, %struct.file_lock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.file_lock*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.fuse_conn*, align 8
  %8 = alloca %struct.fuse_req*, align 8
  %9 = alloca %struct.fuse_lk_out, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.file_lock* %1, %struct.file_lock** %5, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  store %struct.inode* %16, %struct.inode** %6, align 8
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %17)
  store %struct.fuse_conn* %18, %struct.fuse_conn** %7, align 8
  %19 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %20 = call %struct.fuse_req* @fuse_get_req_nopages(%struct.fuse_conn* %19)
  store %struct.fuse_req* %20, %struct.fuse_req** %8, align 8
  %21 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %22 = call i64 @IS_ERR(%struct.fuse_req* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %26 = call i32 @PTR_ERR(%struct.fuse_req* %25)
  store i32 %26, i32* %3, align 4
  br label %67

27:                                               ; preds = %2
  %28 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %29 = load %struct.file*, %struct.file** %4, align 8
  %30 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %31 = load i32, i32* @FUSE_GETLK, align 4
  %32 = call i32 @fuse_lk_fill(%struct.fuse_req* %28, %struct.file* %29, %struct.file_lock* %30, i32 %31, i32 0, i32 0)
  %33 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %34 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %37 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store i32 4, i32* %41, align 8
  %42 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %43 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  store %struct.fuse_lk_out* %9, %struct.fuse_lk_out** %47, align 8
  %48 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %49 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %50 = call i32 @fuse_request_send(%struct.fuse_conn* %48, %struct.fuse_req* %49)
  %51 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %52 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %10, align 4
  %56 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %57 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %58 = call i32 @fuse_put_request(%struct.fuse_conn* %56, %struct.fuse_req* %57)
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %27
  %62 = getelementptr inbounds %struct.fuse_lk_out, %struct.fuse_lk_out* %9, i32 0, i32 0
  %63 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %64 = call i32 @convert_fuse_file_lock(i32* %62, %struct.file_lock* %63)
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %61, %27
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %24
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local %struct.fuse_req* @fuse_get_req_nopages(%struct.fuse_conn*) #1

declare dso_local i64 @IS_ERR(%struct.fuse_req*) #1

declare dso_local i32 @PTR_ERR(%struct.fuse_req*) #1

declare dso_local i32 @fuse_lk_fill(%struct.fuse_req*, %struct.file*, %struct.file_lock*, i32, i32, i32) #1

declare dso_local i32 @fuse_request_send(%struct.fuse_conn*, %struct.fuse_req*) #1

declare dso_local i32 @fuse_put_request(%struct.fuse_conn*, %struct.fuse_req*) #1

declare dso_local i32 @convert_fuse_file_lock(i32*, %struct.file_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
