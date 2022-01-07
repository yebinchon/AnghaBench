; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pagelist.c_nfs_pageio_do_add_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pagelist.c_nfs_pageio_do_add_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pageio_descriptor = type { i64, %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { {}* }
%struct.nfs_page = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_pageio_descriptor*, %struct.nfs_page*)* @nfs_pageio_do_add_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_pageio_do_add_request(%struct.nfs_pageio_descriptor* %0, %struct.nfs_page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs_pageio_descriptor*, align 8
  %5 = alloca %struct.nfs_page*, align 8
  %6 = alloca %struct.nfs_page*, align 8
  store %struct.nfs_pageio_descriptor* %0, %struct.nfs_pageio_descriptor** %4, align 8
  store %struct.nfs_page* %1, %struct.nfs_page** %5, align 8
  %7 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %8 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %13 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.nfs_page* @nfs_list_entry(i32 %15)
  store %struct.nfs_page* %16, %struct.nfs_page** %6, align 8
  %17 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %18 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %19 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %20 = call i32 @nfs_can_coalesce_requests(%struct.nfs_page* %17, %struct.nfs_page* %18, %struct.nfs_pageio_descriptor* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %62

23:                                               ; preds = %11
  br label %48

24:                                               ; preds = %2
  %25 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %26 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %25, i32 0, i32 3
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = bitcast {}** %28 to i32 (%struct.nfs_pageio_descriptor*, %struct.nfs_page*)**
  %30 = load i32 (%struct.nfs_pageio_descriptor*, %struct.nfs_page*)*, i32 (%struct.nfs_pageio_descriptor*, %struct.nfs_page*)** %29, align 8
  %31 = icmp ne i32 (%struct.nfs_pageio_descriptor*, %struct.nfs_page*)* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %24
  %33 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %34 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %33, i32 0, i32 3
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = bitcast {}** %36 to i32 (%struct.nfs_pageio_descriptor*, %struct.nfs_page*)**
  %38 = load i32 (%struct.nfs_pageio_descriptor*, %struct.nfs_page*)*, i32 (%struct.nfs_pageio_descriptor*, %struct.nfs_page*)** %37, align 8
  %39 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %40 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %41 = call i32 %38(%struct.nfs_pageio_descriptor* %39, %struct.nfs_page* %40)
  br label %42

42:                                               ; preds = %32, %24
  %43 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %44 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %47 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %42, %23
  %49 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %50 = call i32 @nfs_list_remove_request(%struct.nfs_page* %49)
  %51 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %52 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %53 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %52, i32 0, i32 1
  %54 = call i32 @nfs_list_add_request(%struct.nfs_page* %51, %struct.TYPE_4__* %53)
  %55 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %56 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %59 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, %57
  store i64 %61, i64* %59, align 8
  store i32 1, i32* %3, align 4
  br label %62

62:                                               ; preds = %48, %22
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.nfs_page* @nfs_list_entry(i32) #1

declare dso_local i32 @nfs_can_coalesce_requests(%struct.nfs_page*, %struct.nfs_page*, %struct.nfs_pageio_descriptor*) #1

declare dso_local i32 @nfs_list_remove_request(%struct.nfs_page*) #1

declare dso_local i32 @nfs_list_add_request(%struct.nfs_page*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
