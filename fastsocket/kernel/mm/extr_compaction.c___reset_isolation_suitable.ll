; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_compaction.c___reset_isolation_suitable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_compaction.c___reset_isolation_suitable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone = type { i64, i64, i64, i64 }
%struct.page = type { i32 }

@pageblock_nr_pages = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zone*)* @__reset_isolation_suitable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__reset_isolation_suitable(%struct.zone* %0) #0 {
  %2 = alloca %struct.zone*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.page*, align 8
  store %struct.zone* %0, %struct.zone** %2, align 8
  %7 = load %struct.zone*, %struct.zone** %2, align 8
  %8 = getelementptr inbounds %struct.zone, %struct.zone* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %3, align 8
  %10 = load %struct.zone*, %struct.zone** %2, align 8
  %11 = getelementptr inbounds %struct.zone, %struct.zone* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.zone*, %struct.zone** %2, align 8
  %14 = getelementptr inbounds %struct.zone, %struct.zone* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = add i64 %12, %15
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %3, align 8
  %18 = load %struct.zone*, %struct.zone** %2, align 8
  %19 = getelementptr inbounds %struct.zone, %struct.zone* %18, i32 0, i32 2
  store i64 %17, i64* %19, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.zone*, %struct.zone** %2, align 8
  %22 = getelementptr inbounds %struct.zone, %struct.zone* %21, i32 0, i32 3
  store i64 %20, i64* %22, align 8
  %23 = load i64, i64* %3, align 8
  store i64 %23, i64* %5, align 8
  br label %24

24:                                               ; preds = %44, %1
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %24
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @pfn_valid(i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  br label %44

33:                                               ; preds = %28
  %34 = load i64, i64* %5, align 8
  %35 = call %struct.page* @pfn_to_page(i64 %34)
  store %struct.page* %35, %struct.page** %6, align 8
  %36 = load %struct.zone*, %struct.zone** %2, align 8
  %37 = load %struct.page*, %struct.page** %6, align 8
  %38 = call %struct.zone* @page_zone(%struct.page* %37)
  %39 = icmp ne %struct.zone* %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %44

41:                                               ; preds = %33
  %42 = load %struct.page*, %struct.page** %6, align 8
  %43 = call i32 @clear_pageblock_skip(%struct.page* %42)
  br label %44

44:                                               ; preds = %41, %40, %32
  %45 = load i64, i64* @pageblock_nr_pages, align 8
  %46 = load i64, i64* %5, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %5, align 8
  br label %24

48:                                               ; preds = %24
  ret void
}

declare dso_local i32 @pfn_valid(i64) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local %struct.zone* @page_zone(%struct.page*) #1

declare dso_local i32 @clear_pageblock_skip(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
