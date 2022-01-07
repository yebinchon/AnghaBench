; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_read.c_nfs_pagein_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_read.c_nfs_pagein_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pageio_descriptor = type { i32*, i32, i32, %struct.list_head }
%struct.list_head = type { i32 }
%struct.nfs_pgio_header = type { i32, i32 }
%struct.nfs_page = type { i32 }
%struct.page = type { i32 }
%struct.nfs_read_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.page** }

@ENOMEM = common dso_local global i32 0, align 4
@nfs_read_common_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_pageio_descriptor*, %struct.nfs_pgio_header*)* @nfs_pagein_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_pagein_one(%struct.nfs_pageio_descriptor* %0, %struct.nfs_pgio_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs_pageio_descriptor*, align 8
  %5 = alloca %struct.nfs_pgio_header*, align 8
  %6 = alloca %struct.nfs_page*, align 8
  %7 = alloca %struct.page**, align 8
  %8 = alloca %struct.nfs_read_data*, align 8
  %9 = alloca %struct.list_head*, align 8
  store %struct.nfs_pageio_descriptor* %0, %struct.nfs_pageio_descriptor** %4, align 8
  store %struct.nfs_pgio_header* %1, %struct.nfs_pgio_header** %5, align 8
  %10 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %11 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %10, i32 0, i32 3
  store %struct.list_head* %11, %struct.list_head** %9, align 8
  %12 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %13 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %14 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %17 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @nfs_page_array_len(i32 %15, i32 %18)
  %20 = call %struct.nfs_read_data* @nfs_readdata_alloc(%struct.nfs_pgio_header* %12, i32 %19)
  store %struct.nfs_read_data* %20, %struct.nfs_read_data** %8, align 8
  %21 = load %struct.nfs_read_data*, %struct.nfs_read_data** %8, align 8
  %22 = icmp ne %struct.nfs_read_data* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  %24 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %25 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %26 = call i32 @nfs_pagein_error(%struct.nfs_pageio_descriptor* %24, %struct.nfs_pgio_header* %25)
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %70

29:                                               ; preds = %2
  %30 = load %struct.nfs_read_data*, %struct.nfs_read_data** %8, align 8
  %31 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.page**, %struct.page*** %32, align 8
  store %struct.page** %33, %struct.page*** %7, align 8
  br label %34

34:                                               ; preds = %39, %29
  %35 = load %struct.list_head*, %struct.list_head** %9, align 8
  %36 = call i32 @list_empty(%struct.list_head* %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br i1 %38, label %39, label %57

39:                                               ; preds = %34
  %40 = load %struct.list_head*, %struct.list_head** %9, align 8
  %41 = getelementptr inbounds %struct.list_head, %struct.list_head* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.nfs_page* @nfs_list_entry(i32 %42)
  store %struct.nfs_page* %43, %struct.nfs_page** %6, align 8
  %44 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %45 = call i32 @nfs_list_remove_request(%struct.nfs_page* %44)
  %46 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %47 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %48 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %47, i32 0, i32 1
  %49 = call i32 @nfs_list_add_request(%struct.nfs_page* %46, i32* %48)
  %50 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %51 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to %struct.page*
  %55 = load %struct.page**, %struct.page*** %7, align 8
  %56 = getelementptr inbounds %struct.page*, %struct.page** %55, i32 1
  store %struct.page** %56, %struct.page*** %7, align 8
  store %struct.page* %54, %struct.page** %55, align 8
  br label %34

57:                                               ; preds = %34
  %58 = load %struct.nfs_read_data*, %struct.nfs_read_data** %8, align 8
  %59 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %60 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @nfs_read_rpcsetup(%struct.nfs_read_data* %58, i32 %61, i32 0)
  %63 = load %struct.nfs_read_data*, %struct.nfs_read_data** %8, align 8
  %64 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %63, i32 0, i32 0
  %65 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %66 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %65, i32 0, i32 0
  %67 = call i32 @list_add(i32* %64, i32* %66)
  %68 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %69 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %68, i32 0, i32 0
  store i32* @nfs_read_common_ops, i32** %69, align 8
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %57, %23
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.nfs_read_data* @nfs_readdata_alloc(%struct.nfs_pgio_header*, i32) #1

declare dso_local i32 @nfs_page_array_len(i32, i32) #1

declare dso_local i32 @nfs_pagein_error(%struct.nfs_pageio_descriptor*, %struct.nfs_pgio_header*) #1

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local %struct.nfs_page* @nfs_list_entry(i32) #1

declare dso_local i32 @nfs_list_remove_request(%struct.nfs_page*) #1

declare dso_local i32 @nfs_list_add_request(%struct.nfs_page*, i32*) #1

declare dso_local i32 @nfs_read_rpcsetup(%struct.nfs_read_data*, i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
