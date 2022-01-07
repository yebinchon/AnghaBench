; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_readahead.c_read_cache_pages_invalidate_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_readahead.c_read_cache_pages_invalidate_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.list_head = type { i32 }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.address_space*, %struct.list_head*)* @read_cache_pages_invalidate_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_cache_pages_invalidate_pages(%struct.address_space* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.page*, align 8
  store %struct.address_space* %0, %struct.address_space** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  br label %6

6:                                                ; preds = %11, %2
  %7 = load %struct.list_head*, %struct.list_head** %4, align 8
  %8 = call i32 @list_empty(%struct.list_head* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  br i1 %10, label %11, label %20

11:                                               ; preds = %6
  %12 = load %struct.list_head*, %struct.list_head** %4, align 8
  %13 = call %struct.page* @list_to_page(%struct.list_head* %12)
  store %struct.page* %13, %struct.page** %5, align 8
  %14 = load %struct.page*, %struct.page** %5, align 8
  %15 = getelementptr inbounds %struct.page, %struct.page* %14, i32 0, i32 0
  %16 = call i32 @list_del(i32* %15)
  %17 = load %struct.address_space*, %struct.address_space** %3, align 8
  %18 = load %struct.page*, %struct.page** %5, align 8
  %19 = call i32 @read_cache_pages_invalidate_page(%struct.address_space* %17, %struct.page* %18)
  br label %6

20:                                               ; preds = %6
  ret void
}

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local %struct.page* @list_to_page(%struct.list_head*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @read_cache_pages_invalidate_page(%struct.address_space*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
