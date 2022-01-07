; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_compaction.c_update_pageblock_skip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_compaction.c_update_pageblock_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compact_control = type { i32, i32, %struct.zone* }
%struct.zone = type { i64, i64 }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.compact_control*, %struct.page*, i64, i32)* @update_pageblock_skip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_pageblock_skip(%struct.compact_control* %0, %struct.page* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.compact_control*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.zone*, align 8
  %10 = alloca i64, align 8
  store %struct.compact_control* %0, %struct.compact_control** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %12 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %11, i32 0, i32 2
  %13 = load %struct.zone*, %struct.zone** %12, align 8
  store %struct.zone* %13, %struct.zone** %9, align 8
  %14 = load %struct.page*, %struct.page** %6, align 8
  %15 = icmp ne %struct.page* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  br label %60

17:                                               ; preds = %4
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %60, label %20

20:                                               ; preds = %17
  %21 = load %struct.page*, %struct.page** %6, align 8
  %22 = call i64 @page_to_pfn(%struct.page* %21)
  store i64 %22, i64* %10, align 8
  %23 = load %struct.page*, %struct.page** %6, align 8
  %24 = call i32 @set_pageblock_skip(%struct.page* %23)
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %20
  %28 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %29 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %27
  %33 = load i64, i64* %10, align 8
  %34 = load %struct.zone*, %struct.zone** %9, align 8
  %35 = getelementptr inbounds %struct.zone, %struct.zone* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ugt i64 %33, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i64, i64* %10, align 8
  %40 = load %struct.zone*, %struct.zone** %9, align 8
  %41 = getelementptr inbounds %struct.zone, %struct.zone* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %38, %32, %27
  br label %59

43:                                               ; preds = %20
  %44 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %45 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %43
  %49 = load i64, i64* %10, align 8
  %50 = load %struct.zone*, %struct.zone** %9, align 8
  %51 = getelementptr inbounds %struct.zone, %struct.zone* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ult i64 %49, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i64, i64* %10, align 8
  %56 = load %struct.zone*, %struct.zone** %9, align 8
  %57 = getelementptr inbounds %struct.zone, %struct.zone* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %54, %48, %43
  br label %59

59:                                               ; preds = %58, %42
  br label %60

60:                                               ; preds = %16, %59, %17
  ret void
}

declare dso_local i64 @page_to_pfn(%struct.page*) #1

declare dso_local i32 @set_pageblock_skip(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
