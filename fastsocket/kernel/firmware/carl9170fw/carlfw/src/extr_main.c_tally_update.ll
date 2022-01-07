; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/src/extr_main.c_tally_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/src/extr_main.c_tally_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@fw = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@CARL9170_PHY_ON = common dso_local global i64 0, align 8
@AR9170_MAC_REG_BACKOFF_STATUS = common dso_local global i32 0, align 4
@AR9170_MAC_BACKOFF_TX_PE = common dso_local global i32 0, align 4
@AR9170_MAC_BACKOFF_CCA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tally_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tally_update() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @get_clock_counter()
  store i32 %4, i32* %2, align 4
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fw, i32 0, i32 3, i32 0), align 8
  %6 = load i64, i64* @CARL9170_PHY_ON, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %35

8:                                                ; preds = %0
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fw, i32 0, i32 0), align 8
  %11 = sub i32 %9, %10
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fw, i32 0, i32 2, i32 0), align 8
  %14 = add i32 %13, %12
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fw, i32 0, i32 2, i32 0), align 8
  %15 = load i32, i32* @AR9170_MAC_REG_BACKOFF_STATUS, align 4
  %16 = call i32 @get(i32 %15)
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* @AR9170_MAC_BACKOFF_TX_PE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %8
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fw, i32 0, i32 2, i32 1), align 4
  %24 = add i32 %23, %22
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fw, i32 0, i32 2, i32 1), align 4
  br label %25

25:                                               ; preds = %21, %8
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* @AR9170_MAC_BACKOFF_CCA, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fw, i32 0, i32 2, i32 2), align 8
  %33 = add i32 %32, %31
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fw, i32 0, i32 2, i32 2), align 8
  br label %34

34:                                               ; preds = %30, %25
  br label %35

35:                                               ; preds = %34, %0
  %36 = load i32, i32* %2, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fw, i32 0, i32 0), align 8
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fw, i32 0, i32 1), align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fw, i32 0, i32 1), align 4
  ret void
}

declare dso_local i32 @get_clock_counter(...) #1

declare dso_local i32 @get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
