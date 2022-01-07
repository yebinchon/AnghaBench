; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c_change_pageblock_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c_change_pageblock_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@pageblock_order = common dso_local global i32 0, align 4
@pageblock_nr_pages = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, i32, i32)* @change_pageblock_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_pageblock_range(%struct.page* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @pageblock_order, align 4
  %10 = sub nsw i32 %8, %9
  %11 = shl i32 1, %10
  store i32 %11, i32* %7, align 4
  br label %12

12:                                               ; preds = %16, %3
  %13 = load i32, i32* %7, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %7, align 4
  %15 = icmp ne i32 %13, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load %struct.page*, %struct.page** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @set_pageblock_migratetype(%struct.page* %17, i32 %18)
  %20 = load i32, i32* @pageblock_nr_pages, align 4
  %21 = load %struct.page*, %struct.page** %4, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds %struct.page, %struct.page* %21, i64 %22
  store %struct.page* %23, %struct.page** %4, align 8
  br label %12

24:                                               ; preds = %12
  ret void
}

declare dso_local i32 @set_pageblock_migratetype(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
