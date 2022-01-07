; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_lru_add_after_commit_swapcache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_lru_add_after_commit_swapcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.zone = type { i32 }
%struct.page_cgroup = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*)* @mem_cgroup_lru_add_after_commit_swapcache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mem_cgroup_lru_add_after_commit_swapcache(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.zone*, align 8
  %6 = alloca %struct.page_cgroup*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %7 = load %struct.page*, %struct.page** %2, align 8
  %8 = call %struct.zone* @page_zone(%struct.page* %7)
  store %struct.zone* %8, %struct.zone** %5, align 8
  %9 = load %struct.page*, %struct.page** %2, align 8
  %10 = call %struct.page_cgroup* @lookup_page_cgroup(%struct.page* %9)
  store %struct.page_cgroup* %10, %struct.page_cgroup** %6, align 8
  %11 = load %struct.zone*, %struct.zone** %5, align 8
  %12 = getelementptr inbounds %struct.zone, %struct.zone* %11, i32 0, i32 0
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.page*, %struct.page** %2, align 8
  %16 = call i32 @page_lru(%struct.page* %15)
  store i32 %16, i32* %3, align 4
  %17 = load %struct.page*, %struct.page** %2, align 8
  %18 = call i64 @PageLRU(%struct.page* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %1
  %21 = load %struct.page_cgroup*, %struct.page_cgroup** %6, align 8
  %22 = call i32 @PageCgroupAcctLRU(%struct.page_cgroup* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %20
  %25 = load %struct.zone*, %struct.zone** %5, align 8
  %26 = load %struct.page*, %struct.page** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @del_page_from_lru_list(%struct.zone* %25, %struct.page* %26, i32 %27)
  %29 = load %struct.zone*, %struct.zone** %5, align 8
  %30 = load %struct.page*, %struct.page** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @add_page_to_lru_list(%struct.zone* %29, %struct.page* %30, i32 %31)
  br label %33

33:                                               ; preds = %24, %20, %1
  %34 = load %struct.zone*, %struct.zone** %5, align 8
  %35 = getelementptr inbounds %struct.zone, %struct.zone* %34, i32 0, i32 0
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  ret void
}

declare dso_local %struct.zone* @page_zone(%struct.page*) #1

declare dso_local %struct.page_cgroup* @lookup_page_cgroup(%struct.page*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @page_lru(%struct.page*) #1

declare dso_local i64 @PageLRU(%struct.page*) #1

declare dso_local i32 @PageCgroupAcctLRU(%struct.page_cgroup*) #1

declare dso_local i32 @del_page_from_lru_list(%struct.zone*, %struct.page*, i32) #1

declare dso_local i32 @add_page_to_lru_list(%struct.zone*, %struct.page*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
