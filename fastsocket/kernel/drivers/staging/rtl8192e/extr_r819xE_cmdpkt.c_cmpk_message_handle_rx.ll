; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r819xE_cmdpkt.c_cmpk_message_handle_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r819xE_cmdpkt.c_cmpk_message_handle_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ieee80211_rx_stats = type { i32, i32* }
%struct.r8192_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@COMP_EVENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"---->cmpk_message_handle_rx()\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"---->cmpk_message_handle_rx():RX_TX_FEEDBACK\0A\00", align 1
@CMPK_RX_TX_FB_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"---->cmpk_message_handle_rx():RX_INTERRUPT_STATUS\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"---->cmpk_message_handle_rx():BOTH_QUERY_CONFIG\0A\00", align 1
@CMPK_BOTH_QUERY_CONFIG_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"---->cmpk_message_handle_rx():RX_TX_STATUS\0A\00", align 1
@CMPK_RX_TX_STS_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [54 x i8] c"---->cmpk_message_handle_rx():RX_TX_PER_PKT_FEEDBACK\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"---->cmpk_message_handle_rx():RX_TX_HISTORY\0A\00", align 1
@CMPK_TX_RAHIS_SIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [50 x i8] c"---->cmpk_message_handle_rx():unknow CMD Element\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmpk_message_handle_rx(%struct.net_device* %0, %struct.ieee80211_rx_stats* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ieee80211_rx_stats*, align 8
  %6 = alloca %struct.r8192_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ieee80211_rx_stats* %1, %struct.ieee80211_rx_stats** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %12)
  store %struct.r8192_priv* %13, %struct.r8192_priv** %6, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* @COMP_EVENTS, align 4
  %15 = call i32 @RT_TRACE(i32 %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %17 = icmp eq %struct.ieee80211_rx_stats* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %102

19:                                               ; preds = %2
  %20 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %7, align 4
  %23 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %24 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %11, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %84, %19
  %30 = load i32, i32* %7, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %9, align 4
  %35 = icmp sgt i32 %33, 100
  br label %36

36:                                               ; preds = %32, %29
  %37 = phi i1 [ true, %29 ], [ %35, %32 ]
  br i1 %37, label %38, label %101

38:                                               ; preds = %36
  %39 = load i32*, i32** %11, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  switch i32 %42, label %81 [
    i32 131, label %43
    i32 132, label %50
    i32 133, label %56
    i32 128, label %63
    i32 130, label %70
    i32 129, label %74
  ]

43:                                               ; preds = %38
  %44 = load i32, i32* @COMP_EVENTS, align 4
  %45 = call i32 @RT_TRACE(i32 %44, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @cmpk_handle_tx_feedback(%struct.net_device* %46, i32* %47)
  %49 = load i32, i32* @CMPK_RX_TX_FB_SIZE, align 4
  store i32 %49, i32* %8, align 4
  br label %84

50:                                               ; preds = %38
  %51 = load i32, i32* @COMP_EVENTS, align 4
  %52 = call i32 @RT_TRACE(i32 %51, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %53 = load %struct.net_device*, %struct.net_device** %4, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @cmpk_handle_interrupt_status(%struct.net_device* %53, i32* %54)
  store i32 4, i32* %8, align 4
  br label %84

56:                                               ; preds = %38
  %57 = load i32, i32* @COMP_EVENTS, align 4
  %58 = call i32 @RT_TRACE(i32 %57, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %59 = load %struct.net_device*, %struct.net_device** %4, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @cmpk_handle_query_config_rx(%struct.net_device* %59, i32* %60)
  %62 = load i32, i32* @CMPK_BOTH_QUERY_CONFIG_SIZE, align 4
  store i32 %62, i32* %8, align 4
  br label %84

63:                                               ; preds = %38
  %64 = load i32, i32* @COMP_EVENTS, align 4
  %65 = call i32 @RT_TRACE(i32 %64, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %66 = load %struct.net_device*, %struct.net_device** %4, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @cmpk_handle_tx_status(%struct.net_device* %66, i32* %67)
  %69 = load i32, i32* @CMPK_RX_TX_STS_SIZE, align 4
  store i32 %69, i32* %8, align 4
  br label %84

70:                                               ; preds = %38
  %71 = load i32, i32* @COMP_EVENTS, align 4
  %72 = call i32 @RT_TRACE(i32 %71, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0))
  %73 = load i32, i32* @CMPK_RX_TX_FB_SIZE, align 4
  store i32 %73, i32* %8, align 4
  br label %84

74:                                               ; preds = %38
  %75 = load i32, i32* @COMP_EVENTS, align 4
  %76 = call i32 @RT_TRACE(i32 %75, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  %77 = load %struct.net_device*, %struct.net_device** %4, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = call i32 @cmpk_handle_tx_rate_history(%struct.net_device* %77, i32* %78)
  %80 = load i32, i32* @CMPK_TX_RAHIS_SIZE, align 4
  store i32 %80, i32* %8, align 4
  br label %84

81:                                               ; preds = %38
  %82 = load i32, i32* @COMP_EVENTS, align 4
  %83 = call i32 @RT_TRACE(i32 %82, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %102

84:                                               ; preds = %74, %70, %63, %56, %50, %43
  %85 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %86 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %7, align 4
  %96 = sub nsw i32 %95, %94
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load i32*, i32** %11, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32* %100, i32** %11, align 8
  br label %29

101:                                              ; preds = %36
  store i32 1, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %81, %18
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @RT_TRACE(i32, i8*) #1

declare dso_local i32 @cmpk_handle_tx_feedback(%struct.net_device*, i32*) #1

declare dso_local i32 @cmpk_handle_interrupt_status(%struct.net_device*, i32*) #1

declare dso_local i32 @cmpk_handle_query_config_rx(%struct.net_device*, i32*) #1

declare dso_local i32 @cmpk_handle_tx_status(%struct.net_device*, i32*) #1

declare dso_local i32 @cmpk_handle_tx_rate_history(%struct.net_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
