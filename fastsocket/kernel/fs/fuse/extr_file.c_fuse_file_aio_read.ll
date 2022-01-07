; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_file_aio_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_file_aio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.iovec = type { i32 }
%struct.fuse_conn = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iovec*, i64, i64)* @fuse_file_aio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_file_aio_read(%struct.kiocb* %0, %struct.iovec* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.fuse_conn*, align 8
  %12 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.iovec* %1, %struct.iovec** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %14 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  store %struct.inode* %19, %struct.inode** %10, align 8
  %20 = load %struct.inode*, %struct.inode** %10, align 8
  %21 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %20)
  store %struct.fuse_conn* %21, %struct.fuse_conn** %11, align 8
  %22 = load %struct.fuse_conn*, %struct.fuse_conn** %11, align 8
  %23 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %4
  %27 = load i64, i64* %9, align 8
  %28 = load %struct.iovec*, %struct.iovec** %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i64 @iov_length(%struct.iovec* %28, i64 %29)
  %31 = add nsw i64 %27, %30
  %32 = load %struct.inode*, %struct.inode** %10, align 8
  %33 = call i64 @i_size_read(%struct.inode* %32)
  %34 = icmp sgt i64 %31, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %26, %4
  %36 = load %struct.inode*, %struct.inode** %10, align 8
  %37 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %38 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = call i32 @fuse_update_attributes(%struct.inode* %36, i32* null, %struct.TYPE_4__* %39, i32* null)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %5, align 4
  br label %52

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %26
  %47 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %48 = load %struct.iovec*, %struct.iovec** %7, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @generic_file_aio_read(%struct.kiocb* %47, %struct.iovec* %48, i64 %49, i64 %50)
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %46, %43
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i64 @iov_length(%struct.iovec*, i64) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @fuse_update_attributes(%struct.inode*, i32*, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @generic_file_aio_read(%struct.kiocb*, %struct.iovec*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
