; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_recv_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_recv_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_session = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.rfcomm_dlc = type { i64, i32 (%struct.rfcomm_dlc*, %struct.sk_buff*)*, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [35 x i8] c"session %p state %ld dlci %d pf %d\00", align 1
@RFCOMM_TX_THROTTLED = common dso_local global i32 0, align 4
@BT_CONNECTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rfcomm_session*, i64, i32, %struct.sk_buff*)* @rfcomm_recv_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfcomm_recv_data(%struct.rfcomm_session* %0, i64 %1, i32 %2, %struct.sk_buff* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rfcomm_session*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.rfcomm_dlc*, align 8
  %11 = alloca i64, align 8
  store %struct.rfcomm_session* %0, %struct.rfcomm_session** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  %12 = load %struct.rfcomm_session*, %struct.rfcomm_session** %6, align 8
  %13 = load %struct.rfcomm_session*, %struct.rfcomm_session** %6, align 8
  %14 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_session* %12, i32 %15, i64 %16, i32 %17)
  %19 = load %struct.rfcomm_session*, %struct.rfcomm_session** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call %struct.rfcomm_dlc* @rfcomm_dlc_get(%struct.rfcomm_session* %19, i64 %20)
  store %struct.rfcomm_dlc* %21, %struct.rfcomm_dlc** %10, align 8
  %22 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %10, align 8
  %23 = icmp ne %struct.rfcomm_dlc* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %4
  %25 = load %struct.rfcomm_session*, %struct.rfcomm_session** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @rfcomm_send_dm(%struct.rfcomm_session* %25, i64 %26)
  br label %86

28:                                               ; preds = %4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %59

31:                                               ; preds = %28
  %32 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %10, align 8
  %33 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %31
  %37 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i64*
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %11, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %43 = call i32 @skb_pull(%struct.sk_buff* %42, i32 1)
  %44 = load i64, i64* %11, align 8
  %45 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %10, align 8
  %46 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, %44
  store i64 %48, i64* %46, align 8
  %49 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %10, align 8
  %50 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %36
  %54 = load i32, i32* @RFCOMM_TX_THROTTLED, align 4
  %55 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %10, align 8
  %56 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %55, i32 0, i32 3
  %57 = call i32 @clear_bit(i32 %54, i32* %56)
  br label %58

58:                                               ; preds = %53, %36
  br label %59

59:                                               ; preds = %58, %31, %28
  %60 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %85

64:                                               ; preds = %59
  %65 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %10, align 8
  %66 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @BT_CONNECTED, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %64
  %71 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %10, align 8
  %72 = call i32 @rfcomm_dlc_lock(%struct.rfcomm_dlc* %71)
  %73 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %10, align 8
  %74 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %74, align 8
  %77 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %10, align 8
  %78 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %77, i32 0, i32 1
  %79 = load i32 (%struct.rfcomm_dlc*, %struct.sk_buff*)*, i32 (%struct.rfcomm_dlc*, %struct.sk_buff*)** %78, align 8
  %80 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %10, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %82 = call i32 %79(%struct.rfcomm_dlc* %80, %struct.sk_buff* %81)
  %83 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %10, align 8
  %84 = call i32 @rfcomm_dlc_unlock(%struct.rfcomm_dlc* %83)
  store i32 0, i32* %5, align 4
  br label %89

85:                                               ; preds = %64, %59
  br label %86

86:                                               ; preds = %85, %24
  %87 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %88 = call i32 @kfree_skb(%struct.sk_buff* %87)
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %86, %70
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_session*, i32, i64, i32) #1

declare dso_local %struct.rfcomm_dlc* @rfcomm_dlc_get(%struct.rfcomm_session*, i64) #1

declare dso_local i32 @rfcomm_send_dm(%struct.rfcomm_session*, i64) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @rfcomm_dlc_lock(%struct.rfcomm_dlc*) #1

declare dso_local i32 @rfcomm_dlc_unlock(%struct.rfcomm_dlc*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
