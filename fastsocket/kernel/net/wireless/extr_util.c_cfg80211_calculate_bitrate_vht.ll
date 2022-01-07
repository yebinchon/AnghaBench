; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_util.c_cfg80211_calculate_bitrate_vht.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_util.c_cfg80211_calculate_bitrate_vht.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rate_info = type { i32, i32, i32 }

@cfg80211_calculate_bitrate_vht.base = internal constant [4 x [10 x i32]] [[10 x i32] [i32 6500000, i32 13000000, i32 19500000, i32 26000000, i32 39000000, i32 52000000, i32 58500000, i32 65000000, i32 78000000, i32 0], [10 x i32] [i32 13500000, i32 27000000, i32 40500000, i32 54000000, i32 81000000, i32 108000000, i32 121500000, i32 135000000, i32 162000000, i32 180000000], [10 x i32] [i32 29300000, i32 58500000, i32 87800000, i32 117000000, i32 175500000, i32 234000000, i32 263300000, i32 292500000, i32 351000000, i32 390000000], [10 x i32] [i32 58500000, i32 117000000, i32 175500000, i32 234000000, i32 351000000, i32 468000000, i32 526500000, i32 585000000, i32 702000000, i32 780000000]], align 16
@RATE_INFO_FLAGS_160_MHZ_WIDTH = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_80P80_MHZ_WIDTH = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_80_MHZ_WIDTH = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_40_MHZ_WIDTH = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_SHORT_GI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rate_info*)* @cfg80211_calculate_bitrate_vht to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg80211_calculate_bitrate_vht(%struct.rate_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rate_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rate_info* %0, %struct.rate_info** %3, align 8
  %6 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %7 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp sgt i32 %8, 9
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON_ONCE(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %73

14:                                               ; preds = %1
  %15 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %16 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @RATE_INFO_FLAGS_160_MHZ_WIDTH, align 4
  %19 = load i32, i32* @RATE_INFO_FLAGS_80P80_MHZ_WIDTH, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %43

24:                                               ; preds = %14
  %25 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %26 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @RATE_INFO_FLAGS_80_MHZ_WIDTH, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %41

32:                                               ; preds = %24
  %33 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %34 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @RATE_INFO_FLAGS_40_MHZ_WIDTH, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 0
  br label %41

41:                                               ; preds = %32, %31
  %42 = phi i32 [ 2, %31 ], [ %40, %32 ]
  br label %43

43:                                               ; preds = %41, %23
  %44 = phi i32 [ 3, %23 ], [ %42, %41 ]
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [4 x [10 x i32]], [4 x [10 x i32]]* @cfg80211_calculate_bitrate_vht.base, i64 0, i64 %46
  %48 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %49 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [10 x i32], [10 x i32]* %47, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %4, align 4
  %54 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %55 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %4, align 4
  %58 = mul nsw i32 %57, %56
  store i32 %58, i32* %4, align 4
  %59 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %60 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @RATE_INFO_FLAGS_SHORT_GI, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %43
  %66 = load i32, i32* %4, align 4
  %67 = sdiv i32 %66, 9
  %68 = mul nsw i32 %67, 10
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %65, %43
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 50000
  %72 = sdiv i32 %71, 100000
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %69, %13
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
