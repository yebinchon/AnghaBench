; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/src/extr_wlan.c_wlan_get_tx_status_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/src/extr_wlan.c_wlan_get_tx_status_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, %struct.carl9170_tx_status* }
%struct.carl9170_tx_status = type { i32 }

@fw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@CARL9170_TX_STATUS_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.carl9170_tx_status* ()* @wlan_get_tx_status_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.carl9170_tx_status* @wlan_get_tx_status_buffer() #0 {
  %1 = alloca %struct.carl9170_tx_status*, align 8
  %2 = load %struct.carl9170_tx_status*, %struct.carl9170_tx_status** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fw, i32 0, i32 0, i32 2), align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fw, i32 0, i32 0, i32 1), align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fw, i32 0, i32 0, i32 1), align 4
  %5 = sext i32 %3 to i64
  %6 = getelementptr inbounds %struct.carl9170_tx_status, %struct.carl9170_tx_status* %2, i64 %5
  store %struct.carl9170_tx_status* %6, %struct.carl9170_tx_status** %1, align 8
  %7 = load i32, i32* @CARL9170_TX_STATUS_NUM, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fw, i32 0, i32 0, i32 1), align 4
  %9 = srem i32 %8, %7
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fw, i32 0, i32 0, i32 1), align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fw, i32 0, i32 0, i32 0), align 8
  %11 = load i32, i32* @CARL9170_TX_STATUS_NUM, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = call i32 (...) @wlan_send_buffered_tx_status()
  br label %15

15:                                               ; preds = %13, %0
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fw, i32 0, i32 0, i32 0), align 8
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fw, i32 0, i32 0, i32 0), align 8
  %18 = load %struct.carl9170_tx_status*, %struct.carl9170_tx_status** %1, align 8
  ret %struct.carl9170_tx_status* %18
}

declare dso_local i32 @wlan_send_buffered_tx_status(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
