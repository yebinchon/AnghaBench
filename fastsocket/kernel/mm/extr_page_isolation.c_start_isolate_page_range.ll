; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_isolation.c_start_isolate_page_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_isolation.c_start_isolate_page_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@pageblock_nr_pages = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @start_isolate_page_range(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.page*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i32, i32* @pageblock_nr_pages, align 4
  %11 = sub nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = and i64 %9, %12
  %14 = trunc i64 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load i64, i64* %5, align 8
  %17 = load i32, i32* @pageblock_nr_pages, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = and i64 %16, %19
  %21 = trunc i64 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load i64, i64* %4, align 8
  store i64 %23, i64* %6, align 8
  br label %24

24:                                               ; preds = %41, %2
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %24
  %29 = load i64, i64* %6, align 8
  %30 = load i32, i32* @pageblock_nr_pages, align 4
  %31 = call %struct.page* @__first_valid_page(i64 %29, i32 %30)
  store %struct.page* %31, %struct.page** %8, align 8
  %32 = load %struct.page*, %struct.page** %8, align 8
  %33 = icmp ne %struct.page* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.page*, %struct.page** %8, align 8
  %36 = call i64 @set_migratetype_isolate(%struct.page* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i64, i64* %6, align 8
  store i64 %39, i64* %7, align 8
  br label %47

40:                                               ; preds = %34, %28
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* @pageblock_nr_pages, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %6, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* %6, align 8
  br label %24

46:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %65

47:                                               ; preds = %38
  %48 = load i64, i64* %4, align 8
  store i64 %48, i64* %6, align 8
  br label %49

49:                                               ; preds = %57, %47
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @pfn_to_page(i64 %54)
  %56 = call i32 @unset_migratetype_isolate(i32 %55)
  br label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @pageblock_nr_pages, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %6, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* %6, align 8
  br label %49

62:                                               ; preds = %49
  %63 = load i32, i32* @EBUSY, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %62, %46
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.page* @__first_valid_page(i64, i32) #1

declare dso_local i64 @set_migratetype_isolate(%struct.page*) #1

declare dso_local i32 @unset_migratetype_isolate(i32) #1

declare dso_local i32 @pfn_to_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
