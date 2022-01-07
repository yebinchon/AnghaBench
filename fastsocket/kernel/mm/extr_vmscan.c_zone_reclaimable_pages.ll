; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c_zone_reclaimable_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c_zone_reclaimable_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone = type { i32 }

@NR_ACTIVE_FILE = common dso_local global i32 0, align 4
@NR_INACTIVE_FILE = common dso_local global i32 0, align 4
@nr_swap_pages = common dso_local global i64 0, align 8
@NR_ACTIVE_ANON = common dso_local global i32 0, align 4
@NR_INACTIVE_ANON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zone_reclaimable_pages(%struct.zone* %0) #0 {
  %2 = alloca %struct.zone*, align 8
  %3 = alloca i32, align 4
  store %struct.zone* %0, %struct.zone** %2, align 8
  %4 = load %struct.zone*, %struct.zone** %2, align 8
  %5 = load i32, i32* @NR_ACTIVE_FILE, align 4
  %6 = call i32 @zone_page_state(%struct.zone* %4, i32 %5)
  %7 = load %struct.zone*, %struct.zone** %2, align 8
  %8 = load i32, i32* @NR_INACTIVE_FILE, align 4
  %9 = call i32 @zone_page_state(%struct.zone* %7, i32 %8)
  %10 = add nsw i32 %6, %9
  store i32 %10, i32* %3, align 4
  %11 = load i64, i64* @nr_swap_pages, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.zone*, %struct.zone** %2, align 8
  %15 = load i32, i32* @NR_ACTIVE_ANON, align 4
  %16 = call i32 @zone_page_state(%struct.zone* %14, i32 %15)
  %17 = load %struct.zone*, %struct.zone** %2, align 8
  %18 = load i32, i32* @NR_INACTIVE_ANON, align 4
  %19 = call i32 @zone_page_state(%struct.zone* %17, i32 %18)
  %20 = add nsw i32 %16, %19
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, %20
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %13, %1
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  ret i64 %25
}

declare dso_local i32 @zone_page_state(%struct.zone*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
