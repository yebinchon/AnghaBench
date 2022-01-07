; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_dlc_set_modem_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_dlc_set_modem_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_dlc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"dlc %p state %ld v24_sig 0x%x\00", align 1
@RFCOMM_RX_THROTTLED = common dso_local global i32 0, align 4
@RFCOMM_V24_FC = common dso_local global i32 0, align 4
@RFCOMM_MSC_PENDING = common dso_local global i32 0, align 4
@RFCOMM_SCHED_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rfcomm_dlc_set_modem_status(%struct.rfcomm_dlc* %0, i32 %1) #0 {
  %3 = alloca %struct.rfcomm_dlc*, align 8
  %4 = alloca i32, align 4
  store %struct.rfcomm_dlc* %0, %struct.rfcomm_dlc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %6 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %7 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @BT_DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_dlc* %5, i32 %8, i32 %9)
  %11 = load i32, i32* @RFCOMM_RX_THROTTLED, align 4
  %12 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %13 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %12, i32 0, i32 0
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @RFCOMM_V24_FC, align 4
  %18 = load i32, i32* %4, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %4, align 4
  br label %25

20:                                               ; preds = %2
  %21 = load i32, i32* @RFCOMM_V24_FC, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %20, %16
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %28 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @RFCOMM_MSC_PENDING, align 4
  %30 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %31 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %30, i32 0, i32 0
  %32 = call i32 @test_and_set_bit(i32 %29, i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* @RFCOMM_SCHED_TX, align 4
  %36 = call i32 @rfcomm_schedule(i32 %35)
  br label %37

37:                                               ; preds = %34, %25
  ret i32 0
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_dlc*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @rfcomm_schedule(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
