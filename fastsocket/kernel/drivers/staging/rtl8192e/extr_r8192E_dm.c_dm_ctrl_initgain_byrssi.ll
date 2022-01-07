; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_dm.c_dm_ctrl_initgain_byrssi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_dm.c_dm_ctrl_initgain_byrssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.net_device = type { i32 }

@dm_digtable = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DIG_ALGO_BY_FALSE_ALARM = common dso_local global i64 0, align 8
@DIG_ALGO_BY_RSSI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @dm_ctrl_initgain_byrssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_ctrl_initgain_byrssi(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 0), align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %22

6:                                                ; preds = %1
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 1), align 8
  %8 = load i64, i64* @DIG_ALGO_BY_FALSE_ALARM, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i32 @dm_ctrl_initgain_byrssi_by_fwfalse_alarm(%struct.net_device* %11)
  br label %22

13:                                               ; preds = %6
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 1), align 8
  %15 = load i64, i64* @DIG_ALGO_BY_RSSI, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = call i32 @dm_ctrl_initgain_byrssi_by_driverrssi(%struct.net_device* %18)
  br label %21

20:                                               ; preds = %13
  br label %22

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %5, %20, %21, %10
  ret void
}

declare dso_local i32 @dm_ctrl_initgain_byrssi_by_fwfalse_alarm(%struct.net_device*) #1

declare dso_local i32 @dm_ctrl_initgain_byrssi_by_driverrssi(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
