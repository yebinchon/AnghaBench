; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c___free_one_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c___free_one_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.zone = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }

@MAX_ORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, %struct.zone*, i32, i32)* @__free_one_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__free_one_page(%struct.page* %0, %struct.zone* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.zone*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca %struct.page*, align 8
  store %struct.page* %0, %struct.page** %5, align 8
  store %struct.zone* %1, %struct.zone** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.page*, %struct.page** %5, align 8
  %15 = call i32 @PageCompound(%struct.page* %14)
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %4
  %19 = load %struct.page*, %struct.page** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @destroy_compound_page(%struct.page* %19, i32 %20)
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %167

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %4
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, -1
  %29 = zext i1 %28 to i32
  %30 = sext i32 %29 to i64
  %31 = call i32 @VM_BUG_ON(i64 %30)
  %32 = load %struct.page*, %struct.page** %5, align 8
  %33 = call i32 @page_to_pfn(%struct.page* %32)
  %34 = load i32, i32* @MAX_ORDER, align 4
  %35 = shl i32 1, %34
  %36 = sub nsw i32 %35, 1
  %37 = and i32 %33, %36
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i32, i32* %7, align 4
  %41 = shl i32 1, %40
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = and i64 %39, %43
  %45 = call i32 @VM_BUG_ON(i64 %44)
  %46 = load %struct.zone*, %struct.zone** %6, align 8
  %47 = load %struct.page*, %struct.page** %5, align 8
  %48 = call i64 @bad_range(%struct.zone* %46, %struct.page* %47)
  %49 = call i32 @VM_BUG_ON(i64 %48)
  br label %50

50:                                               ; preds = %66, %26
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @MAX_ORDER, align 4
  %53 = sub nsw i32 %52, 1
  %54 = icmp ult i32 %51, %53
  br i1 %54, label %55, label %92

55:                                               ; preds = %50
  %56 = load %struct.page*, %struct.page** %5, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call %struct.page* @__page_find_buddy(%struct.page* %56, i64 %57, i32 %58)
  store %struct.page* %59, %struct.page** %11, align 8
  %60 = load %struct.page*, %struct.page** %5, align 8
  %61 = load %struct.page*, %struct.page** %11, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i64 @page_is_buddy(%struct.page* %60, %struct.page* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %55
  br label %92

66:                                               ; preds = %55
  %67 = load %struct.page*, %struct.page** %11, align 8
  %68 = getelementptr inbounds %struct.page, %struct.page* %67, i32 0, i32 0
  %69 = call i32 @list_del(i32* %68)
  %70 = load %struct.zone*, %struct.zone** %6, align 8
  %71 = getelementptr inbounds %struct.zone, %struct.zone* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %76, align 8
  %79 = load %struct.page*, %struct.page** %11, align 8
  %80 = call i32 @rmv_page_order(%struct.page* %79)
  %81 = load i64, i64* %9, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i64 @__find_combined_index(i64 %81, i32 %82)
  store i64 %83, i64* %10, align 8
  %84 = load %struct.page*, %struct.page** %5, align 8
  %85 = load i64, i64* %10, align 8
  %86 = load i64, i64* %9, align 8
  %87 = sub i64 %85, %86
  %88 = getelementptr inbounds %struct.page, %struct.page* %84, i64 %87
  store %struct.page* %88, %struct.page** %5, align 8
  %89 = load i64, i64* %10, align 8
  store i64 %89, i64* %9, align 8
  %90 = load i32, i32* %7, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %50

92:                                               ; preds = %65, %50
  %93 = load %struct.page*, %struct.page** %5, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @set_page_order(%struct.page* %93, i32 %94)
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @MAX_ORDER, align 4
  %98 = sub nsw i32 %97, 2
  %99 = icmp ult i32 %96, %98
  br i1 %99, label %100, label %142

100:                                              ; preds = %92
  %101 = load %struct.page*, %struct.page** %11, align 8
  %102 = call i32 @page_to_pfn(%struct.page* %101)
  %103 = call i64 @pfn_valid_within(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %142

105:                                              ; preds = %100
  %106 = load i64, i64* %9, align 8
  %107 = load i32, i32* %7, align 4
  %108 = call i64 @__find_combined_index(i64 %106, i32 %107)
  store i64 %108, i64* %10, align 8
  %109 = load %struct.page*, %struct.page** %5, align 8
  %110 = load i64, i64* %10, align 8
  %111 = getelementptr inbounds %struct.page, %struct.page* %109, i64 %110
  %112 = load i64, i64* %9, align 8
  %113 = sub i64 0, %112
  %114 = getelementptr inbounds %struct.page, %struct.page* %111, i64 %113
  store %struct.page* %114, %struct.page** %12, align 8
  %115 = load %struct.page*, %struct.page** %12, align 8
  %116 = load i64, i64* %10, align 8
  %117 = load i32, i32* %7, align 4
  %118 = add i32 %117, 1
  %119 = call %struct.page* @__page_find_buddy(%struct.page* %115, i64 %116, i32 %118)
  store %struct.page* %119, %struct.page** %13, align 8
  %120 = load %struct.page*, %struct.page** %12, align 8
  %121 = load %struct.page*, %struct.page** %13, align 8
  %122 = load i32, i32* %7, align 4
  %123 = add i32 %122, 1
  %124 = call i64 @page_is_buddy(%struct.page* %120, %struct.page* %121, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %141

126:                                              ; preds = %105
  %127 = load %struct.page*, %struct.page** %5, align 8
  %128 = getelementptr inbounds %struct.page, %struct.page* %127, i32 0, i32 0
  %129 = load %struct.zone*, %struct.zone** %6, align 8
  %130 = getelementptr inbounds %struct.zone, %struct.zone* %129, i32 0, i32 0
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = call i32 @list_add_tail(i32* %128, i32* %139)
  br label %157

141:                                              ; preds = %105
  br label %142

142:                                              ; preds = %141, %100, %92
  %143 = load %struct.page*, %struct.page** %5, align 8
  %144 = getelementptr inbounds %struct.page, %struct.page* %143, i32 0, i32 0
  %145 = load %struct.zone*, %struct.zone** %6, align 8
  %146 = getelementptr inbounds %struct.zone, %struct.zone* %145, i32 0, i32 0
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = load i32, i32* %7, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = call i32 @list_add(i32* %144, i32* %155)
  br label %157

157:                                              ; preds = %142, %126
  %158 = load %struct.zone*, %struct.zone** %6, align 8
  %159 = getelementptr inbounds %struct.zone, %struct.zone* %158, i32 0, i32 0
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = load i32, i32* %7, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %164, align 8
  br label %167

167:                                              ; preds = %157, %24
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PageCompound(%struct.page*) #1

declare dso_local i32 @destroy_compound_page(%struct.page*, i32) #1

declare dso_local i32 @VM_BUG_ON(i64) #1

declare dso_local i32 @page_to_pfn(%struct.page*) #1

declare dso_local i64 @bad_range(%struct.zone*, %struct.page*) #1

declare dso_local %struct.page* @__page_find_buddy(%struct.page*, i64, i32) #1

declare dso_local i64 @page_is_buddy(%struct.page*, %struct.page*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @rmv_page_order(%struct.page*) #1

declare dso_local i64 @__find_combined_index(i64, i32) #1

declare dso_local i32 @set_page_order(%struct.page*, i32) #1

declare dso_local i64 @pfn_valid_within(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
