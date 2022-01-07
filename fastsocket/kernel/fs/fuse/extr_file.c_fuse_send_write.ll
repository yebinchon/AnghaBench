; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_send_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_send_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_req = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.fuse_write_in }
%struct.TYPE_4__ = type { i64 }
%struct.fuse_write_in = type { i32, i32, i32 }
%struct.fuse_io_priv = type { i64, %struct.file* }
%struct.file = type { i32, %struct.fuse_file* }
%struct.fuse_file = type { %struct.fuse_conn* }
%struct.fuse_conn = type { i32 }

@FUSE_WRITE_LOCKOWNER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.fuse_req*, %struct.fuse_io_priv*, i32, i64, i32*)* @fuse_send_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fuse_send_write(%struct.fuse_req* %0, %struct.fuse_io_priv* %1, i32 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.fuse_req*, align 8
  %8 = alloca %struct.fuse_io_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.file*, align 8
  %13 = alloca %struct.fuse_file*, align 8
  %14 = alloca %struct.fuse_conn*, align 8
  %15 = alloca %struct.fuse_write_in*, align 8
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
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 1
  %21 = load %struct.fuse_file*, %struct.fuse_file** %20, align 8
  store %struct.fuse_file* %21, %struct.fuse_file** %13, align 8
  %22 = load %struct.fuse_file*, %struct.fuse_file** %13, align 8
  %23 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %22, i32 0, i32 0
  %24 = load %struct.fuse_conn*, %struct.fuse_conn** %23, align 8
  store %struct.fuse_conn* %24, %struct.fuse_conn** %14, align 8
  %25 = load %struct.fuse_req*, %struct.fuse_req** %7, align 8
  %26 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  store %struct.fuse_write_in* %28, %struct.fuse_write_in** %15, align 8
  %29 = load %struct.fuse_req*, %struct.fuse_req** %7, align 8
  %30 = load %struct.fuse_file*, %struct.fuse_file** %13, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @fuse_write_fill(%struct.fuse_req* %29, %struct.fuse_file* %30, i32 %31, i64 %32)
  %34 = load %struct.file*, %struct.file** %12, align 8
  %35 = getelementptr inbounds %struct.file, %struct.file* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.fuse_write_in*, %struct.fuse_write_in** %15, align 8
  %38 = getelementptr inbounds %struct.fuse_write_in, %struct.fuse_write_in* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load i32*, i32** %11, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %5
  %42 = load i32, i32* @FUSE_WRITE_LOCKOWNER, align 4
  %43 = load %struct.fuse_write_in*, %struct.fuse_write_in** %15, align 8
  %44 = getelementptr inbounds %struct.fuse_write_in, %struct.fuse_write_in* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.fuse_conn*, %struct.fuse_conn** %14, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @fuse_lock_owner_id(%struct.fuse_conn* %47, i32* %48)
  %50 = load %struct.fuse_write_in*, %struct.fuse_write_in** %15, align 8
  %51 = getelementptr inbounds %struct.fuse_write_in, %struct.fuse_write_in* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %41, %5
  %53 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %8, align 8
  %54 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.fuse_conn*, %struct.fuse_conn** %14, align 8
  %59 = load %struct.fuse_req*, %struct.fuse_req** %7, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %8, align 8
  %62 = call i64 @fuse_async_req_send(%struct.fuse_conn* %58, %struct.fuse_req* %59, i64 %60, %struct.fuse_io_priv* %61)
  store i64 %62, i64* %6, align 8
  br label %73

63:                                               ; preds = %52
  %64 = load %struct.fuse_conn*, %struct.fuse_conn** %14, align 8
  %65 = load %struct.fuse_req*, %struct.fuse_req** %7, align 8
  %66 = call i32 @fuse_request_send(%struct.fuse_conn* %64, %struct.fuse_req* %65)
  %67 = load %struct.fuse_req*, %struct.fuse_req** %7, align 8
  %68 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %6, align 8
  br label %73

73:                                               ; preds = %63, %57
  %74 = load i64, i64* %6, align 8
  ret i64 %74
}

declare dso_local i32 @fuse_write_fill(%struct.fuse_req*, %struct.fuse_file*, i32, i64) #1

declare dso_local i32 @fuse_lock_owner_id(%struct.fuse_conn*, i32*) #1

declare dso_local i64 @fuse_async_req_send(%struct.fuse_conn*, %struct.fuse_req*, i64, %struct.fuse_io_priv*) #1

declare dso_local i32 @fuse_request_send(%struct.fuse_conn*, %struct.fuse_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
