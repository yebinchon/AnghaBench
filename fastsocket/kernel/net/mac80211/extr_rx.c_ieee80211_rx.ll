; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rx.c_ieee80211_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rx.c_ieee80211_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_local = type { i32, i32, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_rate* }
%struct.ieee80211_rate = type { i32 }
%struct.ieee80211_rx_status = type { i64, i32, i32, i32, i64 }
%struct.ieee80211_hdr = type { i32 }

@IEEE80211_NUM_BANDS = common dso_local global i64 0, align 8
@RX_FLAG_FAILED_PLCP_CRC = common dso_local global i32 0, align 4
@RX_FLAG_HT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [95 x i8] c"Rate marked as an HT rate but passed status->rate_idx is not an MCS index [0-76]: %d (0x%02x)\0A\00", align 1
@RX_FLAG_VHT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"Rate marked as a VHT rate but data is invalid: MCS: %d, NSS: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_rx(%struct.ieee80211_hw* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_local*, align 8
  %6 = alloca %struct.ieee80211_rate*, align 8
  %7 = alloca %struct.ieee80211_supported_band*, align 8
  %8 = alloca %struct.ieee80211_rx_status*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = call %struct.ieee80211_local* @hw_to_local(%struct.ieee80211_hw* %9)
  store %struct.ieee80211_local* %10, %struct.ieee80211_local** %5, align 8
  store %struct.ieee80211_rate* null, %struct.ieee80211_rate** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %11)
  store %struct.ieee80211_rx_status* %12, %struct.ieee80211_rx_status** %8, align 8
  %13 = call i64 (...) @softirq_count()
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON_ONCE(i32 %15)
  %17 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %18 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IEEE80211_NUM_BANDS, align 8
  %21 = icmp uge i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @WARN_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %198

26:                                               ; preds = %2
  %27 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %28 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %31, align 8
  %33 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %34 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %32, i64 %35
  %37 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %36, align 8
  store %struct.ieee80211_supported_band* %37, %struct.ieee80211_supported_band** %7, align 8
  %38 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %39 = icmp ne %struct.ieee80211_supported_band* %38, null
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @WARN_ON(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %26
  br label %198

45:                                               ; preds = %26
  %46 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %47 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %52 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br label %55

55:                                               ; preds = %50, %45
  %56 = phi i1 [ true, %45 ], [ %54, %50 ]
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %198

61:                                               ; preds = %55
  %62 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %63 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %198

68:                                               ; preds = %61
  %69 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %70 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i64 @WARN_ON(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %198

78:                                               ; preds = %68
  %79 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %80 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @RX_FLAG_FAILED_PLCP_CRC, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = call i64 @likely(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %170

89:                                               ; preds = %78
  %90 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %91 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @RX_FLAG_HT, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %112

96:                                               ; preds = %89
  %97 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %98 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = icmp sgt i32 %99, 76
  %101 = zext i1 %100 to i32
  %102 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %103 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %106 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @WARN(i32 %101, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i32 %104, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %96
  br label %198

111:                                              ; preds = %96
  br label %169

112:                                              ; preds = %89
  %113 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %114 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @RX_FLAG_VHT, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %147

119:                                              ; preds = %112
  %120 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %121 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = icmp sgt i32 %122, 9
  br i1 %123, label %134, label %124

124:                                              ; preds = %119
  %125 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %126 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %131 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = icmp sgt i32 %132, 8
  br label %134

134:                                              ; preds = %129, %124, %119
  %135 = phi i1 [ true, %124 ], [ true, %119 ], [ %133, %129 ]
  %136 = zext i1 %135 to i32
  %137 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %138 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %141 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = call i64 @WARN_ONCE(i32 %136, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %139, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %134
  br label %198

146:                                              ; preds = %134
  br label %168

147:                                              ; preds = %112
  %148 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %149 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %152 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp sge i32 %150, %153
  %155 = zext i1 %154 to i32
  %156 = call i64 @WARN_ON(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %147
  br label %198

159:                                              ; preds = %147
  %160 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %161 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %160, i32 0, i32 1
  %162 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %161, align 8
  %163 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %164 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %162, i64 %166
  store %struct.ieee80211_rate* %167, %struct.ieee80211_rate** %6, align 8
  br label %168

168:                                              ; preds = %159, %146
  br label %169

169:                                              ; preds = %168, %111
  br label %170

170:                                              ; preds = %169, %78
  %171 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %172 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %171, i32 0, i32 4
  store i64 0, i64* %172, align 8
  %173 = call i32 (...) @rcu_read_lock()
  %174 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %175 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %176 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %6, align 8
  %177 = call %struct.sk_buff* @ieee80211_rx_monitor(%struct.ieee80211_local* %174, %struct.sk_buff* %175, %struct.ieee80211_rate* %176)
  store %struct.sk_buff* %177, %struct.sk_buff** %4, align 8
  %178 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %179 = icmp ne %struct.sk_buff* %178, null
  br i1 %179, label %182, label %180

180:                                              ; preds = %170
  %181 = call i32 (...) @rcu_read_unlock()
  br label %201

182:                                              ; preds = %170
  %183 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %184 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %185 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = inttoptr i64 %186 to %struct.ieee80211_hdr*
  %188 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %191 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @ieee80211_tpt_led_trig_rx(%struct.ieee80211_local* %183, i32 %189, i32 %192)
  %194 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %195 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %196 = call i32 @__ieee80211_rx_handle_packet(%struct.ieee80211_hw* %194, %struct.sk_buff* %195)
  %197 = call i32 (...) @rcu_read_unlock()
  br label %201

198:                                              ; preds = %158, %145, %110, %77, %67, %60, %44, %25
  %199 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %200 = call i32 @kfree_skb(%struct.sk_buff* %199)
  br label %201

201:                                              ; preds = %198, %182, %180
  ret void
}

declare dso_local %struct.ieee80211_local* @hw_to_local(%struct.ieee80211_hw*) #1

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @softirq_count(...) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @WARN(i32, i8*, i32, i32) #1

declare dso_local i64 @WARN_ONCE(i32, i8*, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sk_buff* @ieee80211_rx_monitor(%struct.ieee80211_local*, %struct.sk_buff*, %struct.ieee80211_rate*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @ieee80211_tpt_led_trig_rx(%struct.ieee80211_local*, i32, i32) #1

declare dso_local i32 @__ieee80211_rx_handle_packet(%struct.ieee80211_hw*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
