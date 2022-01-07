; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/src/extr_wlan.c_wlan_tx_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/src/extr_wlan.c_wlan_tx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carl9170_tx_superframe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i32 }
%struct.carl9170_tx_status = type { i32, i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlan_tx_complete(%struct.carl9170_tx_superframe* %0, i32 %1) #0 {
  %3 = alloca %struct.carl9170_tx_superframe*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.carl9170_tx_status*, align 8
  store %struct.carl9170_tx_superframe* %0, %struct.carl9170_tx_superframe** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call %struct.carl9170_tx_status* (...) @wlan_get_tx_status_buffer()
  store %struct.carl9170_tx_status* %6, %struct.carl9170_tx_status** %5, align 8
  %7 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %3, align 8
  %8 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.carl9170_tx_status*, %struct.carl9170_tx_status** %5, align 8
  %12 = getelementptr inbounds %struct.carl9170_tx_status, %struct.carl9170_tx_status* %11, i32 0, i32 4
  store i64 %10, i64* %12, align 8
  %13 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %3, align 8
  %14 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.carl9170_tx_status*, %struct.carl9170_tx_status** %5, align 8
  %18 = getelementptr inbounds %struct.carl9170_tx_status, %struct.carl9170_tx_status* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %3, align 8
  %20 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %3, align 8
  %23 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.carl9170_tx_status*, %struct.carl9170_tx_status** %5, align 8
  %27 = getelementptr inbounds %struct.carl9170_tx_status, %struct.carl9170_tx_status* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %3, align 8
  %29 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.carl9170_tx_status*, %struct.carl9170_tx_status** %5, align 8
  %33 = getelementptr inbounds %struct.carl9170_tx_status, %struct.carl9170_tx_status* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 0
  %38 = load %struct.carl9170_tx_status*, %struct.carl9170_tx_status** %5, align 8
  %39 = getelementptr inbounds %struct.carl9170_tx_status, %struct.carl9170_tx_status* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  ret void
}

declare dso_local %struct.carl9170_tx_status* @wlan_get_tx_status_buffer(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
