; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c_zone_watermark_ok_safe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c_zone_watermark_ok_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone = type { i64 }

@NR_FREE_PAGES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zone_watermark_ok_safe(%struct.zone* %0, i32 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.zone*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.zone* %0, %struct.zone** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.zone*, %struct.zone** %6, align 8
  %13 = load i32, i32* @NR_FREE_PAGES, align 4
  %14 = call i64 @zone_page_state(%struct.zone* %12, i32 %13)
  store i64 %14, i64* %11, align 8
  %15 = load %struct.zone*, %struct.zone** %6, align 8
  %16 = getelementptr inbounds %struct.zone, %struct.zone* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %5
  %20 = load i64, i64* %11, align 8
  %21 = load %struct.zone*, %struct.zone** %6, align 8
  %22 = getelementptr inbounds %struct.zone, %struct.zone* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %20, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.zone*, %struct.zone** %6, align 8
  %27 = load i32, i32* @NR_FREE_PAGES, align 4
  %28 = call i64 @zone_page_state_snapshot(%struct.zone* %26, i32 %27)
  store i64 %28, i64* %11, align 8
  br label %29

29:                                               ; preds = %25, %19, %5
  %30 = load %struct.zone*, %struct.zone** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i64, i64* %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i64, i64* %11, align 8
  %36 = call i32 @__zone_watermark_ok(%struct.zone* %30, i32 %31, i64 %32, i32 %33, i32 %34, i64 %35)
  ret i32 %36
}

declare dso_local i64 @zone_page_state(%struct.zone*, i32) #1

declare dso_local i64 @zone_page_state_snapshot(%struct.zone*, i32) #1

declare dso_local i32 @__zone_watermark_ok(%struct.zone*, i32, i64, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
