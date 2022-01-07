; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pagelist.c_nfs_pageio_doio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pagelist.c_nfs_pageio_doio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pageio_descriptor = type { i32, i64, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nfs_pageio_descriptor*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_pageio_descriptor*)* @nfs_pageio_doio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_pageio_doio(%struct.nfs_pageio_descriptor* %0) #0 {
  %2 = alloca %struct.nfs_pageio_descriptor*, align 8
  %3 = alloca i32, align 4
  store %struct.nfs_pageio_descriptor* %0, %struct.nfs_pageio_descriptor** %2, align 8
  %4 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %2, align 8
  %5 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %4, i32 0, i32 3
  %6 = call i64 @list_empty(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %33, label %8

8:                                                ; preds = %1
  %9 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %2, align 8
  %10 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %9, i32 0, i32 5
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.nfs_pageio_descriptor*)*, i32 (%struct.nfs_pageio_descriptor*)** %12, align 8
  %14 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %2, align 8
  %15 = call i32 %13(%struct.nfs_pageio_descriptor* %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %8
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %2, align 8
  %21 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  br label %32

22:                                               ; preds = %8
  %23 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %2, align 8
  %24 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %2, align 8
  %27 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %25
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %27, align 4
  br label %32

32:                                               ; preds = %22, %18
  br label %33

33:                                               ; preds = %32, %1
  %34 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %2, align 8
  %35 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %34, i32 0, i32 3
  %36 = call i64 @list_empty(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %2, align 8
  %40 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %2, align 8
  %42 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %38, %33
  ret void
}

declare dso_local i64 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
