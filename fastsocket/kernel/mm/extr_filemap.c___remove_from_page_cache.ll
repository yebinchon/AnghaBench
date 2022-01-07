; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c___remove_from_page_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c___remove_from_page_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.address_space*, i32 }
%struct.address_space = type { i32, i32, i32 }

@NR_FILE_PAGES = common dso_local global i32 0, align 4
@NR_SHMEM = common dso_local global i32 0, align 4
@NR_FILE_DIRTY = common dso_local global i32 0, align 4
@BDI_RECLAIMABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__remove_from_page_cache(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.address_space*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %4 = load %struct.page*, %struct.page** %2, align 8
  %5 = getelementptr inbounds %struct.page, %struct.page* %4, i32 0, i32 0
  %6 = load %struct.address_space*, %struct.address_space** %5, align 8
  store %struct.address_space* %6, %struct.address_space** %3, align 8
  %7 = load %struct.address_space*, %struct.address_space** %3, align 8
  %8 = getelementptr inbounds %struct.address_space, %struct.address_space* %7, i32 0, i32 2
  %9 = load %struct.page*, %struct.page** %2, align 8
  %10 = getelementptr inbounds %struct.page, %struct.page* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @radix_tree_delete(i32* %8, i32 %11)
  %13 = load %struct.page*, %struct.page** %2, align 8
  %14 = getelementptr inbounds %struct.page, %struct.page* %13, i32 0, i32 0
  store %struct.address_space* null, %struct.address_space** %14, align 8
  %15 = load %struct.address_space*, %struct.address_space** %3, align 8
  %16 = getelementptr inbounds %struct.address_space, %struct.address_space* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %16, align 4
  %19 = load %struct.page*, %struct.page** %2, align 8
  %20 = load i32, i32* @NR_FILE_PAGES, align 4
  %21 = call i32 @__dec_zone_page_state(%struct.page* %19, i32 %20)
  %22 = load %struct.page*, %struct.page** %2, align 8
  %23 = call i64 @PageSwapBacked(%struct.page* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load %struct.page*, %struct.page** %2, align 8
  %27 = load i32, i32* @NR_SHMEM, align 4
  %28 = call i32 @__dec_zone_page_state(%struct.page* %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %1
  %30 = load %struct.page*, %struct.page** %2, align 8
  %31 = call i32 @page_mapped(%struct.page* %30)
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load %struct.page*, %struct.page** %2, align 8
  %34 = call i64 @PageDirty(%struct.page* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %29
  %37 = load %struct.address_space*, %struct.address_space** %3, align 8
  %38 = call i64 @mapping_cap_account_dirty(%struct.address_space* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load %struct.page*, %struct.page** %2, align 8
  %42 = load i32, i32* @NR_FILE_DIRTY, align 4
  %43 = call i32 @dec_zone_page_state(%struct.page* %41, i32 %42)
  %44 = load %struct.address_space*, %struct.address_space** %3, align 8
  %45 = getelementptr inbounds %struct.address_space, %struct.address_space* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @BDI_RECLAIMABLE, align 4
  %48 = call i32 @dec_bdi_stat(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %40, %36, %29
  ret void
}

declare dso_local i32 @radix_tree_delete(i32*, i32) #1

declare dso_local i32 @__dec_zone_page_state(%struct.page*, i32) #1

declare dso_local i64 @PageSwapBacked(%struct.page*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @page_mapped(%struct.page*) #1

declare dso_local i64 @PageDirty(%struct.page*) #1

declare dso_local i64 @mapping_cap_account_dirty(%struct.address_space*) #1

declare dso_local i32 @dec_zone_page_state(%struct.page*, i32) #1

declare dso_local i32 @dec_bdi_stat(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
