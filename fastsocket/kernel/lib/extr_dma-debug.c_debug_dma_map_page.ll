; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_dma-debug.c_debug_dma_map_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_dma-debug.c_debug_dma_map_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.page = type { i32 }
%struct.dma_debug_entry = type { i64, i32, i32, i32, i64, %struct.device* }

@global_disable = common dso_local global i32 0, align 4
@dma_debug_page = common dso_local global i32 0, align 4
@dma_debug_single = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @debug_dma_map_page(%struct.device* %0, %struct.page* %1, i64 %2, i64 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.dma_debug_entry*, align 8
  %16 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %8, align 8
  store %struct.page* %1, %struct.page** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load i32, i32* @global_disable, align 4
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %7
  br label %80

21:                                               ; preds = %7
  %22 = load %struct.device*, %struct.device** %8, align 8
  %23 = load i32, i32* %13, align 4
  %24 = call i32 @dma_mapping_error(%struct.device* %22, i32 %23)
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %80

28:                                               ; preds = %21
  %29 = call %struct.dma_debug_entry* (...) @dma_entry_alloc()
  store %struct.dma_debug_entry* %29, %struct.dma_debug_entry** %15, align 8
  %30 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %15, align 8
  %31 = icmp ne %struct.dma_debug_entry* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  br label %80

33:                                               ; preds = %28
  %34 = load %struct.device*, %struct.device** %8, align 8
  %35 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %15, align 8
  %36 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %35, i32 0, i32 5
  store %struct.device* %34, %struct.device** %36, align 8
  %37 = load i32, i32* @dma_debug_page, align 4
  %38 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %15, align 8
  %39 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.page*, %struct.page** %9, align 8
  %41 = call i64 @page_to_phys(%struct.page* %40)
  %42 = load i64, i64* %10, align 8
  %43 = add i64 %41, %42
  %44 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %15, align 8
  %45 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %44, i32 0, i32 4
  store i64 %43, i64* %45, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %15, align 8
  %48 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %15, align 8
  %51 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %15, align 8
  %54 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %33
  %58 = load i32, i32* @dma_debug_single, align 4
  %59 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %15, align 8
  %60 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %57, %33
  %62 = load %struct.page*, %struct.page** %9, align 8
  %63 = call i32 @PageHighMem(%struct.page* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %77, label %65

65:                                               ; preds = %61
  %66 = load %struct.page*, %struct.page** %9, align 8
  %67 = call i8* @page_address(%struct.page* %66)
  %68 = load i64, i64* %10, align 8
  %69 = getelementptr i8, i8* %67, i64 %68
  store i8* %69, i8** %16, align 8
  %70 = load %struct.device*, %struct.device** %8, align 8
  %71 = load i8*, i8** %16, align 8
  %72 = call i32 @check_for_stack(%struct.device* %70, i8* %71)
  %73 = load %struct.device*, %struct.device** %8, align 8
  %74 = load i8*, i8** %16, align 8
  %75 = load i64, i64* %11, align 8
  %76 = call i32 @check_for_illegal_area(%struct.device* %73, i8* %74, i64 %75)
  br label %77

77:                                               ; preds = %65, %61
  %78 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %15, align 8
  %79 = call i32 @add_dma_entry(%struct.dma_debug_entry* %78)
  br label %80

80:                                               ; preds = %77, %32, %27, %20
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local %struct.dma_debug_entry* @dma_entry_alloc(...) #1

declare dso_local i64 @page_to_phys(%struct.page*) #1

declare dso_local i32 @PageHighMem(%struct.page*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @check_for_stack(%struct.device*, i8*) #1

declare dso_local i32 @check_for_illegal_area(%struct.device*, i8*, i64) #1

declare dso_local i32 @add_dma_entry(%struct.dma_debug_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
