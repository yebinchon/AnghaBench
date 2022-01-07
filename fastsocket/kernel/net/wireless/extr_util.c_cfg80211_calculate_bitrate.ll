; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_util.c_cfg80211_calculate_bitrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_util.c_cfg80211_calculate_bitrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rate_info = type { i32, i32, i32 }

@RATE_INFO_FLAGS_MCS = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_VHT_MCS = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_60G = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_40_MHZ_WIDTH = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_SHORT_GI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_calculate_bitrate(%struct.rate_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rate_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rate_info* %0, %struct.rate_info** %3, align 8
  %7 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %8 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @RATE_INFO_FLAGS_MCS, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %1
  %14 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %15 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @RATE_INFO_FLAGS_VHT_MCS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %22 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %2, align 4
  br label %110

24:                                               ; preds = %13, %1
  %25 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %26 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @RATE_INFO_FLAGS_60G, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %33 = call i32 @cfg80211_calculate_bitrate_60g(%struct.rate_info* %32)
  store i32 %33, i32* %2, align 4
  br label %110

34:                                               ; preds = %24
  %35 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %36 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @RATE_INFO_FLAGS_VHT_MCS, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %43 = call i32 @cfg80211_calculate_bitrate_vht(%struct.rate_info* %42)
  store i32 %43, i32* %2, align 4
  br label %110

44:                                               ; preds = %34
  %45 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %46 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = icmp sge i32 %47, 32
  %49 = zext i1 %48 to i32
  %50 = call i64 @WARN_ON_ONCE(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %110

53:                                               ; preds = %44
  %54 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %55 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 7
  store i32 %57, i32* %4, align 4
  %58 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %59 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %60, 3
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  %63 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %64 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @RATE_INFO_FLAGS_40_MHZ_WIDTH, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 13500000, i32 6500000
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp slt i32 %71, 4
  br i1 %72, label %73, label %78

73:                                               ; preds = %53
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  %76 = load i32, i32* %6, align 4
  %77 = mul nsw i32 %76, %75
  store i32 %77, i32* %6, align 4
  br label %92

78:                                               ; preds = %53
  %79 = load i32, i32* %4, align 4
  %80 = icmp eq i32 %79, 4
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 2
  %84 = load i32, i32* %6, align 4
  %85 = mul nsw i32 %84, %83
  store i32 %85, i32* %6, align 4
  br label %91

86:                                               ; preds = %78
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 3
  %89 = load i32, i32* %6, align 4
  %90 = mul nsw i32 %89, %88
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %86, %81
  br label %92

92:                                               ; preds = %91, %73
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %6, align 4
  %95 = mul nsw i32 %94, %93
  store i32 %95, i32* %6, align 4
  %96 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %97 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @RATE_INFO_FLAGS_SHORT_GI, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %92
  %103 = load i32, i32* %6, align 4
  %104 = sdiv i32 %103, 9
  %105 = mul nsw i32 %104, 10
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %102, %92
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 50000
  %109 = sdiv i32 %108, 100000
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %106, %52, %41, %31, %20
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @cfg80211_calculate_bitrate_60g(%struct.rate_info*) #1

declare dso_local i32 @cfg80211_calculate_bitrate_vht(%struct.rate_info*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
