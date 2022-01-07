; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_util.c_cfg80211_calculate_bitrate_60g.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_util.c_cfg80211_calculate_bitrate_60g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rate_info = type { i64 }

@cfg80211_calculate_bitrate_60g.__mcs2bitrate = internal constant [32 x i32] [i32 275, i32 3850, i32 7700, i32 9625, i32 11550, i32 12512, i32 15400, i32 19250, i32 23100, i32 25025, i32 30800, i32 38500, i32 46200, i32 6930, i32 8662, i32 13860, i32 17325, i32 20790, i32 27720, i32 34650, i32 41580, i32 45045, i32 51975, i32 62370, i32 67568, i32 6260, i32 8340, i32 11120, i32 12510, i32 16680, i32 22240, i32 25030], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rate_info*)* @cfg80211_calculate_bitrate_60g to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg80211_calculate_bitrate_60g(%struct.rate_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rate_info*, align 8
  store %struct.rate_info* %0, %struct.rate_info** %3, align 8
  %4 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %5 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = call i64 @ARRAY_SIZE(i32* getelementptr inbounds ([32 x i32], [32 x i32]* @cfg80211_calculate_bitrate_60g.__mcs2bitrate, i64 0, i64 0))
  %8 = icmp uge i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i64 @WARN_ON_ONCE(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %19

13:                                               ; preds = %1
  %14 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %15 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds [32 x i32], [32 x i32]* @cfg80211_calculate_bitrate_60g.__mcs2bitrate, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %13, %12
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
