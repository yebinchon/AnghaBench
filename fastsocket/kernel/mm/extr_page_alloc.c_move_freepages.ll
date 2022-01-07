; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c_move_freepages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c_move_freepages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zone*, %struct.page*, %struct.page*, i32)* @move_freepages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @move_freepages(%struct.zone* %0, %struct.page* %1, %struct.page* %2, i32 %3) #0 {
  %5 = alloca %struct.zone*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.zone* %0, %struct.zone** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store %struct.page* %2, %struct.page** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.page*, %struct.page** %6, align 8
  %13 = call i64 @page_zone(%struct.page* %12)
  %14 = load %struct.page*, %struct.page** %7, align 8
  %15 = call i64 @page_zone(%struct.page* %14)
  %16 = icmp ne i64 %13, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.page*, %struct.page** %6, align 8
  store %struct.page* %19, %struct.page** %9, align 8
  br label %20

20:                                               ; preds = %46, %43, %36, %4
  %21 = load %struct.page*, %struct.page** %9, align 8
  %22 = load %struct.page*, %struct.page** %7, align 8
  %23 = icmp ule %struct.page* %21, %22
  br i1 %23, label %24, label %76

24:                                               ; preds = %20
  %25 = load %struct.page*, %struct.page** %9, align 8
  %26 = call i64 @page_to_nid(%struct.page* %25)
  %27 = load %struct.zone*, %struct.zone** %5, align 8
  %28 = call i64 @zone_to_nid(%struct.zone* %27)
  %29 = icmp ne i64 %26, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @VM_BUG_ON(i32 %30)
  %32 = load %struct.page*, %struct.page** %9, align 8
  %33 = call i32 @page_to_pfn(%struct.page* %32)
  %34 = call i32 @pfn_valid_within(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %24
  %37 = load %struct.page*, %struct.page** %9, align 8
  %38 = getelementptr inbounds %struct.page, %struct.page* %37, i32 1
  store %struct.page* %38, %struct.page** %9, align 8
  br label %20

39:                                               ; preds = %24
  %40 = load %struct.page*, %struct.page** %9, align 8
  %41 = call i32 @PageBuddy(%struct.page* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load %struct.page*, %struct.page** %9, align 8
  %45 = getelementptr inbounds %struct.page, %struct.page* %44, i32 1
  store %struct.page* %45, %struct.page** %9, align 8
  br label %20

46:                                               ; preds = %39
  %47 = load %struct.page*, %struct.page** %9, align 8
  %48 = call i64 @page_order(%struct.page* %47)
  store i64 %48, i64* %10, align 8
  %49 = load %struct.page*, %struct.page** %9, align 8
  %50 = getelementptr inbounds %struct.page, %struct.page* %49, i32 0, i32 0
  %51 = call i32 @list_del(i32* %50)
  %52 = load %struct.page*, %struct.page** %9, align 8
  %53 = getelementptr inbounds %struct.page, %struct.page* %52, i32 0, i32 0
  %54 = load %struct.zone*, %struct.zone** %5, align 8
  %55 = getelementptr inbounds %struct.zone, %struct.zone* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i64, i64* %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = call i32 @list_add(i32* %53, i32* %63)
  %65 = load i64, i64* %10, align 8
  %66 = trunc i64 %65 to i32
  %67 = shl i32 1, %66
  %68 = load %struct.page*, %struct.page** %9, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds %struct.page, %struct.page* %68, i64 %69
  store %struct.page* %70, %struct.page** %9, align 8
  %71 = load i64, i64* %10, align 8
  %72 = trunc i64 %71 to i32
  %73 = shl i32 1, %72
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %11, align 4
  br label %20

76:                                               ; preds = %20
  %77 = load i32, i32* %11, align 4
  ret i32 %77
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @page_zone(%struct.page*) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i64 @page_to_nid(%struct.page*) #1

declare dso_local i64 @zone_to_nid(%struct.zone*) #1

declare dso_local i32 @pfn_valid_within(i32) #1

declare dso_local i32 @page_to_pfn(%struct.page*) #1

declare dso_local i32 @PageBuddy(%struct.page*) #1

declare dso_local i64 @page_order(%struct.page*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
