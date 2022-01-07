; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_recv_disc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_recv_disc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_session = type { i64 }
%struct.rfcomm_dlc = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"session %p state %ld dlci %d\00", align 1
@BT_CONNECT = common dso_local global i64 0, align 8
@BT_CONFIG = common dso_local global i64 0, align 8
@ECONNREFUSED = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@BT_CLOSED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rfcomm_session*, i64)* @rfcomm_recv_disc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfcomm_recv_disc(%struct.rfcomm_session* %0, i64 %1) #0 {
  %3 = alloca %struct.rfcomm_session*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rfcomm_dlc*, align 8
  store %struct.rfcomm_session* %0, %struct.rfcomm_session** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.rfcomm_session*, %struct.rfcomm_session** %3, align 8
  %8 = load %struct.rfcomm_session*, %struct.rfcomm_session** %3, align 8
  %9 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @BT_DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_session* %7, i64 %10, i64 %11)
  %13 = load i64, i64* %4, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %53

15:                                               ; preds = %2
  %16 = load %struct.rfcomm_session*, %struct.rfcomm_session** %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call %struct.rfcomm_dlc* @rfcomm_dlc_get(%struct.rfcomm_session* %16, i64 %17)
  store %struct.rfcomm_dlc* %18, %struct.rfcomm_dlc** %6, align 8
  %19 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %20 = icmp ne %struct.rfcomm_dlc* %19, null
  br i1 %20, label %21, label %48

21:                                               ; preds = %15
  %22 = load %struct.rfcomm_session*, %struct.rfcomm_session** %3, align 8
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @rfcomm_send_ua(%struct.rfcomm_session* %22, i64 %23)
  %25 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %26 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @BT_CONNECT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %21
  %31 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %32 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @BT_CONFIG, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30, %21
  %37 = load i32, i32* @ECONNREFUSED, align 4
  store i32 %37, i32* %5, align 4
  br label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @ECONNRESET, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = load i8*, i8** @BT_CLOSED, align 8
  %42 = ptrtoint i8* %41 to i64
  %43 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %44 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @__rfcomm_dlc_close(%struct.rfcomm_dlc* %45, i32 %46)
  br label %52

48:                                               ; preds = %15
  %49 = load %struct.rfcomm_session*, %struct.rfcomm_session** %3, align 8
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @rfcomm_send_dm(%struct.rfcomm_session* %49, i64 %50)
  br label %52

52:                                               ; preds = %48, %40
  br label %73

53:                                               ; preds = %2
  %54 = load %struct.rfcomm_session*, %struct.rfcomm_session** %3, align 8
  %55 = call i32 @rfcomm_send_ua(%struct.rfcomm_session* %54, i64 0)
  %56 = load %struct.rfcomm_session*, %struct.rfcomm_session** %3, align 8
  %57 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @BT_CONNECT, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* @ECONNREFUSED, align 4
  store i32 %62, i32* %5, align 4
  br label %65

63:                                               ; preds = %53
  %64 = load i32, i32* @ECONNRESET, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = load i8*, i8** @BT_CLOSED, align 8
  %67 = ptrtoint i8* %66 to i64
  %68 = load %struct.rfcomm_session*, %struct.rfcomm_session** %3, align 8
  %69 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.rfcomm_session*, %struct.rfcomm_session** %3, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @rfcomm_session_close(%struct.rfcomm_session* %70, i32 %71)
  br label %73

73:                                               ; preds = %65, %52
  ret i32 0
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_session*, i64, i64) #1

declare dso_local %struct.rfcomm_dlc* @rfcomm_dlc_get(%struct.rfcomm_session*, i64) #1

declare dso_local i32 @rfcomm_send_ua(%struct.rfcomm_session*, i64) #1

declare dso_local i32 @__rfcomm_dlc_close(%struct.rfcomm_dlc*, i32) #1

declare dso_local i32 @rfcomm_send_dm(%struct.rfcomm_session*, i64) #1

declare dso_local i32 @rfcomm_session_close(%struct.rfcomm_session*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
