; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pagelist.c_nfs_pageio_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pagelist.c_nfs_pageio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pageio_descriptor = type { i64, i32, i32*, i32*, i64, %struct.nfs_pgio_completion_ops*, %struct.nfs_pageio_ops*, %struct.inode*, i64, i64, i64, i64, i64, i32 }
%struct.inode = type { i32 }
%struct.nfs_pageio_ops = type { i32 }
%struct.nfs_pgio_completion_ops = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_pageio_init(%struct.nfs_pageio_descriptor* %0, %struct.inode* %1, %struct.nfs_pageio_ops* %2, %struct.nfs_pgio_completion_ops* %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.nfs_pageio_descriptor*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.nfs_pageio_ops*, align 8
  %10 = alloca %struct.nfs_pgio_completion_ops*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.nfs_pageio_descriptor* %0, %struct.nfs_pageio_descriptor** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.nfs_pageio_ops* %2, %struct.nfs_pageio_ops** %9, align 8
  store %struct.nfs_pgio_completion_ops* %3, %struct.nfs_pgio_completion_ops** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %7, align 8
  %14 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %13, i32 0, i32 13
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %7, align 8
  %17 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %16, i32 0, i32 12
  store i64 0, i64* %17, align 8
  %18 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %7, align 8
  %19 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %18, i32 0, i32 11
  store i64 0, i64* %19, align 8
  %20 = load i64, i64* %11, align 8
  %21 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %7, align 8
  %22 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %7, align 8
  %24 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %23, i32 0, i32 10
  store i64 0, i64* %24, align 8
  %25 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %7, align 8
  %26 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %25, i32 0, i32 9
  store i64 0, i64* %26, align 8
  %27 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %7, align 8
  %28 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %27, i32 0, i32 8
  store i64 0, i64* %28, align 8
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %7, align 8
  %31 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %30, i32 0, i32 7
  store %struct.inode* %29, %struct.inode** %31, align 8
  %32 = load %struct.nfs_pageio_ops*, %struct.nfs_pageio_ops** %9, align 8
  %33 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %7, align 8
  %34 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %33, i32 0, i32 6
  store %struct.nfs_pageio_ops* %32, %struct.nfs_pageio_ops** %34, align 8
  %35 = load %struct.nfs_pgio_completion_ops*, %struct.nfs_pgio_completion_ops** %10, align 8
  %36 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %7, align 8
  %37 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %36, i32 0, i32 5
  store %struct.nfs_pgio_completion_ops* %35, %struct.nfs_pgio_completion_ops** %37, align 8
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %7, align 8
  %40 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %7, align 8
  %42 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %41, i32 0, i32 4
  store i64 0, i64* %42, align 8
  %43 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %7, align 8
  %44 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %43, i32 0, i32 3
  store i32* null, i32** %44, align 8
  %45 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %7, align 8
  %46 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %45, i32 0, i32 2
  store i32* null, i32** %46, align 8
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
