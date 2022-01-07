; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192SU_TranslateRxSignalStuff.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192SU_TranslateRxSignalStuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rx_stats = type { i32, i32, i32 }
%struct.sk_buff = type { i64, i64 }
%struct.rtl8192_rx_info = type { %struct.net_device* }
%struct.net_device = type { i32* }
%struct.r8192_priv = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32* }
%struct.ieee80211_hdr_3addr = type { i32*, i32*, i32*, i32 }

@FALSE = common dso_local global i32 0, align 4
@rtl8192SU_TranslateRxSignalStuff.previous_stats = internal global %struct.ieee80211_rx_stats zeroinitializer, align 4
@IEEE80211_FTYPE_CTL = common dso_local global i64 0, align 8
@IEEE80211_FCTL_TODS = common dso_local global i64 0, align 8
@IEEE80211_FCTL_FROMDS = common dso_local global i64 0, align 8
@IEEE80211_STYPE_BEACON = common dso_local global i64 0, align 8
@IEEE80211_STYPE_BLOCKACK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8192SU_TranslateRxSignalStuff(%struct.sk_buff* %0, %struct.ieee80211_rx_stats* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_rx_stats*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.rtl8192_rx_info*, align 8
  %10 = alloca %struct.net_device*, align 8
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
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.ieee80211_rx_stats* %1, %struct.ieee80211_rx_stats** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.rtl8192_rx_info*
  store %struct.rtl8192_rx_info* %24, %struct.rtl8192_rx_info** %9, align 8
  %25 = load %struct.rtl8192_rx_info*, %struct.rtl8192_rx_info** %9, align 8
  %26 = getelementptr inbounds %struct.rtl8192_rx_info, %struct.rtl8192_rx_info* %25, i32 0, i32 0
  %27 = load %struct.net_device*, %struct.net_device** %26, align 8
  store %struct.net_device* %27, %struct.net_device** %10, align 8
  %28 = load %struct.net_device*, %struct.net_device** %10, align 8
  %29 = call i64 @ieee80211_priv(%struct.net_device* %28)
  %30 = inttoptr i64 %29 to %struct.r8192_priv*
  store %struct.r8192_priv* %30, %struct.r8192_priv** %11, align 8
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %15, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i32*
  store i32* %36, i32** %19, align 8
  %37 = load i32*, i32** %19, align 8
  %38 = bitcast i32* %37 to %struct.ieee80211_hdr_3addr*
  store %struct.ieee80211_hdr_3addr* %38, %struct.ieee80211_hdr_3addr** %16, align 8
  %39 = load %struct.ieee80211_hdr_3addr*, %struct.ieee80211_hdr_3addr** %16, align 8
  %40 = getelementptr inbounds %struct.ieee80211_hdr_3addr, %struct.ieee80211_hdr_3addr* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @le16_to_cpu(i32 %41)
  store i64 %42, i64* %17, align 8
  %43 = load i64, i64* %17, align 8
  %44 = call i64 @WLAN_FC_GET_TYPE(i64 %43)
  store i64 %44, i64* %18, align 8
  %45 = load %struct.ieee80211_hdr_3addr*, %struct.ieee80211_hdr_3addr** %16, align 8
  %46 = getelementptr inbounds %struct.ieee80211_hdr_3addr, %struct.ieee80211_hdr_3addr* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %20, align 8
  %48 = load i64, i64* @IEEE80211_FTYPE_CTL, align 8
  %49 = load i64, i64* %18, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %101

51:                                               ; preds = %4
  %52 = load %struct.r8192_priv*, %struct.r8192_priv** %11, align 8
  %53 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %17, align 8
  %59 = load i64, i64* @IEEE80211_FCTL_TODS, align 8
  %60 = and i64 %58, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %51
  %63 = load %struct.ieee80211_hdr_3addr*, %struct.ieee80211_hdr_3addr** %16, align 8
  %64 = getelementptr inbounds %struct.ieee80211_hdr_3addr, %struct.ieee80211_hdr_3addr* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  br label %81

66:                                               ; preds = %51
  %67 = load i64, i64* %17, align 8
  %68 = load i64, i64* @IEEE80211_FCTL_FROMDS, align 8
  %69 = and i64 %67, %68
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.ieee80211_hdr_3addr*, %struct.ieee80211_hdr_3addr** %16, align 8
  %73 = getelementptr inbounds %struct.ieee80211_hdr_3addr, %struct.ieee80211_hdr_3addr* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  br label %79

75:                                               ; preds = %66
  %76 = load %struct.ieee80211_hdr_3addr*, %struct.ieee80211_hdr_3addr** %16, align 8
  %77 = getelementptr inbounds %struct.ieee80211_hdr_3addr, %struct.ieee80211_hdr_3addr* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  br label %79

79:                                               ; preds = %75, %71
  %80 = phi i32* [ %74, %71 ], [ %78, %75 ]
  br label %81

81:                                               ; preds = %79, %62
  %82 = phi i32* [ %65, %62 ], [ %80, %79 ]
  %83 = call i32 @eqMacAddr(i32* %57, i32* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %101

85:                                               ; preds = %81
  %86 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %87 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %85
  %91 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %92 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %90
  %96 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %97 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  br label %101

101:                                              ; preds = %95, %90, %85, %81, %4
  %102 = phi i1 [ false, %90 ], [ false, %85 ], [ false, %81 ], [ false, %4 ], [ %100, %95 ]
  %103 = zext i1 %102 to i32
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load i32*, i32** %20, align 8
  %106 = load %struct.r8192_priv*, %struct.r8192_priv** %11, align 8
  %107 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %106, i32 0, i32 1
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @eqMacAddr(i32* %105, i32* %112)
  %114 = and i32 %104, %113
  store i32 %114, i32* %13, align 4
  %115 = load i64, i64* %17, align 8
  %116 = call i64 @WLAN_FC_GET_FRAMETYPE(i64 %115)
  %117 = load i64, i64* @IEEE80211_STYPE_BEACON, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %101
  store i32 1, i32* %14, align 4
  br label %120

120:                                              ; preds = %119, %101
  %121 = load i64, i64* %17, align 8
  %122 = call i64 @WLAN_FC_GET_FRAMETYPE(i64 %121)
  %123 = load i64, i64* @IEEE80211_STYPE_BLOCKACK, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %134

125:                                              ; preds = %120
  %126 = load i32*, i32** %20, align 8
  %127 = load %struct.net_device*, %struct.net_device** %10, align 8
  %128 = getelementptr inbounds %struct.net_device, %struct.net_device* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @eqMacAddr(i32* %126, i32* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  store i32 1, i32* %15, align 4
  br label %133

133:                                              ; preds = %132, %125
  br label %134

134:                                              ; preds = %133, %120
  %135 = load i32, i32* %12, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %134
  %138 = load %struct.r8192_priv*, %struct.r8192_priv** %11, align 8
  %139 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %137, %134
  %144 = load i32, i32* %13, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %143
  %147 = load %struct.r8192_priv*, %struct.r8192_priv** %11, align 8
  %148 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 8
  br label %152

152:                                              ; preds = %146, %143
  %153 = load %struct.r8192_priv*, %struct.r8192_priv** %11, align 8
  %154 = load i32*, i32** %19, align 8
  %155 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %156 = call i32 @rtl8192_process_phyinfo(%struct.r8192_priv* %153, i32* %154, %struct.ieee80211_rx_stats* @rtl8192SU_TranslateRxSignalStuff.previous_stats, %struct.ieee80211_rx_stats* %155)
  %157 = load %struct.r8192_priv*, %struct.r8192_priv** %11, align 8
  %158 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %159 = load i32*, i32** %7, align 8
  %160 = load i32*, i32** %8, align 8
  %161 = load i32, i32* %12, align 4
  %162 = load i32, i32* %13, align 4
  %163 = load i32, i32* %14, align 4
  %164 = load i32, i32* %15, align 4
  %165 = call i32 @rtl8192SU_query_rxphystatus(%struct.r8192_priv* %157, %struct.ieee80211_rx_stats* %158, i32* %159, i32* %160, %struct.ieee80211_rx_stats* @rtl8192SU_TranslateRxSignalStuff.previous_stats, i32 %161, i32 %162, i32 %163, i32 %164)
  %166 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %167 = call i32 @rtl8192_record_rxdesc_forlateruse(%struct.ieee80211_rx_stats* %166, %struct.ieee80211_rx_stats* @rtl8192SU_TranslateRxSignalStuff.previous_stats)
  ret void
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @WLAN_FC_GET_TYPE(i64) #1

declare dso_local i32 @eqMacAddr(i32*, i32*) #1

declare dso_local i64 @WLAN_FC_GET_FRAMETYPE(i64) #1

declare dso_local i32 @rtl8192_process_phyinfo(%struct.r8192_priv*, i32*, %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats*) #1

declare dso_local i32 @rtl8192SU_query_rxphystatus(%struct.r8192_priv*, %struct.ieee80211_rx_stats*, i32*, i32*, %struct.ieee80211_rx_stats*, i32, i32, i32, i32) #1

declare dso_local i32 @rtl8192_record_rxdesc_forlateruse(%struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
