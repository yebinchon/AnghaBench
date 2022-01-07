; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page-writeback.c_clear_page_dirty_for_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page-writeback.c_clear_page_dirty_for_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { i32 }

@NR_FILE_DIRTY = common dso_local global i32 0, align 4
@BDI_RECLAIMABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clear_page_dirty_for_io(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.address_space*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  %5 = load %struct.page*, %struct.page** %3, align 8
  %6 = call %struct.address_space* @page_mapping(%struct.page* %5)
  store %struct.address_space* %6, %struct.address_space** %4, align 8
  %7 = load %struct.page*, %struct.page** %3, align 8
  %8 = call i32 @PageLocked(%struct.page* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.address_space*, %struct.address_space** %4, align 8
  %14 = icmp ne %struct.address_space* %13, null
  br i1 %14, label %15, label %40

15:                                               ; preds = %1
  %16 = load %struct.address_space*, %struct.address_space** %4, align 8
  %17 = call i64 @mapping_cap_account_dirty(%struct.address_space* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %15
  %20 = load %struct.page*, %struct.page** %3, align 8
  %21 = call i64 @page_mkclean(%struct.page* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load %struct.page*, %struct.page** %3, align 8
  %25 = call i32 @set_page_dirty(%struct.page* %24)
  br label %26

26:                                               ; preds = %23, %19
  %27 = load %struct.page*, %struct.page** %3, align 8
  %28 = call i32 @TestClearPageDirty(%struct.page* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load %struct.page*, %struct.page** %3, align 8
  %32 = load i32, i32* @NR_FILE_DIRTY, align 4
  %33 = call i32 @dec_zone_page_state(%struct.page* %31, i32 %32)
  %34 = load %struct.address_space*, %struct.address_space** %4, align 8
  %35 = getelementptr inbounds %struct.address_space, %struct.address_space* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @BDI_RECLAIMABLE, align 4
  %38 = call i32 @dec_bdi_stat(i32 %36, i32 %37)
  store i32 1, i32* %2, align 4
  br label %43

39:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %43

40:                                               ; preds = %15, %1
  %41 = load %struct.page*, %struct.page** %3, align 8
  %42 = call i32 @TestClearPageDirty(%struct.page* %41)
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %40, %39, %30
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.address_space* @page_mapping(%struct.page*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i64 @mapping_cap_account_dirty(%struct.address_space*) #1

declare dso_local i64 @page_mkclean(%struct.page*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @TestClearPageDirty(%struct.page*) #1

declare dso_local i32 @dec_zone_page_state(%struct.page*, i32) #1

declare dso_local i32 @dec_bdi_stat(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
