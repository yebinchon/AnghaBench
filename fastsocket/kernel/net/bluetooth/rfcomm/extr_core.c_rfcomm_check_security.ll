; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_check_security.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_check_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_dlc = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@HCI_AT_GENERAL_BONDING_MITM = common dso_local global i32 0, align 4
@HCI_AT_GENERAL_BONDING = common dso_local global i32 0, align 4
@HCI_AT_NO_BONDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rfcomm_dlc*)* @rfcomm_check_security to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfcomm_check_security(%struct.rfcomm_dlc* %0) #0 {
  %2 = alloca %struct.rfcomm_dlc*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  store %struct.rfcomm_dlc* %0, %struct.rfcomm_dlc** %2, align 8
  %5 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %6 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %5, i32 0, i32 1
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.sock*, %struct.sock** %10, align 8
  store %struct.sock* %11, %struct.sock** %3, align 8
  %12 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %13 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %19 [
    i32 129, label %15
    i32 128, label %17
  ]

15:                                               ; preds = %1
  %16 = load i32, i32* @HCI_AT_GENERAL_BONDING_MITM, align 4
  store i32 %16, i32* %4, align 4
  br label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @HCI_AT_GENERAL_BONDING, align 4
  store i32 %18, i32* %4, align 4
  br label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @HCI_AT_NO_BONDING, align 4
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %19, %17, %15
  %22 = load %struct.sock*, %struct.sock** %3, align 8
  %23 = call %struct.TYPE_8__* @l2cap_pi(%struct.sock* %22)
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %29 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @hci_conn_security(i32 %27, i32 %30, i32 %31)
  ret i32 %32
}

declare dso_local i32 @hci_conn_security(i32, i32, i32) #1

declare dso_local %struct.TYPE_8__* @l2cap_pi(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
