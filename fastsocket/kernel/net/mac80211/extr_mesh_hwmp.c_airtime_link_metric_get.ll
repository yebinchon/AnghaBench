; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_hwmp.c_airtime_link_metric_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_hwmp.c_airtime_link_metric_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32 }
%struct.sta_info = type { i32, i32 }
%struct.rate_info = type { i32 }

@ARITH_SHIFT = common dso_local global i32 0, align 4
@TEST_FRAME_LEN = common dso_local global i32 0, align 4
@MAX_METRIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_local*, %struct.sta_info*)* @airtime_link_metric_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @airtime_link_metric_get(%struct.ieee80211_local* %0, %struct.sta_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca %struct.sta_info*, align 8
  %6 = alloca %struct.rate_info, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %4, align 8
  store %struct.sta_info* %1, %struct.sta_info** %5, align 8
  %15 = load i32, i32* @ARITH_SHIFT, align 4
  %16 = shl i32 1, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @TEST_FRAME_LEN, align 4
  %18 = load i32, i32* @ARITH_SHIFT, align 4
  %19 = shl i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @ARITH_SHIFT, align 4
  %21 = shl i32 1, %20
  store i32 %21, i32* %9, align 4
  %22 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %23 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sge i32 %24, 100
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @MAX_METRIC, align 4
  store i32 %27, i32* %3, align 4
  br label %69

28:                                               ; preds = %2
  %29 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %30 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %31 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %30, i32 0, i32 1
  %32 = call i32 @sta_set_rate_info_tx(%struct.sta_info* %29, i32* %31, %struct.rate_info* %6)
  %33 = call i32 @cfg80211_calculate_bitrate(%struct.rate_info* %6)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @WARN_ON(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load i32, i32* @MAX_METRIC, align 4
  store i32 %41, i32* %3, align 4
  br label %69

42:                                               ; preds = %28
  %43 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %44 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ARITH_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = sdiv i32 %47, 100
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = mul nsw i32 10, %50
  %52 = load i32, i32* %10, align 4
  %53 = sdiv i32 %51, %52
  %54 = add nsw i32 %49, %53
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* @ARITH_SHIFT, align 4
  %56 = mul nsw i32 2, %55
  %57 = shl i32 1, %56
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %11, align 4
  %60 = sub nsw i32 %58, %59
  %61 = sdiv i32 %57, %60
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %13, align 4
  %64 = mul nsw i32 %62, %63
  %65 = load i32, i32* @ARITH_SHIFT, align 4
  %66 = mul nsw i32 2, %65
  %67 = ashr i32 %64, %66
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %42, %40, %26
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @sta_set_rate_info_tx(%struct.sta_info*, i32*, %struct.rate_info*) #1

declare dso_local i32 @cfg80211_calculate_bitrate(%struct.rate_info*) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
