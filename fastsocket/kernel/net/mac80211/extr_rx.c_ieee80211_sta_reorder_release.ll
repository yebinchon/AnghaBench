; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rx.c_ieee80211_sta_reorder_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rx.c_ieee80211_sta_reorder_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32 }
%struct.tid_ampdu_rx = type { i32, i32, i32, i64*, i64*, i32, i64, i32 }
%struct.sk_buff_head = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@HT_RX_REORDER_BUF_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"release an RX reorder frame due to timeout on earlier frames\0A\00", align 1
@IEEE80211_SN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.tid_ampdu_rx*, %struct.sk_buff_head*)* @ieee80211_sta_reorder_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_sta_reorder_release(%struct.ieee80211_sub_if_data* %0, %struct.tid_ampdu_rx* %1, %struct.sk_buff_head* %2) #0 {
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.tid_ampdu_rx*, align 8
  %6 = alloca %struct.sk_buff_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.tid_ampdu_rx* %1, %struct.tid_ampdu_rx** %5, align 8
  store %struct.sk_buff_head* %2, %struct.sk_buff_head** %6, align 8
  %10 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %11 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %10, i32 0, i32 7
  %12 = call i32 @lockdep_assert_held(i32* %11)
  %13 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %14 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %17 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @ieee80211_sn_sub(i32 %15, i32 %18)
  %20 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %21 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = srem i32 %19, %22
  store i32 %23, i32* %7, align 4
  %24 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %25 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %24, i32 0, i32 4
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %102, label %32

32:                                               ; preds = %3
  %33 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %34 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %102

37:                                               ; preds = %32
  store i32 1, i32* %9, align 4
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  %40 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %41 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = srem i32 %39, %42
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %94, %37
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %101

48:                                               ; preds = %44
  %49 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %50 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %49, i32 0, i32 4
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %48
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %94

60:                                               ; preds = %48
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %60
  %64 = load i32, i32* @jiffies, align 4
  %65 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %66 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %65, i32 0, i32 3
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @HT_RX_REORDER_BUF_TIMEOUT, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @time_after(i32 %64, i64 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %63
  br label %175

77:                                               ; preds = %63, %60
  %78 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %79 = call i32 @ht_dbg_ratelimited(%struct.ieee80211_sub_if_data* %78, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %80 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %81 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %84 = call i32 @ieee80211_release_reorder_frame(%struct.ieee80211_sub_if_data* %80, %struct.tid_ampdu_rx* %81, i32 %82, %struct.sk_buff_head* %83)
  %85 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %86 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %87, %88
  %90 = load i32, i32* @IEEE80211_SN_MASK, align 4
  %91 = and i32 %89, %90
  %92 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %93 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  store i32 0, i32* %9, align 4
  br label %94

94:                                               ; preds = %77, %57
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  %97 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %98 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = srem i32 %96, %99
  store i32 %100, i32* %8, align 4
  br label %44

101:                                              ; preds = %44
  br label %130

102:                                              ; preds = %32, %3
  br label %103

103:                                              ; preds = %112, %102
  %104 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %105 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %104, i32 0, i32 4
  %106 = load i64*, i64** %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %129

112:                                              ; preds = %103
  %113 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %114 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %117 = call i32 @ieee80211_release_reorder_frame(%struct.ieee80211_sub_if_data* %113, %struct.tid_ampdu_rx* %114, i32 %115, %struct.sk_buff_head* %116)
  %118 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %119 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %122 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @ieee80211_sn_sub(i32 %120, i32 %123)
  %125 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %126 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = srem i32 %124, %127
  store i32 %128, i32* %7, align 4
  br label %103

129:                                              ; preds = %103
  br label %130

130:                                              ; preds = %129, %101
  %131 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %132 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %131, i32 0, i32 6
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %189

135:                                              ; preds = %130
  %136 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %137 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %140 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @ieee80211_sn_sub(i32 %138, i32 %141)
  %143 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %144 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = srem i32 %142, %145
  store i32 %146, i32* %7, align 4
  store i32 %146, i32* %8, align 4
  br label %147

147:                                              ; preds = %167, %135
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* %7, align 4
  %150 = sub nsw i32 %149, 1
  %151 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %152 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = srem i32 %150, %153
  %155 = icmp ne i32 %148, %154
  br i1 %155, label %156, label %174

156:                                              ; preds = %147
  %157 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %158 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %157, i32 0, i32 4
  %159 = load i64*, i64** %158, align 8
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %159, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %156
  br label %174

166:                                              ; preds = %156
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %8, align 4
  %169 = add nsw i32 %168, 1
  %170 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %171 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = srem i32 %169, %172
  store i32 %173, i32* %8, align 4
  br label %147

174:                                              ; preds = %165, %147
  br label %175

175:                                              ; preds = %174, %76
  %176 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %177 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %176, i32 0, i32 2
  %178 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %179 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %178, i32 0, i32 3
  %180 = load i64*, i64** %179, align 8
  %181 = load i32, i32* %8, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i64, i64* %180, i64 %182
  %184 = load i64, i64* %183, align 8
  %185 = add nsw i64 %184, 1
  %186 = load i64, i64* @HT_RX_REORDER_BUF_TIMEOUT, align 8
  %187 = add nsw i64 %185, %186
  %188 = call i32 @mod_timer(i32* %177, i64 %187)
  br label %193

189:                                              ; preds = %130
  %190 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %191 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %190, i32 0, i32 2
  %192 = call i32 @del_timer(i32* %191)
  br label %193

193:                                              ; preds = %189, %175
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @ieee80211_sn_sub(i32, i32) #1

declare dso_local i32 @time_after(i32, i64) #1

declare dso_local i32 @ht_dbg_ratelimited(%struct.ieee80211_sub_if_data*, i8*) #1

declare dso_local i32 @ieee80211_release_reorder_frame(%struct.ieee80211_sub_if_data*, %struct.tid_ampdu_rx*, i32, %struct.sk_buff_head*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @del_timer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
