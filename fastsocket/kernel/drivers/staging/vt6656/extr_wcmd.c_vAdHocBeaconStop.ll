; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6656/extr_wcmd.c_vAdHocBeaconStop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6656/extr_wcmd.c_vAdHocBeaconStop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i64, i64 }

@FALSE = common dso_local global i64 0, align 8
@WMAC_MODE_IBSS_STA = common dso_local global i64 0, align 8
@WMAC_STATE_STARTED = common dso_local global i64 0, align 8
@CB_MAX_CHANNEL_24G = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@MAC_REG_TCR = common dso_local global i32 0, align 4
@TCR_AUTOBCNTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @vAdHocBeaconStop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vAdHocBeaconStop(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %3, align 8
  %7 = load i64, i64* @FALSE, align 8
  store i64 %7, i64* %4, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @WMAC_MODE_IBSS_STA, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %42

13:                                               ; preds = %1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @WMAC_STATE_STARTED, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %13
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CB_MAX_CHANNEL_24G, align 8
  %24 = icmp sle i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CB_MAX_CHANNEL_24G, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i64, i64* @TRUE, align 8
  store i64 %32, i64* %4, align 8
  br label %33

33:                                               ; preds = %31, %25, %19
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CB_MAX_CHANNEL_24G, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i64, i64* @TRUE, align 8
  store i64 %40, i64* %4, align 8
  br label %41

41:                                               ; preds = %39, %33
  br label %42

42:                                               ; preds = %41, %13, %1
  %43 = load i64, i64* %4, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %47 = load i32, i32* @MAC_REG_TCR, align 4
  %48 = load i32, i32* @TCR_AUTOBCNTX, align 4
  %49 = call i32 @MACvRegBitsOff(%struct.TYPE_6__* %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %42
  ret void
}

declare dso_local i32 @MACvRegBitsOff(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
