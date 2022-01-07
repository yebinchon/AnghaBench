; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c_putback_lru_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c_putback_lru_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@LRU_UNEVICTABLE = common dso_local global i32 0, align 4
@UNEVICTABLE_PGRESCUED = common dso_local global i32 0, align 4
@UNEVICTABLE_PGCULLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @putback_lru_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %2, align 8
  %6 = load %struct.page*, %struct.page** %2, align 8
  %7 = call i32 @TestClearPageActive(%struct.page* %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %4, align 4
  %12 = load %struct.page*, %struct.page** %2, align 8
  %13 = call i32 @PageUnevictable(%struct.page* %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.page*, %struct.page** %2, align 8
  %15 = call i32 @PageLRU(%struct.page* %14)
  %16 = call i32 @VM_BUG_ON(i32 %15)
  br label %17

17:                                               ; preds = %48, %1
  %18 = load %struct.page*, %struct.page** %2, align 8
  %19 = call i32 @ClearPageUnevictable(%struct.page* %18)
  %20 = load %struct.page*, %struct.page** %2, align 8
  %21 = call i64 @page_evictable(%struct.page* %20, i32* null)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.page*, %struct.page** %2, align 8
  %26 = call i32 @page_lru_base_type(%struct.page* %25)
  %27 = add nsw i32 %24, %26
  store i32 %27, i32* %3, align 4
  %28 = load %struct.page*, %struct.page** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @lru_cache_add_lru(%struct.page* %28, i32 %29)
  br label %36

31:                                               ; preds = %17
  %32 = load i32, i32* @LRU_UNEVICTABLE, align 4
  store i32 %32, i32* %3, align 4
  %33 = load %struct.page*, %struct.page** %2, align 8
  %34 = call i32 @add_page_to_unevictable_list(%struct.page* %33)
  %35 = call i32 (...) @smp_mb()
  br label %36

36:                                               ; preds = %31, %23
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @LRU_UNEVICTABLE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load %struct.page*, %struct.page** %2, align 8
  %42 = call i64 @page_evictable(%struct.page* %41, i32* null)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load %struct.page*, %struct.page** %2, align 8
  %46 = call i32 @isolate_lru_page(%struct.page* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load %struct.page*, %struct.page** %2, align 8
  %50 = call i32 @put_page(%struct.page* %49)
  br label %17

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %40, %36
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @LRU_UNEVICTABLE, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* @UNEVICTABLE_PGRESCUED, align 4
  %61 = call i32 @count_vm_event(i32 %60)
  br label %73

62:                                               ; preds = %55, %52
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @LRU_UNEVICTABLE, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* @UNEVICTABLE_PGCULLED, align 4
  %71 = call i32 @count_vm_event(i32 %70)
  br label %72

72:                                               ; preds = %69, %65, %62
  br label %73

73:                                               ; preds = %72, %59
  %74 = load %struct.page*, %struct.page** %2, align 8
  %75 = call i32 @put_page(%struct.page* %74)
  ret void
}

declare dso_local i32 @TestClearPageActive(%struct.page*) #1

declare dso_local i32 @PageUnevictable(%struct.page*) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @PageLRU(%struct.page*) #1

declare dso_local i32 @ClearPageUnevictable(%struct.page*) #1

declare dso_local i64 @page_evictable(%struct.page*, i32*) #1

declare dso_local i32 @page_lru_base_type(%struct.page*) #1

declare dso_local i32 @lru_cache_add_lru(%struct.page*, i32) #1

declare dso_local i32 @add_page_to_unevictable_list(%struct.page*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @isolate_lru_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @count_vm_event(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
