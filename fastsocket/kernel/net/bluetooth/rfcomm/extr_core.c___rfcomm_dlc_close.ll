; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c___rfcomm_dlc_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c___rfcomm_dlc_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_dlc = type { i32, i32, {}*, i32, i32, %struct.rfcomm_session* }
%struct.rfcomm_session = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"dlc %p state %ld dlci %d err %d session %p\00", align 1
@RFCOMM_DEFER_SETUP = common dso_local global i32 0, align 4
@RFCOMM_AUTH_REJECT = common dso_local global i32 0, align 4
@RFCOMM_SCHED_AUTH = common dso_local global i32 0, align 4
@BT_DISCONN = common dso_local global i32 0, align 4
@RFCOMM_DISC_TIMEOUT = common dso_local global i32 0, align 4
@BT_CLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rfcomm_dlc*, i32)* @__rfcomm_dlc_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__rfcomm_dlc_close(%struct.rfcomm_dlc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rfcomm_dlc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rfcomm_session*, align 8
  store %struct.rfcomm_dlc* %0, %struct.rfcomm_dlc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %8 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %7, i32 0, i32 5
  %9 = load %struct.rfcomm_session*, %struct.rfcomm_session** %8, align 8
  store %struct.rfcomm_session* %9, %struct.rfcomm_session** %6, align 8
  %10 = load %struct.rfcomm_session*, %struct.rfcomm_session** %6, align 8
  %11 = icmp ne %struct.rfcomm_session* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %103

13:                                               ; preds = %2
  %14 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %15 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %16 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %19 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.rfcomm_session*, %struct.rfcomm_session** %6, align 8
  %23 = call i32 @BT_DBG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_dlc* %14, i32 %17, i32 %20, i32 %21, %struct.rfcomm_session* %22)
  %24 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %25 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %80 [
    i32 131, label %27
    i32 132, label %27
    i32 129, label %41
    i32 128, label %66
    i32 130, label %66
  ]

27:                                               ; preds = %13, %13
  %28 = load i32, i32* @RFCOMM_DEFER_SETUP, align 4
  %29 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %30 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %29, i32 0, i32 3
  %31 = call i32 @test_and_clear_bit(i32 %28, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load i32, i32* @RFCOMM_AUTH_REJECT, align 4
  %35 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %36 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %35, i32 0, i32 3
  %37 = call i32 @set_bit(i32 %34, i32* %36)
  %38 = load i32, i32* @RFCOMM_SCHED_AUTH, align 4
  %39 = call i32 @rfcomm_schedule(i32 %38)
  br label %102

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %13, %40
  %42 = load i32, i32* @BT_DISCONN, align 4
  %43 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %44 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %46 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %45, i32 0, i32 1
  %47 = call i32 @skb_queue_empty(i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %41
  %50 = load %struct.rfcomm_session*, %struct.rfcomm_session** %6, align 8
  %51 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %52 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @rfcomm_send_disc(%struct.rfcomm_session* %50, i32 %53)
  %55 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %56 = load i32, i32* @RFCOMM_DISC_TIMEOUT, align 4
  %57 = call i32 @rfcomm_dlc_set_timer(%struct.rfcomm_dlc* %55, i32 %56)
  br label %65

58:                                               ; preds = %41
  %59 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %60 = call i32 @rfcomm_queue_disc(%struct.rfcomm_dlc* %59)
  %61 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %62 = load i32, i32* @RFCOMM_DISC_TIMEOUT, align 4
  %63 = mul nsw i32 %62, 2
  %64 = call i32 @rfcomm_dlc_set_timer(%struct.rfcomm_dlc* %61, i32 %63)
  br label %65

65:                                               ; preds = %58, %49
  br label %102

66:                                               ; preds = %13, %13
  %67 = load i32, i32* @RFCOMM_DEFER_SETUP, align 4
  %68 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %69 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %68, i32 0, i32 3
  %70 = call i32 @test_and_clear_bit(i32 %67, i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load i32, i32* @RFCOMM_AUTH_REJECT, align 4
  %74 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %75 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %74, i32 0, i32 3
  %76 = call i32 @set_bit(i32 %73, i32* %75)
  %77 = load i32, i32* @RFCOMM_SCHED_AUTH, align 4
  %78 = call i32 @rfcomm_schedule(i32 %77)
  br label %102

79:                                               ; preds = %66
  br label %80

80:                                               ; preds = %13, %79
  %81 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %82 = call i32 @rfcomm_dlc_clear_timer(%struct.rfcomm_dlc* %81)
  %83 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %84 = call i32 @rfcomm_dlc_lock(%struct.rfcomm_dlc* %83)
  %85 = load i32, i32* @BT_CLOSED, align 4
  %86 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %87 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %89 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %88, i32 0, i32 2
  %90 = bitcast {}** %89 to i32 (%struct.rfcomm_dlc*, i32)**
  %91 = load i32 (%struct.rfcomm_dlc*, i32)*, i32 (%struct.rfcomm_dlc*, i32)** %90, align 8
  %92 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %93 = load i32, i32* %5, align 4
  %94 = call i32 %91(%struct.rfcomm_dlc* %92, i32 %93)
  %95 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %96 = call i32 @rfcomm_dlc_unlock(%struct.rfcomm_dlc* %95)
  %97 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %98 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %97, i32 0, i32 1
  %99 = call i32 @skb_queue_purge(i32* %98)
  %100 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %101 = call i32 @rfcomm_dlc_unlink(%struct.rfcomm_dlc* %100)
  br label %102

102:                                              ; preds = %80, %72, %65, %33
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %12
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_dlc*, i32, i32, i32, %struct.rfcomm_session*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @rfcomm_schedule(i32) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @rfcomm_send_disc(%struct.rfcomm_session*, i32) #1

declare dso_local i32 @rfcomm_dlc_set_timer(%struct.rfcomm_dlc*, i32) #1

declare dso_local i32 @rfcomm_queue_disc(%struct.rfcomm_dlc*) #1

declare dso_local i32 @rfcomm_dlc_clear_timer(%struct.rfcomm_dlc*) #1

declare dso_local i32 @rfcomm_dlc_lock(%struct.rfcomm_dlc*) #1

declare dso_local i32 @rfcomm_dlc_unlock(%struct.rfcomm_dlc*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @rfcomm_dlc_unlink(%struct.rfcomm_dlc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
