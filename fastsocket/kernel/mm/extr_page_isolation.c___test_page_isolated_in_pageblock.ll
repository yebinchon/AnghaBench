; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_isolation.c___test_page_isolated_in_pageblock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_isolation.c___test_page_isolated_in_pageblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@MIGRATE_ISOLATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @__test_page_isolated_in_pageblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__test_page_isolated_in_pageblock(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.page*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  br label %7

7:                                                ; preds = %45, %15, %2
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %46

11:                                               ; preds = %7
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @pfn_valid_within(i64 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = load i64, i64* %4, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* %4, align 8
  br label %7

18:                                               ; preds = %11
  %19 = load i64, i64* %4, align 8
  %20 = call %struct.page* @pfn_to_page(i64 %19)
  store %struct.page* %20, %struct.page** %6, align 8
  %21 = load %struct.page*, %struct.page** %6, align 8
  %22 = call i64 @PageBuddy(%struct.page* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load %struct.page*, %struct.page** %6, align 8
  %26 = call i32 @page_order(%struct.page* %25)
  %27 = shl i32 1, %26
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* %4, align 8
  %30 = add i64 %29, %28
  store i64 %30, i64* %4, align 8
  br label %45

31:                                               ; preds = %18
  %32 = load %struct.page*, %struct.page** %6, align 8
  %33 = call i64 @page_count(%struct.page* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load %struct.page*, %struct.page** %6, align 8
  %37 = call i64 @page_private(%struct.page* %36)
  %38 = load i64, i64* @MIGRATE_ISOLATE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i64, i64* %4, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %4, align 8
  br label %44

43:                                               ; preds = %35, %31
  br label %46

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44, %24
  br label %7

46:                                               ; preds = %43, %7
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* %5, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %52

51:                                               ; preds = %46
  store i32 1, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %50
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @pfn_valid_within(i64) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local i64 @PageBuddy(%struct.page*) #1

declare dso_local i32 @page_order(%struct.page*) #1

declare dso_local i64 @page_count(%struct.page*) #1

declare dso_local i64 @page_private(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
