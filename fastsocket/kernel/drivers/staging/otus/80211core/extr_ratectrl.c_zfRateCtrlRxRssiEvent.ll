; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ratectrl.c_zfRateCtrlRxRssiEvent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ratectrl.c_zfRateCtrlRxRssiEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zsRcCell = type { i64, i32 }

@ZM_RATE_CTRL_RSSI_VARIATION = common dso_local global i64 0, align 8
@ZM_RATE_CTRL_PROBING_INTERVAL_MS = common dso_local global i32 0, align 4
@ZM_MS_PER_TICK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfRateCtrlRxRssiEvent(%struct.zsRcCell* %0, i64 %1) #0 {
  %3 = alloca %struct.zsRcCell*, align 8
  %4 = alloca i64, align 8
  store %struct.zsRcCell* %0, %struct.zsRcCell** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.zsRcCell*, %struct.zsRcCell** %3, align 8
  %6 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = sub nsw i64 %7, %8
  %10 = load i64, i64* @ZM_RATE_CTRL_RSSI_VARIATION, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load i32, i32* @ZM_RATE_CTRL_PROBING_INTERVAL_MS, align 4
  %14 = load i32, i32* @ZM_MS_PER_TICK, align 4
  %15 = sdiv i32 %13, %14
  %16 = load %struct.zsRcCell*, %struct.zsRcCell** %3, align 8
  %17 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, %15
  store i32 %19, i32* %17, align 8
  br label %20

20:                                               ; preds = %12, %2
  %21 = load %struct.zsRcCell*, %struct.zsRcCell** %3, align 8
  %22 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = mul nsw i64 %23, 7
  %25 = load i64, i64* %4, align 8
  %26 = add nsw i64 %24, %25
  %27 = add nsw i64 %26, 4
  %28 = ashr i64 %27, 3
  %29 = load %struct.zsRcCell*, %struct.zsRcCell** %3, align 8
  %30 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
