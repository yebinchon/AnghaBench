; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_rmap.c_page_remove_rmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_rmap.c_page_remove_rmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { i32 }

@NR_ANON_PAGES = common dso_local global i32 0, align 4
@NR_ANON_TRANSPARENT_HUGEPAGES = common dso_local global i32 0, align 4
@NR_FILE_MAPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @page_remove_rmap(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.address_space*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %4 = load %struct.page*, %struct.page** %2, align 8
  %5 = call %struct.address_space* @page_mapping(%struct.page* %4)
  store %struct.address_space* %5, %struct.address_space** %3, align 8
  %6 = load %struct.page*, %struct.page** %2, align 8
  %7 = getelementptr inbounds %struct.page, %struct.page* %6, i32 0, i32 0
  %8 = call i32 @atomic_add_negative(i32 -1, i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %58

11:                                               ; preds = %1
  %12 = load %struct.address_space*, %struct.address_space** %3, align 8
  %13 = icmp ne %struct.address_space* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load %struct.address_space*, %struct.address_space** %3, align 8
  %16 = call i32 @mapping_cap_account_dirty(%struct.address_space* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  %19 = load %struct.page*, %struct.page** %2, align 8
  %20 = call i64 @page_test_dirty(%struct.page* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load %struct.page*, %struct.page** %2, align 8
  %24 = call i32 @page_clear_dirty(%struct.page* %23)
  %25 = load %struct.page*, %struct.page** %2, align 8
  %26 = call i32 @set_page_dirty(%struct.page* %25)
  br label %27

27:                                               ; preds = %22, %18, %14, %11
  %28 = load %struct.page*, %struct.page** %2, align 8
  %29 = call i32 @PageHuge(%struct.page* %28)
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %58

33:                                               ; preds = %27
  %34 = load %struct.page*, %struct.page** %2, align 8
  %35 = call i64 @PageAnon(%struct.page* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = load %struct.page*, %struct.page** %2, align 8
  %39 = call i32 @mem_cgroup_uncharge_page(%struct.page* %38)
  %40 = load %struct.page*, %struct.page** %2, align 8
  %41 = call i32 @PageTransHuge(%struct.page* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = load %struct.page*, %struct.page** %2, align 8
  %45 = load i32, i32* @NR_ANON_PAGES, align 4
  %46 = call i32 @__dec_zone_page_state(%struct.page* %44, i32 %45)
  br label %51

47:                                               ; preds = %37
  %48 = load %struct.page*, %struct.page** %2, align 8
  %49 = load i32, i32* @NR_ANON_TRANSPARENT_HUGEPAGES, align 4
  %50 = call i32 @__dec_zone_page_state(%struct.page* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %43
  br label %58

52:                                               ; preds = %33
  %53 = load %struct.page*, %struct.page** %2, align 8
  %54 = load i32, i32* @NR_FILE_MAPPED, align 4
  %55 = call i32 @__dec_zone_page_state(%struct.page* %53, i32 %54)
  %56 = load %struct.page*, %struct.page** %2, align 8
  %57 = call i32 @mem_cgroup_update_file_mapped(%struct.page* %56, i32 -1)
  br label %58

58:                                               ; preds = %10, %32, %52, %51
  ret void
}

declare dso_local %struct.address_space* @page_mapping(%struct.page*) #1

declare dso_local i32 @atomic_add_negative(i32, i32*) #1

declare dso_local i32 @mapping_cap_account_dirty(%struct.address_space*) #1

declare dso_local i64 @page_test_dirty(%struct.page*) #1

declare dso_local i32 @page_clear_dirty(%struct.page*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PageHuge(%struct.page*) #1

declare dso_local i64 @PageAnon(%struct.page*) #1

declare dso_local i32 @mem_cgroup_uncharge_page(%struct.page*) #1

declare dso_local i32 @PageTransHuge(%struct.page*) #1

declare dso_local i32 @__dec_zone_page_state(%struct.page*, i32) #1

declare dso_local i32 @mem_cgroup_update_file_mapped(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
