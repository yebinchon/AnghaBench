; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c_free_one_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c_free_one_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone = type { i32, i64 }
%struct.page = type { i32 }

@ZONE_ALL_UNRECLAIMABLE = common dso_local global i32 0, align 4
@NR_FREE_PAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zone*, %struct.page*, i32, i32)* @free_one_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_one_page(%struct.zone* %0, %struct.page* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.zone*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.zone* %0, %struct.zone** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.zone*, %struct.zone** %5, align 8
  %10 = getelementptr inbounds %struct.zone, %struct.zone* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.zone*, %struct.zone** %5, align 8
  %13 = load i32, i32* @ZONE_ALL_UNRECLAIMABLE, align 4
  %14 = call i32 @zone_clear_flag(%struct.zone* %12, i32 %13)
  %15 = load %struct.zone*, %struct.zone** %5, align 8
  %16 = getelementptr inbounds %struct.zone, %struct.zone* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.page*, %struct.page** %6, align 8
  %18 = load %struct.zone*, %struct.zone** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @__free_one_page(%struct.page* %17, %struct.zone* %18, i32 %19, i32 %20)
  %22 = load %struct.zone*, %struct.zone** %5, align 8
  %23 = load i32, i32* @NR_FREE_PAGES, align 4
  %24 = load i32, i32* %7, align 4
  %25 = shl i32 1, %24
  %26 = call i32 @__mod_zone_page_state(%struct.zone* %22, i32 %23, i32 %25)
  %27 = load %struct.zone*, %struct.zone** %5, align 8
  %28 = getelementptr inbounds %struct.zone, %struct.zone* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock(i32* %28)
  %30 = load %struct.zone*, %struct.zone** %5, align 8
  %31 = call i32 @watermark_check_zone(%struct.zone* %30)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @zone_clear_flag(%struct.zone*, i32) #1

declare dso_local i32 @__free_one_page(%struct.page*, %struct.zone*, i32, i32) #1

declare dso_local i32 @__mod_zone_page_state(%struct.zone*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @watermark_check_zone(%struct.zone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
