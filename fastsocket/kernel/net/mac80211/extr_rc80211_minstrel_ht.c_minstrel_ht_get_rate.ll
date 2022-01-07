; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_get_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { void (i8*, %struct.ieee80211_sta*, i32*, %struct.ieee80211_tx_rate_control*)* }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_tx_rate_control = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.mcs_group = type { i32, i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ieee80211_tx_rate* }
%struct.ieee80211_tx_rate = type { i32, i32, i32 }
%struct.minstrel_ht_sta_priv = type { i32, i32, %struct.minstrel_ht_sta }
%struct.minstrel_ht_sta = type { i32, i32, i32, i64, i32, i32 }
%struct.minstrel_priv = type { i32, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@mac80211_minstrel = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@ETH_P_PAE = common dso_local global i32 0, align 4
@minstrel_mcs_groups = common dso_local global %struct.mcs_group* null, align 8
@MCS_GROUP_RATES = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_RATE_CTRL_PROBE = common dso_local global i32 0, align 4
@MINSTREL_CCK_GROUP = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_sta*, i8*, %struct.ieee80211_tx_rate_control*)* @minstrel_ht_get_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minstrel_ht_get_rate(i8* %0, %struct.ieee80211_sta* %1, i8* %2, %struct.ieee80211_tx_rate_control* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ieee80211_tx_rate_control*, align 8
  %9 = alloca %struct.mcs_group*, align 8
  %10 = alloca %struct.ieee80211_tx_info*, align 8
  %11 = alloca %struct.ieee80211_tx_rate*, align 8
  %12 = alloca %struct.minstrel_ht_sta_priv*, align 8
  %13 = alloca %struct.minstrel_ht_sta*, align 8
  %14 = alloca %struct.minstrel_priv*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.ieee80211_tx_rate_control* %3, %struct.ieee80211_tx_rate_control** %8, align 8
  %17 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %8, align 8
  %18 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.TYPE_8__* %19)
  store %struct.ieee80211_tx_info* %20, %struct.ieee80211_tx_info** %10, align 8
  %21 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %22 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %23, align 8
  %25 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %24, i64 0
  store %struct.ieee80211_tx_rate* %25, %struct.ieee80211_tx_rate** %11, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = bitcast i8* %26 to %struct.minstrel_ht_sta_priv*
  store %struct.minstrel_ht_sta_priv* %27, %struct.minstrel_ht_sta_priv** %12, align 8
  %28 = load %struct.minstrel_ht_sta_priv*, %struct.minstrel_ht_sta_priv** %12, align 8
  %29 = getelementptr inbounds %struct.minstrel_ht_sta_priv, %struct.minstrel_ht_sta_priv* %28, i32 0, i32 2
  store %struct.minstrel_ht_sta* %29, %struct.minstrel_ht_sta** %13, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = bitcast i8* %30 to %struct.minstrel_priv*
  store %struct.minstrel_priv* %31, %struct.minstrel_priv** %14, align 8
  %32 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %8, align 8
  %35 = call i64 @rate_control_send_low(%struct.ieee80211_sta* %32, i8* %33, %struct.ieee80211_tx_rate_control* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %4
  br label %159

38:                                               ; preds = %4
  %39 = load %struct.minstrel_ht_sta_priv*, %struct.minstrel_ht_sta_priv** %12, align 8
  %40 = getelementptr inbounds %struct.minstrel_ht_sta_priv, %struct.minstrel_ht_sta_priv* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %38
  %44 = load void (i8*, %struct.ieee80211_sta*, i32*, %struct.ieee80211_tx_rate_control*)*, void (i8*, %struct.ieee80211_sta*, i32*, %struct.ieee80211_tx_rate_control*)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @mac80211_minstrel, i32 0, i32 0), align 8
  %45 = load i8*, i8** %5, align 8
  %46 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %47 = load %struct.minstrel_ht_sta_priv*, %struct.minstrel_ht_sta_priv** %12, align 8
  %48 = getelementptr inbounds %struct.minstrel_ht_sta_priv, %struct.minstrel_ht_sta_priv* %47, i32 0, i32 0
  %49 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %8, align 8
  call void %44(i8* %45, %struct.ieee80211_sta* %46, i32* %48, %struct.ieee80211_tx_rate_control* %49)
  br label %159

