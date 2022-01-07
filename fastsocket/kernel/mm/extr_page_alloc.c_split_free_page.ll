; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c_split_free_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c_split_free_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.zone = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NR_FREE_PAGES = common dso_local global i32 0, align 4
@pageblock_order = common dso_local global i32 0, align 4
@MIGRATE_MOVABLE = common dso_local global i32 0, align 4
@pageblock_nr_pages = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @split_free_page(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.zone*, align 8
  %7 = alloca %struct.page*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  %8 = load %struct.page*, %struct.page** %3, align 8
  %9 = call i32 @PageBuddy(%struct.page* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.page*, %struct.page** %3, align 8
  %15 = call %struct.zone* @page_zone(%struct.page* %14)
  store %struct.zone* %15, %struct.zone** %6, align 8
  %16 = load %struct.page*, %struct.page** %3, align 8
  %17 = call i32 @page_order(%struct.page* %16)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.zone*, %struct.zone** %6, align 8
  %19 = call i32 @low_wmark_pages(%struct.zone* %18)
  %20 = load i32, i32* %4, align 4
  %21 = shl i32 1, %20
  %22 = add nsw i32 %19, %21
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %5, align 8
  %24 = load %struct.zone*, %struct.zone** %6, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @zone_watermark_ok(%struct.zone* %24, i32 0, i64 %25, i32 0, i32 0)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %84

29:                                               ; preds = %1
  %30 = load %struct.page*, %struct.page** %3, align 8
  %31 = getelementptr inbounds %struct.page, %struct.page* %30, i32 0, i32 0
  %32 = call i32 @list_del(i32* %31)
  %33 = load %struct.zone*, %struct.zone** %6, align 8
  %34 = getelementptr inbounds %struct.zone, %struct.zone* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.page*, %struct.page** %3, align 8
  %43 = call i32 @rmv_page_order(%struct.page* %42)
  %44 = load %struct.zone*, %struct.zone** %6, align 8
  %45 = load i32, i32* @NR_FREE_PAGES, align 4
  %46 = load i32, i32* %4, align 4
  %47 = zext i32 %46 to i64
  %48 = shl i64 1, %47
  %49 = sub i64 0, %48
  %50 = call i32 @__mod_zone_page_state(%struct.zone* %44, i32 %45, i64 %49)
  %51 = load %struct.page*, %struct.page** %3, align 8
  %52 = call i32 @set_page_refcounted(%struct.page* %51)
  %53 = load %struct.page*, %struct.page** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @split_page(%struct.page* %53, i32 %54)
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @pageblock_order, align 4
  %58 = sub nsw i32 %57, 1
  %59 = icmp uge i32 %56, %58
  br i1 %59, label %60, label %81

60:                                               ; preds = %29
  %61 = load %struct.page*, %struct.page** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = shl i32 1, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.page, %struct.page* %61, i64 %64
  %66 = getelementptr inbounds %struct.page, %struct.page* %65, i64 -1
  store %struct.page* %66, %struct.page** %7, align 8
  br label %67

67:                                               ; preds = %75, %60
  %68 = load %struct.page*, %struct.page** %3, align 8
  %69 = load %struct.page*, %struct.page** %7, align 8
  %70 = icmp ult %struct.page* %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %67
  %72 = load %struct.page*, %struct.page** %3, align 8
  %73 = load i32, i32* @MIGRATE_MOVABLE, align 4
  %74 = call i32 @set_pageblock_migratetype(%struct.page* %72, i32 %73)
  br label %75

75:                                               ; preds = %71
  %76 = load i32, i32* @pageblock_nr_pages, align 4
  %77 = load %struct.page*, %struct.page** %3, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds %struct.page, %struct.page* %77, i64 %78
  store %struct.page* %79, %struct.page** %3, align 8
  br label %67

80:                                               ; preds = %67
  br label %81

81:                                               ; preds = %80, %29
  %82 = load i32, i32* %4, align 4
  %83 = shl i32 1, %82
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %81, %28
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageBuddy(%struct.page*) #1

declare dso_local %struct.zone* @page_zone(%struct.page*) #1

declare dso_local i32 @page_order(%struct.page*) #1

declare dso_local i32 @low_wmark_pages(%struct.zone*) #1

declare dso_local i32 @zone_watermark_ok(%struct.zone*, i32, i64, i32, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @rmv_page_order(%struct.page*) #1

declare dso_local i32 @__mod_zone_page_state(%struct.zone*, i32, i64) #1

declare dso_local i32 @set_page_refcounted(%struct.page*) #1

declare dso_local i32 @split_page(%struct.page*, i32) #1

declare dso_local i32 @set_pageblock_migratetype(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
