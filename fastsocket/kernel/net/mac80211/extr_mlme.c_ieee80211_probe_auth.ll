; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_probe_auth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_probe_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_5__, %struct.ieee80211_local* }
%struct.TYPE_5__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i32, %struct.ieee80211_mgd_auth_data* }
%struct.ieee80211_mgd_auth_data = type { i64, i32, i32, i32, i32, i64, %struct.TYPE_7__*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.ieee80211_local = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_AUTH_MAX_TRIES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"authentication with %pM timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"send auth to %pM (try %d/%d)\0A\00", align 1
@WLAN_AUTH_SAE = common dso_local global i32 0, align 4
@IEEE80211_HW_REPORTS_TX_ACK_STATUS = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_REQ_TX_STATUS = common dso_local global i32 0, align 4
@IEEE80211_TX_INTFL_MLME_CONN_TX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"direct probe to %pM (try %d/%i)\0A\00", align 1
@WLAN_EID_SSID = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IEEE80211_AUTH_TIMEOUT = common dso_local global i64 0, align 8
@IEEE80211_AUTH_TIMEOUT_LONG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*)* @ieee80211_probe_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_probe_auth(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca %struct.ieee80211_if_managed*, align 8
  %6 = alloca %struct.ieee80211_mgd_auth_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %3, align 8
  %11 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %11, i32 0, i32 1
  %13 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  store %struct.ieee80211_local* %13, %struct.ieee80211_local** %4, align 8
  %14 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store %struct.ieee80211_if_managed* %16, %struct.ieee80211_if_managed** %5, align 8
  %17 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %5, align 8
  %18 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %17, i32 0, i32 1
  %19 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %18, align 8
  store %struct.ieee80211_mgd_auth_data* %19, %struct.ieee80211_mgd_auth_data** %6, align 8
  store i32 0, i32* %7, align 4
  %20 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %20, i32 0, i32 0
  %22 = call i32 @lockdep_assert_held(i32* %21)
  %23 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %6, align 8
  %24 = icmp ne %struct.ieee80211_mgd_auth_data* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON_ONCE(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %205

32:                                               ; preds = %1
  %33 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %6, align 8
  %34 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %34, align 8
  %37 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %6, align 8
  %38 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @IEEE80211_AUTH_MAX_TRIES, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %32
  %43 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %44 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %6, align 8
  %45 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %44, i32 0, i32 6
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (%struct.ieee80211_sub_if_data*, i8*, i32, ...) @sdata_info(%struct.ieee80211_sub_if_data* %43, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %51 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %6, align 8
  %55 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %54, i32 0, i32 6
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = call i32 @cfg80211_unlink_bss(i32 %53, %struct.TYPE_7__* %56)
  %58 = load i32, i32* @ETIMEDOUT, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %205

60:                                               ; preds = %32
  %61 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %62 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %63 = call i32 @drv_mgd_prepare_tx(%struct.ieee80211_local* %61, %struct.ieee80211_sub_if_data* %62)
  %64 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %6, align 8
  %65 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %64, i32 0, i32 6
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %136

70:                                               ; preds = %60
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %71 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %72 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %6, align 8
  %73 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %72, i32 0, i32 6
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %6, align 8
  %78 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @IEEE80211_AUTH_MAX_TRIES, align 8
  %81 = call i32 (%struct.ieee80211_sub_if_data*, i8*, i32, ...) @sdata_info(%struct.ieee80211_sub_if_data* %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %76, i64 %79, i64 %80)
  %82 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %6, align 8
  %83 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %82, i32 0, i32 1
  store i32 2, i32* %83, align 8
  %84 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %6, align 8
  %85 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %84, i32 0, i32 9
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @WLAN_AUTH_SAE, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %70
  %90 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %6, align 8
  %91 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %8, align 4
  %93 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %6, align 8
  %94 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %6, align 8
  %98 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 8
  br label %99

99:                                               ; preds = %89, %70
  %100 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %101 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @IEEE80211_HW_REPORTS_TX_ACK_STATUS, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %99
  %108 = load i32, i32* @IEEE80211_TX_CTL_REQ_TX_STATUS, align 4
  %109 = load i32, i32* @IEEE80211_TX_INTFL_MLME_CONN_TX, align 4
  %110 = or i32 %108, %109
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %107, %99
  %112 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %6, align 8
  %115 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %114, i32 0, i32 9
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %6, align 8
  %119 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %118, i32 0, i32 8
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %6, align 8
  %122 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %121, i32 0, i32 7
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %6, align 8
  %125 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %124, i32 0, i32 6
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %6, align 8
  %130 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %129, i32 0, i32 6
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @ieee80211_send_auth(%struct.ieee80211_sub_if_data* %112, i32 %113, i32 %116, i32 %117, i32 %120, i32 %123, i32 %128, i32 %133, i32* null, i32 0, i32 0, i32 %134)
  br label %174

136:                                              ; preds = %60
  %137 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %138 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %6, align 8
  %139 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %138, i32 0, i32 6
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %6, align 8
  %144 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @IEEE80211_AUTH_MAX_TRIES, align 8
  %147 = call i32 (%struct.ieee80211_sub_if_data*, i8*, i32, ...) @sdata_info(%struct.ieee80211_sub_if_data* %137, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %142, i64 %145, i64 %146)
  %148 = call i32 (...) @rcu_read_lock()
  %149 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %6, align 8
  %150 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %149, i32 0, i32 6
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = load i32, i32* @WLAN_EID_SSID, align 4
  %153 = call i32* @ieee80211_bss_get_ie(%struct.TYPE_7__* %151, i32 %152)
  store i32* %153, i32** %10, align 8
  %154 = load i32*, i32** %10, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %160, label %156

156:                                              ; preds = %136
  %157 = call i32 (...) @rcu_read_unlock()
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %2, align 4
  br label %205

160:                                              ; preds = %136
  %161 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %162 = load i32*, i32** %10, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 2
  %164 = load i32*, i32** %10, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %6, align 8
  %168 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %167, i32 0, i32 6
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @ieee80211_send_probe_req(%struct.ieee80211_sub_if_data* %161, i32* null, i32* %163, i32 %166, i32* null, i32 0, i32 -1, i32 1, i32 0, i32 %171, i32 0)
  %173 = call i32 (...) @rcu_read_unlock()
  br label %174

174:                                              ; preds = %160, %111
  %175 = load i32, i32* %7, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %190

177:                                              ; preds = %174
  %178 = load i64, i64* @jiffies, align 8
  %179 = load i64, i64* @IEEE80211_AUTH_TIMEOUT, align 8
  %180 = add nsw i64 %178, %179
  %181 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %6, align 8
  %182 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %181, i32 0, i32 5
  store i64 %180, i64* %182, align 8
  %183 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %6, align 8
  %184 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %183, i32 0, i32 4
  store i32 1, i32* %184, align 4
  %185 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %5, align 8
  %186 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %6, align 8
  %187 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %186, i32 0, i32 5
  %188 = load i64, i64* %187, align 8
  %189 = call i32 @run_again(%struct.ieee80211_if_managed* %185, i64 %188)
  br label %204

190:                                              ; preds = %174
  %191 = load i64, i64* @jiffies, align 8
  %192 = load i64, i64* @IEEE80211_AUTH_TIMEOUT_LONG, align 8
  %193 = add nsw i64 %191, %192
  %194 = call i64 @round_jiffies_up(i64 %193)
  %195 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %6, align 8
  %196 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %195, i32 0, i32 5
  store i64 %194, i64* %196, align 8
  %197 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %6, align 8
  %198 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %197, i32 0, i32 4
  store i32 1, i32* %198, align 4
  %199 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %5, align 8
  %200 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %6, align 8
  %201 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %200, i32 0, i32 5
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @run_again(%struct.ieee80211_if_managed* %199, i64 %202)
  br label %204

204:                                              ; preds = %190, %177
  store i32 0, i32* %2, align 4
  br label %205

205:                                              ; preds = %204, %156, %42, %29
  %206 = load i32, i32* %2, align 4
  ret i32 %206
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @sdata_info(%struct.ieee80211_sub_if_data*, i8*, i32, ...) #1

declare dso_local i32 @cfg80211_unlink_bss(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @drv_mgd_prepare_tx(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_send_auth(%struct.ieee80211_sub_if_data*, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32* @ieee80211_bss_get_ie(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @ieee80211_send_probe_req(%struct.ieee80211_sub_if_data*, i32*, i32*, i32, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @run_again(%struct.ieee80211_if_managed*, i64) #1

declare dso_local i64 @round_jiffies_up(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
