; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_dlc_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_dlc_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_dlc = type { %struct.rfcomm_session*, i32, i32 }
%struct.rfcomm_session = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"dlc %p refcnt %d session %p\00", align 1
@RFCOMM_IDLE_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rfcomm_dlc*)* @rfcomm_dlc_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfcomm_dlc_unlink(%struct.rfcomm_dlc* %0) #0 {
  %2 = alloca %struct.rfcomm_dlc*, align 8
  %3 = alloca %struct.rfcomm_session*, align 8
  store %struct.rfcomm_dlc* %0, %struct.rfcomm_dlc** %2, align 8
  %4 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %5 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %4, i32 0, i32 0
  %6 = load %struct.rfcomm_session*, %struct.rfcomm_session** %5, align 8
  store %struct.rfcomm_session* %6, %struct.rfcomm_session** %3, align 8
  %7 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %8 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %9 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %8, i32 0, i32 2
  %10 = call i32 @atomic_read(i32* %9)
  %11 = load %struct.rfcomm_session*, %struct.rfcomm_session** %3, align 8
  %12 = call i32 @BT_DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_dlc* %7, i32 %10, %struct.rfcomm_session* %11)
  %13 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %14 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %13, i32 0, i32 1
  %15 = call i32 @list_del(i32* %14)
  %16 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %17 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %16, i32 0, i32 0
  store %struct.rfcomm_session* null, %struct.rfcomm_session** %17, align 8
  %18 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %19 = call i32 @rfcomm_dlc_put(%struct.rfcomm_dlc* %18)
  %20 = load %struct.rfcomm_session*, %struct.rfcomm_session** %3, align 8
  %21 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %20, i32 0, i32 0
  %22 = call i64 @list_empty(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load %struct.rfcomm_session*, %struct.rfcomm_session** %3, align 8
  %26 = load i32, i32* @RFCOMM_IDLE_TIMEOUT, align 4
  %27 = call i32 @rfcomm_session_set_timer(%struct.rfcomm_session* %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %1
  %29 = load %struct.rfcomm_session*, %struct.rfcomm_session** %3, align 8
  %30 = call i32 @rfcomm_session_put(%struct.rfcomm_session* %29)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_dlc*, i32, %struct.rfcomm_session*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @rfcomm_dlc_put(%struct.rfcomm_dlc*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @rfcomm_session_set_timer(%struct.rfcomm_session*, i32) #1

declare dso_local i32 @rfcomm_session_put(%struct.rfcomm_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
