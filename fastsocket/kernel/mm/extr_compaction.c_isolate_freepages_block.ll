; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_compaction.c_isolate_freepages_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_compaction.c_isolate_freepages_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compact_control = type { i32 }
%struct.zone = type { i64, i64 }
%struct.list_head = type { i32 }
%struct.page = type { i32 }

@pageblock_nr_pages = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.compact_control*, %struct.zone*, i64, %struct.list_head*)* @isolate_freepages_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @isolate_freepages_block(%struct.compact_control* %0, %struct.zone* %1, i64 %2, %struct.list_head* %3) #0 {
  %5 = alloca %struct.compact_control*, align 8
  %6 = alloca %struct.zone*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  %13 = alloca %struct.page*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.page*, align 8
  store %struct.compact_control* %0, %struct.compact_control** %5, align 8
  store %struct.zone* %1, %struct.zone** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.list_head* %3, %struct.list_head** %8, align 8
  store i32 0, i32* %11, align 4
  store %struct.page* null, %struct.page** %13, align 8
  %17 = load %struct.zone*, %struct.zone** %6, align 8
  %18 = getelementptr inbounds %struct.zone, %struct.zone* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.zone*, %struct.zone** %6, align 8
  %21 = getelementptr inbounds %struct.zone, %struct.zone* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %19, %22
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %7, align 8
  %25 = add i64 %24, 1
  %26 = load i32, i32* @pageblock_nr_pages, align 4
  %27 = call i64 @ALIGN(i64 %25, i32 %26)
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i64 @min(i64 %28, i64 %29)
  store i64 %30, i64* %10, align 8
  br label %31

31:                                               ; preds = %41, %4
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %10, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load i64, i64* %7, align 8
  %37 = call i64 @pfn_valid_within(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %44

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %7, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %7, align 8
  br label %31

44:                                               ; preds = %39, %31
  %45 = load i64, i64* %7, align 8
  %46 = call %struct.page* @pfn_to_page(i64 %45)
  store %struct.page* %46, %struct.page** %12, align 8
  br label %47

47:                                               ; preds = %102, %44
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %10, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %107

51:                                               ; preds = %47
  %52 = load %struct.page*, %struct.page** %12, align 8
  store %struct.page* %52, %struct.page** %16, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i64 @pfn_valid_within(i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %102

57:                                               ; preds = %51
  %58 = load %struct.page*, %struct.page** %13, align 8
  %59 = icmp ne %struct.page* %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = load %struct.page*, %struct.page** %16, align 8
  store %struct.page* %61, %struct.page** %13, align 8
  br label %62

62:                                               ; preds = %60, %57
  %63 = load %struct.page*, %struct.page** %16, align 8
  %64 = call i32 @PageBuddy(%struct.page* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  br label %102

67:                                               ; preds = %62
  %68 = load %struct.page*, %struct.page** %16, align 8
  %69 = call i32 @split_free_page(%struct.page* %68)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %11, align 4
  store i32 0, i32* %15, align 4
  br label %73

73:                                               ; preds = %84, %67
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %73
  %78 = load %struct.page*, %struct.page** %16, align 8
  %79 = getelementptr inbounds %struct.page, %struct.page* %78, i32 0, i32 0
  %80 = load %struct.list_head*, %struct.list_head** %8, align 8
  %81 = call i32 @list_add(i32* %79, %struct.list_head* %80)
  %82 = load %struct.page*, %struct.page** %16, align 8
  %83 = getelementptr inbounds %struct.page, %struct.page* %82, i32 1
  store %struct.page* %83, %struct.page** %16, align 8
  br label %84

84:                                               ; preds = %77
  %85 = load i32, i32* %15, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %15, align 4
  br label %73

87:                                               ; preds = %73
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %87
  %91 = load i32, i32* %14, align 4
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* %7, align 8
  %95 = add i64 %94, %93
  store i64 %95, i64* %7, align 8
  %96 = load i32, i32* %14, align 4
  %97 = sub nsw i32 %96, 1
  %98 = load %struct.page*, %struct.page** %12, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds %struct.page, %struct.page* %98, i64 %99
  store %struct.page* %100, %struct.page** %12, align 8
  br label %101

101:                                              ; preds = %90, %87
  br label %102

102:                                              ; preds = %101, %66, %56
  %103 = load i64, i64* %7, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %7, align 8
  %105 = load %struct.page*, %struct.page** %12, align 8
  %106 = getelementptr inbounds %struct.page, %struct.page* %105, i32 1
  store %struct.page* %106, %struct.page** %12, align 8
  br label %47

107:                                              ; preds = %47
  %108 = load i64, i64* %7, align 8
  %109 = load i64, i64* %10, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %107
  %112 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %113 = load %struct.page*, %struct.page** %13, align 8
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @update_pageblock_skip(%struct.compact_control* %112, %struct.page* %113, i32 %114, i32 0)
  br label %116

116:                                              ; preds = %111, %107
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  ret i64 %118
}

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @pfn_valid_within(i64) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local i32 @PageBuddy(%struct.page*) #1

declare dso_local i32 @split_free_page(%struct.page*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

declare dso_local i32 @update_pageblock_skip(%struct.compact_control*, %struct.page*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
