; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_util.c_ieee80211_set_wmm_default.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_util.c_ieee80211_set_wmm_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_12__, %struct.ieee80211_tx_queue_params*, %struct.ieee80211_local* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.ieee80211_tx_queue_params = type { i32, i32, i32, i32, i32 }
%struct.ieee80211_local = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ieee80211_chanctx_conf = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@IEEE80211_NUM_ACS = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@IEEE80211_SDATA_OPERATING_GMODE = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MONITOR = common dso_local global i64 0, align 8
@NL80211_IFTYPE_P2P_DEVICE = common dso_local global i64 0, align 8
@BSS_CHANGED_QOS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_set_wmm_default(%struct.ieee80211_sub_if_data* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_local*, align 8
  %6 = alloca %struct.ieee80211_tx_queue_params, align 4
  %7 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %13, i32 0, i32 3
  %15 = load %struct.ieee80211_local*, %struct.ieee80211_local** %14, align 8
  store %struct.ieee80211_local* %15, %struct.ieee80211_local** %5, align 8
  %16 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %16, i32 0, i32 1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %185

23:                                               ; preds = %2
  %24 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %25 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %185

31:                                               ; preds = %23
  %32 = call i32 @memset(%struct.ieee80211_tx_queue_params* %6, i32 0, i32 20)
  %33 = call i32 (...) @rcu_read_lock()
  %34 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %35 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.ieee80211_chanctx_conf* @rcu_dereference(i32 %37)
  store %struct.ieee80211_chanctx_conf* %38, %struct.ieee80211_chanctx_conf** %7, align 8
  %39 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %7, align 8
  %40 = icmp ne %struct.ieee80211_chanctx_conf* %39, null
  br i1 %40, label %41, label %58

41:                                               ; preds = %31
  %42 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %7, align 8
  %43 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %41
  %51 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %52 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @IEEE80211_SDATA_OPERATING_GMODE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br label %58

58:                                               ; preds = %50, %41, %31
  %59 = phi i1 [ false, %41 ], [ false, %31 ], [ %57, %50 ]
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %9, align 4
  %61 = call i32 (...) @rcu_read_unlock()
  %62 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %63 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %67 = icmp ne i64 %65, %66
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %155, %58
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %158

73:                                               ; preds = %69
  store i32 1023, i32* %12, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 31, i32* %11, align 4
  br label %78

77:                                               ; preds = %73
  store i32 15, i32* %11, align 4
  br label %78

78:                                               ; preds = %77, %76
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %134

81:                                               ; preds = %78
  %82 = load i32, i32* %8, align 4
  switch i32 %82, label %90 [
    i32 130, label %83
    i32 131, label %91
    i32 129, label %98
    i32 128, label %114
  ]

83:                                               ; preds = %81
  %84 = load i32, i32* %12, align 4
  %85 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %6, i32 0, i32 0
  store i32 %84, i32* %85, align 4
  %86 = load i32, i32* %11, align 4
  %87 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %6, i32 0, i32 1
  store i32 %86, i32* %87, align 4
  %88 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %6, i32 0, i32 2
  store i32 0, i32* %88, align 4
  %89 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %6, i32 0, i32 3
  store i32 7, i32* %89, align 4
  br label %133

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %81, %90
  %92 = load i32, i32* %12, align 4
  %93 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %6, i32 0, i32 0
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* %11, align 4
  %95 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %6, i32 0, i32 1
  store i32 %94, i32* %95, align 4
  %96 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %6, i32 0, i32 2
  store i32 0, i32* %96, align 4
  %97 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %6, i32 0, i32 3
  store i32 3, i32* %97, align 4
  br label %133

98:                                               ; preds = %81
  %99 = load i32, i32* %11, align 4
  %100 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %6, i32 0, i32 0
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 1
  %103 = sdiv i32 %102, 2
  %104 = sub nsw i32 %103, 1
  %105 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %6, i32 0, i32 1
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %98
  %109 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %6, i32 0, i32 2
  store i32 188, i32* %109, align 4
  br label %112

110:                                              ; preds = %98
  %111 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %6, i32 0, i32 2
  store i32 94, i32* %111, align 4
  br label %112

112:                                              ; preds = %110, %108
  %113 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %6, i32 0, i32 3
  store i32 2, i32* %113, align 4
  br label %133

114:                                              ; preds = %81
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  %117 = sdiv i32 %116, 2
  %118 = sub nsw i32 %117, 1
  %119 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %6, i32 0, i32 0
  store i32 %118, i32* %119, align 4
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 1
  %122 = sdiv i32 %121, 4
  %123 = sub nsw i32 %122, 1
  %124 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %6, i32 0, i32 1
  store i32 %123, i32* %124, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %114
  %128 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %6, i32 0, i32 2
  store i32 102, i32* %128, align 4
  br label %131

129:                                              ; preds = %114
  %130 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %6, i32 0, i32 2
  store i32 47, i32* %130, align 4
  br label %131

131:                                              ; preds = %129, %127
  %132 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %6, i32 0, i32 3
  store i32 2, i32* %132, align 4
  br label %133

133:                                              ; preds = %131, %112, %91, %83
  br label %141

134:                                              ; preds = %78
  %135 = load i32, i32* %12, align 4
  %136 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %6, i32 0, i32 0
  store i32 %135, i32* %136, align 4
  %137 = load i32, i32* %11, align 4
  %138 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %6, i32 0, i32 1
  store i32 %137, i32* %138, align 4
  %139 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %6, i32 0, i32 2
  store i32 0, i32* %139, align 4
  %140 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %6, i32 0, i32 3
  store i32 2, i32* %140, align 4
  br label %141

141:                                              ; preds = %134, %133
  %142 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %6, i32 0, i32 4
  store i32 0, i32* %142, align 4
  %143 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %144 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %143, i32 0, i32 2
  %145 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %145, i64 %147
  %149 = bitcast %struct.ieee80211_tx_queue_params* %148 to i8*
  %150 = bitcast %struct.ieee80211_tx_queue_params* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %149, i8* align 4 %150, i64 20, i1 false)
  %151 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %152 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %153 = load i32, i32* %8, align 4
  %154 = call i32 @drv_conf_tx(%struct.ieee80211_local* %151, %struct.ieee80211_sub_if_data* %152, i32 %153, %struct.ieee80211_tx_queue_params* %6)
  br label %155

155:                                              ; preds = %141
  %156 = load i32, i32* %8, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %8, align 4
  br label %69

158:                                              ; preds = %69
  %159 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %160 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @NL80211_IFTYPE_MONITOR, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %185

165:                                              ; preds = %158
  %166 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %167 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @NL80211_IFTYPE_P2P_DEVICE, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %185

172:                                              ; preds = %165
  %173 = load i32, i32* %10, align 4
  %174 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %175 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  store i32 %173, i32* %177, align 8
  %178 = load i32, i32* %4, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %172
  %181 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %182 = load i32, i32* @BSS_CHANGED_QOS, align 4
  %183 = call i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data* %181, i32 %182)
  br label %184

184:                                              ; preds = %180, %172
  br label %185

185:                                              ; preds = %22, %30, %184, %165, %158
  ret void
}

declare dso_local i32 @memset(%struct.ieee80211_tx_queue_params*, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_chanctx_conf* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @drv_conf_tx(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32, %struct.ieee80211_tx_queue_params*) #1

declare dso_local i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
