; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_recv_msc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_recv_msc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_session = type { i32 }
%struct.sk_buff = type { i64 }
%struct.rfcomm_msc = type { i32, i32 }
%struct.rfcomm_dlc = type { i32, i32, i32 (%struct.rfcomm_dlc*, i32)*, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"dlci %d cr %d v24 0x%x\00", align 1
@RFCOMM_V24_FC = common dso_local global i32 0, align 4
@RFCOMM_TX_THROTTLED = common dso_local global i32 0, align 4
@RFCOMM_MSCEX_RX = common dso_local global i32 0, align 4
@RFCOMM_MSCEX_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rfcomm_session*, i32, %struct.sk_buff*)* @rfcomm_recv_msc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfcomm_recv_msc(%struct.rfcomm_session* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rfcomm_session*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.rfcomm_msc*, align 8
  %9 = alloca %struct.rfcomm_dlc*, align 8
  %10 = alloca i32, align 4
  store %struct.rfcomm_session* %0, %struct.rfcomm_session** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.rfcomm_msc*
  store %struct.rfcomm_msc* %15, %struct.rfcomm_msc** %8, align 8
  %16 = load %struct.rfcomm_msc*, %struct.rfcomm_msc** %8, align 8
  %17 = getelementptr inbounds %struct.rfcomm_msc, %struct.rfcomm_msc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @__get_dlci(i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.rfcomm_msc*, %struct.rfcomm_msc** %8, align 8
  %23 = getelementptr inbounds %struct.rfcomm_msc, %struct.rfcomm_msc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @BT_DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21, i32 %24)
  %26 = load %struct.rfcomm_session*, %struct.rfcomm_session** %5, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call %struct.rfcomm_dlc* @rfcomm_dlc_get(%struct.rfcomm_session* %26, i32 %27)
  store %struct.rfcomm_dlc* %28, %struct.rfcomm_dlc** %9, align 8
  %29 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %9, align 8
  %30 = icmp ne %struct.rfcomm_dlc* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %99

32:                                               ; preds = %3
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %92

35:                                               ; preds = %32
  %36 = load %struct.rfcomm_msc*, %struct.rfcomm_msc** %8, align 8
  %37 = getelementptr inbounds %struct.rfcomm_msc, %struct.rfcomm_msc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @RFCOMM_V24_FC, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %35
  %43 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %9, align 8
  %44 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @RFCOMM_TX_THROTTLED, align 4
  %49 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %9, align 8
  %50 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %49, i32 0, i32 3
  %51 = call i32 @set_bit(i32 %48, i32* %50)
  br label %57

52:                                               ; preds = %42, %35
  %53 = load i32, i32* @RFCOMM_TX_THROTTLED, align 4
  %54 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %9, align 8
  %55 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %54, i32 0, i32 3
  %56 = call i32 @clear_bit(i32 %53, i32* %55)
  br label %57

57:                                               ; preds = %52, %47
  %58 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %9, align 8
  %59 = call i32 @rfcomm_dlc_lock(%struct.rfcomm_dlc* %58)
  %60 = load %struct.rfcomm_msc*, %struct.rfcomm_msc** %8, align 8
  %61 = getelementptr inbounds %struct.rfcomm_msc, %struct.rfcomm_msc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %9, align 8
  %64 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %9, align 8
  %66 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %65, i32 0, i32 2
  %67 = load i32 (%struct.rfcomm_dlc*, i32)*, i32 (%struct.rfcomm_dlc*, i32)** %66, align 8
  %68 = icmp ne i32 (%struct.rfcomm_dlc*, i32)* %67, null
  br i1 %68, label %69, label %78

69:                                               ; preds = %57
  %70 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %9, align 8
  %71 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %70, i32 0, i32 2
  %72 = load i32 (%struct.rfcomm_dlc*, i32)*, i32 (%struct.rfcomm_dlc*, i32)** %71, align 8
  %73 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %9, align 8
  %74 = load %struct.rfcomm_msc*, %struct.rfcomm_msc** %8, align 8
  %75 = getelementptr inbounds %struct.rfcomm_msc, %struct.rfcomm_msc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 %72(%struct.rfcomm_dlc* %73, i32 %76)
  br label %78

78:                                               ; preds = %69, %57
  %79 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %9, align 8
  %80 = call i32 @rfcomm_dlc_unlock(%struct.rfcomm_dlc* %79)
  %81 = load %struct.rfcomm_session*, %struct.rfcomm_session** %5, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.rfcomm_msc*, %struct.rfcomm_msc** %8, align 8
  %84 = getelementptr inbounds %struct.rfcomm_msc, %struct.rfcomm_msc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @rfcomm_send_msc(%struct.rfcomm_session* %81, i32 0, i32 %82, i32 %85)
  %87 = load i32, i32* @RFCOMM_MSCEX_RX, align 4
  %88 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %9, align 8
  %89 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %98

92:                                               ; preds = %32
  %93 = load i32, i32* @RFCOMM_MSCEX_TX, align 4
  %94 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %9, align 8
  %95 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %92, %78
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %98, %31
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @__get_dlci(i32) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32, i32) #1

declare dso_local %struct.rfcomm_dlc* @rfcomm_dlc_get(%struct.rfcomm_session*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @rfcomm_dlc_lock(%struct.rfcomm_dlc*) #1

declare dso_local i32 @rfcomm_dlc_unlock(%struct.rfcomm_dlc*) #1

declare dso_local i32 @rfcomm_send_msc(%struct.rfcomm_session*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
