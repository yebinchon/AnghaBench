; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_block_dev.c_blkdev_direct_IO.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_block_dev.c_blkdev_direct_IO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.file* }
%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.iovec = type { i32 }

@blkdev_get_block = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.kiocb*, %struct.iovec*, i32, i64)* @blkdev_direct_IO to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blkdev_direct_IO(i32 %0, %struct.kiocb* %1, %struct.iovec* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kiocb*, align 8
  %8 = alloca %struct.iovec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.file*, align 8
  %12 = alloca %struct.inode*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.kiocb* %1, %struct.kiocb** %7, align 8
  store %struct.iovec* %2, %struct.iovec** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %13 = load %struct.kiocb*, %struct.kiocb** %7, align 8
  %14 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %13, i32 0, i32 0
  %15 = load %struct.file*, %struct.file** %14, align 8
  store %struct.file* %15, %struct.file** %11, align 8
  %16 = load %struct.file*, %struct.file** %11, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %12, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.kiocb*, %struct.kiocb** %7, align 8
  %23 = load %struct.inode*, %struct.inode** %12, align 8
  %24 = load %struct.inode*, %struct.inode** %12, align 8
  %25 = call i32 @I_BDEV(%struct.inode* %24)
  %26 = load %struct.iovec*, %struct.iovec** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i64, i64* %10, align 8
  %29 = load i32, i32* @blkdev_get_block, align 4
  %30 = call i32 @blockdev_direct_IO_no_locking(i32 %21, %struct.kiocb* %22, %struct.inode* %23, i32 %25, %struct.iovec* %26, i32 %27, i64 %28, i32 %29, i32* null)
  ret i32 %30
}

declare dso_local i32 @blockdev_direct_IO_no_locking(i32, %struct.kiocb*, %struct.inode*, i32, %struct.iovec*, i32, i64, i32, i32*) #1

declare dso_local i32 @I_BDEV(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
