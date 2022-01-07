; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c___mem_cgroup_commit_charge_swapin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c___mem_cgroup_commit_charge_swapin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.mem_cgroup = type { i32, i32 }
%struct.page_cgroup = type { i32 }
%struct.TYPE_3__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@do_swap_account = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, %struct.mem_cgroup*, i32)* @__mem_cgroup_commit_charge_swapin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mem_cgroup_commit_charge_swapin(%struct.page* %0, %struct.mem_cgroup* %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.mem_cgroup*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.page_cgroup*, align 8
  %8 = alloca %struct.TYPE_3__, align 4
  %9 = alloca i16, align 2
  %10 = alloca %struct.mem_cgroup*, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.mem_cgroup* %1, %struct.mem_cgroup** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = call i64 (...) @mem_cgroup_disabled()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %71

14:                                               ; preds = %3
  %15 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %16 = icmp ne %struct.mem_cgroup* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  br label %71

18:                                               ; preds = %14
  %19 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %20 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %19, i32 0, i32 0
  %21 = call i32 @cgroup_exclude_rmdir(i32* %20)
  %22 = load %struct.page*, %struct.page** %4, align 8
  %23 = call %struct.page_cgroup* @lookup_page_cgroup(%struct.page* %22)
  store %struct.page_cgroup* %23, %struct.page_cgroup** %7, align 8
  %24 = load %struct.page*, %struct.page** %4, align 8
  %25 = call i32 @mem_cgroup_lru_del_before_commit_swapcache(%struct.page* %24)
  %26 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %27 = load %struct.page_cgroup*, %struct.page_cgroup** %7, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = call i32 @__mem_cgroup_commit_charge(%struct.mem_cgroup* %26, %struct.page_cgroup* %27, i32 %28, i32 %29)
  %31 = load %struct.page*, %struct.page** %4, align 8
  %32 = call i32 @mem_cgroup_lru_add_after_commit_swapcache(%struct.page* %31)
  %33 = load i64, i64* @do_swap_account, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %67

35:                                               ; preds = %18
  %36 = load %struct.page*, %struct.page** %4, align 8
  %37 = call i64 @PageSwapCache(%struct.page* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %67

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %41 = load %struct.page*, %struct.page** %4, align 8
  %42 = call i32 @page_private(%struct.page* %41)
  store i32 %42, i32* %40, align 4
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call zeroext i16 @swap_cgroup_record(i32 %44, i32 0)
  store i16 %45, i16* %9, align 2
  %46 = call i32 (...) @rcu_read_lock()
  %47 = load i16, i16* %9, align 2
  %48 = call %struct.mem_cgroup* @mem_cgroup_lookup(i16 zeroext %47)
  store %struct.mem_cgroup* %48, %struct.mem_cgroup** %10, align 8
  %49 = load %struct.mem_cgroup*, %struct.mem_cgroup** %10, align 8
  %50 = icmp ne %struct.mem_cgroup* %49, null
  br i1 %50, label %51, label %65

51:                                               ; preds = %39
  %52 = load %struct.mem_cgroup*, %struct.mem_cgroup** %10, align 8
  %53 = call i32 @mem_cgroup_is_root(%struct.mem_cgroup* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  %56 = load %struct.mem_cgroup*, %struct.mem_cgroup** %10, align 8
  %57 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %56, i32 0, i32 1
  %58 = load i32, i32* @PAGE_SIZE, align 4
  %59 = call i32 @res_counter_uncharge(i32* %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %51
  %61 = load %struct.mem_cgroup*, %struct.mem_cgroup** %10, align 8
  %62 = call i32 @mem_cgroup_swap_statistics(%struct.mem_cgroup* %61, i32 0)
  %63 = load %struct.mem_cgroup*, %struct.mem_cgroup** %10, align 8
  %64 = call i32 @mem_cgroup_put(%struct.mem_cgroup* %63)
  br label %65

65:                                               ; preds = %60, %39
  %66 = call i32 (...) @rcu_read_unlock()
  br label %67

67:                                               ; preds = %65, %35, %18
  %68 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %69 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %68, i32 0, i32 0
  %70 = call i32 @cgroup_release_and_wakeup_rmdir(i32* %69)
  br label %71

71:                                               ; preds = %67, %17, %13
  ret void
}

declare dso_local i64 @mem_cgroup_disabled(...) #1

declare dso_local i32 @cgroup_exclude_rmdir(i32*) #1

declare dso_local %struct.page_cgroup* @lookup_page_cgroup(%struct.page*) #1

declare dso_local i32 @mem_cgroup_lru_del_before_commit_swapcache(%struct.page*) #1

declare dso_local i32 @__mem_cgroup_commit_charge(%struct.mem_cgroup*, %struct.page_cgroup*, i32, i32) #1

declare dso_local i32 @mem_cgroup_lru_add_after_commit_swapcache(%struct.page*) #1

declare dso_local i64 @PageSwapCache(%struct.page*) #1

declare dso_local i32 @page_private(%struct.page*) #1

declare dso_local zeroext i16 @swap_cgroup_record(i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.mem_cgroup* @mem_cgroup_lookup(i16 zeroext) #1

declare dso_local i32 @mem_cgroup_is_root(%struct.mem_cgroup*) #1

declare dso_local i32 @res_counter_uncharge(i32*, i32) #1

declare dso_local i32 @mem_cgroup_swap_statistics(%struct.mem_cgroup*, i32) #1

declare dso_local i32 @mem_cgroup_put(%struct.mem_cgroup*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @cgroup_release_and_wakeup_rmdir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
