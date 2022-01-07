; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page-writeback.c_account_page_dirtied.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page-writeback.c_account_page_dirtied.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { i32 }

@NR_FILE_DIRTY = common dso_local global i32 0, align 4
@BDI_RECLAIMABLE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @account_page_dirtied(%struct.page* %0, %struct.address_space* %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.address_space*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store %struct.address_space* %1, %struct.address_space** %4, align 8
  %5 = load %struct.address_space*, %struct.address_space** %4, align 8
  %6 = call i64 @mapping_cap_account_dirty(%struct.address_space* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = load %struct.page*, %struct.page** %3, align 8
  %10 = load i32, i32* @NR_FILE_DIRTY, align 4
  %11 = call i32 @__inc_zone_page_state(%struct.page* %9, i32 %10)
  %12 = load %struct.address_space*, %struct.address_space** %4, align 8
  %13 = getelementptr inbounds %struct.address_space, %struct.address_space* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @BDI_RECLAIMABLE, align 4
  %16 = call i32 @__inc_bdi_stat(i32 %14, i32 %15)
  %17 = load i32, i32* @current, align 4
  %18 = call i32 @task_dirty_inc(i32 %17)
  %19 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %20 = call i32 @task_io_account_write(i32 %19)
  br label %21

21:                                               ; preds = %8, %2
  ret void
}

declare dso_local i64 @mapping_cap_account_dirty(%struct.address_space*) #1

declare dso_local i32 @__inc_zone_page_state(%struct.page*, i32) #1

declare dso_local i32 @__inc_bdi_stat(i32, i32) #1

declare dso_local i32 @task_dirty_inc(i32) #1

declare dso_local i32 @task_io_account_write(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
