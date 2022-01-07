; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_direct_IO.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_direct_IO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.file* }
%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.iovec = type { i32 }

@EXT4_INODE_EXTENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.kiocb*, %struct.iovec*, i32, i64)* @ext4_direct_IO to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_direct_IO(i32 %0, %struct.kiocb* %1, %struct.iovec* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.kiocb*, align 8
  %9 = alloca %struct.iovec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.file*, align 8
  %13 = alloca %struct.inode*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.kiocb* %1, %struct.kiocb** %8, align 8
  store %struct.iovec* %2, %struct.iovec** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.kiocb*, %struct.kiocb** %8, align 8
  %15 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %14, i32 0, i32 0
  %16 = load %struct.file*, %struct.file** %15, align 8
  store %struct.file* %16, %struct.file** %12, align 8
  %17 = load %struct.file*, %struct.file** %12, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %13, align 8
  %22 = load %struct.inode*, %struct.inode** %13, align 8
  %23 = load i32, i32* @EXT4_INODE_EXTENTS, align 4
  %24 = call i64 @ext4_test_inode_flag(%struct.inode* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %5
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.kiocb*, %struct.kiocb** %8, align 8
  %29 = load %struct.iovec*, %struct.iovec** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @ext4_ext_direct_IO(i32 %27, %struct.kiocb* %28, %struct.iovec* %29, i32 %30, i64 %31)
  store i32 %32, i32* %6, align 4
  br label %40

33:                                               ; preds = %5
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.kiocb*, %struct.kiocb** %8, align 8
  %36 = load %struct.iovec*, %struct.iovec** %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @ext4_ind_direct_IO(i32 %34, %struct.kiocb* %35, %struct.iovec* %36, i32 %37, i64 %38)
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %33, %26
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local i64 @ext4_test_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @ext4_ext_direct_IO(i32, %struct.kiocb*, %struct.iovec*, i32, i64) #1

declare dso_local i32 @ext4_ind_direct_IO(i32, %struct.kiocb*, %struct.iovec*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
