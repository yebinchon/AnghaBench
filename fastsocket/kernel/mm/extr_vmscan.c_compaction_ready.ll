; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c_compaction_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c_compaction_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone = type { i32 }
%struct.scan_control = type { i64 }

@PAGE_ALLOC_COSTLY_ORDER = common dso_local global i64 0, align 8
@KSWAPD_ZONE_BALANCE_GAP_RATIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zone*, %struct.scan_control*)* @compaction_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compaction_ready(%struct.zone* %0, %struct.scan_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zone*, align 8
  %5 = alloca %struct.scan_control*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.zone* %0, %struct.zone** %4, align 8
  store %struct.scan_control* %1, %struct.scan_control** %5, align 8
  %9 = load %struct.scan_control*, %struct.scan_control** %5, align 8
  %10 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PAGE_ALLOC_COSTLY_ORDER, align 8
  %13 = icmp ule i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %54

15:                                               ; preds = %2
  %16 = load %struct.zone*, %struct.zone** %4, align 8
  %17 = call i32 @low_wmark_pages(%struct.zone* %16)
  %18 = load %struct.zone*, %struct.zone** %4, align 8
  %19 = getelementptr inbounds %struct.zone, %struct.zone* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @KSWAPD_ZONE_BALANCE_GAP_RATIO, align 4
  %22 = add nsw i32 %20, %21
  %23 = sub nsw i32 %22, 1
  %24 = load i32, i32* @KSWAPD_ZONE_BALANCE_GAP_RATIO, align 4
  %25 = sdiv i32 %23, %24
  %26 = call i64 @min(i32 %17, i32 %25)
  store i64 %26, i64* %6, align 8
  %27 = load %struct.zone*, %struct.zone** %4, align 8
  %28 = call i64 @high_wmark_pages(%struct.zone* %27)
  %29 = load i64, i64* %6, align 8
  %30 = add i64 %28, %29
  %31 = load %struct.scan_control*, %struct.scan_control** %5, align 8
  %32 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = shl i64 2, %33
  %35 = add i64 %30, %34
  store i64 %35, i64* %7, align 8
  %36 = load %struct.zone*, %struct.zone** %4, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @zone_watermark_ok_safe(%struct.zone* %36, i32 0, i64 %37, i32 0, i32 0)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.zone*, %struct.zone** %4, align 8
  %40 = call i64 @compaction_deferred(%struct.zone* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %15
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %54

44:                                               ; preds = %15
  %45 = load %struct.zone*, %struct.zone** %4, align 8
  %46 = load %struct.scan_control*, %struct.scan_control** %5, align 8
  %47 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @compaction_suitable(%struct.zone* %45, i64 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %54

52:                                               ; preds = %44
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %51, %42, %14
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @low_wmark_pages(%struct.zone*) #1

declare dso_local i64 @high_wmark_pages(%struct.zone*) #1

declare dso_local i32 @zone_watermark_ok_safe(%struct.zone*, i32, i64, i32, i32) #1

declare dso_local i64 @compaction_deferred(%struct.zone*) #1

declare dso_local i32 @compaction_suitable(%struct.zone*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
