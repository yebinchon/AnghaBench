; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_pid_algo.c_rate_control_pid_rate_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_pid_algo.c_rate_control_pid_rate_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_supported_band = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ieee80211_sta = type { i32 }
%struct.rc_pid_sta_info = type { i32 }
%struct.rc_pid_info = type { i32, %struct.rc_pid_rateinfo* }
%struct.rc_pid_rateinfo = type { i32, i32, i32 }

@RC_PID_FAST_START = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_supported_band*, %struct.ieee80211_sta*, i8*)* @rate_control_pid_rate_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rate_control_pid_rate_init(i8* %0, %struct.ieee80211_supported_band* %1, %struct.ieee80211_sta* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ieee80211_supported_band*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.rc_pid_sta_info*, align 8
  %10 = alloca %struct.rc_pid_info*, align 8
  %11 = alloca %struct.rc_pid_rateinfo*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  store i8* %3, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.rc_pid_sta_info*
  store %struct.rc_pid_sta_info* %17, %struct.rc_pid_sta_info** %9, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.rc_pid_info*
  store %struct.rc_pid_info* %19, %struct.rc_pid_info** %10, align 8
  %20 = load %struct.rc_pid_info*, %struct.rc_pid_info** %10, align 8
  %21 = getelementptr inbounds %struct.rc_pid_info, %struct.rc_pid_info* %20, i32 0, i32 1
  %22 = load %struct.rc_pid_rateinfo*, %struct.rc_pid_rateinfo** %21, align 8
  store %struct.rc_pid_rateinfo* %22, %struct.rc_pid_rateinfo** %11, align 8
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %62, %4
  %24 = load i32, i32* %12, align 4
  %25 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %26 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %65

29:                                               ; preds = %23
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.rc_pid_rateinfo*, %struct.rc_pid_rateinfo** %11, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %31, i64 %33
  %35 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %34, i32 0, i32 0
  store i32 %30, i32* %35, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.rc_pid_rateinfo*, %struct.rc_pid_rateinfo** %11, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %37, i64 %39
  %41 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %40, i32 0, i32 1
  store i32 %36, i32* %41, align 4
  %42 = load i64, i64* @RC_PID_FAST_START, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %29
  %45 = load %struct.rc_pid_rateinfo*, %struct.rc_pid_rateinfo** %11, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %45, i64 %47
  %49 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %48, i32 0, i32 2
  store i32 0, i32* %49, align 4
  br label %61

50:                                               ; preds = %29
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.rc_pid_info*, %struct.rc_pid_info** %10, align 8
  %53 = getelementptr inbounds %struct.rc_pid_info, %struct.rc_pid_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = mul nsw i32 %51, %54
  %56 = load %struct.rc_pid_rateinfo*, %struct.rc_pid_rateinfo** %11, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %56, i64 %58
  %60 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %59, i32 0, i32 2
  store i32 %55, i32* %60, align 4
  br label %61

61:                                               ; preds = %50, %44
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %12, align 4
  br label %23

65:                                               ; preds = %23
  store i32 1, i32* %12, align 4
  br label %66

66:                                               ; preds = %172, %65
  %67 = load i32, i32* %12, align 4
  %68 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %69 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %175

72:                                               ; preds = %66
  store i32 0, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %73

73:                                               ; preds = %164, %72
  %74 = load i32, i32* %13, align 4
  %75 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %76 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sub nsw i32 %77, %78
  %80 = icmp slt i32 %74, %79
  br i1 %80, label %81, label %167

81:                                               ; preds = %73
  %82 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %83 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load %struct.rc_pid_rateinfo*, %struct.rc_pid_rateinfo** %11, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %85, i64 %87
  %89 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %96 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load %struct.rc_pid_rateinfo*, %struct.rc_pid_rateinfo** %11, align 8
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %98, i64 %101
  %103 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp sgt i64 %94, %108
  %110 = zext i1 %109 to i32
  %111 = call i64 @unlikely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %163

113:                                              ; preds = %81
  %114 = load %struct.rc_pid_rateinfo*, %struct.rc_pid_rateinfo** %11, align 8
  %115 = load i32, i32* %13, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %114, i64 %116
  %118 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %14, align 4
  %120 = load %struct.rc_pid_rateinfo*, %struct.rc_pid_rateinfo** %11, align 8
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %120, i64 %123
  %125 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.rc_pid_rateinfo*, %struct.rc_pid_rateinfo** %11, align 8
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %127, i64 %129
  %131 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %130, i32 0, i32 0
  store i32 %126, i32* %131, align 4
  %132 = load i32, i32* %14, align 4
  %133 = load %struct.rc_pid_rateinfo*, %struct.rc_pid_rateinfo** %11, align 8
  %134 = load i32, i32* %13, align 4
  %135 = add nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %133, i64 %136
  %138 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %137, i32 0, i32 0
  store i32 %132, i32* %138, align 4
  %139 = load i32, i32* %13, align 4
  %140 = load %struct.rc_pid_rateinfo*, %struct.rc_pid_rateinfo** %11, align 8
  %141 = load %struct.rc_pid_rateinfo*, %struct.rc_pid_rateinfo** %11, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %141, i64 %143
  %145 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %140, i64 %147
  %149 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %148, i32 0, i32 1
  store i32 %139, i32* %149, align 4
  %150 = load i32, i32* %13, align 4
  %151 = add nsw i32 %150, 1
  %152 = load %struct.rc_pid_rateinfo*, %struct.rc_pid_rateinfo** %11, align 8
  %153 = load %struct.rc_pid_rateinfo*, %struct.rc_pid_rateinfo** %11, align 8
  %154 = load i32, i32* %13, align 4
  %155 = add nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %153, i64 %156
  %158 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %152, i64 %160
  %162 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %161, i32 0, i32 1
  store i32 %151, i32* %162, align 4
  store i32 1, i32* %15, align 4
  br label %163

163:                                              ; preds = %113, %81
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %13, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %13, align 4
  br label %73

167:                                              ; preds = %73
  %168 = load i32, i32* %15, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %167
  br label %175

171:                                              ; preds = %167
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %12, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %12, align 4
  br label %66

175:                                              ; preds = %170, %66
  %176 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %177 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %178 = call i32 @rate_lowest_index(%struct.ieee80211_supported_band* %176, %struct.ieee80211_sta* %177)
  %179 = load %struct.rc_pid_sta_info*, %struct.rc_pid_sta_info** %9, align 8
  %180 = getelementptr inbounds %struct.rc_pid_sta_info, %struct.rc_pid_sta_info* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 4
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rate_lowest_index(%struct.ieee80211_supported_band*, %struct.ieee80211_sta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
