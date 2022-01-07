; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_read.c_nfs_pagein_multi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_read.c_nfs_pagein_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pageio_descriptor = type { i64, i32*, i32 }
%struct.nfs_pgio_header = type { i32, i32, %struct.nfs_page* }
%struct.nfs_page = type { %struct.page* }
%struct.page = type { i32 }
%struct.nfs_read_data = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.page** }
%struct.TYPE_4__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@nfs_read_common_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_pageio_descriptor*, %struct.nfs_pgio_header*)* @nfs_pagein_multi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_pagein_multi(%struct.nfs_pageio_descriptor* %0, %struct.nfs_pgio_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs_pageio_descriptor*, align 8
  %5 = alloca %struct.nfs_pgio_header*, align 8
  %6 = alloca %struct.nfs_page*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.nfs_read_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.nfs_pageio_descriptor* %0, %struct.nfs_pageio_descriptor** %4, align 8
  store %struct.nfs_pgio_header* %1, %struct.nfs_pgio_header** %5, align 8
  %13 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %14 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %13, i32 0, i32 2
  %15 = load %struct.nfs_page*, %struct.nfs_page** %14, align 8
  store %struct.nfs_page* %15, %struct.nfs_page** %6, align 8
  %16 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %17 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %16, i32 0, i32 0
  %18 = load %struct.page*, %struct.page** %17, align 8
  store %struct.page* %18, %struct.page** %7, align 8
  %19 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %20 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.TYPE_4__* @NFS_SERVER(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %25 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %26 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %10, align 8
  br label %28

28:                                               ; preds = %66, %2
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i64 @min(i64 %29, i64 %30)
  store i64 %31, i64* %12, align 8
  %32 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %33 = call %struct.nfs_read_data* @nfs_readdata_alloc(%struct.nfs_pgio_header* %32, i32 1)
  store %struct.nfs_read_data* %33, %struct.nfs_read_data** %8, align 8
  %34 = load %struct.nfs_read_data*, %struct.nfs_read_data** %8, align 8
  %35 = icmp ne %struct.nfs_read_data* %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %28
  %37 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %38 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %39 = call i32 @nfs_pagein_error(%struct.nfs_pageio_descriptor* %37, %struct.nfs_pgio_header* %38)
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %78

42:                                               ; preds = %28
  %43 = load %struct.page*, %struct.page** %7, align 8
  %44 = load %struct.nfs_read_data*, %struct.nfs_read_data** %8, align 8
  %45 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load %struct.page**, %struct.page*** %46, align 8
  %48 = getelementptr inbounds %struct.page*, %struct.page** %47, i64 0
  store %struct.page* %43, %struct.page** %48, align 8
  %49 = load %struct.nfs_read_data*, %struct.nfs_read_data** %8, align 8
  %50 = load i64, i64* %12, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @nfs_read_rpcsetup(%struct.nfs_read_data* %49, i64 %50, i32 %51)
  %53 = load %struct.nfs_read_data*, %struct.nfs_read_data** %8, align 8
  %54 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %53, i32 0, i32 0
  %55 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %56 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %55, i32 0, i32 1
  %57 = call i32 @list_add(i32* %54, i32* %56)
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* %10, align 8
  %60 = sub i64 %59, %58
  store i64 %60, i64* %10, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load i32, i32* %11, align 4
  %63 = zext i32 %62 to i64
  %64 = add i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %42
  %67 = load i64, i64* %10, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %28, label %69

69:                                               ; preds = %66
  %70 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %71 = call i32 @nfs_list_remove_request(%struct.nfs_page* %70)
  %72 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %73 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %74 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %73, i32 0, i32 0
  %75 = call i32 @nfs_list_add_request(%struct.nfs_page* %72, i32* %74)
  %76 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %77 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %76, i32 0, i32 1
  store i32* @nfs_read_common_ops, i32** %77, align 8
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %69, %36
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.TYPE_4__* @NFS_SERVER(i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local %struct.nfs_read_data* @nfs_readdata_alloc(%struct.nfs_pgio_header*, i32) #1

declare dso_local i32 @nfs_pagein_error(%struct.nfs_pageio_descriptor*, %struct.nfs_pgio_header*) #1

declare dso_local i32 @nfs_read_rpcsetup(%struct.nfs_read_data*, i64, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @nfs_list_remove_request(%struct.nfs_page*) #1

declare dso_local i32 @nfs_list_add_request(%struct.nfs_page*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
