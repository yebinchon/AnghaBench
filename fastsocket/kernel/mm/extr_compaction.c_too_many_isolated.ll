; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_compaction.c_too_many_isolated.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_compaction.c_too_many_isolated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone = type { i32 }

@NR_INACTIVE_FILE = common dso_local global i32 0, align 4
@NR_INACTIVE_ANON = common dso_local global i32 0, align 4
@NR_ACTIVE_FILE = common dso_local global i32 0, align 4
@NR_ACTIVE_ANON = common dso_local global i32 0, align 4
@NR_ISOLATED_FILE = common dso_local global i32 0, align 4
@NR_ISOLATED_ANON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zone*)* @too_many_isolated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @too_many_isolated(%struct.zone* %0) #0 {
  %2 = alloca %struct.zone*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.zone* %0, %struct.zone** %2, align 8
  %6 = load %struct.zone*, %struct.zone** %2, align 8
  %7 = load i32, i32* @NR_INACTIVE_FILE, align 4
  %8 = call i64 @zone_page_state(%struct.zone* %6, i32 %7)
  %9 = load %struct.zone*, %struct.zone** %2, align 8
  %10 = load i32, i32* @NR_INACTIVE_ANON, align 4
  %11 = call i64 @zone_page_state(%struct.zone* %9, i32 %10)
  %12 = add i64 %8, %11
  store i64 %12, i64* %4, align 8
  %13 = load %struct.zone*, %struct.zone** %2, align 8
  %14 = load i32, i32* @NR_ACTIVE_FILE, align 4
  %15 = call i64 @zone_page_state(%struct.zone* %13, i32 %14)
  %16 = load %struct.zone*, %struct.zone** %2, align 8
  %17 = load i32, i32* @NR_ACTIVE_ANON, align 4
  %18 = call i64 @zone_page_state(%struct.zone* %16, i32 %17)
  %19 = add i64 %15, %18
  store i64 %19, i64* %3, align 8
  %20 = load %struct.zone*, %struct.zone** %2, align 8
  %21 = load i32, i32* @NR_ISOLATED_FILE, align 4
  %22 = call i64 @zone_page_state(%struct.zone* %20, i32 %21)
  %23 = load %struct.zone*, %struct.zone** %2, align 8
  %24 = load i32, i32* @NR_ISOLATED_ANON, align 4
  %25 = call i64 @zone_page_state(%struct.zone* %23, i32 %24)
  %26 = add i64 %22, %25
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* %3, align 8
  %30 = add i64 %28, %29
  %31 = udiv i64 %30, 2
  %32 = icmp ugt i64 %27, %31
  %33 = zext i1 %32 to i32
  ret i32 %33
}

declare dso_local i64 @zone_page_state(%struct.zone*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
