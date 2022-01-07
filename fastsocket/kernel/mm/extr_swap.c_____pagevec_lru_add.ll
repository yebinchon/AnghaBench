; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swap.c_____pagevec_lru_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swap.c_____pagevec_lru_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pagevec = type { i32, i32, %struct.page** }
%struct.page = type { i32 }
%struct.zone = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @____pagevec_lru_add(%struct.pagevec* %0, i32 %1) #0 {
  %3 = alloca %struct.pagevec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.zone*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.zone*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pagevec* %0, %struct.pagevec** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.zone* null, %struct.zone** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @is_unevictable_lru(i32 %11)
  %13 = call i32 @VM_BUG_ON(i32 %12)
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %75, %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.pagevec*, %struct.pagevec** %3, align 8
  %17 = call i32 @pagevec_count(%struct.pagevec* %16)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %78

19:                                               ; preds = %14
  %20 = load %struct.pagevec*, %struct.pagevec** %3, align 8
  %21 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %20, i32 0, i32 2
  %22 = load %struct.page**, %struct.page*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.page*, %struct.page** %22, i64 %24
  %26 = load %struct.page*, %struct.page** %25, align 8
  store %struct.page* %26, %struct.page** %7, align 8
  %27 = load %struct.page*, %struct.page** %7, align 8
  %28 = call %struct.zone* @page_zone(%struct.page* %27)
  store %struct.zone* %28, %struct.zone** %8, align 8
  %29 = load %struct.zone*, %struct.zone** %8, align 8
  %30 = load %struct.zone*, %struct.zone** %6, align 8
  %31 = icmp ne %struct.zone* %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %19
  %33 = load %struct.zone*, %struct.zone** %6, align 8
  %34 = icmp ne %struct.zone* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load %struct.zone*, %struct.zone** %6, align 8
  %37 = getelementptr inbounds %struct.zone, %struct.zone* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock_irq(i32* %37)
  br label %39

39:                                               ; preds = %35, %32
  %40 = load %struct.zone*, %struct.zone** %8, align 8
  store %struct.zone* %40, %struct.zone** %6, align 8
  %41 = load %struct.zone*, %struct.zone** %6, align 8
  %42 = getelementptr inbounds %struct.zone, %struct.zone* %41, i32 0, i32 0
  %43 = call i32 @spin_lock_irq(i32* %42)
  br label %44

44:                                               ; preds = %39, %19
  %45 = load %struct.page*, %struct.page** %7, align 8
  %46 = call i32 @PageActive(%struct.page* %45)
  %47 = call i32 @VM_BUG_ON(i32 %46)
  %48 = load %struct.page*, %struct.page** %7, align 8
  %49 = call i32 @PageUnevictable(%struct.page* %48)
  %50 = call i32 @VM_BUG_ON(i32 %49)
  %51 = load %struct.page*, %struct.page** %7, align 8
  %52 = call i32 @PageLRU(%struct.page* %51)
  %53 = call i32 @VM_BUG_ON(i32 %52)
  %54 = load %struct.page*, %struct.page** %7, align 8
  %55 = call i32 @SetPageLRU(%struct.page* %54)
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @is_active_lru(i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @is_file_lru(i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %44
  %63 = load %struct.page*, %struct.page** %7, align 8
  %64 = call i32 @SetPageActive(%struct.page* %63)
  br label %65

65:                                               ; preds = %62, %44
  %66 = load %struct.zone*, %struct.zone** %6, align 8
  %67 = load %struct.page*, %struct.page** %7, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @update_page_reclaim_stat(%struct.zone* %66, %struct.page* %67, i32 %68, i32 %69)
  %71 = load %struct.zone*, %struct.zone** %6, align 8
  %72 = load %struct.page*, %struct.page** %7, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @add_page_to_lru_list(%struct.zone* %71, %struct.page* %72, i32 %73)
  br label %75

75:                                               ; preds = %65
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %14

78:                                               ; preds = %14
  %79 = load %struct.zone*, %struct.zone** %6, align 8
  %80 = icmp ne %struct.zone* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load %struct.zone*, %struct.zone** %6, align 8
  %83 = getelementptr inbounds %struct.zone, %struct.zone* %82, i32 0, i32 0
  %84 = call i32 @spin_unlock_irq(i32* %83)
  br label %85

85:                                               ; preds = %81, %78
  %86 = load %struct.pagevec*, %struct.pagevec** %3, align 8
  %87 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %86, i32 0, i32 2
  %88 = load %struct.page**, %struct.page*** %87, align 8
  %89 = load %struct.pagevec*, %struct.pagevec** %3, align 8
  %90 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.pagevec*, %struct.pagevec** %3, align 8
  %93 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @release_pages(%struct.page** %88, i32 %91, i32 %94)
  %96 = load %struct.pagevec*, %struct.pagevec** %3, align 8
  %97 = call i32 @pagevec_reinit(%struct.pagevec* %96)
  ret void
}

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @is_unevictable_lru(i32) #1

declare dso_local i32 @pagevec_count(%struct.pagevec*) #1

declare dso_local %struct.zone* @page_zone(%struct.page*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @PageActive(%struct.page*) #1

declare dso_local i32 @PageUnevictable(%struct.page*) #1

declare dso_local i32 @PageLRU(%struct.page*) #1

declare dso_local i32 @SetPageLRU(%struct.page*) #1

declare dso_local i32 @is_active_lru(i32) #1

declare dso_local i32 @is_file_lru(i32) #1

declare dso_local i32 @SetPageActive(%struct.page*) #1

declare dso_local i32 @update_page_reclaim_stat(%struct.zone*, %struct.page*, i32, i32) #1

declare dso_local i32 @add_page_to_lru_list(%struct.zone*, %struct.page*, i32) #1

declare dso_local i32 @release_pages(%struct.page**, i32, i32) #1

declare dso_local i32 @pagevec_reinit(%struct.pagevec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
