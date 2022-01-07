; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pagelist.c_nfs_pgheader_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pagelist.c_nfs_pgheader_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pageio_descriptor = type { %struct.TYPE_8__*, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 (%struct.nfs_pgio_header*)* }
%struct.TYPE_6__ = type { i32 }
%struct.nfs_pgio_header = type { void (%struct.nfs_pgio_header*)*, %struct.TYPE_8__*, i32, i32, %struct.TYPE_9__*, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_pgheader_init(%struct.nfs_pageio_descriptor* %0, %struct.nfs_pgio_header* %1, void (%struct.nfs_pgio_header*)* %2) #0 {
  %4 = alloca %struct.nfs_pageio_descriptor*, align 8
  %5 = alloca %struct.nfs_pgio_header*, align 8
  %6 = alloca void (%struct.nfs_pgio_header*)*, align 8
  store %struct.nfs_pageio_descriptor* %0, %struct.nfs_pageio_descriptor** %4, align 8
  store %struct.nfs_pgio_header* %1, %struct.nfs_pgio_header** %5, align 8
  store void (%struct.nfs_pgio_header*)* %2, void (%struct.nfs_pgio_header*)** %6, align 8
  %7 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %8 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.TYPE_9__* @nfs_list_entry(i32 %10)
  %12 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %13 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %12, i32 0, i32 4
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %13, align 8
  %14 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %15 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %18 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %17, i32 0, i32 7
  store i32 %16, i32* %18, align 8
  %19 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %20 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %19, i32 0, i32 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %27 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 4
  %28 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %29 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %28, i32 0, i32 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = call i32 @req_offset(%struct.TYPE_9__* %30)
  %32 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %33 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 8
  %34 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %35 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %38 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %40 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %43 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load void (%struct.nfs_pgio_header*)*, void (%struct.nfs_pgio_header*)** %6, align 8
  %45 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %46 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %45, i32 0, i32 0
  store void (%struct.nfs_pgio_header*)* %44, void (%struct.nfs_pgio_header*)** %46, align 8
  %47 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %48 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %51 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %50, i32 0, i32 1
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %51, align 8
  %52 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %53 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32 (%struct.nfs_pgio_header*)*, i32 (%struct.nfs_pgio_header*)** %55, align 8
  %57 = icmp ne i32 (%struct.nfs_pgio_header*)* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %3
  %59 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %60 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %59, i32 0, i32 1
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32 (%struct.nfs_pgio_header*)*, i32 (%struct.nfs_pgio_header*)** %62, align 8
  %64 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %65 = call i32 %63(%struct.nfs_pgio_header* %64)
  br label %66

66:                                               ; preds = %58, %3
  ret void
}

declare dso_local %struct.TYPE_9__* @nfs_list_entry(i32) #1

declare dso_local i32 @req_offset(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
