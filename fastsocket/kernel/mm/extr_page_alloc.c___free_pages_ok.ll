; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c___free_pages_ok.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c___free_pages_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PGFREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, i32)* @__free_pages_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__free_pages_ok(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.page*, %struct.page** %3, align 8
  %10 = call i32 @__TestClearPageMlocked(%struct.page* %9)
  store i32 %10, i32* %8, align 4
  %11 = load %struct.page*, %struct.page** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @kmemcheck_free_shadow(%struct.page* %11, i32 %12)
  %14 = load %struct.page*, %struct.page** %3, align 8
  %15 = call i64 @PageAnon(%struct.page* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.page*, %struct.page** %3, align 8
  %19 = getelementptr inbounds %struct.page, %struct.page* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  br label %20

20:                                               ; preds = %17, %2
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %36, %20
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = shl i32 1, %23
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = load %struct.page*, %struct.page** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.page, %struct.page* %27, i64 %29
  %31 = call i64 @free_pages_check(%struct.page* %30)
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %26
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %21

39:                                               ; preds = %21
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %90

43:                                               ; preds = %39
  %44 = load %struct.page*, %struct.page** %3, align 8
  %45 = call i32 @PageHighMem(%struct.page* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %60, label %47

47:                                               ; preds = %43
  %48 = load %struct.page*, %struct.page** %3, align 8
  %49 = call i32 @page_address(%struct.page* %48)
  %50 = load i32, i32* @PAGE_SIZE, align 4
  %51 = load i32, i32* %4, align 4
  %52 = shl i32 %50, %51
  %53 = call i32 @debug_check_no_locks_freed(i32 %49, i32 %52)
  %54 = load %struct.page*, %struct.page** %3, align 8
  %55 = call i32 @page_address(%struct.page* %54)
  %56 = load i32, i32* @PAGE_SIZE, align 4
  %57 = load i32, i32* %4, align 4
  %58 = shl i32 %56, %57
  %59 = call i32 @debug_check_no_obj_freed(i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %47, %43
  %61 = load %struct.page*, %struct.page** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @arch_free_page(%struct.page* %61, i32 %62)
  %64 = load %struct.page*, %struct.page** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = shl i32 1, %65
  %67 = call i32 @kernel_map_pages(%struct.page* %64, i32 %66, i32 0)
  %68 = load i64, i64* %5, align 8
  %69 = call i32 @local_irq_save(i64 %68)
  %70 = load i32, i32* %8, align 4
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %60
  %74 = load %struct.page*, %struct.page** %3, align 8
  %75 = call i32 @free_page_mlock(%struct.page* %74)
  br label %76

76:                                               ; preds = %73, %60
  %77 = load i32, i32* @PGFREE, align 4
  %78 = load i32, i32* %4, align 4
  %79 = shl i32 1, %78
  %80 = call i32 @__count_vm_events(i32 %77, i32 %79)
  %81 = load %struct.page*, %struct.page** %3, align 8
  %82 = call i32 @page_zone(%struct.page* %81)
  %83 = load %struct.page*, %struct.page** %3, align 8
  %84 = load i32, i32* %4, align 4
  %85 = load %struct.page*, %struct.page** %3, align 8
  %86 = call i32 @get_pageblock_migratetype(%struct.page* %85)
  %87 = call i32 @free_one_page(i32 %82, %struct.page* %83, i32 %84, i32 %86)
  %88 = load i64, i64* %5, align 8
  %89 = call i32 @local_irq_restore(i64 %88)
  br label %90

90:                                               ; preds = %76, %42
  ret void
}

declare dso_local i32 @__TestClearPageMlocked(%struct.page*) #1

declare dso_local i32 @kmemcheck_free_shadow(%struct.page*, i32) #1

declare dso_local i64 @PageAnon(%struct.page*) #1

declare dso_local i64 @free_pages_check(%struct.page*) #1

declare dso_local i32 @PageHighMem(%struct.page*) #1

declare dso_local i32 @debug_check_no_locks_freed(i32, i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @debug_check_no_obj_freed(i32, i32) #1

declare dso_local i32 @arch_free_page(%struct.page*, i32) #1

declare dso_local i32 @kernel_map_pages(%struct.page*, i32, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @free_page_mlock(%struct.page*) #1

declare dso_local i32 @__count_vm_events(i32, i32) #1

declare dso_local i32 @free_one_page(i32, %struct.page*, i32, i32) #1

declare dso_local i32 @page_zone(%struct.page*) #1

declare dso_local i32 @get_pageblock_migratetype(%struct.page*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
