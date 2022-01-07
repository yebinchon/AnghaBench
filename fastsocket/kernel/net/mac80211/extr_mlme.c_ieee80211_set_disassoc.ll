; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_set_disassoc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_set_disassoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_10__, %struct.TYPE_8__, i32, i32, %struct.ieee80211_local* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i64, i64, i32 }
%struct.TYPE_8__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32* }
%struct.ieee80211_local = type { i32, i32, i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@IEEE80211_CONF_PS = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_PS = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@BSS_CHANGED_ASSOC = common dso_local global i32 0, align 4
@IEEE80211_UNSET_POWER_LEVEL = common dso_local global i32 0, align 4
@BSS_CHANGED_ARP_FILTER = common dso_local global i32 0, align 4
@BSS_CHANGED_QOS = common dso_local global i32 0, align 4
@BSS_CHANGED_BSSID = common dso_local global i32 0, align 4
@BSS_CHANGED_HT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, i32, i32, i32, i32*)* @ieee80211_set_disassoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_set_disassoc(%struct.ieee80211_sub_if_data* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ieee80211_if_managed*, align 8
  %12 = alloca %struct.ieee80211_local*, align 8
  %13 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %14 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store %struct.ieee80211_if_managed* %16, %struct.ieee80211_if_managed** %11, align 8
  %17 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %17, i32 0, i32 4
  %19 = load %struct.ieee80211_local*, %struct.ieee80211_local** %18, align 8
  store %struct.ieee80211_local* %19, %struct.ieee80211_local** %12, align 8
  store i32 0, i32* %13, align 4
  %20 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %11, align 8
  %21 = call i32 @ASSERT_MGD_MTX(%struct.ieee80211_if_managed* %20)
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %5
  %25 = load i32*, i32** %10, align 8
  %26 = icmp ne i32* %25, null
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %24, %5
  %29 = phi i1 [ false, %5 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = call i64 @WARN_ON_ONCE(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %212

34:                                               ; preds = %28
  %35 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %11, align 8
  %36 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %35, i32 0, i32 11
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @WARN_ON(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %212

44:                                               ; preds = %34
  %45 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %46 = call i32 @ieee80211_stop_poll(%struct.ieee80211_sub_if_data* %45)
  %47 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %11, align 8
  %48 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %47, i32 0, i32 11
  store i32* null, i32** %48, align 8
  %49 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %50 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @netif_carrier_off(i32 %51)
  %53 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %54 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @IEEE80211_CONF_PS, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %44
  %62 = load i32, i32* @IEEE80211_CONF_PS, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %65 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %68, %63
  store i32 %69, i32* %67, align 8
  %70 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %71 = load i32, i32* @IEEE80211_CONF_CHANGE_PS, align 4
  %72 = call i32 @ieee80211_hw_config(%struct.ieee80211_local* %70, i32 %71)
  br label %73

73:                                               ; preds = %61, %44
  %74 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %75 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %74, i32 0, i32 2
  store i32* null, i32** %75, align 8
  %76 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %77 = call i32 @ieee80211_recalc_ps_vif(%struct.ieee80211_sub_if_data* %76)
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %73
  %81 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %82 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %83 = call i32 @ieee80211_flush_queues(%struct.ieee80211_local* %81, %struct.ieee80211_sub_if_data* %82)
  br label %84

84:                                               ; preds = %80, %73
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = load i32*, i32** %10, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %100

90:                                               ; preds = %87, %84
  %91 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %92 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %11, align 8
  %93 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %92, i32 0, i32 10
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32*, i32** %10, align 8
  %99 = call i32 @ieee80211_send_deauth_disassoc(%struct.ieee80211_sub_if_data* %91, i32* %94, i32 %95, i32 %96, i32 %97, i32* %98)
  br label %100

100:                                              ; preds = %90, %87
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %105 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %106 = call i32 @ieee80211_flush_queues(%struct.ieee80211_local* %104, %struct.ieee80211_sub_if_data* %105)
  br label %107

107:                                              ; preds = %103, %100
  %108 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %11, align 8
  %109 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %108, i32 0, i32 10
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* @ETH_ALEN, align 4
  %112 = call i32 @memset(i32* %110, i32 0, i32 %111)
  %113 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %114 = call i32 @sta_info_flush_defer(%struct.ieee80211_sub_if_data* %113)
  %115 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %116 = call i32 @ieee80211_reset_erp_info(%struct.ieee80211_sub_if_data* %115)
  %117 = load i32, i32* %13, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %13, align 4
  %119 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %120 = call i32 @ieee80211_led_assoc(%struct.ieee80211_local* %119, i32 0)
  %121 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %122 = load i32, i32* %13, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %13, align 4
  %124 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %125 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  store i32 0, i32* %127, align 8
  %128 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %11, align 8
  %129 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %128, i32 0, i32 0
  store i32 -1, i32* %129, align 8
  %130 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %131 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 4
  %134 = call i32 @memset(i32* %133, i32 0, i32 4)
  %135 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %11, align 8
  %136 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %135, i32 0, i32 9
  %137 = call i32 @memset(i32* %136, i32 0, i32 4)
  %138 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %11, align 8
  %139 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %138, i32 0, i32 8
  %140 = call i32 @memset(i32* %139, i32 0, i32 4)
  %141 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %11, align 8
  %142 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %141, i32 0, i32 7
  %143 = call i32 @memset(i32* %142, i32 0, i32 4)
  %144 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %11, align 8
  %145 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %144, i32 0, i32 6
  %146 = call i32 @memset(i32* %145, i32 0, i32 4)
  %147 = load i32, i32* @IEEE80211_UNSET_POWER_LEVEL, align 4
  %148 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %149 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 8
  %150 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %151 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %150, i32 0, i32 1
  %152 = call i32 @del_timer_sync(i32* %151)
  %153 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %154 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %153, i32 0, i32 0
  %155 = call i32 @cancel_work_sync(i32* %154)
  %156 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %157 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %107
  %163 = load i32, i32* @BSS_CHANGED_ARP_FILTER, align 4
  %164 = load i32, i32* %13, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %13, align 4
  br label %166

166:                                              ; preds = %162, %107
  %167 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %168 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 1
  store i32 0, i32* %170, align 4
  %171 = load i32, i32* @BSS_CHANGED_QOS, align 4
  %172 = load i32, i32* %13, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %13, align 4
  %174 = load i32, i32* @BSS_CHANGED_BSSID, align 4
  %175 = load i32, i32* @BSS_CHANGED_HT, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* %13, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %13, align 4
  %179 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %180 = load i32, i32* %13, align 4
  %181 = call i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data* %179, i32 %180)
  %182 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %183 = call i32 @ieee80211_set_wmm_default(%struct.ieee80211_sub_if_data* %182, i32 0)
  %184 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %185 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %186, i32 0, i32 5
  %188 = call i32 @del_timer_sync(i32* %187)
  %189 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %190 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %191, i32 0, i32 4
  %193 = call i32 @del_timer_sync(i32* %192)
  %194 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %195 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %196, i32 0, i32 3
  %198 = call i32 @del_timer_sync(i32* %197)
  %199 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %200 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %201, i32 0, i32 2
  %203 = call i32 @del_timer_sync(i32* %202)
  %204 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %205 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 2
  store i64 0, i64* %207, align 8
  %208 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %11, align 8
  %209 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %208, i32 0, i32 1
  store i64 0, i64* %209, align 8
  %210 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %211 = call i32 @ieee80211_vif_release_channel(%struct.ieee80211_sub_if_data* %210)
  br label %212

212:                                              ; preds = %166, %43, %33
  ret void
}

declare dso_local i32 @ASSERT_MGD_MTX(%struct.ieee80211_if_managed*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ieee80211_stop_poll(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @ieee80211_hw_config(%struct.ieee80211_local*, i32) #1

declare dso_local i32 @ieee80211_recalc_ps_vif(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_flush_queues(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_send_deauth_disassoc(%struct.ieee80211_sub_if_data*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @sta_info_flush_defer(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_reset_erp_info(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_led_assoc(%struct.ieee80211_local*, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @ieee80211_set_wmm_default(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @ieee80211_vif_release_channel(%struct.ieee80211_sub_if_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
