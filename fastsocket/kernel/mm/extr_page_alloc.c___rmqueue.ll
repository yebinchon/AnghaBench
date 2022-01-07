; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c___rmqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c___rmqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.zone = type { i32 }

@MIGRATE_RESERVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.zone*, i32, i32)* @__rmqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @__rmqueue(%struct.zone* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.zone*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.page*, align 8
  store %struct.zone* %0, %struct.zone** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  br label %8

8:                                                ; preds = %30, %3
  %9 = load %struct.zone*, %struct.zone** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.page* @__rmqueue_smallest(%struct.zone* %9, i32 %10, i32 %11)
  store %struct.page* %12, %struct.page** %7, align 8
  %13 = load %struct.page*, %struct.page** %7, align 8
  %14 = icmp ne %struct.page* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @MIGRATE_RESERVE, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load %struct.zone*, %struct.zone** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call %struct.page* @__rmqueue_fallback(%struct.zone* %24, i32 %25, i32 %26)
  store %struct.page* %27, %struct.page** %7, align 8
  %28 = load %struct.page*, %struct.page** %7, align 8
  %29 = icmp ne %struct.page* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @MIGRATE_RESERVE, align 4
  store i32 %31, i32* %6, align 4
  br label %8

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32, %19, %8
  %34 = load %struct.page*, %struct.page** %7, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @trace_mm_page_alloc_zone_locked(%struct.page* %34, i32 %35, i32 %36)
  %38 = load %struct.page*, %struct.page** %7, align 8
  ret %struct.page* %38
}

declare dso_local %struct.page* @__rmqueue_smallest(%struct.zone*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.page* @__rmqueue_fallback(%struct.zone*, i32, i32) #1

declare dso_local i32 @trace_mm_page_alloc_zone_locked(%struct.page*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
