; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swap.c_update_page_reclaim_stat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swap.c_update_page_reclaim_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone = type { %struct.zone_reclaim_stat }
%struct.zone_reclaim_stat = type { i32*, i32* }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zone*, %struct.page*, i32, i32)* @update_page_reclaim_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_page_reclaim_stat(%struct.zone* %0, %struct.page* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.zone*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.zone_reclaim_stat*, align 8
  %10 = alloca %struct.zone_reclaim_stat*, align 8
  store %struct.zone* %0, %struct.zone** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.zone*, %struct.zone** %5, align 8
  %12 = getelementptr inbounds %struct.zone, %struct.zone* %11, i32 0, i32 0
  store %struct.zone_reclaim_stat* %12, %struct.zone_reclaim_stat** %9, align 8
  %13 = load %struct.page*, %struct.page** %6, align 8
  %14 = call %struct.zone_reclaim_stat* @mem_cgroup_get_reclaim_stat_from_page(%struct.page* %13)
  store %struct.zone_reclaim_stat* %14, %struct.zone_reclaim_stat** %10, align 8
  %15 = load %struct.zone_reclaim_stat*, %struct.zone_reclaim_stat** %9, align 8
  %16 = getelementptr inbounds %struct.zone_reclaim_stat, %struct.zone_reclaim_stat* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %4
  %26 = load %struct.zone_reclaim_stat*, %struct.zone_reclaim_stat** %9, align 8
  %27 = getelementptr inbounds %struct.zone_reclaim_stat, %struct.zone_reclaim_stat* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %25, %4
  %35 = load %struct.zone_reclaim_stat*, %struct.zone_reclaim_stat** %10, align 8
  %36 = icmp ne %struct.zone_reclaim_stat* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  br label %58

38:                                               ; preds = %34
  %39 = load %struct.zone_reclaim_stat*, %struct.zone_reclaim_stat** %10, align 8
  %40 = getelementptr inbounds %struct.zone_reclaim_stat, %struct.zone_reclaim_stat* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %38
  %50 = load %struct.zone_reclaim_stat*, %struct.zone_reclaim_stat** %10, align 8
  %51 = getelementptr inbounds %struct.zone_reclaim_stat, %struct.zone_reclaim_stat* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %37, %49, %38
  ret void
}

declare dso_local %struct.zone_reclaim_stat* @mem_cgroup_get_reclaim_stat_from_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
