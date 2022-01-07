; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_readahead.c_read_cache_pages_invalidate_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_readahead.c_read_cache_pages_invalidate_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.page = type { %struct.address_space* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.address_space*, %struct.page*)* @read_cache_pages_invalidate_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_cache_pages_invalidate_page(%struct.address_space* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca %struct.page*, align 8
  store %struct.address_space* %0, %struct.address_space** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %5 = load %struct.page*, %struct.page** %4, align 8
  %6 = call i64 @page_has_private(%struct.page* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  %9 = load %struct.page*, %struct.page** %4, align 8
  %10 = call i32 @trylock_page(%struct.page* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = call i32 (...) @BUG()
  br label %14

14:                                               ; preds = %12, %8
  %15 = load %struct.address_space*, %struct.address_space** %3, align 8
  %16 = load %struct.page*, %struct.page** %4, align 8
  %17 = getelementptr inbounds %struct.page, %struct.page* %16, i32 0, i32 0
  store %struct.address_space* %15, %struct.address_space** %17, align 8
  %18 = load %struct.page*, %struct.page** %4, align 8
  %19 = call i32 @do_invalidatepage(%struct.page* %18, i32 0)
  %20 = load %struct.page*, %struct.page** %4, align 8
  %21 = getelementptr inbounds %struct.page, %struct.page* %20, i32 0, i32 0
  store %struct.address_space* null, %struct.address_space** %21, align 8
  %22 = load %struct.page*, %struct.page** %4, align 8
  %23 = call i32 @unlock_page(%struct.page* %22)
  br label %24

24:                                               ; preds = %14, %2
  %25 = load %struct.page*, %struct.page** %4, align 8
  %26 = call i32 @page_cache_release(%struct.page* %25)
  ret void
}

declare dso_local i64 @page_has_private(%struct.page*) #1

declare dso_local i32 @trylock_page(%struct.page*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @do_invalidatepage(%struct.page*, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
