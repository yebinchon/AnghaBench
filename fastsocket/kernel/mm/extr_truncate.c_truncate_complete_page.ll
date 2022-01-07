; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_truncate.c_truncate_complete_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_truncate.c_truncate_complete_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.page = type { %struct.address_space* }

@EIO = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, %struct.page*)* @truncate_complete_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @truncate_complete_page(%struct.address_space* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.page*, align 8
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %6 = load %struct.page*, %struct.page** %5, align 8
  %7 = getelementptr inbounds %struct.page, %struct.page* %6, i32 0, i32 0
  %8 = load %struct.address_space*, %struct.address_space** %7, align 8
  %9 = load %struct.address_space*, %struct.address_space** %4, align 8
  %10 = icmp ne %struct.address_space* %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %33

14:                                               ; preds = %2
  %15 = load %struct.page*, %struct.page** %5, align 8
  %16 = call i64 @page_has_private(%struct.page* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load %struct.page*, %struct.page** %5, align 8
  %20 = call i32 @do_invalidatepage(%struct.page* %19, i32 0)
  br label %21

21:                                               ; preds = %18, %14
  %22 = load %struct.page*, %struct.page** %5, align 8
  %23 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %24 = call i32 @cancel_dirty_page(%struct.page* %22, i32 %23)
  %25 = load %struct.page*, %struct.page** %5, align 8
  %26 = call i32 @clear_page_mlock(%struct.page* %25)
  %27 = load %struct.page*, %struct.page** %5, align 8
  %28 = call i32 @remove_from_page_cache(%struct.page* %27)
  %29 = load %struct.page*, %struct.page** %5, align 8
  %30 = call i32 @ClearPageMappedToDisk(%struct.page* %29)
  %31 = load %struct.page*, %struct.page** %5, align 8
  %32 = call i32 @page_cache_release(%struct.page* %31)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %21, %11
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @page_has_private(%struct.page*) #1

declare dso_local i32 @do_invalidatepage(%struct.page*, i32) #1

declare dso_local i32 @cancel_dirty_page(%struct.page*, i32) #1

declare dso_local i32 @clear_page_mlock(%struct.page*) #1

declare dso_local i32 @remove_from_page_cache(%struct.page*) #1

declare dso_local i32 @ClearPageMappedToDisk(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
