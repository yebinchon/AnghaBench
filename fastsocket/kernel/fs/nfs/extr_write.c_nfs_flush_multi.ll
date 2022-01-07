; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_flush_multi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_flush_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pageio_descriptor = type { i32, i64, i32*, i64, i32, i32 }
%struct.nfs_pgio_header = type { i32, i32, %struct.nfs_page* }
%struct.nfs_page = type { %struct.page* }
%struct.page = type { i32 }
%struct.nfs_write_data = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.page** }
%struct.nfs_commit_info = type { i32 }
%struct.TYPE_4__ = type { i64 }

@FLUSH_COND_STABLE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nfs_write_common_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_pageio_descriptor*, %struct.nfs_pgio_header*)* @nfs_flush_multi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_flush_multi(%struct.nfs_pageio_descriptor* %0, %struct.nfs_pgio_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs_pageio_descriptor*, align 8
  %5 = alloca %struct.nfs_pgio_header*, align 8
  %6 = alloca %struct.nfs_page*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.nfs_write_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nfs_commit_info, align 4
  %14 = alloca i64, align 8
  store %struct.nfs_pageio_descriptor* %0, %struct.nfs_pageio_descriptor** %4, align 8
  store %struct.nfs_pgio_header* %1, %struct.nfs_pgio_header** %5, align 8
  %15 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %16 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %15, i32 0, i32 2
  %17 = load %struct.nfs_page*, %struct.nfs_page** %16, align 8
  store %struct.nfs_page* %17, %struct.nfs_page** %6, align 8
  %18 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %19 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %18, i32 0, i32 0
  %20 = load %struct.page*, %struct.page** %19, align 8
  store %struct.page* %20, %struct.page** %7, align 8
  %21 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %22 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_4__* @NFS_SERVER(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %9, align 8
  store i32 0, i32* %12, align 4
  %27 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %28 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %31 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @nfs_init_cinfo(%struct.nfs_commit_info* %13, i32 %29, i32 %32)
  %34 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %35 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @FLUSH_COND_STABLE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %2
  %41 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %42 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %40
  %46 = call i64 @nfs_reqs_to_commit(%struct.nfs_commit_info* %13)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %45
  %49 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %50 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp ugt i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %48, %45, %40
  %55 = load i32, i32* @FLUSH_COND_STABLE, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %58 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %54, %48, %2
  store i32 0, i32* %11, align 4
  %62 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %63 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %10, align 8
  br label %65

65:                                               ; preds = %108, %61
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* %9, align 8
  %68 = call i64 @min(i64 %66, i64 %67)
  store i64 %68, i64* %14, align 8
  %69 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %70 = call %struct.nfs_write_data* @nfs_writedata_alloc(%struct.nfs_pgio_header* %69, i32 1)
  store %struct.nfs_write_data* %70, %struct.nfs_write_data** %8, align 8
  %71 = load %struct.nfs_write_data*, %struct.nfs_write_data** %8, align 8
  %72 = icmp ne %struct.nfs_write_data* %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %65
  %74 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %75 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %76 = call i32 @nfs_flush_error(%struct.nfs_pageio_descriptor* %74, %struct.nfs_pgio_header* %75)
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %120

79:                                               ; preds = %65
  %80 = load %struct.page*, %struct.page** %7, align 8
  %81 = load %struct.nfs_write_data*, %struct.nfs_write_data** %8, align 8
  %82 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load %struct.page**, %struct.page*** %83, align 8
  %85 = getelementptr inbounds %struct.page*, %struct.page** %84, i64 0
  store %struct.page* %80, %struct.page** %85, align 8
  %86 = load %struct.nfs_write_data*, %struct.nfs_write_data** %8, align 8
  %87 = load i64, i64* %14, align 8
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %90 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @nfs_write_rpcsetup(%struct.nfs_write_data* %86, i64 %87, i32 %88, i32 %91, %struct.nfs_commit_info* %13)
  %93 = load %struct.nfs_write_data*, %struct.nfs_write_data** %8, align 8
  %94 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %93, i32 0, i32 0
  %95 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %96 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %95, i32 0, i32 1
  %97 = call i32 @list_add(i32* %94, i32* %96)
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %12, align 4
  %100 = load i64, i64* %14, align 8
  %101 = load i64, i64* %10, align 8
  %102 = sub i64 %101, %100
  store i64 %102, i64* %10, align 8
  %103 = load i64, i64* %14, align 8
  %104 = load i32, i32* %11, align 4
  %105 = zext i32 %104 to i64
  %106 = add i64 %105, %103
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %11, align 4
  br label %108

108:                                              ; preds = %79
  %109 = load i64, i64* %10, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %65, label %111

111:                                              ; preds = %108
  %112 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %113 = call i32 @nfs_list_remove_request(%struct.nfs_page* %112)
  %114 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %115 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %116 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %115, i32 0, i32 0
  %117 = call i32 @nfs_list_add_request(%struct.nfs_page* %114, i32* %116)
  %118 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %119 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %118, i32 0, i32 2
  store i32* @nfs_write_common_ops, i32** %119, align 8
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %111, %73
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local %struct.TYPE_4__* @NFS_SERVER(i32) #1

declare dso_local i32 @nfs_init_cinfo(%struct.nfs_commit_info*, i32, i32) #1

declare dso_local i64 @nfs_reqs_to_commit(%struct.nfs_commit_info*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local %struct.nfs_write_data* @nfs_writedata_alloc(%struct.nfs_pgio_header*, i32) #1

declare dso_local i32 @nfs_flush_error(%struct.nfs_pageio_descriptor*, %struct.nfs_pgio_header*) #1

declare dso_local i32 @nfs_write_rpcsetup(%struct.nfs_write_data*, i64, i32, i32, %struct.nfs_commit_info*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @nfs_list_remove_request(%struct.nfs_page*) #1

declare dso_local i32 @nfs_list_add_request(%struct.nfs_page*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
