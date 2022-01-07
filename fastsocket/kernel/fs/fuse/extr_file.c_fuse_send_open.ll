; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_send_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_send_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { i32 }
%struct.file = type { i32 }
%struct.fuse_open_out = type { i32 }
%struct.fuse_open_in = type { i32 }
%struct.fuse_req = type { %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.fuse_open_out* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, %struct.fuse_open_in* }
%struct.TYPE_7__ = type { i32, i32 }

@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_NOCTTY = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fuse_conn*, i32, %struct.file*, i32, %struct.fuse_open_out*)* @fuse_send_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_send_open(%struct.fuse_conn* %0, i32 %1, %struct.file* %2, i32 %3, %struct.fuse_open_out* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fuse_conn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fuse_open_out*, align 8
  %12 = alloca %struct.fuse_open_in, align 4
  %13 = alloca %struct.fuse_req*, align 8
  %14 = alloca i32, align 4
  store %struct.fuse_conn* %0, %struct.fuse_conn** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.file* %2, %struct.file** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.fuse_open_out* %4, %struct.fuse_open_out** %11, align 8
  %15 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %16 = call %struct.fuse_req* @fuse_get_req_nopages(%struct.fuse_conn* %15)
  store %struct.fuse_req* %16, %struct.fuse_req** %13, align 8
  %17 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %18 = call i64 @IS_ERR(%struct.fuse_req* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %22 = call i32 @PTR_ERR(%struct.fuse_req* %21)
  store i32 %22, i32* %6, align 4
  br label %100

23:                                               ; preds = %5
  %24 = call i32 @memset(%struct.fuse_open_in* %12, i32 0, i32 4)
  %25 = load %struct.file*, %struct.file** %9, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @O_CREAT, align 4
  %29 = load i32, i32* @O_EXCL, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @O_NOCTTY, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = and i32 %27, %33
  %35 = getelementptr inbounds %struct.fuse_open_in, %struct.fuse_open_in* %12, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %37 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %23
  %41 = load i32, i32* @O_TRUNC, align 4
  %42 = xor i32 %41, -1
  %43 = getelementptr inbounds %struct.fuse_open_in, %struct.fuse_open_in* %12, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %42
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %40, %23
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %49 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %54 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  store i32 %52, i32* %56, align 4
  %57 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %58 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %61 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  store i32 4, i32* %65, align 8
  %66 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %67 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  store %struct.fuse_open_in* %12, %struct.fuse_open_in** %71, align 8
  %72 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %73 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %76 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  store i32 4, i32* %80, align 8
  %81 = load %struct.fuse_open_out*, %struct.fuse_open_out** %11, align 8
  %82 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %83 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  store %struct.fuse_open_out* %81, %struct.fuse_open_out** %87, align 8
  %88 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %89 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %90 = call i32 @fuse_request_send(%struct.fuse_conn* %88, %struct.fuse_req* %89)
  %91 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %92 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %14, align 4
  %96 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %97 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %98 = call i32 @fuse_put_request(%struct.fuse_conn* %96, %struct.fuse_req* %97)
  %99 = load i32, i32* %14, align 4
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %46, %20
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local %struct.fuse_req* @fuse_get_req_nopages(%struct.fuse_conn*) #1

declare dso_local i64 @IS_ERR(%struct.fuse_req*) #1

declare dso_local i32 @PTR_ERR(%struct.fuse_req*) #1

declare dso_local i32 @memset(%struct.fuse_open_in*, i32, i32) #1

declare dso_local i32 @fuse_request_send(%struct.fuse_conn*, %struct.fuse_req*) #1

declare dso_local i32 @fuse_put_request(%struct.fuse_conn*, %struct.fuse_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
