; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_send_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_send_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_req = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.fuse_read_in }
%struct.fuse_read_in = type { i32, i32 }
%struct.fuse_io_priv = type { i64, %struct.file* }
%struct.file = type { %struct.fuse_file* }
%struct.fuse_file = type { %struct.fuse_conn* }
%struct.fuse_conn = type { i32 }

@FUSE_READ = common dso_local global i32 0, align 4
@FUSE_READ_LOCKOWNER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.fuse_req*, %struct.fuse_io_priv*, i32, i64, i32*)* @fuse_send_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fuse_send_read(%struct.fuse_req* %0, %struct.fuse_io_priv* %1, i32 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.fuse_req*, align 8
  %8 = alloca %struct.fuse_io_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.file*, align 8
  %13 = alloca %struct.fuse_file*, align 8
  %14 = alloca %struct.fuse_conn*, align 8
  %15 = alloca %struct.fuse_read_in*, align 8
  store %struct.fuse_req* %0, %struct.fuse_req** %7, align 8
  store %struct.fuse_io_priv* %1, %struct.fuse_io_priv** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %8, align 8
  %17 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %16, i32 0, i32 1
  %18 = load %struct.file*, %struct.file** %17, align 8
  store %struct.file* %18, %struct.file** %12, align 8
  %19 = load %struct.file*, %struct.file** %12, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 0
  %21 = load %struct.fuse_file*, %struct.fuse_file** %20, align 8
  store %struct.fuse_file* %21, %struct.fuse_file** %13, align 8
  %22 = load %struct.fuse_file*, %struct.fuse_file** %13, align 8
  %23 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %22, i32 0, i32 0
  %24 = load %struct.fuse_conn*, %struct.fuse_conn** %23, align 8
  store %struct.fuse_conn* %24, %struct.fuse_conn** %14, align 8
  %25 = load %struct.fuse_req*, %struct.fuse_req** %7, align 8
  %26 = load %struct.file*, %struct.file** %12, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i64, i64* %10, align 8
  %29 = load i32, i32* @FUSE_READ, align 4
  %30 = call i32 @fuse_read_fill(%struct.fuse_req* %25, %struct.file* %26, i32 %27, i64 %28, i32 %29)
  %31 = load i32*, i32** %11, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %48

33:                                               ; preds = %5
  %34 = load %struct.fuse_req*, %struct.fuse_req** %7, align 8
  %35 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store %struct.fuse_read_in* %37, %struct.fuse_read_in** %15, align 8
  %38 = load i32, i32* @FUSE_READ_LOCKOWNER, align 4
  %39 = load %struct.fuse_read_in*, %struct.fuse_read_in** %15, align 8
  %40 = getelementptr inbounds %struct.fuse_read_in, %struct.fuse_read_in* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.fuse_conn*, %struct.fuse_conn** %14, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @fuse_lock_owner_id(%struct.fuse_conn* %43, i32* %44)
  %46 = load %struct.fuse_read_in*, %struct.fuse_read_in** %15, align 8
  %47 = getelementptr inbounds %struct.fuse_read_in, %struct.fuse_read_in* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %33, %5
  %49 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %8, align 8
  %50 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.fuse_conn*, %struct.fuse_conn** %14, align 8
  %55 = load %struct.fuse_req*, %struct.fuse_req** %7, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %8, align 8
  %58 = call i64 @fuse_async_req_send(%struct.fuse_conn* %54, %struct.fuse_req* %55, i64 %56, %struct.fuse_io_priv* %57)
  store i64 %58, i64* %6, align 8
  br label %70

59:                                               ; preds = %48
  %60 = load %struct.fuse_conn*, %struct.fuse_conn** %14, align 8
  %61 = load %struct.fuse_req*, %struct.fuse_req** %7, align 8
  %62 = call i32 @fuse_request_send(%struct.fuse_conn* %60, %struct.fuse_req* %61)
  %63 = load %struct.fuse_req*, %struct.fuse_req** %7, align 8
  %64 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %6, align 8
  br label %70

70:                                               ; preds = %59, %53
  %71 = load i64, i64* %6, align 8
  ret i64 %71
}

declare dso_local i32 @fuse_read_fill(%struct.fuse_req*, %struct.file*, i32, i64, i32) #1

declare dso_local i32 @fuse_lock_owner_id(%struct.fuse_conn*, i32*) #1

declare dso_local i64 @fuse_async_req_send(%struct.fuse_conn*, %struct.fuse_req*, i64, %struct.fuse_io_priv*) #1

declare dso_local i32 @fuse_request_send(%struct.fuse_conn*, %struct.fuse_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
