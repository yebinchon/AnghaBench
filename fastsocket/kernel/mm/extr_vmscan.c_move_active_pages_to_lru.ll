; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c_move_active_pages_to_lru.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c_move_active_pages_to_lru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone = type { i32 }
%struct.list_head = type { i32 }
%struct.pagevec = type { i32 }
%struct.page = type { i32 }
%struct.lruvec = type { i32* }

@buffer_heads_over_limit = common dso_local global i64 0, align 8
@NR_LRU_BASE = common dso_local global i32 0, align 4
@PGDEACTIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zone*, %struct.list_head*, i32)* @move_active_pages_to_lru to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @move_active_pages_to_lru(%struct.zone* %0, %struct.list_head* %1, i32 %2) #0 {
  %4 = alloca %struct.zone*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.pagevec, align 4
  %9 = alloca %struct.page*, align 8
  %10 = alloca %struct.lruvec*, align 8
  store %struct.zone* %0, %struct.zone** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %11 = call i32 @pagevec_init(%struct.pagevec* %8, i32 1)
  br label %12

12:                                               ; preds = %62, %3
  %13 = load %struct.list_head*, %struct.list_head** %5, align 8
  %14 = call i64 @list_empty(%struct.list_head* %13)
  %15 = icmp ne i64 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %63

17:                                               ; preds = %12
  %18 = load %struct.list_head*, %struct.list_head** %5, align 8
  %19 = call %struct.page* @lru_to_page(%struct.list_head* %18)
  store %struct.page* %19, %struct.page** %9, align 8
  %20 = load %struct.page*, %struct.page** %9, align 8
  %21 = call i32 @PageLRU(%struct.page* %20)
  %22 = call i32 @VM_BUG_ON(i32 %21)
  %23 = load %struct.page*, %struct.page** %9, align 8
  %24 = call i32 @SetPageLRU(%struct.page* %23)
  %25 = load %struct.zone*, %struct.zone** %4, align 8
  %26 = load %struct.page*, %struct.page** %9, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call %struct.lruvec* @mem_cgroup_lru_add_list(%struct.zone* %25, %struct.page* %26, i32 %27)
  store %struct.lruvec* %28, %struct.lruvec** %10, align 8
  %29 = load %struct.page*, %struct.page** %9, align 8
  %30 = getelementptr inbounds %struct.page, %struct.page* %29, i32 0, i32 0
  %31 = load %struct.lruvec*, %struct.lruvec** %10, align 8
  %32 = getelementptr inbounds %struct.lruvec, %struct.lruvec* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = call i32 @list_move(i32* %30, i32* %36)
  %38 = load %struct.page*, %struct.page** %9, align 8
  %39 = call i64 @hpage_nr_pages(%struct.page* %38)
  %40 = load i64, i64* %7, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* %7, align 8
  %42 = load %struct.page*, %struct.page** %9, align 8
  %43 = call i32 @pagevec_add(%struct.pagevec* %8, %struct.page* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %17
  %46 = load %struct.list_head*, %struct.list_head** %5, align 8
  %47 = call i64 @list_empty(%struct.list_head* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %45, %17
  %50 = load %struct.zone*, %struct.zone** %4, align 8
  %51 = getelementptr inbounds %struct.zone, %struct.zone* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock_irq(i32* %51)
  %53 = load i64, i64* @buffer_heads_over_limit, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = call i32 @pagevec_strip(%struct.pagevec* %8)
  br label %57

57:                                               ; preds = %55, %49
  %58 = call i32 @__pagevec_release(%struct.pagevec* %8)
  %59 = load %struct.zone*, %struct.zone** %4, align 8
  %60 = getelementptr inbounds %struct.zone, %struct.zone* %59, i32 0, i32 0
  %61 = call i32 @spin_lock_irq(i32* %60)
  br label %62

62:                                               ; preds = %57, %45
  br label %12

63:                                               ; preds = %12
  %64 = load %struct.zone*, %struct.zone** %4, align 8
  %65 = load i32, i32* @NR_LRU_BASE, align 4
  %66 = load i32, i32* %6, align 4
  %67 = add i32 %65, %66
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @__mod_zone_page_state(%struct.zone* %64, i32 %67, i64 %68)
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @is_active_lru(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %63
  %74 = load i32, i32* @PGDEACTIVATE, align 4
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @__count_vm_events(i32 %74, i64 %75)
  br label %77

77:                                               ; preds = %73, %63
  ret void
}

declare dso_local i32 @pagevec_init(%struct.pagevec*, i32) #1

declare dso_local i64 @list_empty(%struct.list_head*) #1

declare dso_local %struct.page* @lru_to_page(%struct.list_head*) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @PageLRU(%struct.page*) #1

declare dso_local i32 @SetPageLRU(%struct.page*) #1

declare dso_local %struct.lruvec* @mem_cgroup_lru_add_list(%struct.zone*, %struct.page*, i32) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i64 @hpage_nr_pages(%struct.page*) #1

declare dso_local i32 @pagevec_add(%struct.pagevec*, %struct.page*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @pagevec_strip(%struct.pagevec*) #1

declare dso_local i32 @__pagevec_release(%struct.pagevec*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @__mod_zone_page_state(%struct.zone*, i32, i64) #1

declare dso_local i32 @is_active_lru(i32) #1

declare dso_local i32 @__count_vm_events(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
