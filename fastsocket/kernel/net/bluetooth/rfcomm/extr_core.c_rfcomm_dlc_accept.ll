; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_dlc_accept.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_dlc_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_dlc = type { i32, i32, %struct.TYPE_8__*, i64, i32 (%struct.rfcomm_dlc*, i32)*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"dlc %p\00", align 1
@BT_CONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rfcomm_dlc_accept(%struct.rfcomm_dlc* %0) #0 {
  %2 = alloca %struct.rfcomm_dlc*, align 8
  %3 = alloca %struct.sock*, align 8
  store %struct.rfcomm_dlc* %0, %struct.rfcomm_dlc** %2, align 8
  %4 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %5 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %4, i32 0, i32 2
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.sock*, %struct.sock** %9, align 8
  store %struct.sock* %10, %struct.sock** %3, align 8
  %11 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %12 = call i32 @BT_DBG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_dlc* %11)
  %13 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %14 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %13, i32 0, i32 2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %17 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @rfcomm_send_ua(%struct.TYPE_8__* %15, i32 %18)
  %20 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %21 = call i32 @rfcomm_dlc_clear_timer(%struct.rfcomm_dlc* %20)
  %22 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %23 = call i32 @rfcomm_dlc_lock(%struct.rfcomm_dlc* %22)
  %24 = load i32, i32* @BT_CONNECTED, align 4
  %25 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %26 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 8
  %27 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %28 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %27, i32 0, i32 4
  %29 = load i32 (%struct.rfcomm_dlc*, i32)*, i32 (%struct.rfcomm_dlc*, i32)** %28, align 8
  %30 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %31 = call i32 %29(%struct.rfcomm_dlc* %30, i32 0)
  %32 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %33 = call i32 @rfcomm_dlc_unlock(%struct.rfcomm_dlc* %32)
  %34 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %35 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %1
  %39 = load %struct.sock*, %struct.sock** %3, align 8
  %40 = call %struct.TYPE_9__* @l2cap_pi(%struct.sock* %39)
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @hci_conn_switch_role(i32 %44, i32 0)
  br label %46

46:                                               ; preds = %38, %1
  %47 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %48 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %47, i32 0, i32 2
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %51 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %54 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @rfcomm_send_msc(%struct.TYPE_8__* %49, i32 1, i32 %52, i32 %55)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_dlc*) #1

declare dso_local i32 @rfcomm_send_ua(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @rfcomm_dlc_clear_timer(%struct.rfcomm_dlc*) #1

declare dso_local i32 @rfcomm_dlc_lock(%struct.rfcomm_dlc*) #1

declare dso_local i32 @rfcomm_dlc_unlock(%struct.rfcomm_dlc*) #1

declare dso_local i32 @hci_conn_switch_role(i32, i32) #1

declare dso_local %struct.TYPE_9__* @l2cap_pi(%struct.sock*) #1

declare dso_local i32 @rfcomm_send_msc(%struct.TYPE_8__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
