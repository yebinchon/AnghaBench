; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pagelist.c_nfs_can_coalesce_requests.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pagelist.c_nfs_can_coalesce_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_page = type { i64, i64, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }
%struct.nfs_pageio_descriptor = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.nfs_pageio_descriptor*, %struct.nfs_page*, %struct.nfs_page*)* }

@PAGE_CACHE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_page*, %struct.nfs_page*, %struct.nfs_pageio_descriptor*)* @nfs_can_coalesce_requests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_can_coalesce_requests(%struct.nfs_page* %0, %struct.nfs_page* %1, %struct.nfs_pageio_descriptor* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfs_page*, align 8
  %6 = alloca %struct.nfs_page*, align 8
  %7 = alloca %struct.nfs_pageio_descriptor*, align 8
  store %struct.nfs_page* %0, %struct.nfs_page** %5, align 8
  store %struct.nfs_page* %1, %struct.nfs_page** %6, align 8
  store %struct.nfs_pageio_descriptor* %2, %struct.nfs_pageio_descriptor** %7, align 8
  %8 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %9 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %8, i32 0, i32 3
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %12 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %11, i32 0, i32 3
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = call i32 @nfs_match_open_context(%struct.TYPE_9__* %10, %struct.TYPE_9__* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %76

17:                                               ; preds = %3
  %18 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %19 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %18, i32 0, i32 3
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %17
  %29 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %30 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %33 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @nfs_match_lock_context(i32 %31, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %76

38:                                               ; preds = %28, %17
  %39 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %40 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %76

44:                                               ; preds = %38
  %45 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %46 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %49 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %76

55:                                               ; preds = %44
  %56 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %57 = call i64 @req_offset(%struct.nfs_page* %56)
  %58 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %59 = call i64 @req_offset(%struct.nfs_page* %58)
  %60 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %61 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %59, %62
  %64 = icmp ne i64 %57, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %76

66:                                               ; preds = %55
  %67 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %7, align 8
  %68 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32 (%struct.nfs_pageio_descriptor*, %struct.nfs_page*, %struct.nfs_page*)*, i32 (%struct.nfs_pageio_descriptor*, %struct.nfs_page*, %struct.nfs_page*)** %70, align 8
  %72 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %7, align 8
  %73 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %74 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %75 = call i32 %71(%struct.nfs_pageio_descriptor* %72, %struct.nfs_page* %73, %struct.nfs_page* %74)
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %66, %65, %54, %43, %37, %16
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @nfs_match_open_context(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @nfs_match_lock_context(i32, i32) #1

declare dso_local i64 @req_offset(%struct.nfs_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
