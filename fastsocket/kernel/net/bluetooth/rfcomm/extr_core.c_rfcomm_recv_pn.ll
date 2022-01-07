; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_recv_pn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_recv_pn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_session = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.rfcomm_pn = type { i64 }
%struct.rfcomm_dlc = type { i32, i32, i64 }

@.str = private unnamed_addr constant [29 x i8] c"session %p state %ld dlci %d\00", align 1
@BT_CONNECT = common dso_local global i32 0, align 4
@BT_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rfcomm_session*, i32, %struct.sk_buff*)* @rfcomm_recv_pn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfcomm_recv_pn(%struct.rfcomm_session* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rfcomm_session*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.rfcomm_pn*, align 8
  %9 = alloca %struct.rfcomm_dlc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.rfcomm_session* %0, %struct.rfcomm_session** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.rfcomm_pn*
  store %struct.rfcomm_pn* %16, %struct.rfcomm_pn** %8, align 8
  %17 = load %struct.rfcomm_pn*, %struct.rfcomm_pn** %8, align 8
  %18 = getelementptr inbounds %struct.rfcomm_pn, %struct.rfcomm_pn* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %10, align 8
  %20 = load %struct.rfcomm_session*, %struct.rfcomm_session** %5, align 8
  %21 = load %struct.rfcomm_session*, %struct.rfcomm_session** %5, align 8
  %22 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @BT_DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_session* %20, i32 %23, i64 %24)
  %26 = load i64, i64* %10, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %106

29:                                               ; preds = %3
  %30 = load %struct.rfcomm_session*, %struct.rfcomm_session** %5, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call %struct.rfcomm_dlc* @rfcomm_dlc_get(%struct.rfcomm_session* %30, i64 %31)
  store %struct.rfcomm_dlc* %32, %struct.rfcomm_dlc** %9, align 8
  %33 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %9, align 8
  %34 = icmp ne %struct.rfcomm_dlc* %33, null
  br i1 %34, label %35, label %65

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %9, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.rfcomm_pn*, %struct.rfcomm_pn** %8, align 8
  %42 = call i32 @rfcomm_apply_pn(%struct.rfcomm_dlc* %39, i32 %40, %struct.rfcomm_pn* %41)
  %43 = load %struct.rfcomm_session*, %struct.rfcomm_session** %5, align 8
  %44 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %9, align 8
  %45 = call i32 @rfcomm_send_pn(%struct.rfcomm_session* %43, i32 0, %struct.rfcomm_dlc* %44)
  br label %64

46:                                               ; preds = %35
  %47 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %9, align 8
  %48 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %63 [
    i32 128, label %50
  ]

50:                                               ; preds = %46
  %51 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %9, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.rfcomm_pn*, %struct.rfcomm_pn** %8, align 8
  %54 = call i32 @rfcomm_apply_pn(%struct.rfcomm_dlc* %51, i32 %52, %struct.rfcomm_pn* %53)
  %55 = load i32, i32* @BT_CONNECT, align 4
  %56 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %9, align 8
  %57 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.rfcomm_session*, %struct.rfcomm_session** %5, align 8
  %59 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %9, align 8
  %60 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @rfcomm_send_sabm(%struct.rfcomm_session* %58, i64 %61)
  br label %63

63:                                               ; preds = %46, %50
  br label %64

64:                                               ; preds = %63, %38
  br label %105

65:                                               ; preds = %29
  %66 = load i64, i64* %10, align 8
  %67 = call i64 @__srv_channel(i64 %66)
  store i64 %67, i64* %11, align 8
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %106

71:                                               ; preds = %65
  %72 = load %struct.rfcomm_session*, %struct.rfcomm_session** %5, align 8
  %73 = load i64, i64* %11, align 8
  %74 = call i64 @rfcomm_connect_ind(%struct.rfcomm_session* %72, i64 %73, %struct.rfcomm_dlc** %9)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %100

76:                                               ; preds = %71
  %77 = load i64, i64* %10, align 8
  %78 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %9, align 8
  %79 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %78, i32 0, i32 2
  store i64 %77, i64* %79, align 8
  %80 = load %struct.rfcomm_session*, %struct.rfcomm_session** %5, align 8
  %81 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* %10, align 8
  %84 = call i32 @__addr(i32 %82, i64 %83)
  %85 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %9, align 8
  %86 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.rfcomm_session*, %struct.rfcomm_session** %5, align 8
  %88 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %9, align 8
  %89 = call i32 @rfcomm_dlc_link(%struct.rfcomm_session* %87, %struct.rfcomm_dlc* %88)
  %90 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %9, align 8
  %91 = load i32, i32* %6, align 4
  %92 = load %struct.rfcomm_pn*, %struct.rfcomm_pn** %8, align 8
  %93 = call i32 @rfcomm_apply_pn(%struct.rfcomm_dlc* %90, i32 %91, %struct.rfcomm_pn* %92)
  %94 = load i32, i32* @BT_OPEN, align 4
  %95 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %9, align 8
  %96 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.rfcomm_session*, %struct.rfcomm_session** %5, align 8
  %98 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %9, align 8
  %99 = call i32 @rfcomm_send_pn(%struct.rfcomm_session* %97, i32 0, %struct.rfcomm_dlc* %98)
  br label %104

100:                                              ; preds = %71
  %101 = load %struct.rfcomm_session*, %struct.rfcomm_session** %5, align 8
  %102 = load i64, i64* %10, align 8
  %103 = call i32 @rfcomm_send_dm(%struct.rfcomm_session* %101, i64 %102)
  br label %104

104:                                              ; preds = %100, %76
  br label %105

105:                                              ; preds = %104, %64
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %105, %70, %28
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_session*, i32, i64) #1

declare dso_local %struct.rfcomm_dlc* @rfcomm_dlc_get(%struct.rfcomm_session*, i64) #1

declare dso_local i32 @rfcomm_apply_pn(%struct.rfcomm_dlc*, i32, %struct.rfcomm_pn*) #1

declare dso_local i32 @rfcomm_send_pn(%struct.rfcomm_session*, i32, %struct.rfcomm_dlc*) #1

declare dso_local i32 @rfcomm_send_sabm(%struct.rfcomm_session*, i64) #1

declare dso_local i64 @__srv_channel(i64) #1

declare dso_local i64 @rfcomm_connect_ind(%struct.rfcomm_session*, i64, %struct.rfcomm_dlc**) #1

declare dso_local i32 @__addr(i32, i64) #1

declare dso_local i32 @rfcomm_dlc_link(%struct.rfcomm_session*, %struct.rfcomm_dlc*) #1

declare dso_local i32 @rfcomm_send_dm(%struct.rfcomm_session*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
