; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_pid_algo.c_rate_control_pid_sample.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_pid_algo.c_rate_control_pid_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_pid_info = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.rc_pid_rateinfo* }
%struct.rc_pid_rateinfo = type { i32, i64 }
%struct.ieee80211_supported_band = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.rc_pid_sta_info = type { i32, i32, i32, i32, i32, i64, i32, i32 }

@jiffies = common dso_local global i32 0, align 4
@RC_PID_ARITH_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rc_pid_info*, %struct.ieee80211_supported_band*, %struct.ieee80211_sta*, %struct.rc_pid_sta_info*)* @rate_control_pid_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rate_control_pid_sample(%struct.rc_pid_info* %0, %struct.ieee80211_supported_band* %1, %struct.ieee80211_sta* %2, %struct.rc_pid_sta_info* %3) #0 {
  %5 = alloca %struct.rc_pid_info*, align 8
  %6 = alloca %struct.ieee80211_supported_band*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.rc_pid_sta_info*, align 8
  %9 = alloca %struct.rc_pid_rateinfo*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.rc_pid_info* %0, %struct.rc_pid_info** %5, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  store %struct.rc_pid_sta_info* %3, %struct.rc_pid_sta_info** %8, align 8
  %20 = load %struct.rc_pid_info*, %struct.rc_pid_info** %5, align 8
  %21 = getelementptr inbounds %struct.rc_pid_info, %struct.rc_pid_info* %20, i32 0, i32 9
  %22 = load %struct.rc_pid_rateinfo*, %struct.rc_pid_rateinfo** %21, align 8
  store %struct.rc_pid_rateinfo* %22, %struct.rc_pid_rateinfo** %9, align 8
  %23 = load %struct.rc_pid_info*, %struct.rc_pid_info** %5, align 8
  %24 = getelementptr inbounds %struct.rc_pid_info, %struct.rc_pid_info* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @msecs_to_jiffies(i32 %25)
  store i64 %26, i64* %19, align 8
  %27 = load i32, i32* @jiffies, align 4
  %28 = load %struct.rc_pid_sta_info*, %struct.rc_pid_sta_info** %8, align 8
  %29 = getelementptr inbounds %struct.rc_pid_sta_info, %struct.rc_pid_sta_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %27, %30
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %19, align 8
  %34 = mul i64 2, %33
  %35 = icmp ugt i64 %32, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %4
  %37 = load %struct.rc_pid_info*, %struct.rc_pid_info** %5, align 8
  %38 = getelementptr inbounds %struct.rc_pid_info, %struct.rc_pid_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.rc_pid_sta_info*, %struct.rc_pid_sta_info** %8, align 8
  %41 = getelementptr inbounds %struct.rc_pid_sta_info, %struct.rc_pid_sta_info* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %36, %4
  %43 = load i32, i32* @jiffies, align 4
  %44 = load %struct.rc_pid_sta_info*, %struct.rc_pid_sta_info** %8, align 8
  %45 = getelementptr inbounds %struct.rc_pid_sta_info, %struct.rc_pid_sta_info* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.rc_pid_sta_info*, %struct.rc_pid_sta_info** %8, align 8
  %47 = getelementptr inbounds %struct.rc_pid_sta_info, %struct.rc_pid_sta_info* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %42
  %54 = load %struct.rc_pid_sta_info*, %struct.rc_pid_sta_info** %8, align 8
  %55 = getelementptr inbounds %struct.rc_pid_sta_info, %struct.rc_pid_sta_info* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %10, align 4
  br label %66

57:                                               ; preds = %42
  %58 = load %struct.rc_pid_sta_info*, %struct.rc_pid_sta_info** %8, align 8
  %59 = getelementptr inbounds %struct.rc_pid_sta_info, %struct.rc_pid_sta_info* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = mul nsw i32 %60, 100
  %62 = load %struct.rc_pid_sta_info*, %struct.rc_pid_sta_info** %8, align 8
  %63 = getelementptr inbounds %struct.rc_pid_sta_info, %struct.rc_pid_sta_info* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = sdiv i32 %61, %64
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %57, %53
  %67 = load %struct.rc_pid_sta_info*, %struct.rc_pid_sta_info** %8, align 8
  %68 = getelementptr inbounds %struct.rc_pid_sta_info, %struct.rc_pid_sta_info* %67, i32 0, i32 2
  store i32 0, i32* %68, align 8
  %69 = load %struct.rc_pid_sta_info*, %struct.rc_pid_sta_info** %8, align 8
  %70 = getelementptr inbounds %struct.rc_pid_sta_info, %struct.rc_pid_sta_info* %69, i32 0, i32 4
  store i32 0, i32* %70, align 8
  %71 = load %struct.rc_pid_info*, %struct.rc_pid_info** %5, align 8
  %72 = getelementptr inbounds %struct.rc_pid_info, %struct.rc_pid_info* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.rc_pid_sta_info*, %struct.rc_pid_sta_info** %8, align 8
  %75 = getelementptr inbounds %struct.rc_pid_sta_info, %struct.rc_pid_sta_info* %74, i32 0, i32 5
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %73, %76
  br i1 %77, label %78, label %120

