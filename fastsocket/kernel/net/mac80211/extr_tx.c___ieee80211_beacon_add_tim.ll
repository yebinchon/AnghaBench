; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_tx.c___ieee80211_beacon_add_tim.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_tx.c___ieee80211_beacon_add_tim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ps_data = type { i32, i32, i64*, i32, i32 }
%struct.sk_buff = type { i32 }

@IEEE80211_MAX_AID = common dso_local global i64 0, align 8
@WLAN_EID_TIM = common dso_local global i32 0, align 4
@IEEE80211_MAX_TIM_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.ps_data*, %struct.sk_buff*)* @__ieee80211_beacon_add_tim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ieee80211_beacon_add_tim(%struct.ieee80211_sub_if_data* %0, %struct.ps_data* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.ps_data*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.ps_data* %1, %struct.ps_data** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.ps_data*, %struct.ps_data** %5, align 8
  %15 = getelementptr inbounds %struct.ps_data, %struct.ps_data* %14, i32 0, i32 4
  %16 = call i64 @atomic_read(i32* %15)
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  %19 = load %struct.ps_data*, %struct.ps_data** %5, align 8
  %20 = getelementptr inbounds %struct.ps_data, %struct.ps_data* %19, i32 0, i32 2
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* @IEEE80211_MAX_AID, align 8
  %23 = add nsw i64 %22, 1
  %24 = call i32 @bitmap_empty(i64* %21, i64 %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %18, %3
  %29 = load %struct.ps_data*, %struct.ps_data** %5, align 8
  %30 = getelementptr inbounds %struct.ps_data, %struct.ps_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %35 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, 1
  %40 = load %struct.ps_data*, %struct.ps_data** %5, align 8
  %41 = getelementptr inbounds %struct.ps_data, %struct.ps_data* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %47

42:                                               ; preds = %28
  %43 = load %struct.ps_data*, %struct.ps_data** %5, align 8
  %44 = getelementptr inbounds %struct.ps_data, %struct.ps_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %42, %33
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = call i64 @skb_put(%struct.sk_buff* %48, i32 6)
  %50 = inttoptr i64 %49 to i32*
  store i32* %50, i32** %7, align 8
  store i32* %50, i32** %8, align 8
  %51 = load i32, i32* @WLAN_EID_TIM, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %7, align 8
  store i32 4, i32* %54, align 4
  %56 = load %struct.ps_data*, %struct.ps_data** %5, align 8
  %57 = getelementptr inbounds %struct.ps_data, %struct.ps_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %7, align 8
  store i32 %58, i32* %59, align 4
  %61 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %62 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %7, align 8
  store i32 %65, i32* %66, align 4
  %68 = load %struct.ps_data*, %struct.ps_data** %5, align 8
  %69 = getelementptr inbounds %struct.ps_data, %struct.ps_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %47
  %73 = load %struct.ps_data*, %struct.ps_data** %5, align 8
  %74 = getelementptr inbounds %struct.ps_data, %struct.ps_data* %73, i32 0, i32 3
  %75 = call i32 @skb_queue_empty(i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  store i32 1, i32* %9, align 4
  br label %78

78:                                               ; preds = %77, %72, %47
  %79 = load i32, i32* %9, align 4
  %80 = icmp eq i32 %79, 1
  %81 = zext i1 %80 to i32
  %82 = load %struct.ps_data*, %struct.ps_data** %5, align 8
  %83 = getelementptr inbounds %struct.ps_data, %struct.ps_data* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %159

86:                                               ; preds = %78
  store i32 0, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %87

87:                                               ; preds = %104, %86
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @IEEE80211_MAX_TIM_LEN, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %107

91:                                               ; preds = %87
  %92 = load %struct.ps_data*, %struct.ps_data** %5, align 8
  %93 = getelementptr inbounds %struct.ps_data, %struct.ps_data* %92, i32 0, i32 2
  %94 = load i64*, i64** %93, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %91
  %101 = load i32, i32* %10, align 4
  %102 = and i32 %101, 254
  store i32 %102, i32* %12, align 4
  br label %107

103:                                              ; preds = %91
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %87

107:                                              ; preds = %100, %87
  %108 = load i32, i32* %12, align 4
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* @IEEE80211_MAX_TIM_LEN, align 4
  %110 = sub nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %111

111:                                              ; preds = %127, %107
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %12, align 4
  %114 = icmp sge i32 %112, %113
  br i1 %114, label %115, label %130

115:                                              ; preds = %111
  %116 = load %struct.ps_data*, %struct.ps_data** %5, align 8
  %117 = getelementptr inbounds %struct.ps_data, %struct.ps_data* %116, i32 0, i32 2
  %118 = load i64*, i64** %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %115
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %13, align 4
  br label %130

126:                                              ; preds = %115
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %10, align 4
  br label %111

130:                                              ; preds = %124, %111
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %9, align 4
  %133 = or i32 %131, %132
  %134 = load i32*, i32** %7, align 8
  %135 = getelementptr inbounds i32, i32* %134, i32 1
  store i32* %135, i32** %7, align 8
  store i32 %133, i32* %134, align 4
  %136 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* %12, align 4
  %139 = sub nsw i32 %137, %138
  %140 = call i64 @skb_put(%struct.sk_buff* %136, i32 %139)
  %141 = load i32*, i32** %7, align 8
  %142 = load %struct.ps_data*, %struct.ps_data** %5, align 8
  %143 = getelementptr inbounds %struct.ps_data, %struct.ps_data* %142, i32 0, i32 2
  %144 = load i64*, i64** %143, align 8
  %145 = load i32, i32* %12, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %144, i64 %146
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* %12, align 4
  %150 = sub nsw i32 %148, %149
  %151 = add nsw i32 %150, 1
  %152 = call i32 @memcpy(i32* %141, i64* %147, i32 %151)
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* %12, align 4
  %155 = sub nsw i32 %153, %154
  %156 = add nsw i32 %155, 4
  %157 = load i32*, i32** %8, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 1
  store i32 %156, i32* %158, align 4
  br label %165

159:                                              ; preds = %78
  %160 = load i32, i32* %9, align 4
  %161 = load i32*, i32** %7, align 8
  %162 = getelementptr inbounds i32, i32* %161, i32 1
  store i32* %162, i32** %7, align 8
  store i32 %160, i32* %161, align 4
  %163 = load i32*, i32** %7, align 8
  %164 = getelementptr inbounds i32, i32* %163, i32 1
  store i32* %164, i32** %7, align 8
  store i32 0, i32* %163, align 4
  br label %165

165:                                              ; preds = %159, %130
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @bitmap_empty(i64*, i64) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
