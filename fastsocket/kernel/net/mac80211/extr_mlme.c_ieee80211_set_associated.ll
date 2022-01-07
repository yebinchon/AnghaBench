; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_set_associated.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_set_associated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.ieee80211_local* }
%struct.TYPE_10__ = type { i32, i64, %struct.ieee80211_bss_conf }
%struct.ieee80211_bss_conf = type { i32, i32, i32, i64, i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__*, i32, i32, i32, %struct.cfg80211_bss*, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.ieee80211_local = type { i32 }
%struct.cfg80211_bss = type { i32, i32, i64 }
%struct.ieee80211_bss = type { i32, i32 }
%struct.cfg80211_bss_ies = type { i32, i32 }

@BSS_CHANGED_ASSOC = common dso_local global i32 0, align 4
@beacon_loss_count = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_STA_RESET_SIGNAL_AVE = common dso_local global i32 0, align 4
@IEEE80211_P2P_ATTR_ABSENCE_NOTICE = common dso_local global i32 0, align 4
@BSS_CHANGED_P2P_PS = common dso_local global i32 0, align 4
@BSS_CHANGED_DTIM_PERIOD = common dso_local global i32 0, align 4
@IEEE80211_VIF_SUPPORTS_CQM_RSSI = common dso_local global i32 0, align 4
@BSS_CHANGED_CQM = common dso_local global i32 0, align 4
@BSS_CHANGED_ARP_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.cfg80211_bss*, i32)* @ieee80211_set_associated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_set_associated(%struct.ieee80211_sub_if_data* %0, %struct.cfg80211_bss* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.cfg80211_bss*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_bss*, align 8
  %8 = alloca %struct.ieee80211_local*, align 8
  %9 = alloca %struct.ieee80211_bss_conf*, align 8
  %10 = alloca %struct.cfg80211_bss_ies*, align 8
  %11 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.cfg80211_bss* %1, %struct.cfg80211_bss** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %13 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.ieee80211_bss*
  store %struct.ieee80211_bss* %16, %struct.ieee80211_bss** %7, align 8
  %17 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %17, i32 0, i32 3
  %19 = load %struct.ieee80211_local*, %struct.ieee80211_local** %18, align 8
  store %struct.ieee80211_local* %19, %struct.ieee80211_local** %8, align 8
  %20 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  store %struct.ieee80211_bss_conf* %22, %struct.ieee80211_bss_conf** %9, align 8
  %23 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %27 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %9, align 8
  %28 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %7, align 8
  %31 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %7, align 8
  %34 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ieee80211_handle_bss_capability(%struct.ieee80211_sub_if_data* %26, i32 %29, i32 %32, i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* @beacon_loss_count, align 4
  %40 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %9, align 8
  %41 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = mul nsw i32 %39, %42
  %44 = call i32 @ieee80211_tu_to_usec(i32 %43)
  %45 = call i32 @usecs_to_jiffies(i32 %44)
  %46 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %47 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 6
  store i32 %45, i32* %49, align 8
  %50 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %51 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %52 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 5
  store %struct.cfg80211_bss* %50, %struct.cfg80211_bss** %54, align 8
  %55 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %56 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %61 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @ETH_ALEN, align 4
  %64 = call i32 @memcpy(i32 %59, i32 %62, i32 %63)
  %65 = load i32, i32* @IEEE80211_STA_RESET_SIGNAL_AVE, align 4
  %66 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %67 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %65
  store i32 %71, i32* %69, align 4
  %72 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %73 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %114

77:                                               ; preds = %3
  %78 = call i32 (...) @rcu_read_lock()
  %79 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %80 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call %struct.cfg80211_bss_ies* @rcu_dereference(i32 %81)
  store %struct.cfg80211_bss_ies* %82, %struct.cfg80211_bss_ies** %10, align 8
  %83 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %10, align 8
  %84 = icmp ne %struct.cfg80211_bss_ies* %83, null
  br i1 %84, label %85, label %112

85:                                               ; preds = %77
  %86 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %10, align 8
  %87 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %10, align 8
  %90 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @IEEE80211_P2P_ATTR_ABSENCE_NOTICE, align 4
  %93 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %9, align 8
  %94 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %93, i32 0, i32 5
  %95 = bitcast %struct.TYPE_6__* %94 to i32*
  %96 = call i32 @cfg80211_get_p2p_attr(i32 %88, i32 %91, i32 %92, i32* %95, i32 4)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp sge i32 %97, 2
  br i1 %98, label %99, label %111

99:                                               ; preds = %85
  %100 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %9, align 8
  %101 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %105 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 2
  store i32 %103, i32* %107, align 8
  %108 = load i32, i32* @BSS_CHANGED_P2P_PS, align 4
  %109 = load i32, i32* %6, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %99, %85
  br label %112

112:                                              ; preds = %111, %77
  %113 = call i32 (...) @rcu_read_unlock()
  br label %114

114:                                              ; preds = %112, %3
  %115 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %116 = call i32 @ieee80211_stop_poll(%struct.ieee80211_sub_if_data* %115)
  %117 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %118 = call i32 @ieee80211_led_assoc(%struct.ieee80211_local* %117, i32 1)
  %119 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %120 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %144

127:                                              ; preds = %114
  %128 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %129 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  br label %136

135:                                              ; preds = %127
  br label %136

136:                                              ; preds = %135, %134
  %137 = phi i64 [ %132, %134 ], [ 1, %135 ]
  %138 = trunc i64 %137 to i32
  %139 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %9, align 8
  %140 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* @BSS_CHANGED_DTIM_PERIOD, align 4
  %142 = load i32, i32* %6, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %6, align 4
  br label %147

144:                                              ; preds = %114
  %145 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %9, align 8
  %146 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %145, i32 0, i32 1
  store i32 0, i32* %146, align 4
  br label %147

147:                                              ; preds = %144, %136
  %148 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %9, align 8
  %149 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %148, i32 0, i32 2
  store i32 1, i32* %149, align 8
  %150 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %151 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @IEEE80211_VIF_SUPPORTS_CQM_RSSI, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %147
  %158 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %9, align 8
  %159 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %158, i32 0, i32 4
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %157
  %163 = load i32, i32* @BSS_CHANGED_CQM, align 4
  %164 = load i32, i32* %6, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %6, align 4
  br label %166

166:                                              ; preds = %162, %157, %147
  %167 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %9, align 8
  %168 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %166
  %172 = load i32, i32* @BSS_CHANGED_ARP_FILTER, align 4
  %173 = load i32, i32* %6, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %6, align 4
  br label %175

175:                                              ; preds = %171, %166
  %176 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %177 = load i32, i32* %6, align 4
  %178 = call i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data* %176, i32 %177)
  %179 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %180 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %179, i32 0, i32 0
  %181 = call i32 @mutex_lock(i32* %180)
  %182 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %183 = call i32 @ieee80211_recalc_ps(%struct.ieee80211_local* %182, i32 -1)
  %184 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %185 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %184, i32 0, i32 0
  %186 = call i32 @mutex_unlock(i32* %185)
  %187 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %188 = call i32 @ieee80211_recalc_smps(%struct.ieee80211_sub_if_data* %187)
  %189 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %190 = call i32 @ieee80211_recalc_ps_vif(%struct.ieee80211_sub_if_data* %189)
  %191 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %192 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @netif_carrier_on(i32 %193)
  ret void
}

declare dso_local i32 @ieee80211_handle_bss_capability(%struct.ieee80211_sub_if_data*, i32, i32, i32) #1

declare dso_local i32 @usecs_to_jiffies(i32) #1

declare dso_local i32 @ieee80211_tu_to_usec(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cfg80211_bss_ies* @rcu_dereference(i32) #1

declare dso_local i32 @cfg80211_get_p2p_attr(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @ieee80211_stop_poll(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_led_assoc(%struct.ieee80211_local*, i32) #1

declare dso_local i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ieee80211_recalc_ps(%struct.ieee80211_local*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ieee80211_recalc_smps(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_recalc_ps_vif(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @netif_carrier_on(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
