; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c_move_freepages_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c_move_freepages_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone = type { i64, i64 }
%struct.page = type { i32 }

@pageblock_nr_pages = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zone*, %struct.page*, i32)* @move_freepages_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @move_freepages_block(%struct.zone* %0, %struct.page* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zone*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca %struct.page*, align 8
  store %struct.zone* %0, %struct.zone** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.page*, %struct.page** %6, align 8
  %13 = call i64 @page_to_pfn(%struct.page* %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i32, i32* @pageblock_nr_pages, align 4
  %16 = sub nsw i32 %15, 1
  %17 = xor i32 %16, -1
  %18 = sext i32 %17 to i64
  %19 = and i64 %14, %18
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call %struct.page* @pfn_to_page(i64 %20)
  store %struct.page* %21, %struct.page** %10, align 8
  %22 = load %struct.page*, %struct.page** %10, align 8
  %23 = load i32, i32* @pageblock_nr_pages, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.page, %struct.page* %22, i64 %24
  %26 = getelementptr inbounds %struct.page, %struct.page* %25, i64 -1
  store %struct.page* %26, %struct.page** %11, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i32, i32* @pageblock_nr_pages, align 4
  %29 = sext i32 %28 to i64
  %30 = add i64 %27, %29
  %31 = sub i64 %30, 1
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.zone*, %struct.zone** %5, align 8
  %34 = getelementptr inbounds %struct.zone, %struct.zone* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %32, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load %struct.page*, %struct.page** %6, align 8
  store %struct.page* %38, %struct.page** %10, align 8
  br label %39

39:                                               ; preds = %37, %3
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.zone*, %struct.zone** %5, align 8
  %42 = getelementptr inbounds %struct.zone, %struct.zone* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.zone*, %struct.zone** %5, align 8
  %45 = getelementptr inbounds %struct.zone, %struct.zone* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %43, %46
  %48 = icmp uge i64 %40, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %56

50:                                               ; preds = %39
  %51 = load %struct.zone*, %struct.zone** %5, align 8
  %52 = load %struct.page*, %struct.page** %10, align 8
  %53 = load %struct.page*, %struct.page** %11, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @move_freepages(%struct.zone* %51, %struct.page* %52, %struct.page* %53, i32 %54)
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %50, %49
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @page_to_pfn(%struct.page*) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local i32 @move_freepages(%struct.zone*, %struct.page*, %struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