78:                                               ; preds = %66
  %79 = load %struct.rc_pid_rateinfo*, %struct.rc_pid_rateinfo** %9, align 8
  %80 = load %struct.rc_pid_info*, %struct.rc_pid_info** %5, align 8
  %81 = getelementptr inbounds %struct.rc_pid_info, %struct.rc_pid_info* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %79, i64 %82
  %84 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %16, align 4
  %86 = load %struct.rc_pid_rateinfo*, %struct.rc_pid_rateinfo** %9, align 8
  %87 = load %struct.rc_pid_sta_info*, %struct.rc_pid_sta_info** %8, align 8
  %88 = getelementptr inbounds %struct.rc_pid_sta_info, %struct.rc_pid_sta_info* %87, i32 0, i32 5
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %86, i64 %89
  %91 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %17, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.rc_pid_sta_info*, %struct.rc_pid_sta_info** %8, align 8
  %95 = getelementptr inbounds %struct.rc_pid_sta_info, %struct.rc_pid_sta_info* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = sub nsw i32 %93, %96
  store i32 %97, i32* %18, align 4
  %98 = load i32, i32* %18, align 4
  %99 = load i32, i32* @RC_PID_ARITH_SHIFT, align 4
  %100 = call i32 @RC_PID_DO_ARITH_RIGHT_SHIFT(i32 %98, i32 %99)
  store i32 %100, i32* %18, align 4
  %101 = load %struct.rc_pid_rateinfo*, %struct.rc_pid_rateinfo** %9, align 8
  %102 = load i32, i32* %16, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %101, i64 %103
  %105 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* %18, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %106, %108
  %110 = load %struct.rc_pid_rateinfo*, %struct.rc_pid_rateinfo** %9, align 8
  %111 = load i32, i32* %17, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %110, i64 %112
  %114 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %113, i32 0, i32 1
  store i64 %109, i64* %114, align 8
  %115 = load %struct.rc_pid_sta_info*, %struct.rc_pid_sta_info** %8, align 8
  %116 = getelementptr inbounds %struct.rc_pid_sta_info, %struct.rc_pid_sta_info* %115, i32 0, i32 5
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.rc_pid_info*, %struct.rc_pid_info** %5, align 8
  %119 = getelementptr inbounds %struct.rc_pid_info, %struct.rc_pid_info* %118, i32 0, i32 1
  store i64 %117, i64* %119, align 8
  br label %120

