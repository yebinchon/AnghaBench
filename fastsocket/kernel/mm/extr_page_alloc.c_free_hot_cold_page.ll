; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c_free_hot_cold_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c_free_hot_cold_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32, i32* }
%struct.zone = type { i32 }
%struct.per_cpu_pages = type { i64, i64, i64, i32* }
%struct.TYPE_2__ = type { %struct.per_cpu_pages }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PGFREE = common dso_local global i32 0, align 4
@MIGRATE_PCPTYPES = common dso_local global i32 0, align 4
@MIGRATE_ISOLATE = common dso_local global i32 0, align 4
@MIGRATE_MOVABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, i32)* @free_hot_cold_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_hot_cold_page(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zone*, align 8
  %6 = alloca %struct.per_cpu_pages*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.page*, %struct.page** %3, align 8
  %11 = call %struct.zone* @page_zone(%struct.page* %10)
  store %struct.zone* %11, %struct.zone** %5, align 8
  %12 = load %struct.page*, %struct.page** %3, align 8
  %13 = call i32 @__TestClearPageMlocked(%struct.page* %12)
  store i32 %13, i32* %9, align 4
  %14 = load %struct.page*, %struct.page** %3, align 8
  %15 = call i32 @kmemcheck_free_shadow(%struct.page* %14, i32 0)
  %16 = load %struct.page*, %struct.page** %3, align 8
  %17 = call i64 @PageAnon(%struct.page* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.page*, %struct.page** %3, align 8
  %21 = getelementptr inbounds %struct.page, %struct.page* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %19, %2
  %23 = load %struct.page*, %struct.page** %3, align 8
  %24 = call i64 @free_pages_check(%struct.page* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %136

27:                                               ; preds = %22
  %28 = load %struct.page*, %struct.page** %3, align 8
  %29 = call i32 @PageHighMem(%struct.page* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load %struct.page*, %struct.page** %3, align 8
  %33 = call i32 @page_address(%struct.page* %32)
  %34 = load i32, i32* @PAGE_SIZE, align 4
  %35 = call i32 @debug_check_no_locks_freed(i32 %33, i32 %34)
  %36 = load %struct.page*, %struct.page** %3, align 8
  %37 = call i32 @page_address(%struct.page* %36)
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = call i32 @debug_check_no_obj_freed(i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %31, %27
  %41 = load %struct.page*, %struct.page** %3, align 8
  %42 = call i32 @arch_free_page(%struct.page* %41, i32 0)
  %43 = load %struct.page*, %struct.page** %3, align 8
  %44 = call i32 @kernel_map_pages(%struct.page* %43, i32 1, i32 0)
  %45 = load %struct.zone*, %struct.zone** %5, align 8
  %46 = call i32 (...) @get_cpu()
  %47 = call %struct.TYPE_2__* @zone_pcp(%struct.zone* %45, i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store %struct.per_cpu_pages* %48, %struct.per_cpu_pages** %6, align 8
  %49 = load %struct.page*, %struct.page** %3, align 8
  %50 = call i32 @get_pageblock_migratetype(%struct.page* %49)
  store i32 %50, i32* %8, align 4
  %51 = load %struct.page*, %struct.page** %3, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @set_page_private(%struct.page* %51, i32 %52)
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @local_irq_save(i64 %54)
  %56 = load i32, i32* %9, align 4
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %40
  %60 = load %struct.page*, %struct.page** %3, align 8
  %61 = call i32 @free_page_mlock(%struct.page* %60)
  br label %62

62:                                               ; preds = %59, %40
  %63 = load i32, i32* @PGFREE, align 4
  %64 = call i32 @__count_vm_event(i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @MIGRATE_PCPTYPES, align 4
  %67 = icmp sge i32 %65, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %62
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @MIGRATE_ISOLATE, align 4
  %71 = icmp eq i32 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = load %struct.zone*, %struct.zone** %5, align 8
  %77 = load %struct.page*, %struct.page** %3, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @free_one_page(%struct.zone* %76, %struct.page* %77, i32 0, i32 %78)
  br label %132

80:                                               ; preds = %68
  %81 = load i32, i32* @MIGRATE_MOVABLE, align 4
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %80, %62
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %82
  %86 = load %struct.page*, %struct.page** %3, align 8
  %87 = getelementptr inbounds %struct.page, %struct.page* %86, i32 0, i32 0
  %88 = load %struct.per_cpu_pages*, %struct.per_cpu_pages** %6, align 8
  %89 = getelementptr inbounds %struct.per_cpu_pages, %struct.per_cpu_pages* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = call i32 @list_add_tail(i32* %87, i32* %93)
  br label %105

95:                                               ; preds = %82
  %96 = load %struct.page*, %struct.page** %3, align 8
  %97 = getelementptr inbounds %struct.page, %struct.page* %96, i32 0, i32 0
  %98 = load %struct.per_cpu_pages*, %struct.per_cpu_pages** %6, align 8
  %99 = getelementptr inbounds %struct.per_cpu_pages, %struct.per_cpu_pages* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = call i32 @list_add(i32* %97, i32* %103)
  br label %105

105:                                              ; preds = %95, %85
  %106 = load %struct.per_cpu_pages*, %struct.per_cpu_pages** %6, align 8
  %107 = getelementptr inbounds %struct.per_cpu_pages, %struct.per_cpu_pages* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %107, align 8
  %110 = load %struct.per_cpu_pages*, %struct.per_cpu_pages** %6, align 8
  %111 = getelementptr inbounds %struct.per_cpu_pages, %struct.per_cpu_pages* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.per_cpu_pages*, %struct.per_cpu_pages** %6, align 8
  %114 = getelementptr inbounds %struct.per_cpu_pages, %struct.per_cpu_pages* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp sge i64 %112, %115
  br i1 %116, label %117, label %131

117:                                              ; preds = %105
  %118 = load %struct.zone*, %struct.zone** %5, align 8
  %119 = load %struct.per_cpu_pages*, %struct.per_cpu_pages** %6, align 8
  %120 = getelementptr inbounds %struct.per_cpu_pages, %struct.per_cpu_pages* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.per_cpu_pages*, %struct.per_cpu_pages** %6, align 8
  %123 = call i32 @free_pcppages_bulk(%struct.zone* %118, i64 %121, %struct.per_cpu_pages* %122)
  %124 = load %struct.per_cpu_pages*, %struct.per_cpu_pages** %6, align 8
  %125 = getelementptr inbounds %struct.per_cpu_pages, %struct.per_cpu_pages* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.per_cpu_pages*, %struct.per_cpu_pages** %6, align 8
  %128 = getelementptr inbounds %struct.per_cpu_pages, %struct.per_cpu_pages* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = sub nsw i64 %129, %126
  store i64 %130, i64* %128, align 8
  br label %131

131:                                              ; preds = %117, %105
  br label %132

132:                                              ; preds = %131, %75
  %133 = load i64, i64* %7, align 8
  %134 = call i32 @local_irq_restore(i64 %133)
  %135 = call i32 (...) @put_cpu()
  br label %136

136:                                              ; preds = %132, %26
  ret void
}

declare dso_local %struct.zone* @page_zone(%struct.page*) #1

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

declare dso_local %struct.TYPE_2__* @zone_pcp(%struct.zone*, i32) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local i32 @get_pageblock_migratetype(%struct.page*) #1

declare dso_local i32 @set_page_private(%struct.page*, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @free_page_mlock(%struct.page*) #1

declare dso_local i32 @__count_vm_event(i32) #1

declare dso_local i32 @free_one_page(%struct.zone*, %struct.page*, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @free_pcppages_bulk(%struct.zone*, i64, %struct.per_cpu_pages*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
