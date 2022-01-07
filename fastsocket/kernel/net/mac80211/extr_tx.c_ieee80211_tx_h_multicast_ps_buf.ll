; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_tx.c_ieee80211_tx_h_multicast_ps_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_tx.c_ieee80211_tx_h_multicast_ps_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_tx_data = type { %struct.TYPE_14__*, %struct.TYPE_15__*, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_17__, %struct.TYPE_12__, %struct.TYPE_10__* }
%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.ps_data }
%struct.ps_data = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.ps_data }
%struct.ieee80211_tx_info = type { i32, i32 }
%struct.ieee80211_hdr = type { i32 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP_VLAN = common dso_local global i64 0, align 8
@TX_CONTINUE = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_SEND_AFTER_DTIM = common dso_local global i32 0, align 4
@IEEE80211_HW_QUEUE_CONTROL = common dso_local global i32 0, align 4
@IEEE80211_HW_HOST_BROADCAST_PS_BUFFERING = common dso_local global i32 0, align 4
@TOTAL_MAX_TX_BUFFER = common dso_local global i64 0, align 8
@AP_MAX_BC_BUFFER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"BC TX buffer full - dropping the oldest frame\0A\00", align 1
@TX_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_tx_data*)* @ieee80211_tx_h_multicast_ps_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_tx_h_multicast_ps_buf(%struct.ieee80211_tx_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_tx_data*, align 8
  %4 = alloca %struct.ieee80211_tx_info*, align 8
  %5 = alloca %struct.ieee80211_hdr*, align 8
  %6 = alloca %struct.ps_data*, align 8
  store %struct.ieee80211_tx_data* %0, %struct.ieee80211_tx_data** %3, align 8
  %7 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %7, i32 0, i32 0
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %10 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.TYPE_14__* %9)
  store %struct.ieee80211_tx_info* %10, %struct.ieee80211_tx_info** %4, align 8
  %11 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %11, i32 0, i32 0
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %16, %struct.ieee80211_hdr** %5, align 8
  %17 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %17, i32 0, i32 2
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %34, label %25

25:                                               ; preds = %1
  %26 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %27 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %26, i32 0, i32 2
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NL80211_IFTYPE_AP_VLAN, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %25, %1
  %35 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %36 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %35, i32 0, i32 2
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = icmp ne %struct.TYPE_10__* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @TX_CONTINUE, align 4
  store i32 %42, i32* %2, align 4
  br label %161

43:                                               ; preds = %34
  %44 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %45 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %44, i32 0, i32 2
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  store %struct.ps_data* %49, %struct.ps_data** %6, align 8
  br label %67

50:                                               ; preds = %25
  %51 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %52 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %51, i32 0, i32 2
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = call i64 @ieee80211_vif_is_mesh(%struct.TYPE_17__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %59 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %58, i32 0, i32 2
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  store %struct.ps_data* %63, %struct.ps_data** %6, align 8
  br label %66

64:                                               ; preds = %50
  %65 = load i32, i32* @TX_CONTINUE, align 4
  store i32 %65, i32* %2, align 4
  br label %161

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66, %43
  %68 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %69 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @ieee80211_has_order(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @TX_CONTINUE, align 4
  store i32 %74, i32* %2, align 4
  br label %161

75:                                               ; preds = %67
  %76 = load %struct.ps_data*, %struct.ps_data** %6, align 8
  %77 = getelementptr inbounds %struct.ps_data, %struct.ps_data* %76, i32 0, i32 1
  %78 = call i32 @atomic_read(i32* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* @TX_CONTINUE, align 4
  store i32 %81, i32* %2, align 4
  br label %161

82:                                               ; preds = %75
  %83 = load i32, i32* @IEEE80211_TX_CTL_SEND_AFTER_DTIM, align 4
  %84 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %4, align 8
  %85 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %89 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %88, i32 0, i32 1
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @IEEE80211_HW_QUEUE_CONTROL, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %82
  %98 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %99 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %98, i32 0, i32 2
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %4, align 8
  %105 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %97, %82
  %107 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %108 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %107, i32 0, i32 1
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @IEEE80211_HW_HOST_BROADCAST_PS_BUFFERING, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %106
  %117 = load i32, i32* @TX_CONTINUE, align 4
  store i32 %117, i32* %2, align 4
  br label %161

118:                                              ; preds = %106
  %119 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %120 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %119, i32 0, i32 1
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @TOTAL_MAX_TX_BUFFER, align 8
  %125 = icmp sge i64 %123, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %118
  %127 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %128 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %127, i32 0, i32 1
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %128, align 8
  %130 = call i32 @purge_old_ps_buffers(%struct.TYPE_15__* %129)
  br label %131

131:                                              ; preds = %126, %118
  %132 = load %struct.ps_data*, %struct.ps_data** %6, align 8
  %133 = getelementptr inbounds %struct.ps_data, %struct.ps_data* %132, i32 0, i32 0
  %134 = call i64 @skb_queue_len(i32* %133)
  %135 = load i64, i64* @AP_MAX_BC_BUFFER, align 8
  %136 = icmp sge i64 %134, %135
  br i1 %136, label %137, label %146

137:                                              ; preds = %131
  %138 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %139 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %138, i32 0, i32 2
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %139, align 8
  %141 = call i32 @ps_dbg(%struct.TYPE_16__* %140, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %142 = load %struct.ps_data*, %struct.ps_data** %6, align 8
  %143 = getelementptr inbounds %struct.ps_data, %struct.ps_data* %142, i32 0, i32 0
  %144 = call i32 @skb_dequeue(i32* %143)
  %145 = call i32 @dev_kfree_skb(i32 %144)
  br label %153

146:                                              ; preds = %131
  %147 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %148 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %147, i32 0, i32 1
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = add nsw i64 %151, 1
  store i64 %152, i64* %150, align 8
  br label %153

153:                                              ; preds = %146, %137
  %154 = load %struct.ps_data*, %struct.ps_data** %6, align 8
  %155 = getelementptr inbounds %struct.ps_data, %struct.ps_data* %154, i32 0, i32 0
  %156 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %157 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %156, i32 0, i32 0
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %157, align 8
  %159 = call i32 @skb_queue_tail(i32* %155, %struct.TYPE_14__* %158)
  %160 = load i32, i32* @TX_QUEUED, align 4
  store i32 %160, i32* %2, align 4
  br label %161

161:                                              ; preds = %153, %116, %80, %73, %64, %41
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.TYPE_14__*) #1

declare dso_local i64 @ieee80211_vif_is_mesh(%struct.TYPE_17__*) #1

declare dso_local i64 @ieee80211_has_order(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @purge_old_ps_buffers(%struct.TYPE_15__*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @ps_dbg(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @dev_kfree_skb(i32) #1

declare dso_local i32 @skb_dequeue(i32*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
