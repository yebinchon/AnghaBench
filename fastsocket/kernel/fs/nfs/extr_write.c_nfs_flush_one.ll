; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_flush_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_flush_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pageio_descriptor = type { i32, i32*, i32, i64, i32, i32, i32, %struct.list_head }
%struct.list_head = type { i32 }
%struct.nfs_pgio_header = type { i32, i32 }
%struct.nfs_page = type { i32 }
%struct.page = type { i32 }
%struct.nfs_write_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.page** }
%struct.nfs_commit_info = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@FLUSH_COND_STABLE = common dso_local global i32 0, align 4
@nfs_write_common_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_pageio_descriptor*, %struct.nfs_pgio_header*)* @nfs_flush_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_flush_one(%struct.nfs_pageio_descriptor* %0, %struct.nfs_pgio_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs_pageio_descriptor*, align 8
  %5 = alloca %struct.nfs_pgio_header*, align 8
  %6 = alloca %struct.nfs_page*, align 8
  %7 = alloca %struct.page**, align 8
  %8 = alloca %struct.nfs_write_data*, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca %struct.nfs_commit_info, align 4
  store %struct.nfs_pageio_descriptor* %0, %struct.nfs_pageio_descriptor** %4, align 8
  store %struct.nfs_pgio_header* %1, %struct.nfs_pgio_header** %5, align 8
  %11 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %12 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %11, i32 0, i32 7
  store %struct.list_head* %12, %struct.list_head** %9, align 8
  %13 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %14 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %15 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %18 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @nfs_page_array_len(i32 %16, i32 %19)
  %21 = call %struct.nfs_write_data* @nfs_writedata_alloc(%struct.nfs_pgio_header* %13, i32 %20)
  store %struct.nfs_write_data* %21, %struct.nfs_write_data** %8, align 8
  %22 = load %struct.nfs_write_data*, %struct.nfs_write_data** %8, align 8
  %23 = icmp ne %struct.nfs_write_data* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %26 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %27 = call i32 @nfs_flush_error(%struct.nfs_pageio_descriptor* %25, %struct.nfs_pgio_header* %26)
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %103

30:                                               ; preds = %2
  %31 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %32 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %35 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @nfs_init_cinfo(%struct.nfs_commit_info* %10, i32 %33, i32 %36)
  %38 = load %struct.nfs_write_data*, %struct.nfs_write_data** %8, align 8
  %39 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.page**, %struct.page*** %40, align 8
  store %struct.page** %41, %struct.page*** %7, align 8
  br label %42

42:                                               ; preds = %47, %30
  %43 = load %struct.list_head*, %struct.list_head** %9, align 8
  %44 = call i32 @list_empty(%struct.list_head* %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br i1 %46, label %47, label %65

47:                                               ; preds = %42
  %48 = load %struct.list_head*, %struct.list_head** %9, align 8
  %49 = getelementptr inbounds %struct.list_head, %struct.list_head* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.nfs_page* @nfs_list_entry(i32 %50)
  store %struct.nfs_page* %51, %struct.nfs_page** %6, align 8
  %52 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %53 = call i32 @nfs_list_remove_request(%struct.nfs_page* %52)
  %54 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %55 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %56 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %55, i32 0, i32 1
  %57 = call i32 @nfs_list_add_request(%struct.nfs_page* %54, i32* %56)
  %58 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %59 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to %struct.page*
  %63 = load %struct.page**, %struct.page*** %7, align 8
  %64 = getelementptr inbounds %struct.page*, %struct.page** %63, i32 1
  store %struct.page** %64, %struct.page*** %7, align 8
  store %struct.page* %62, %struct.page** %63, align 8
  br label %42

65:                                               ; preds = %42
  %66 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %67 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @FLUSH_COND_STABLE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %65
  %73 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %74 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = call i64 @nfs_reqs_to_commit(%struct.nfs_commit_info* %10)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %77, %72
  %81 = load i32, i32* @FLUSH_COND_STABLE, align 4
  %82 = xor i32 %81, -1
  %83 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %84 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = and i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %80, %77, %65
  %88 = load %struct.nfs_write_data*, %struct.nfs_write_data** %8, align 8
  %89 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %90 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %93 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @nfs_write_rpcsetup(%struct.nfs_write_data* %88, i32 %91, i32 0, i32 %94, %struct.nfs_commit_info* %10)
  %96 = load %struct.nfs_write_data*, %struct.nfs_write_data** %8, align 8
  %97 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %96, i32 0, i32 0
  %98 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %99 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %98, i32 0, i32 0
  %100 = call i32 @list_add(i32* %97, i32* %99)
  %101 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %102 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %101, i32 0, i32 1
  store i32* @nfs_write_common_ops, i32** %102, align 8
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %87, %24
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.nfs_write_data* @nfs_writedata_alloc(%struct.nfs_pgio_header*, i32) #1

declare dso_local i32 @nfs_page_array_len(i32, i32) #1

declare dso_local i32 @nfs_flush_error(%struct.nfs_pageio_descriptor*, %struct.nfs_pgio_header*) #1

declare dso_local i32 @nfs_init_cinfo(%struct.nfs_commit_info*, i32, i32) #1

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local %struct.nfs_page* @nfs_list_entry(i32) #1

declare dso_local i32 @nfs_list_remove_request(%struct.nfs_page*) #1

declare dso_local i32 @nfs_list_add_request(%struct.nfs_page*, i32*) #1

declare dso_local i64 @nfs_reqs_to_commit(%struct.nfs_commit_info*) #1

declare dso_local i32 @nfs_write_rpcsetup(%struct.nfs_write_data*, i32, i32, i32, %struct.nfs_commit_info*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
