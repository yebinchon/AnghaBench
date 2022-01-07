; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page-writeback.c_write_one_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page-writeback.c_write_one_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.address_space* }
%struct.address_space = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.page*, %struct.writeback_control*)* }
%struct.writeback_control = type { i32, i32 }

@WB_SYNC_ALL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_one_page(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.writeback_control, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.page*, %struct.page** %3, align 8
  %9 = getelementptr inbounds %struct.page, %struct.page* %8, i32 0, i32 0
  %10 = load %struct.address_space*, %struct.address_space** %9, align 8
  store %struct.address_space* %10, %struct.address_space** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %7, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %7, i32 0, i32 1
  %13 = load i32, i32* @WB_SYNC_ALL, align 4
  store i32 %13, i32* %12, align 4
  %14 = load %struct.page*, %struct.page** %3, align 8
  %15 = call i32 @PageLocked(%struct.page* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.page*, %struct.page** %3, align 8
  %24 = call i32 @wait_on_page_writeback(%struct.page* %23)
  br label %25

25:                                               ; preds = %22, %2
  %26 = load %struct.page*, %struct.page** %3, align 8
  %27 = call i64 @clear_page_dirty_for_io(%struct.page* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %57

29:                                               ; preds = %25
  %30 = load %struct.page*, %struct.page** %3, align 8
  %31 = call i32 @page_cache_get(%struct.page* %30)
  %32 = load %struct.address_space*, %struct.address_space** %5, align 8
  %33 = getelementptr inbounds %struct.address_space, %struct.address_space* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.page*, %struct.writeback_control*)** %35, align 8
  %37 = load %struct.page*, %struct.page** %3, align 8
  %38 = call i32 %36(%struct.page* %37, %struct.writeback_control* %7)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %29
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load %struct.page*, %struct.page** %3, align 8
  %46 = call i32 @wait_on_page_writeback(%struct.page* %45)
  %47 = load %struct.page*, %struct.page** %3, align 8
  %48 = call i64 @PageError(%struct.page* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %50, %44
  br label %54

54:                                               ; preds = %53, %41, %29
  %55 = load %struct.page*, %struct.page** %3, align 8
  %56 = call i32 @page_cache_release(%struct.page* %55)
  br label %60

57:                                               ; preds = %25
  %58 = load %struct.page*, %struct.page** %3, align 8
  %59 = call i32 @unlock_page(%struct.page* %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @wait_on_page_writeback(%struct.page*) #1

declare dso_local i64 @clear_page_dirty_for_io(%struct.page*) #1

declare dso_local i32 @page_cache_get(%struct.page*) #1

declare dso_local i64 @PageError(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
