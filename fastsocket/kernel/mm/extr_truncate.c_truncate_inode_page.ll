; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_truncate.c_truncate_inode_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_truncate.c_truncate_inode_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.page = type { i64 }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @truncate_inode_page(%struct.address_space* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca %struct.page*, align 8
  store %struct.address_space* %0, %struct.address_space** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %5 = load %struct.page*, %struct.page** %4, align 8
  %6 = call i64 @page_mapped(%struct.page* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = load %struct.address_space*, %struct.address_space** %3, align 8
  %10 = load %struct.page*, %struct.page** %4, align 8
  %11 = getelementptr inbounds %struct.page, %struct.page* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %15 = shl i32 %13, %14
  %16 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %17 = call i32 @unmap_mapping_range(%struct.address_space* %9, i32 %15, i32 %16, i32 0)
  br label %18

18:                                               ; preds = %8, %2
  %19 = load %struct.address_space*, %struct.address_space** %3, align 8
  %20 = load %struct.page*, %struct.page** %4, align 8
  %21 = call i32 @truncate_complete_page(%struct.address_space* %19, %struct.page* %20)
  ret i32 %21
}

declare dso_local i64 @page_mapped(%struct.page*) #1

declare dso_local i32 @unmap_mapping_range(%struct.address_space*, i32, i32, i32) #1

declare dso_local i32 @truncate_complete_page(%struct.address_space*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
