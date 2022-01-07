; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c_setup_zone_migrate_reserve.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c_setup_zone_migrate_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone = type { i64, i64, i32 }
%struct.page = type { i32 }

@pageblock_nr_pages = common dso_local global i64 0, align 8
@pageblock_order = common dso_local global i32 0, align 4
@MIGRATE_RESERVE = common dso_local global i64 0, align 8
@MIGRATE_MOVABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zone*)* @setup_zone_migrate_reserve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_zone_migrate_reserve(%struct.zone* %0) #0 {
  %2 = alloca %struct.zone*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.zone* %0, %struct.zone** %2, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %126, %1
  %13 = load %struct.zone*, %struct.zone** %2, align 8
  %14 = getelementptr inbounds %struct.zone, %struct.zone* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load %struct.zone*, %struct.zone** %2, align 8
  %18 = getelementptr inbounds %struct.zone, %struct.zone* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %16, %19
  store i64 %20, i64* %5, align 8
  %21 = load %struct.zone*, %struct.zone** %2, align 8
  %22 = call i32 @min_wmark_pages(%struct.zone* %21)
  %23 = load i64, i64* @pageblock_nr_pages, align 8
  %24 = call i32 @roundup(i32 %22, i64 %23)
  %25 = load i32, i32* @pageblock_order, align 4
  %26 = ashr i32 %24, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @min(i32 2, i32 %27)
  store i32 %28, i32* %11, align 4
  store i32 %28, i32* %8, align 4
  %29 = load %struct.zone*, %struct.zone** %2, align 8
  %30 = getelementptr inbounds %struct.zone, %struct.zone* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %12
  br label %131

36:                                               ; preds = %12
  %37 = load i64, i64* %3, align 8
  store i64 %37, i64* %4, align 8
  br label %38

38:                                               ; preds = %115, %36
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %119

42:                                               ; preds = %38
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @pfn_valid(i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  br label %115

47:                                               ; preds = %42
  %48 = load i64, i64* %4, align 8
  %49 = call %struct.page* @pfn_to_page(i64 %48)
  store %struct.page* %49, %struct.page** %6, align 8
  %50 = load %struct.page*, %struct.page** %6, align 8
  %51 = call i64 @page_to_nid(%struct.page* %50)
  %52 = load %struct.zone*, %struct.zone** %2, align 8
  %53 = call i64 @zone_to_nid(%struct.zone* %52)
  %54 = icmp ne i64 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %115

56:                                               ; preds = %47
  %57 = load %struct.page*, %struct.page** %6, align 8
  %58 = call i64 @PageReserved(%struct.page* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %115

61:                                               ; preds = %56
  %62 = load %struct.page*, %struct.page** %6, align 8
  %63 = call i64 @get_pageblock_migratetype(%struct.page* %62)
  store i64 %63, i64* %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* @MIGRATE_RESERVE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %8, align 4
  br label %115

73:                                               ; preds = %66, %61
  %74 = load i32, i32* %8, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %73
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %76
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* @MIGRATE_MOVABLE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %79, %76
  %84 = load %struct.page*, %struct.page** %6, align 8
  %85 = load i64, i64* @MIGRATE_RESERVE, align 8
  %86 = call i32 @set_pageblock_migratetype(%struct.page* %84, i64 %85)
  %87 = load %struct.zone*, %struct.zone** %2, align 8
  %88 = load %struct.page*, %struct.page** %6, align 8
  %89 = load i64, i64* @MIGRATE_RESERVE, align 8
  %90 = call i32 @move_freepages_block(%struct.zone* %87, %struct.page* %88, i64 %89)
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %8, align 4
  br label %115

93:                                               ; preds = %79
  br label %102

94:                                               ; preds = %73
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  br label %119

101:                                              ; preds = %97, %94
  br label %102

102:                                              ; preds = %101, %93
  %103 = load i64, i64* %7, align 8
  %104 = load i64, i64* @MIGRATE_RESERVE, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %102
  %107 = load %struct.page*, %struct.page** %6, align 8
  %108 = load i64, i64* @MIGRATE_MOVABLE, align 8
  %109 = call i32 @set_pageblock_migratetype(%struct.page* %107, i64 %108)
  %110 = load %struct.zone*, %struct.zone** %2, align 8
  %111 = load %struct.page*, %struct.page** %6, align 8
  %112 = load i64, i64* @MIGRATE_MOVABLE, align 8
  %113 = call i32 @move_freepages_block(%struct.zone* %110, %struct.page* %111, i64 %112)
  br label %114

114:                                              ; preds = %106, %102
  br label %115

115:                                              ; preds = %114, %83, %70, %60, %55, %46
  %116 = load i64, i64* @pageblock_nr_pages, align 8
  %117 = load i64, i64* %4, align 8
  %118 = add i64 %117, %116
  store i64 %118, i64* %4, align 8
  br label %38

119:                                              ; preds = %100, %38
  %120 = load i32, i32* %8, align 4
  %121 = call i64 @unlikely(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %123
  store i32 1, i32* %9, align 4
  br label %12

127:                                              ; preds = %123, %119
  %128 = load i32, i32* %11, align 4
  %129 = load %struct.zone*, %struct.zone** %2, align 8
  %130 = getelementptr inbounds %struct.zone, %struct.zone* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 8
  br label %131

131:                                              ; preds = %127, %35
  ret void
}

declare dso_local i32 @roundup(i32, i64) #1

declare dso_local i32 @min_wmark_pages(%struct.zone*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @pfn_valid(i64) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local i64 @page_to_nid(%struct.page*) #1

declare dso_local i64 @zone_to_nid(%struct.zone*) #1

declare dso_local i64 @PageReserved(%struct.page*) #1

declare dso_local i64 @get_pageblock_migratetype(%struct.page*) #1

declare dso_local i32 @set_pageblock_migratetype(%struct.page*, i64) #1

declare dso_local i32 @move_freepages_block(%struct.zone*, %struct.page*, i64) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
