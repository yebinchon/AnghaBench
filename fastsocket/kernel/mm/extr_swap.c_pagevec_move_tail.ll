; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swap.c_pagevec_move_tail.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swap.c_pagevec_move_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pagevec = type { i32, i32, %struct.page** }
%struct.page = type { i32 }
%struct.zone = type { i32 }
%struct.lruvec = type { i32* }

@PGROTATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pagevec*)* @pagevec_move_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pagevec_move_tail(%struct.pagevec* %0) #0 {
  %2 = alloca %struct.pagevec*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.zone*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.zone*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.lruvec*, align 8
  store %struct.pagevec* %0, %struct.pagevec** %2, align 8
  store i32 0, i32* %4, align 4
  store %struct.zone* null, %struct.zone** %5, align 8
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %73, %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.pagevec*, %struct.pagevec** %2, align 8
  %13 = call i32 @pagevec_count(%struct.pagevec* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %76

15:                                               ; preds = %10
  %16 = load %struct.pagevec*, %struct.pagevec** %2, align 8
  %17 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %16, i32 0, i32 2
  %18 = load %struct.page**, %struct.page*** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.page*, %struct.page** %18, i64 %20
  %22 = load %struct.page*, %struct.page** %21, align 8
  store %struct.page* %22, %struct.page** %6, align 8
  %23 = load %struct.page*, %struct.page** %6, align 8
  %24 = call %struct.zone* @page_zone(%struct.page* %23)
  store %struct.zone* %24, %struct.zone** %7, align 8
  %25 = load %struct.zone*, %struct.zone** %7, align 8
  %26 = load %struct.zone*, %struct.zone** %5, align 8
  %27 = icmp ne %struct.zone* %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %15
  %29 = load %struct.zone*, %struct.zone** %5, align 8
  %30 = icmp ne %struct.zone* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.zone*, %struct.zone** %5, align 8
  %33 = getelementptr inbounds %struct.zone, %struct.zone* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock(i32* %33)
  br label %35

35:                                               ; preds = %31, %28
  %36 = load %struct.zone*, %struct.zone** %7, align 8
  store %struct.zone* %36, %struct.zone** %5, align 8
  %37 = load %struct.zone*, %struct.zone** %5, align 8
  %38 = getelementptr inbounds %struct.zone, %struct.zone* %37, i32 0, i32 0
  %39 = call i32 @spin_lock(i32* %38)
  br label %40

40:                                               ; preds = %35, %15
  %41 = load %struct.page*, %struct.page** %6, align 8
  %42 = call i64 @PageLRU(%struct.page* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %72

44:                                               ; preds = %40
  %45 = load %struct.page*, %struct.page** %6, align 8
  %46 = call i32 @PageActive(%struct.page* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %72, label %48

48:                                               ; preds = %44
  %49 = load %struct.page*, %struct.page** %6, align 8
  %50 = call i32 @PageUnevictable(%struct.page* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %72, label %52

52:                                               ; preds = %48
  %53 = load %struct.page*, %struct.page** %6, align 8
  %54 = call i32 @page_lru_base_type(%struct.page* %53)
  store i32 %54, i32* %8, align 4
  %55 = load %struct.page*, %struct.page** %6, align 8
  %56 = call %struct.zone* @page_zone(%struct.page* %55)
  %57 = load %struct.page*, %struct.page** %6, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call %struct.lruvec* @mem_cgroup_lru_move_lists(%struct.zone* %56, %struct.page* %57, i32 %58, i32 %59)
  store %struct.lruvec* %60, %struct.lruvec** %9, align 8
  %61 = load %struct.page*, %struct.page** %6, align 8
  %62 = getelementptr inbounds %struct.page, %struct.page* %61, i32 0, i32 0
  %63 = load %struct.lruvec*, %struct.lruvec** %9, align 8
  %64 = getelementptr inbounds %struct.lruvec, %struct.lruvec* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = call i32 @list_move_tail(i32* %62, i32* %68)
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %52, %48, %44, %40
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %3, align 4
  br label %10

76:                                               ; preds = %10
  %77 = load %struct.zone*, %struct.zone** %5, align 8
  %78 = icmp ne %struct.zone* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load %struct.zone*, %struct.zone** %5, align 8
  %81 = getelementptr inbounds %struct.zone, %struct.zone* %80, i32 0, i32 0
  %82 = call i32 @spin_unlock(i32* %81)
  br label %83

83:                                               ; preds = %79, %76
  %84 = load i32, i32* @PGROTATED, align 4
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @__count_vm_events(i32 %84, i32 %85)
  %87 = load %struct.pagevec*, %struct.pagevec** %2, align 8
  %88 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %87, i32 0, i32 2
  %89 = load %struct.page**, %struct.page*** %88, align 8
  %90 = load %struct.pagevec*, %struct.pagevec** %2, align 8
  %91 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.pagevec*, %struct.pagevec** %2, align 8
  %94 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @release_pages(%struct.page** %89, i32 %92, i32 %95)
  %97 = load %struct.pagevec*, %struct.pagevec** %2, align 8
  %98 = call i32 @pagevec_reinit(%struct.pagevec* %97)
  ret void
}

declare dso_local i32 @pagevec_count(%struct.pagevec*) #1

declare dso_local %struct.zone* @page_zone(%struct.page*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @PageLRU(%struct.page*) #1

declare dso_local i32 @PageActive(%struct.page*) #1

declare dso_local i32 @PageUnevictable(%struct.page*) #1

declare dso_local i32 @page_lru_base_type(%struct.page*) #1

declare dso_local %struct.lruvec* @mem_cgroup_lru_move_lists(%struct.zone*, %struct.page*, i32, i32) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @__count_vm_events(i32, i32) #1

declare dso_local i32 @release_pages(%struct.page**, i32, i32) #1

declare dso_local i32 @pagevec_reinit(%struct.pagevec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
