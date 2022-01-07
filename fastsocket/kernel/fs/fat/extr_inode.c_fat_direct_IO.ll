; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_inode.c_fat_direct_IO.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_inode.c_fat_direct_IO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.file* }
%struct.file = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.iovec = type { i32 }
%struct.TYPE_6__ = type { i64 }

@WRITE = common dso_local global i32 0, align 4
@fat_get_block = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.kiocb*, %struct.iovec*, i64, i64)* @fat_direct_IO to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fat_direct_IO(i32 %0, %struct.kiocb* %1, %struct.iovec* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.kiocb*, align 8
  %9 = alloca %struct.iovec*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.file*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store %struct.kiocb* %1, %struct.kiocb** %8, align 8
  store %struct.iovec* %2, %struct.iovec** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.kiocb*, %struct.kiocb** %8, align 8
  %16 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %15, i32 0, i32 0
  %17 = load %struct.file*, %struct.file** %16, align 8
  store %struct.file* %17, %struct.file** %12, align 8
  %18 = load %struct.file*, %struct.file** %12, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.inode*, %struct.inode** %21, align 8
  store %struct.inode* %22, %struct.inode** %13, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @WRITE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %5
  %27 = load i64, i64* %10, align 8
  %28 = load %struct.iovec*, %struct.iovec** %9, align 8
  %29 = load i64, i64* %11, align 8
  %30 = call i64 @iov_length(%struct.iovec* %28, i64 %29)
  %31 = add nsw i64 %27, %30
  store i64 %31, i64* %14, align 8
  %32 = load %struct.inode*, %struct.inode** %13, align 8
  %33 = call %struct.TYPE_6__* @MSDOS_I(%struct.inode* %32)
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %14, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %54

39:                                               ; preds = %26
  br label %40

40:                                               ; preds = %39, %5
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.kiocb*, %struct.kiocb** %8, align 8
  %43 = load %struct.inode*, %struct.inode** %13, align 8
  %44 = load %struct.inode*, %struct.inode** %13, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.iovec*, %struct.iovec** %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load i32, i32* @fat_get_block, align 4
  %53 = call i32 @blockdev_direct_IO(i32 %41, %struct.kiocb* %42, %struct.inode* %43, i32 %48, %struct.iovec* %49, i64 %50, i64 %51, i32 %52, i32* null)
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %40, %38
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i64 @iov_length(%struct.iovec*, i64) #1

declare dso_local %struct.TYPE_6__* @MSDOS_I(%struct.inode*) #1

declare dso_local i32 @blockdev_direct_IO(i32, %struct.kiocb*, %struct.inode*, i32, %struct.iovec*, i64, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