120:                                              ; preds = %78, %66
  %121 = load %struct.rc_pid_info*, %struct.rc_pid_info** %5, align 8
  %122 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %123 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @rate_control_pid_normalize(%struct.rc_pid_info* %121, i32 %124)
  %126 = load %struct.rc_pid_info*, %struct.rc_pid_info** %5, align 8
  %127 = getelementptr inbounds %struct.rc_pid_info, %struct.rc_pid_info* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sub nsw i32 %128, %129
  %131 = load i32, i32* @RC_PID_ARITH_SHIFT, align 4
  %132 = shl i32 %130, %131
  store i32 %132, i32* %12, align 4
  %133 = load %struct.rc_pid_sta_info*, %struct.rc_pid_sta_info** %8, align 8
  %134 = getelementptr inbounds %struct.rc_pid_sta_info, %struct.rc_pid_sta_info* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.rc_pid_info*, %struct.rc_pid_info** %5, align 8
  %137 = getelementptr inbounds %struct.rc_pid_info, %struct.rc_pid_info* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = ashr i32 %135, %138
  store i32 %139, i32* %11, align 4
  %140 = load %struct.rc_pid_sta_info*, %struct.rc_pid_sta_info** %8, align 8
  %141 = getelementptr inbounds %struct.rc_pid_sta_info, %struct.rc_pid_sta_info* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %11, align 4
  %144 = sub nsw i32 %142, %143
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %144, %145
  %147 = load %struct.rc_pid_sta_info*, %struct.rc_pid_sta_info** %8, align 8
  %148 = getelementptr inbounds %struct.rc_pid_sta_info, %struct.rc_pid_sta_info* %147, i32 0, i32 6
  store i32 %146, i32* %148, align 8
  %149 = load %struct.rc_pid_sta_info*, %struct.rc_pid_sta_info** %8, align 8
  %150 = getelementptr inbounds %struct.rc_pid_sta_info, %struct.rc_pid_sta_info* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.rc_pid_info*, %struct.rc_pid_info** %5, align 8
  %153 = getelementptr inbounds %struct.rc_pid_info, %struct.rc_pid_info* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = ashr i32 %151, %154
  store i32 %155, i32* %13, align 4
  %156 = load i32, i32* %10, align 4
  %157 = load %struct.rc_pid_sta_info*, %struct.rc_pid_sta_info** %8, align 8
  %158 = getelementptr inbounds %struct.rc_pid_sta_info, %struct.rc_pid_sta_info* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = sub nsw i32 %156, %159
  %161 = load %struct.rc_pid_info*, %struct.rc_pid_info** %5, align 8
  %162 = getelementptr inbounds %struct.rc_pid_info, %struct.rc_pid_info* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.rc_pid_sta_info*, %struct.rc_pid_sta_info** %8, align 8
  %165 = getelementptr inbounds %struct.rc_pid_sta_info, %struct.rc_pid_sta_info* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = mul nsw i32 %163, %166
  %168 = add nsw i32 1, %167
  %169 = mul nsw i32 %160, %168
  store i32 %169, i32* %14, align 4
  %170 = load i32, i32* %10, align 4
  %171 = load %struct.rc_pid_sta_info*, %struct.rc_pid_sta_info** %8, align 8
  %172 = getelementptr inbounds %struct.rc_pid_sta_info, %struct.rc_pid_sta_info* %171, i32 0, i32 3
  store i32 %170, i32* %172, align 4
  %173 = load %struct.rc_pid_sta_info*, %struct.rc_pid_sta_info** %8, align 8
  %174 = getelementptr inbounds %struct.rc_pid_sta_info, %struct.rc_pid_sta_info* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %120
  %178 = load %struct.rc_pid_sta_info*, %struct.rc_pid_sta_info** %8, align 8
  %179 = getelementptr inbounds %struct.rc_pid_sta_info, %struct.rc_pid_sta_info* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %180, -1
  store i32 %181, i32* %179, align 4
  br label %182

182:                                              ; preds = %177, %120
  %183 = load i32, i32* %12, align 4
  %184 = load %struct.rc_pid_info*, %struct.rc_pid_info** %5, align 8
  %185 = getelementptr inbounds %struct.rc_pid_info, %struct.rc_pid_info* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 4
  %187 = mul nsw i32 %183, %186
  %188 = load i32, i32* %13, align 4
  %189 = load %struct.rc_pid_info*, %struct.rc_pid_info** %5, align 8
  %190 = getelementptr inbounds %struct.rc_pid_info, %struct.rc_pid_info* %189, i32 0, i32 6
  %191 = load i32, i32* %190, align 8
  %192 = mul nsw i32 %188, %191
  %193 = add nsw i32 %187, %192
  %194 = load i32, i32* %14, align 4
  %195 = load %struct.rc_pid_info*, %struct.rc_pid_info** %5, align 8
  %196 = getelementptr inbounds %struct.rc_pid_info, %struct.rc_pid_info* %195, i32 0, i32 7
  %197 = load i32, i32* %196, align 4
  %198 = mul nsw i32 %194, %197
  %199 = add nsw i32 %193, %198
  store i32 %199, i32* %15, align 4
  %200 = load i32, i32* %15, align 4
  %201 = load i32, i32* @RC_PID_ARITH_SHIFT, align 4
  %202 = mul nsw i32 2, %201
  %203 = call i32 @RC_PID_DO_ARITH_RIGHT_SHIFT(i32 %200, i32 %202)
  store i32 %203, i32* %15, align 4
  %204 = load i32, i32* %15, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %213

206:                                              ; preds = %182
  %207 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %208 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %209 = load %struct.rc_pid_sta_info*, %struct.rc_pid_sta_info** %8, align 8
  %210 = load i32, i32* %15, align 4
  %211 = load %struct.rc_pid_rateinfo*, %struct.rc_pid_rateinfo** %9, align 8
  %212 = call i32 @rate_control_pid_adjust_rate(%struct.ieee80211_supported_band* %207, %struct.ieee80211_sta* %208, %struct.rc_pid_sta_info* %209, i32 %210, %struct.rc_pid_rateinfo* %211)
  br label %213

213:                                              ; preds = %206, %182
  ret void
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @RC_PID_DO_ARITH_RIGHT_SHIFT(i32, i32) #1

declare dso_local i32 @rate_control_pid_normalize(%struct.rc_pid_info*, i32) #1

declare dso_local i32 @rate_control_pid_adjust_rate(%struct.ieee80211_supported_band*, %struct.ieee80211_sta*, %struct.rc_pid_sta_info*, i32, %struct.rc_pid_rateinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
