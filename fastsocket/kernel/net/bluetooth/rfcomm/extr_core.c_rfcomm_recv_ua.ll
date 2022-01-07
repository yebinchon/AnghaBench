; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_recv_ua.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_recv_ua.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_session = type { i32, i32 }
%struct.rfcomm_dlc = type { i32, i32, i32 (%struct.rfcomm_dlc*, i32)* }

@.str = private unnamed_addr constant [29 x i8] c"session %p state %ld dlci %d\00", align 1
@BT_CONNECTED = common dso_local global i8* null, align 8
@BT_CLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rfcomm_session*, i64)* @rfcomm_recv_ua to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfcomm_recv_ua(%struct.rfcomm_session* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rfcomm_session*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rfcomm_dlc*, align 8
  store %struct.rfcomm_session* %0, %struct.rfcomm_session** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %8 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %9 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @BT_DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_session* %7, i32 %10, i64 %11)
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %68

15:                                               ; preds = %2
  %16 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call %struct.rfcomm_dlc* @rfcomm_dlc_get(%struct.rfcomm_session* %16, i64 %17)
  store %struct.rfcomm_dlc* %18, %struct.rfcomm_dlc** %6, align 8
  %19 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %20 = icmp ne %struct.rfcomm_dlc* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %15
  %22 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @rfcomm_send_dm(%struct.rfcomm_session* %22, i64 %23)
  store i32 0, i32* %3, align 4
  br label %84

25:                                               ; preds = %15
  %26 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %27 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %67 [
    i32 129, label %29
    i32 128, label %51
  ]

29:                                               ; preds = %25
  %30 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %31 = call i32 @rfcomm_dlc_clear_timer(%struct.rfcomm_dlc* %30)
  %32 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %33 = call i32 @rfcomm_dlc_lock(%struct.rfcomm_dlc* %32)
  %34 = load i8*, i8** @BT_CONNECTED, align 8
  %35 = ptrtoint i8* %34 to i32
  %36 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %37 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %39 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %38, i32 0, i32 2
  %40 = load i32 (%struct.rfcomm_dlc*, i32)*, i32 (%struct.rfcomm_dlc*, i32)** %39, align 8
  %41 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %42 = call i32 %40(%struct.rfcomm_dlc* %41, i32 0)
  %43 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %44 = call i32 @rfcomm_dlc_unlock(%struct.rfcomm_dlc* %43)
  %45 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %48 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @rfcomm_send_msc(%struct.rfcomm_session* %45, i32 1, i64 %46, i32 %49)
  br label %67

51:                                               ; preds = %25
  %52 = load i32, i32* @BT_CLOSED, align 4
  %53 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %54 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %56 = call i32 @__rfcomm_dlc_close(%struct.rfcomm_dlc* %55, i32 0)
  %57 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %58 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %57, i32 0, i32 1
  %59 = call i32 @list_empty(i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %51
  %62 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %63 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %62, i32 0, i32 0
  store i32 128, i32* %63, align 4
  %64 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %65 = call i32 @rfcomm_send_disc(%struct.rfcomm_session* %64, i32 0)
  br label %66

66:                                               ; preds = %61, %51
  br label %67

67:                                               ; preds = %25, %66, %29
  br label %83

68:                                               ; preds = %2
  %69 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %70 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  switch i32 %71, label %82 [
    i32 129, label %72
    i32 128, label %79
  ]

72:                                               ; preds = %68
  %73 = load i8*, i8** @BT_CONNECTED, align 8
  %74 = ptrtoint i8* %73 to i32
  %75 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %76 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %78 = call i32 @rfcomm_process_connect(%struct.rfcomm_session* %77)
  br label %82

79:                                               ; preds = %68
  %80 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %81 = call i32 @rfcomm_session_put(%struct.rfcomm_session* %80)
  br label %82

82:                                               ; preds = %68, %79, %72
  br label %83

83:                                               ; preds = %82, %67
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %21
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_session*, i32, i64) #1

declare dso_local %struct.rfcomm_dlc* @rfcomm_dlc_get(%struct.rfcomm_session*, i64) #1

declare dso_local i32 @rfcomm_send_dm(%struct.rfcomm_session*, i64) #1

declare dso_local i32 @rfcomm_dlc_clear_timer(%struct.rfcomm_dlc*) #1

declare dso_local i32 @rfcomm_dlc_lock(%struct.rfcomm_dlc*) #1

declare dso_local i32 @rfcomm_dlc_unlock(%struct.rfcomm_dlc*) #1

declare dso_local i32 @rfcomm_send_msc(%struct.rfcomm_session*, i32, i64, i32) #1

declare dso_local i32 @__rfcomm_dlc_close(%struct.rfcomm_dlc*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @rfcomm_send_disc(%struct.rfcomm_session*, i32) #1

declare dso_local i32 @rfcomm_process_connect(%struct.rfcomm_session*) #1

declare dso_local i32 @rfcomm_session_put(%struct.rfcomm_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
