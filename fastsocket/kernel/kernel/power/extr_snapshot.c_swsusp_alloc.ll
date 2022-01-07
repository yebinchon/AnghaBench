; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_snapshot.c_swsusp_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_snapshot.c_swsusp_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memory_bitmap = type { i32 }
%struct.page = type { i32 }

@PG_ANY = common dso_local global i32 0, align 4
@alloc_highmem = common dso_local global i32 0, align 4
@alloc_normal = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@__GFP_COLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.memory_bitmap*, %struct.memory_bitmap*, i32, i32)* @swsusp_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swsusp_alloc(%struct.memory_bitmap* %0, %struct.memory_bitmap* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.memory_bitmap*, align 8
  %7 = alloca %struct.memory_bitmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  store %struct.memory_bitmap* %0, %struct.memory_bitmap** %6, align 8
  store %struct.memory_bitmap* %1, %struct.memory_bitmap** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ugt i32 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %4
  %15 = load i32, i32* @PG_ANY, align 4
  %16 = call i32 @get_highmem_buffer(i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %63

20:                                               ; preds = %14
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @alloc_highmem, align 4
  %23 = icmp ugt i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load i32, i32* @alloc_highmem, align 4
  %26 = load i32, i32* %9, align 4
  %27 = sub i32 %26, %25
  store i32 %27, i32* %9, align 4
  %28 = load %struct.memory_bitmap*, %struct.memory_bitmap** %7, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @alloc_highmem_pages(%struct.memory_bitmap* %28, i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = zext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %24, %20
  br label %36

36:                                               ; preds = %35, %4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @alloc_normal, align 4
  %39 = icmp ugt i32 %37, %38
  br i1 %39, label %40, label %62

40:                                               ; preds = %36
  %41 = load i32, i32* @alloc_normal, align 4
  %42 = load i32, i32* %8, align 4
  %43 = sub i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %56, %40
  %45 = load i32, i32* %8, align 4
  %46 = add i32 %45, -1
  store i32 %46, i32* %8, align 4
  %47 = icmp ugt i32 %45, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %44
  %49 = load i32, i32* @GFP_ATOMIC, align 4
  %50 = load i32, i32* @__GFP_COLD, align 4
  %51 = or i32 %49, %50
  %52 = call %struct.page* @alloc_image_page(i32 %51)
  store %struct.page* %52, %struct.page** %11, align 8
  %53 = load %struct.page*, %struct.page** %11, align 8
  %54 = icmp ne %struct.page* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %48
  br label %63

56:                                               ; preds = %48
  %57 = load %struct.memory_bitmap*, %struct.memory_bitmap** %7, align 8
  %58 = load %struct.page*, %struct.page** %11, align 8
  %59 = call i32 @page_to_pfn(%struct.page* %58)
  %60 = call i32 @memory_bm_set_bit(%struct.memory_bitmap* %57, i32 %59)
  br label %44

61:                                               ; preds = %44
  br label %62

62:                                               ; preds = %61, %36
  store i32 0, i32* %5, align 4
  br label %66

63:                                               ; preds = %55, %19
  %64 = call i32 (...) @swsusp_free()
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %63, %62
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @get_highmem_buffer(i32) #1

declare dso_local i64 @alloc_highmem_pages(%struct.memory_bitmap*, i32) #1

declare dso_local %struct.page* @alloc_image_page(i32) #1

declare dso_local i32 @memory_bm_set_bit(%struct.memory_bitmap*, i32) #1

declare dso_local i32 @page_to_pfn(%struct.page*) #1

declare dso_local i32 @swsusp_free(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
