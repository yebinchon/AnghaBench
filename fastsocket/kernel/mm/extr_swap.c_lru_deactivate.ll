; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swap.c_lru_deactivate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swap.c_lru_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.zone = type { i32 }
%struct.lruvec = type { i32* }

@PGROTATED = common dso_local global i32 0, align 4
@PGDEACTIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, %struct.zone*)* @lru_deactivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lru_deactivate(%struct.page* %0, %struct.zone* %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.zone*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lruvec*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store %struct.zone* %1, %struct.zone** %4, align 8
  %9 = load %struct.page*, %struct.page** %3, align 8
  %10 = call i32 @PageLRU(%struct.page* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %82

13:                                               ; preds = %2
  %14 = load %struct.page*, %struct.page** %3, align 8
  %15 = call i64 @PageUnevictable(%struct.page* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %82

18:                                               ; preds = %13
  %19 = load %struct.page*, %struct.page** %3, align 8
  %20 = call i64 @page_mapped(%struct.page* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %82

23:                                               ; preds = %18
  %24 = load %struct.page*, %struct.page** %3, align 8
  %25 = call i32 @PageActive(%struct.page* %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.page*, %struct.page** %3, align 8
  %27 = call i32 @page_is_file_cache(%struct.page* %26)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.page*, %struct.page** %3, align 8
  %29 = call i32 @page_lru_base_type(%struct.page* %28)
  store i32 %29, i32* %5, align 4
  %30 = load %struct.zone*, %struct.zone** %4, align 8
  %31 = load %struct.page*, %struct.page** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %32, %33
  %35 = call i32 @del_page_from_lru_list(%struct.zone* %30, %struct.page* %31, i32 %34)
  %36 = load %struct.page*, %struct.page** %3, align 8
  %37 = call i32 @ClearPageActive(%struct.page* %36)
  %38 = load %struct.page*, %struct.page** %3, align 8
  %39 = call i32 @ClearPageReferenced(%struct.page* %38)
  %40 = load %struct.zone*, %struct.zone** %4, align 8
  %41 = load %struct.page*, %struct.page** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @add_page_to_lru_list(%struct.zone* %40, %struct.page* %41, i32 %42)
  %44 = load %struct.page*, %struct.page** %3, align 8
  %45 = call i64 @PageWriteback(%struct.page* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %23
  %48 = load %struct.page*, %struct.page** %3, align 8
  %49 = call i64 @PageDirty(%struct.page* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47, %23
  %52 = load %struct.page*, %struct.page** %3, align 8
  %53 = call i32 @SetPageReclaim(%struct.page* %52)
  br label %71

54:                                               ; preds = %47
  %55 = load %struct.zone*, %struct.zone** %4, align 8
  %56 = load %struct.page*, %struct.page** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call %struct.lruvec* @mem_cgroup_lru_move_lists(%struct.zone* %55, %struct.page* %56, i32 %57, i32 %58)
  store %struct.lruvec* %59, %struct.lruvec** %8, align 8
  %60 = load %struct.page*, %struct.page** %3, align 8
  %61 = getelementptr inbounds %struct.page, %struct.page* %60, i32 0, i32 0
  %62 = load %struct.lruvec*, %struct.lruvec** %8, align 8
  %63 = getelementptr inbounds %struct.lruvec, %struct.lruvec* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = call i32 @list_move_tail(i32* %61, i32* %67)
  %69 = load i32, i32* @PGROTATED, align 4
  %70 = call i32 @__count_vm_event(i32 %69)
  br label %71

71:                                               ; preds = %54, %51
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* @PGDEACTIVATE, align 4
  %76 = call i32 @__count_vm_event(i32 %75)
  br label %77

77:                                               ; preds = %74, %71
  %78 = load %struct.zone*, %struct.zone** %4, align 8
  %79 = load %struct.page*, %struct.page** %3, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @update_page_reclaim_stat(%struct.zone* %78, %struct.page* %79, i32 %80, i32 0)
  br label %82

82:                                               ; preds = %77, %22, %17, %12
  ret void
}

declare dso_local i32 @PageLRU(%struct.page*) #1

declare dso_local i64 @PageUnevictable(%struct.page*) #1

declare dso_local i64 @page_mapped(%struct.page*) #1

declare dso_local i32 @PageActive(%struct.page*) #1

declare dso_local i32 @page_is_file_cache(%struct.page*) #1

declare dso_local i32 @page_lru_base_type(%struct.page*) #1

declare dso_local i32 @del_page_from_lru_list(%struct.zone*, %struct.page*, i32) #1

declare dso_local i32 @ClearPageActive(%struct.page*) #1

declare dso_local i32 @ClearPageReferenced(%struct.page*) #1

declare dso_local i32 @add_page_to_lru_list(%struct.zone*, %struct.page*, i32) #1

declare dso_local i64 @PageWriteback(%struct.page*) #1

declare dso_local i64 @PageDirty(%struct.page*) #1

declare dso_local i32 @SetPageReclaim(%struct.page*) #1

declare dso_local %struct.lruvec* @mem_cgroup_lru_move_lists(%struct.zone*, %struct.page*, i32, i32) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @__count_vm_event(i32) #1

declare dso_local i32 @update_page_reclaim_stat(%struct.zone*, %struct.page*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
