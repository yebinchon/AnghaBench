; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_snapshot.c_free_unnecessary_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_snapshot.c_free_unnecessary_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@alloc_normal = common dso_local global i64 0, align 8
@alloc_highmem = common dso_local global i64 0, align 8
@copy_bm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @free_unnecessary_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_unnecessary_pages() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.page*, align 8
  %6 = call i64 (...) @count_data_pages()
  store i64 %6, i64* %1, align 8
  %7 = load i64, i64* @alloc_normal, align 8
  %8 = load i64, i64* %1, align 8
  %9 = icmp uge i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %0
  %11 = load i64, i64* @alloc_normal, align 8
  %12 = load i64, i64* %1, align 8
  %13 = sub i64 %11, %12
  store i64 %13, i64* %2, align 8
  store i64 0, i64* %1, align 8
  br label %18

14:                                               ; preds = %0
  store i64 0, i64* %2, align 8
  %15 = load i64, i64* @alloc_normal, align 8
  %16 = load i64, i64* %1, align 8
  %17 = sub i64 %16, %15
  store i64 %17, i64* %1, align 8
  br label %18

18:                                               ; preds = %14, %10
  %19 = call i64 (...) @count_highmem_pages()
  %20 = load i64, i64* %1, align 8
  %21 = add i64 %20, %19
  store i64 %21, i64* %1, align 8
  %22 = load i64, i64* @alloc_highmem, align 8
  %23 = load i64, i64* %1, align 8
  %24 = icmp uge i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i64, i64* @alloc_highmem, align 8
  %27 = load i64, i64* %1, align 8
  %28 = sub i64 %26, %27
  store i64 %28, i64* %3, align 8
  br label %42

29:                                               ; preds = %18
  store i64 0, i64* %3, align 8
  %30 = load i64, i64* @alloc_highmem, align 8
  %31 = load i64, i64* %1, align 8
  %32 = sub i64 %31, %30
  store i64 %32, i64* %1, align 8
  %33 = load i64, i64* %2, align 8
  %34 = load i64, i64* %1, align 8
  %35 = icmp ugt i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i64, i64* %1, align 8
  %38 = load i64, i64* %2, align 8
  %39 = sub i64 %38, %37
  store i64 %39, i64* %2, align 8
  br label %41

40:                                               ; preds = %29
  store i64 0, i64* %2, align 8
  br label %41

41:                                               ; preds = %40, %36
  br label %42

42:                                               ; preds = %41, %25
  %43 = call i32 @memory_bm_position_reset(i32* @copy_bm)
  br label %44

44:                                               ; preds = %77, %71, %62, %42
  %45 = load i64, i64* %2, align 8
  %46 = icmp ugt i64 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i64, i64* %3, align 8
  %49 = icmp ugt i64 %48, 0
  br label %50

50:                                               ; preds = %47, %44
  %51 = phi i1 [ true, %44 ], [ %49, %47 ]
  br i1 %51, label %52, label %86

52:                                               ; preds = %50
  %53 = call i64 @memory_bm_next_pfn(i32* @copy_bm)
  store i64 %53, i64* %4, align 8
  %54 = load i64, i64* %4, align 8
  %55 = call %struct.page* @pfn_to_page(i64 %54)
  store %struct.page* %55, %struct.page** %5, align 8
  %56 = load %struct.page*, %struct.page** %5, align 8
  %57 = call i64 @PageHighMem(%struct.page* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %52
  %60 = load i64, i64* %3, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  br label %44

63:                                               ; preds = %59
  %64 = load i64, i64* %3, align 8
  %65 = add i64 %64, -1
  store i64 %65, i64* %3, align 8
  %66 = load i64, i64* @alloc_highmem, align 8
  %67 = add i64 %66, -1
  store i64 %67, i64* @alloc_highmem, align 8
  br label %77

68:                                               ; preds = %52
  %69 = load i64, i64* %2, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  br label %44

72:                                               ; preds = %68
  %73 = load i64, i64* %2, align 8
  %74 = add i64 %73, -1
  store i64 %74, i64* %2, align 8
  %75 = load i64, i64* @alloc_normal, align 8
  %76 = add i64 %75, -1
  store i64 %76, i64* @alloc_normal, align 8
  br label %77

77:                                               ; preds = %72, %63
  %78 = load i64, i64* %4, align 8
  %79 = call i32 @memory_bm_clear_bit(i32* @copy_bm, i64 %78)
  %80 = load %struct.page*, %struct.page** %5, align 8
  %81 = call i32 @swsusp_unset_page_forbidden(%struct.page* %80)
  %82 = load %struct.page*, %struct.page** %5, align 8
  %83 = call i32 @swsusp_unset_page_free(%struct.page* %82)
  %84 = load %struct.page*, %struct.page** %5, align 8
  %85 = call i32 @__free_page(%struct.page* %84)
  br label %44

86:                                               ; preds = %50
  ret void
}

declare dso_local i64 @count_data_pages(...) #1

declare dso_local i64 @count_highmem_pages(...) #1

declare dso_local i32 @memory_bm_position_reset(i32*) #1

declare dso_local i64 @memory_bm_next_pfn(i32*) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local i64 @PageHighMem(%struct.page*) #1

declare dso_local i32 @memory_bm_clear_bit(i32*, i64) #1

declare dso_local i32 @swsusp_unset_page_forbidden(%struct.page*) #1

declare dso_local i32 @swsusp_unset_page_free(%struct.page*) #1

declare dso_local i32 @__free_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
