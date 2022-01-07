; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page-writeback.c_test_clear_page_writeback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page-writeback.c_test_clear_page_writeback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { i32, i32, %struct.backing_dev_info* }
%struct.backing_dev_info = type { i32 }

@PAGECACHE_TAG_WRITEBACK = common dso_local global i32 0, align 4
@BDI_WRITEBACK = common dso_local global i32 0, align 4
@NR_WRITEBACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_clear_page_writeback(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.backing_dev_info*, align 8
  %6 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %7 = load %struct.page*, %struct.page** %2, align 8
  %8 = call %struct.address_space* @page_mapping(%struct.page* %7)
  store %struct.address_space* %8, %struct.address_space** %3, align 8
  %9 = load %struct.address_space*, %struct.address_space** %3, align 8
  %10 = icmp ne %struct.address_space* %9, null
  br i1 %10, label %11, label %45

11:                                               ; preds = %1
  %12 = load %struct.address_space*, %struct.address_space** %3, align 8
  %13 = getelementptr inbounds %struct.address_space, %struct.address_space* %12, i32 0, i32 2
  %14 = load %struct.backing_dev_info*, %struct.backing_dev_info** %13, align 8
  store %struct.backing_dev_info* %14, %struct.backing_dev_info** %5, align 8
  %15 = load %struct.address_space*, %struct.address_space** %3, align 8
  %16 = getelementptr inbounds %struct.address_space, %struct.address_space* %15, i32 0, i32 0
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.page*, %struct.page** %2, align 8
  %20 = call i32 @TestClearPageWriteback(%struct.page* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %11
  %24 = load %struct.address_space*, %struct.address_space** %3, align 8
  %25 = getelementptr inbounds %struct.address_space, %struct.address_space* %24, i32 0, i32 1
  %26 = load %struct.page*, %struct.page** %2, align 8
  %27 = call i32 @page_index(%struct.page* %26)
  %28 = load i32, i32* @PAGECACHE_TAG_WRITEBACK, align 4
  %29 = call i32 @radix_tree_tag_clear(i32* %25, i32 %27, i32 %28)
  %30 = load %struct.backing_dev_info*, %struct.backing_dev_info** %5, align 8
  %31 = call i64 @bdi_cap_account_writeback(%struct.backing_dev_info* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %23
  %34 = load %struct.backing_dev_info*, %struct.backing_dev_info** %5, align 8
  %35 = load i32, i32* @BDI_WRITEBACK, align 4
  %36 = call i32 @__dec_bdi_stat(%struct.backing_dev_info* %34, i32 %35)
  %37 = load %struct.backing_dev_info*, %struct.backing_dev_info** %5, align 8
  %38 = call i32 @__bdi_writeout_inc(%struct.backing_dev_info* %37)
  br label %39

39:                                               ; preds = %33, %23
  br label %40

40:                                               ; preds = %39, %11
  %41 = load %struct.address_space*, %struct.address_space** %3, align 8
  %42 = getelementptr inbounds %struct.address_space, %struct.address_space* %41, i32 0, i32 0
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  br label %48

45:                                               ; preds = %1
  %46 = load %struct.page*, %struct.page** %2, align 8
  %47 = call i32 @TestClearPageWriteback(%struct.page* %46)
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %45, %40
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.page*, %struct.page** %2, align 8
  %53 = load i32, i32* @NR_WRITEBACK, align 4
  %54 = call i32 @dec_zone_page_state(%struct.page* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %48
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.address_space* @page_mapping(%struct.page*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @TestClearPageWriteback(%struct.page*) #1

declare dso_local i32 @radix_tree_tag_clear(i32*, i32, i32) #1

declare dso_local i32 @page_index(%struct.page*) #1

declare dso_local i64 @bdi_cap_account_writeback(%struct.backing_dev_info*) #1

declare dso_local i32 @__dec_bdi_stat(%struct.backing_dev_info*, i32) #1

declare dso_local i32 @__bdi_writeout_inc(%struct.backing_dev_info*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dec_zone_page_state(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
