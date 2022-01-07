; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_direct-io.c___blockdev_direct_IO.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_direct-io.c___blockdev_direct_IO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.inode = type { i32 }
%struct.block_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8, i8* }
%struct.iovec = type { i32 }

@SMP_CACHE_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__blockdev_direct_IO(i32 %0, %struct.kiocb* %1, %struct.inode* %2, %struct.block_device* %3, %struct.iovec* %4, i32 %5, i64 %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.kiocb*, align 8
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.block_device*, align 8
  %16 = alloca %struct.iovec*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %12, align 4
  store %struct.kiocb* %1, %struct.kiocb** %13, align 8
  store %struct.inode* %2, %struct.inode** %14, align 8
  store %struct.block_device* %3, %struct.block_device** %15, align 8
  store %struct.iovec* %4, %struct.iovec** %16, align 8
  store i32 %5, i32* %17, align 4
  store i64 %6, i64* %18, align 8
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %23 = load %struct.block_device*, %struct.block_device** %15, align 8
  %24 = getelementptr inbounds %struct.block_device, %struct.block_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @prefetch(i8* %26)
  %28 = load %struct.block_device*, %struct.block_device** %15, align 8
  %29 = getelementptr inbounds %struct.block_device, %struct.block_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @prefetch(i8* %32)
  %34 = load %struct.block_device*, %struct.block_device** %15, align 8
  %35 = getelementptr inbounds %struct.block_device, %struct.block_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* @SMP_CACHE_BYTES, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = call i32 @prefetch(i8* %41)
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.kiocb*, %struct.kiocb** %13, align 8
  %45 = load %struct.inode*, %struct.inode** %14, align 8
  %46 = load %struct.block_device*, %struct.block_device** %15, align 8
  %47 = load %struct.iovec*, %struct.iovec** %16, align 8
  %48 = load i32, i32* %17, align 4
  %49 = load i64, i64* %18, align 8
  %50 = load i32, i32* %19, align 4
  %51 = load i32, i32* %20, align 4
  %52 = load i32, i32* %21, align 4
  %53 = load i32, i32* %22, align 4
  %54 = call i32 @do_blockdev_direct_IO(i32 %43, %struct.kiocb* %44, %struct.inode* %45, %struct.block_device* %46, %struct.iovec* %47, i32 %48, i64 %49, i32 %50, i32 %51, i32 %52, i32 %53)
  ret i32 %54
}

declare dso_local i32 @prefetch(i8*) #1

declare dso_local i32 @do_blockdev_direct_IO(i32, %struct.kiocb*, %struct.inode*, %struct.block_device*, %struct.iovec*, i32, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
