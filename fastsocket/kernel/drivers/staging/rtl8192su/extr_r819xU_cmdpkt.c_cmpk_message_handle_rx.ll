; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r819xU_cmdpkt.c_cmpk_message_handle_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r819xU_cmdpkt.c_cmpk_message_handle_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ieee80211_rx_stats = type { i32, i32* }
%struct.r8192_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@CMPK_RX_TX_FB_SIZE = common dso_local global i32 0, align 4
@CMPK_BOTH_QUERY_CONFIG_SIZE = common dso_local global i32 0, align 4
@CMPK_RX_TX_STS_SIZE = common dso_local global i32 0, align 4
@CMPK_TX_RAHIS_SIZE = common dso_local global i32 0, align 4
@COMP_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"---->cmpk_message_handle_rx():unknow CMD Element\0A\00", align 1

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
  %14 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %15 = icmp eq %struct.ieee80211_rx_stats* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %88

17:                                               ; preds = %2
  %18 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %19 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %7, align 4
  %21 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %22 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %11, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %70, %17
  %28 = load i32, i32* %7, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %9, align 4
  %33 = icmp sgt i32 %31, 100
  br label %34

34:                                               ; preds = %30, %27
  %35 = phi i1 [ true, %27 ], [ %33, %30 ]
  br i1 %35, label %36, label %87

36:                                               ; preds = %34
  %37 = load i32*, i32** %11, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  switch i32 %40, label %67 [
    i32 131, label %41
    i32 132, label %46
    i32 133, label %50
    i32 128, label %55
    i32 130, label %60
    i32 129, label %62
  ]

41:                                               ; preds = %36
  %42 = load %struct.net_device*, %struct.net_device** %4, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @cmpk_handle_tx_feedback(%struct.net_device* %42, i32* %43)
  %45 = load i32, i32* @CMPK_RX_TX_FB_SIZE, align 4
  store i32 %45, i32* %8, align 4
  br label %70

46:                                               ; preds = %36
  %47 = load %struct.net_device*, %struct.net_device** %4, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @cmpk_handle_interrupt_status(%struct.net_device* %47, i32* %48)
  store i32 4, i32* %8, align 4
  br label %70

50:                                               ; preds = %36
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @cmpk_handle_query_config_rx(%struct.net_device* %51, i32* %52)
  %54 = load i32, i32* @CMPK_BOTH_QUERY_CONFIG_SIZE, align 4
  store i32 %54, i32* %8, align 4
  br label %70

55:                                               ; preds = %36
  %56 = load %struct.net_device*, %struct.net_device** %4, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = call i32 @cmpk_handle_tx_status(%struct.net_device* %56, i32* %57)
  %59 = load i32, i32* @CMPK_RX_TX_STS_SIZE, align 4
  store i32 %59, i32* %8, align 4
  br label %70

60:                                               ; preds = %36
  %61 = load i32, i32* @CMPK_RX_TX_FB_SIZE, align 4
  store i32 %61, i32* %8, align 4
  br label %70

62:                                               ; preds = %36
  %63 = load %struct.net_device*, %struct.net_device** %4, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 @cmpk_handle_tx_rate_history(%struct.net_device* %63, i32* %64)
  %66 = load i32, i32* @CMPK_TX_RAHIS_SIZE, align 4
  store i32 %66, i32* %8, align 4
  br label %70

67:                                               ; preds = %36
  %68 = load i32, i32* @COMP_ERR, align 4
  %69 = call i32 @RT_TRACE(i32 %68, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %88

70:                                               ; preds = %62, %60, %55, %50, %46, %41
  %71 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %72 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %7, align 4
  %82 = sub nsw i32 %81, %80
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32*, i32** %11, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32* %86, i32** %11, align 8
  br label %27

87:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %67, %16
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @cmpk_handle_tx_feedback(%struct.net_device*, i32*) #1

declare dso_local i32 @cmpk_handle_interrupt_status(%struct.net_device*, i32*) #1

declare dso_local i32 @cmpk_handle_query_config_rx(%struct.net_device*, i32*) #1

declare dso_local i32 @cmpk_handle_tx_status(%struct.net_device*, i32*) #1

declare dso_local i32 @cmpk_handle_tx_rate_history(%struct.net_device*, i32*) #1

declare dso_local i32 @RT_TRACE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
