; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_TranslateRxSignalStuff819xpci.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_TranslateRxSignalStuff819xpci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rx_stats = type { i32, i32, i32 }
%struct.net_device = type { i32* }
%struct.sk_buff = type { i32* }
%struct.r8192_priv = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32* }
%struct.ieee80211_hdr_3addr = type { i32*, i32*, i32*, i32 }

@TranslateRxSignalStuff819xpci.previous_stats = internal global %struct.ieee80211_rx_stats zeroinitializer, align 4
@IEEE80211_FTYPE_CTL = common dso_local global i64 0, align 8
@IEEE80211_FCTL_TODS = common dso_local global i64 0, align 8
@IEEE80211_FCTL_FROMDS = common dso_local global i64 0, align 8
@IEEE80211_STYPE_BEACON = common dso_local global i64 0, align 8
@IEEE80211_STYPE_BLOCKACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.sk_buff*, %struct.ieee80211_rx_stats*, i32, i32)* @TranslateRxSignalStuff819xpci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TranslateRxSignalStuff819xpci(%struct.net_device* %0, %struct.sk_buff* %1, %struct.ieee80211_rx_stats* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ieee80211_rx_stats*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.r8192_priv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ieee80211_hdr_3addr*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.ieee80211_rx_stats* %2, %struct.ieee80211_rx_stats** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %21 = load %struct.net_device*, %struct.net_device** %6, align 8
  %22 = call i64 @ieee80211_priv(%struct.net_device* %21)
  %23 = inttoptr i64 %22 to %struct.r8192_priv*
  store %struct.r8192_priv* %23, %struct.r8192_priv** %11, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %19, align 8
  %27 = load i32*, i32** %19, align 8
  %28 = bitcast i32* %27 to %struct.ieee80211_hdr_3addr*
  store %struct.ieee80211_hdr_3addr* %28, %struct.ieee80211_hdr_3addr** %16, align 8
  %29 = load %struct.ieee80211_hdr_3addr*, %struct.ieee80211_hdr_3addr** %16, align 8
  %30 = getelementptr inbounds %struct.ieee80211_hdr_3addr, %struct.ieee80211_hdr_3addr* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @le16_to_cpu(i32 %31)
  store i64 %32, i64* %17, align 8
  %33 = load i64, i64* %17, align 8
  %34 = call i64 @WLAN_FC_GET_TYPE(i64 %33)
  store i64 %34, i64* %18, align 8
  %35 = load %struct.ieee80211_hdr_3addr*, %struct.ieee80211_hdr_3addr** %16, align 8
  %36 = getelementptr inbounds %struct.ieee80211_hdr_3addr, %struct.ieee80211_hdr_3addr* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %20, align 8
  %38 = load i64, i64* @IEEE80211_FTYPE_CTL, align 8
  %39 = load i64, i64* %18, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %91

41:                                               ; preds = %5
  %42 = load %struct.r8192_priv*, %struct.r8192_priv** %11, align 8
  %43 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %42, i32 0, i32 1
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %17, align 8
  %49 = load i64, i64* @IEEE80211_FCTL_TODS, align 8
  %50 = and i64 %48, %49
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %41
  %53 = load %struct.ieee80211_hdr_3addr*, %struct.ieee80211_hdr_3addr** %16, align 8
  %54 = getelementptr inbounds %struct.ieee80211_hdr_3addr, %struct.ieee80211_hdr_3addr* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  br label %71

56:                                               ; preds = %41
  %57 = load i64, i64* %17, align 8
  %58 = load i64, i64* @IEEE80211_FCTL_FROMDS, align 8
  %59 = and i64 %57, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load %struct.ieee80211_hdr_3addr*, %struct.ieee80211_hdr_3addr** %16, align 8
  %63 = getelementptr inbounds %struct.ieee80211_hdr_3addr, %struct.ieee80211_hdr_3addr* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  br label %69

65:                                               ; preds = %56
  %66 = load %struct.ieee80211_hdr_3addr*, %struct.ieee80211_hdr_3addr** %16, align 8
  %67 = getelementptr inbounds %struct.ieee80211_hdr_3addr, %struct.ieee80211_hdr_3addr* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  br label %69

69:                                               ; preds = %65, %61
  %70 = phi i32* [ %64, %61 ], [ %68, %65 ]
  br label %71

71:                                               ; preds = %69, %52
  %72 = phi i32* [ %55, %52 ], [ %70, %69 ]
  %73 = call i32 @eqMacAddr(i32* %47, i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %71
  %76 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %8, align 8
  %77 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %91, label %80

80:                                               ; preds = %75
  %81 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %8, align 8
  %82 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %80
  %86 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %8, align 8
  %87 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  br label %91

91:                                               ; preds = %85, %80, %75, %71, %5
  %92 = phi i1 [ false, %80 ], [ false, %75 ], [ false, %71 ], [ false, %5 ], [ %90, %85 ]
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load i32*, i32** %20, align 8
  %96 = load %struct.r8192_priv*, %struct.r8192_priv** %11, align 8
  %97 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %96, i32 0, i32 1
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @eqMacAddr(i32* %95, i32* %102)
  %104 = and i32 %94, %103
  store i32 %104, i32* %13, align 4
  %105 = load i64, i64* %17, align 8
  %106 = call i64 @WLAN_FC_GET_FRAMETYPE(i64 %105)
  %107 = load i64, i64* @IEEE80211_STYPE_BEACON, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %91
  store i32 1, i32* %14, align 4
  br label %110

110:                                              ; preds = %109, %91
  %111 = load i64, i64* %17, align 8
  %112 = call i64 @WLAN_FC_GET_FRAMETYPE(i64 %111)
  %113 = load i64, i64* @IEEE80211_STYPE_BLOCKACK, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %110
  %116 = load i32*, i32** %20, align 8
  %117 = load %struct.net_device*, %struct.net_device** %6, align 8
  %118 = getelementptr inbounds %struct.net_device, %struct.net_device* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @eqMacAddr(i32* %116, i32* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  store i32 1, i32* %15, align 4
  br label %123

123:                                              ; preds = %122, %115
  br label %124

124:                                              ; preds = %123, %110
  %125 = load i32, i32* %12, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %124
  %128 = load %struct.r8192_priv*, %struct.r8192_priv** %11, align 8
  %129 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %127, %124
  %134 = load i32, i32* %13, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %133
  %137 = load %struct.r8192_priv*, %struct.r8192_priv** %11, align 8
  %138 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 8
  br label %142

142:                                              ; preds = %136, %133
  %143 = load %struct.r8192_priv*, %struct.r8192_priv** %11, align 8
  %144 = load i32*, i32** %19, align 8
  %145 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %8, align 8
  %146 = call i32 @rtl8192_process_phyinfo(%struct.r8192_priv* %143, i32* %144, %struct.ieee80211_rx_stats* @TranslateRxSignalStuff819xpci.previous_stats, %struct.ieee80211_rx_stats* %145)
  %147 = load %struct.r8192_priv*, %struct.r8192_priv** %11, align 8
  %148 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %8, align 8
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* %15, align 4
  %155 = call i32 @rtl8192_query_rxphystatus(%struct.r8192_priv* %147, %struct.ieee80211_rx_stats* %148, i32 %149, i32 %150, %struct.ieee80211_rx_stats* @TranslateRxSignalStuff819xpci.previous_stats, i32 %151, i32 %152, i32 %153, i32 %154)
  %156 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %8, align 8
  %157 = call i32 @rtl8192_record_rxdesc_forlateruse(%struct.ieee80211_rx_stats* %156, %struct.ieee80211_rx_stats* @TranslateRxSignalStuff819xpci.previous_stats)
  ret void
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @WLAN_FC_GET_TYPE(i64) #1

declare dso_local i32 @eqMacAddr(i32*, i32*) #1

declare dso_local i64 @WLAN_FC_GET_FRAMETYPE(i64) #1

declare dso_local i32 @rtl8192_process_phyinfo(%struct.r8192_priv*, i32*, %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats*) #1

declare dso_local i32 @rtl8192_query_rxphystatus(%struct.r8192_priv*, %struct.ieee80211_rx_stats*, i32, i32, %struct.ieee80211_rx_stats*, i32, i32, i32, i32) #1

declare dso_local i32 @rtl8192_record_rxdesc_forlateruse(%struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
