; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_setlk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_setlk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.file = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.file_lock = type { i32, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.fuse_conn = type { i32 }
%struct.fuse_req = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@FL_SLEEP = common dso_local global i32 0, align 4
@FUSE_SETLKW = common dso_local global i32 0, align 4
@FUSE_SETLK = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_12__* null, align 8
@ENOLCK = common dso_local global i32 0, align 4
@FL_CLOSE = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.file_lock*, i32)* @fuse_setlk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_setlk(%struct.file* %0, %struct.file_lock* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.file_lock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.fuse_conn*, align 8
  %10 = alloca %struct.fuse_req*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.file_lock* %1, %struct.file_lock** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  store %struct.inode* %19, %struct.inode** %8, align 8
  %20 = load %struct.inode*, %struct.inode** %8, align 8
  %21 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %20)
  store %struct.fuse_conn* %21, %struct.fuse_conn** %9, align 8
  %22 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %23 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @FL_SLEEP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @FUSE_SETLKW, align 4
  br label %32

30:                                               ; preds = %3
  %31 = load i32, i32* @FUSE_SETLK, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  store i32 %33, i32* %11, align 4
  %34 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %35 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @F_UNLCK, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** @current, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  br label %44

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43, %39
  %45 = phi i32 [ %42, %39 ], [ 0, %43 ]
  store i32 %45, i32* %12, align 4
  %46 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %47 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %46, i32 0, i32 2
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = icmp ne %struct.TYPE_9__* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %44
  %51 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %52 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %51, i32 0, i32 2
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i32, i32* @ENOLCK, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %105

60:                                               ; preds = %50, %44
  %61 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %62 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @FL_CLOSE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %105

68:                                               ; preds = %60
  %69 = load %struct.fuse_conn*, %struct.fuse_conn** %9, align 8
  %70 = call %struct.fuse_req* @fuse_get_req_nopages(%struct.fuse_conn* %69)
  store %struct.fuse_req* %70, %struct.fuse_req** %10, align 8
  %71 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %72 = call i64 @IS_ERR(%struct.fuse_req* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %76 = call i32 @PTR_ERR(%struct.fuse_req* %75)
  store i32 %76, i32* %4, align 4
  br label %105

77:                                               ; preds = %68
  %78 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %79 = load %struct.file*, %struct.file** %5, align 8
  %80 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @fuse_lk_fill(%struct.fuse_req* %78, %struct.file* %79, %struct.file_lock* %80, i32 %81, i32 %82, i32 %83)
  %85 = load %struct.fuse_conn*, %struct.fuse_conn** %9, align 8
  %86 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %87 = call i32 @fuse_request_send(%struct.fuse_conn* %85, %struct.fuse_req* %86)
  %88 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %89 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* @EINTR, align 4
  %95 = sub nsw i32 0, %94
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %77
  %98 = load i32, i32* @ERESTARTSYS, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %13, align 4
  br label %100

100:                                              ; preds = %97, %77
  %101 = load %struct.fuse_conn*, %struct.fuse_conn** %9, align 8
  %102 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %103 = call i32 @fuse_put_request(%struct.fuse_conn* %101, %struct.fuse_req* %102)
  %104 = load i32, i32* %13, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %100, %74, %67, %57
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local %struct.fuse_req* @fuse_get_req_nopages(%struct.fuse_conn*) #1

declare dso_local i64 @IS_ERR(%struct.fuse_req*) #1

declare dso_local i32 @PTR_ERR(%struct.fuse_req*) #1

declare dso_local i32 @fuse_lk_fill(%struct.fuse_req*, %struct.file*, %struct.file_lock*, i32, i32, i32) #1

declare dso_local i32 @fuse_request_send(%struct.fuse_conn*, %struct.fuse_req*) #1

declare dso_local i32 @fuse_put_request(%struct.fuse_conn*, %struct.fuse_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
