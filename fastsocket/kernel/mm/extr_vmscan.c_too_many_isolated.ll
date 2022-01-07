; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c_too_many_isolated.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c_too_many_isolated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone = type { i32 }
%struct.scan_control = type { i32 }

@NR_INACTIVE_FILE = common dso_local global i32 0, align 4
@NR_ISOLATED_FILE = common dso_local global i32 0, align 4
@NR_INACTIVE_ANON = common dso_local global i32 0, align 4
@NR_ISOLATED_ANON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zone*, i32, %struct.scan_control*)* @too_many_isolated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @too_many_isolated(%struct.zone* %0, i32 %1, %struct.scan_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zone*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.scan_control*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.zone* %0, %struct.zone** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.scan_control* %2, %struct.scan_control** %7, align 8
  %10 = call i64 (...) @current_is_kswapd()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %40

13:                                               ; preds = %3
  %14 = load %struct.scan_control*, %struct.scan_control** %7, align 8
  %15 = call i32 @global_reclaim(%struct.scan_control* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %40

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load %struct.zone*, %struct.zone** %5, align 8
  %23 = load i32, i32* @NR_INACTIVE_FILE, align 4
  %24 = call i64 @zone_page_state(%struct.zone* %22, i32 %23)
  store i64 %24, i64* %8, align 8
  %25 = load %struct.zone*, %struct.zone** %5, align 8
  %26 = load i32, i32* @NR_ISOLATED_FILE, align 4
  %27 = call i64 @zone_page_state(%struct.zone* %25, i32 %26)
  store i64 %27, i64* %9, align 8
  br label %35

28:                                               ; preds = %18
  %29 = load %struct.zone*, %struct.zone** %5, align 8
  %30 = load i32, i32* @NR_INACTIVE_ANON, align 4
  %31 = call i64 @zone_page_state(%struct.zone* %29, i32 %30)
  store i64 %31, i64* %8, align 8
  %32 = load %struct.zone*, %struct.zone** %5, align 8
  %33 = load i32, i32* @NR_ISOLATED_ANON, align 4
  %34 = call i64 @zone_page_state(%struct.zone* %32, i32 %33)
  store i64 %34, i64* %9, align 8
  br label %35

35:                                               ; preds = %28, %21
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp ugt i64 %36, %37
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %35, %17, %12
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i64 @current_is_kswapd(...) #1

declare dso_local i32 @global_reclaim(%struct.scan_control*) #1

declare dso_local i64 @zone_page_state(%struct.zone*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
