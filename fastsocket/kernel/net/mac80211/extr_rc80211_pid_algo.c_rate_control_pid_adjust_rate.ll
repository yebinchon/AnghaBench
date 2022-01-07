; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_pid_algo.c_rate_control_pid_adjust_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_pid_algo.c_rate_control_pid_adjust_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_supported_band = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.rc_pid_sta_info = type { i32, i32 }
%struct.rc_pid_rateinfo = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_supported_band*, %struct.ieee80211_sta*, %struct.rc_pid_sta_info*, i32, %struct.rc_pid_rateinfo*)* @rate_control_pid_adjust_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rate_control_pid_adjust_rate(%struct.ieee80211_supported_band* %0, %struct.ieee80211_sta* %1, %struct.rc_pid_sta_info* %2, i32 %3, %struct.rc_pid_rateinfo* %4) #0 {
  %6 = alloca %struct.ieee80211_supported_band*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.rc_pid_sta_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rc_pid_rateinfo*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ieee80211_supported_band* %0, %struct.ieee80211_supported_band** %6, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %7, align 8
  store %struct.rc_pid_sta_info* %2, %struct.rc_pid_sta_info** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.rc_pid_rateinfo* %4, %struct.rc_pid_rateinfo** %10, align 8
  %18 = load %struct.rc_pid_sta_info*, %struct.rc_pid_sta_info** %8, align 8
  %19 = getelementptr inbounds %struct.rc_pid_sta_info, %struct.rc_pid_sta_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %17, align 4
  %21 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %16, align 4
  %24 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %25 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %15, align 4
  %27 = load %struct.rc_pid_rateinfo*, %struct.rc_pid_rateinfo** %10, align 8
  %28 = load i32, i32* %17, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %27, i64 %29
  %31 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %5
  %39 = load %struct.rc_pid_rateinfo*, %struct.rc_pid_rateinfo** %10, align 8
  %40 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %39, i64 0
  %41 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %12, align 4
  br label %56

43:                                               ; preds = %5
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load %struct.rc_pid_rateinfo*, %struct.rc_pid_rateinfo** %10, align 8
  %49 = load i32, i32* %15, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %48, i64 %51
  %53 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %47, %43
  br label %56

56:                                               ; preds = %55, %38
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %98

60:                                               ; preds = %56
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %13, align 4
  br label %62

62:                                               ; preds = %94, %60
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %97

66:                                               ; preds = %62
  %67 = load %struct.rc_pid_rateinfo*, %struct.rc_pid_rateinfo** %10, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %67, i64 %69
  %71 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.rc_pid_rateinfo*, %struct.rc_pid_rateinfo** %10, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %73, i64 %75
  %77 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp sle i64 %72, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %66
  %81 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %82 = load i32, i32* %16, align 4
  %83 = load %struct.rc_pid_rateinfo*, %struct.rc_pid_rateinfo** %10, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %83, i64 %85
  %87 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @rate_supported(%struct.ieee80211_sta* %81, i32 %82, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %80
  %92 = load i32, i32* %13, align 4
  store i32 %92, i32* %14, align 4
  br label %93

93:                                               ; preds = %91, %80, %66
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %13, align 4
  br label %62

97:                                               ; preds = %62
  br label %137

98:                                               ; preds = %56
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %13, align 4
  br label %101

101:                                              ; preds = %133, %98
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %15, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %136

105:                                              ; preds = %101
  %106 = load %struct.rc_pid_rateinfo*, %struct.rc_pid_rateinfo** %10, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %106, i64 %108
  %110 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.rc_pid_rateinfo*, %struct.rc_pid_rateinfo** %10, align 8
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %112, i64 %114
  %116 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp sle i64 %111, %117
  br i1 %118, label %119, label %132

119:                                              ; preds = %105
  %120 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %121 = load i32, i32* %16, align 4
  %122 = load %struct.rc_pid_rateinfo*, %struct.rc_pid_rateinfo** %10, align 8
  %123 = load i32, i32* %13, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %122, i64 %124
  %126 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i64 @rate_supported(%struct.ieee80211_sta* %120, i32 %121, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %119
  %131 = load i32, i32* %13, align 4
  store i32 %131, i32* %14, align 4
  br label %132

132:                                              ; preds = %130, %119, %105
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %13, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %13, align 4
  br label %101

136:                                              ; preds = %101
  br label %137

137:                                              ; preds = %136, %97
  br label %138

138:                                              ; preds = %175, %137
  %139 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %140 = load i32, i32* %16, align 4
  %141 = load %struct.rc_pid_rateinfo*, %struct.rc_pid_rateinfo** %10, align 8
  %142 = load i32, i32* %14, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %141, i64 %143
  %145 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = call i64 @rate_supported(%struct.ieee80211_sta* %139, i32 %140, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %138
  %150 = load %struct.rc_pid_rateinfo*, %struct.rc_pid_rateinfo** %10, align 8
  %151 = load i32, i32* %14, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %150, i64 %152
  %154 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.rc_pid_sta_info*, %struct.rc_pid_sta_info** %8, align 8
  %157 = getelementptr inbounds %struct.rc_pid_sta_info, %struct.rc_pid_sta_info* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 4
  br label %177

158:                                              ; preds = %138
  %159 = load i32, i32* %9, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load i32, i32* %14, align 4
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* %14, align 4
  br label %167

164:                                              ; preds = %158
  %165 = load i32, i32* %14, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %14, align 4
  br label %167

167:                                              ; preds = %164, %161
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %14, align 4
  %170 = load i32, i32* %15, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %168
  %173 = load i32, i32* %14, align 4
  %174 = icmp sge i32 %173, 0
  br label %175

175:                                              ; preds = %172, %168
  %176 = phi i1 [ false, %168 ], [ %174, %172 ]
  br i1 %176, label %138, label %177

177:                                              ; preds = %175, %149
  ret void
}

declare dso_local i64 @rate_supported(%struct.ieee80211_sta*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
