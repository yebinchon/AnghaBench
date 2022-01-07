; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_isolation.c_test_pages_isolated.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_isolation.c_test_pages_isolated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.zone = type { i32 }

@pageblock_nr_pages = common dso_local global i64 0, align 8
@MIGRATE_ISOLATE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_pages_isolated(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.zone*, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i64, i64* %4, align 8
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %4, align 8
  store i64 %12, i64* %6, align 8
  br label %13

13:                                               ; preds = %30, %2
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %13
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @pageblock_nr_pages, align 8
  %20 = call %struct.page* @__first_valid_page(i64 %18, i64 %19)
  store %struct.page* %20, %struct.page** %8, align 8
  %21 = load %struct.page*, %struct.page** %8, align 8
  %22 = icmp ne %struct.page* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load %struct.page*, %struct.page** %8, align 8
  %25 = call i64 @get_pageblock_migratetype(%struct.page* %24)
  %26 = load i64, i64* @MIGRATE_ISOLATE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %34

29:                                               ; preds = %23, %17
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* @pageblock_nr_pages, align 8
  %32 = load i64, i64* %6, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %6, align 8
  br label %13

34:                                               ; preds = %28, %13
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* %4, align 8
  %38 = sub i64 %36, %37
  %39 = call %struct.page* @__first_valid_page(i64 %35, i64 %38)
  store %struct.page* %39, %struct.page** %8, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %5, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %46, label %43

43:                                               ; preds = %34
  %44 = load %struct.page*, %struct.page** %8, align 8
  %45 = icmp ne %struct.page* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %43, %34
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %71

49:                                               ; preds = %43
  %50 = load %struct.page*, %struct.page** %8, align 8
  %51 = call %struct.zone* @page_zone(%struct.page* %50)
  store %struct.zone* %51, %struct.zone** %9, align 8
  %52 = load %struct.zone*, %struct.zone** %9, align 8
  %53 = getelementptr inbounds %struct.zone, %struct.zone* %52, i32 0, i32 0
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @spin_lock_irqsave(i32* %53, i64 %54)
  %56 = load i64, i64* %4, align 8
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @__test_page_isolated_in_pageblock(i64 %56, i64 %57)
  store i32 %58, i32* %10, align 4
  %59 = load %struct.zone*, %struct.zone** %9, align 8
  %60 = getelementptr inbounds %struct.zone, %struct.zone* %59, i32 0, i32 0
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %49
  br label %69

66:                                               ; preds = %49
  %67 = load i32, i32* @EBUSY, align 4
  %68 = sub nsw i32 0, %67
  br label %69

69:                                               ; preds = %66, %65
  %70 = phi i32 [ 0, %65 ], [ %68, %66 ]
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %46
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.page* @__first_valid_page(i64, i64) #1

declare dso_local i64 @get_pageblock_migratetype(%struct.page*) #1

declare dso_local %struct.zone* @page_zone(%struct.page*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__test_page_isolated_in_pageblock(i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