50:                                               ; preds = %38
  %51 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %13, align 8
  %52 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %55 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load %struct.minstrel_priv*, %struct.minstrel_priv** %14, align 8
  %59 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %13, align 8
  %60 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %8, align 8
  %61 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @minstrel_ht_check_cck_shortpreamble(%struct.minstrel_priv* %58, %struct.minstrel_ht_sta* %59, i32 %62)
  %64 = load %struct.minstrel_priv*, %struct.minstrel_priv** %14, align 8
  %65 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %64, i32 0, i32 2
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %80

70:                                               ; preds = %50
  %71 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %8, align 8
  %72 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %71, i32 0, i32 0
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* @ETH_P_PAE, align 4
  %77 = call i64 @cpu_to_be16(i32 %76)
  %78 = icmp eq i64 %75, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  store i32 -1, i32* %15, align 4
  br label %84

80:                                               ; preds = %70, %50
  %81 = load %struct.minstrel_priv*, %struct.minstrel_priv** %14, align 8
  %82 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %13, align 8
  %83 = call i32 @minstrel_get_sample_rate(%struct.minstrel_priv* %81, %struct.minstrel_ht_sta* %82)
  store i32 %83, i32* %15, align 4
  br label %84

84:                                               ; preds = %80, %79
  %85 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %13, align 8
  %86 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  %89 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %13, align 8
  %90 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %98

93:                                               ; preds = %84
  %94 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %13, align 8
  %95 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %94, i32 0, i32 4
  store i32 0, i32* %95, align 8
  %96 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %13, align 8
  %97 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %96, i32 0, i32 3
  store i64 0, i64* %97, align 8
  br label %98

98:                                               ; preds = %93, %84
  %99 = load i32, i32* %15, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  br label %159

102:                                              ; preds = %98
  %103 = load %struct.mcs_group*, %struct.mcs_group** @minstrel_mcs_groups, align 8
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* @MCS_GROUP_RATES, align 4
  %106 = sdiv i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %103, i64 %107
  store %struct.mcs_group* %108, %struct.mcs_group** %9, align 8
  %109 = load i32, i32* @IEEE80211_TX_CTL_RATE_CTRL_PROBE, align 4
  %110 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %111 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  %114 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %11, align 8
  %115 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %114, i32 0, i32 0
  store i32 1, i32* %115, align 4
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* @MCS_GROUP_RATES, align 4
  %118 = sdiv i32 %116, %117
  %119 = load i32, i32* @MINSTREL_CCK_GROUP, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %139

121:                                              ; preds = %102
  %122 = load i32, i32* %15, align 4
  %123 = load %struct.minstrel_priv*, %struct.minstrel_priv** %14, align 8
  %124 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @ARRAY_SIZE(i32* %125)
  %127 = srem i32 %122, %126
  store i32 %127, i32* %16, align 4
  %128 = load %struct.minstrel_priv*, %struct.minstrel_priv** %14, align 8
  %129 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %16, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %11, align 8
  %136 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  %137 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %11, align 8
  %138 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %137, i32 0, i32 2
  store i32 0, i32* %138, align 4
  br label %159

139:                                              ; preds = %102
  %140 = load i32, i32* %15, align 4
  %141 = load i32, i32* @MCS_GROUP_RATES, align 4
  %142 = srem i32 %140, %141
  %143 = load %struct.mcs_group*, %struct.mcs_group** %9, align 8
  %144 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = sub nsw i32 %145, 1
  %147 = load i32, i32* @MCS_GROUP_RATES, align 4
  %148 = mul nsw i32 %146, %147
  %149 = add nsw i32 %142, %148
  %150 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %11, align 8
  %151 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  %152 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %153 = load %struct.mcs_group*, %struct.mcs_group** %9, align 8
  %154 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %152, %155
  %157 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %11, align 8
  %158 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 4
  br label %159

159:                                              ; preds = %139, %121, %101, %43, %37
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.TYPE_8__*) #1

declare dso_local i64 @rate_control_send_low(%struct.ieee80211_sta*, i8*, %struct.ieee80211_tx_rate_control*) #1

declare dso_local i32 @minstrel_ht_check_cck_shortpreamble(%struct.minstrel_priv*, %struct.minstrel_ht_sta*, i32) #1

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local i32 @minstrel_get_sample_rate(%struct.minstrel_priv*, %struct.minstrel_ht_sta*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
