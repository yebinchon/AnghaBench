; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_reg_process_ht_flags_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_reg_process_ht_flags_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i64, i32, i32 }

@IEEE80211_CHAN_NO_HT40 = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_HT40MINUS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_HT40PLUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*, %struct.ieee80211_channel*)* @reg_process_ht_flags_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reg_process_ht_flags_channel(%struct.wiphy* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca %struct.ieee80211_supported_band*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca %struct.ieee80211_channel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_channel*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %10 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %11 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %10, i32 0, i32 0
  %12 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %11, align 8
  %13 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %12, i64 %15
  %17 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %16, align 8
  store %struct.ieee80211_supported_band* %17, %struct.ieee80211_supported_band** %5, align 8
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %6, align 8
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %7, align 8
  %18 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %19 = call i32 @is_ht40_allowed(%struct.ieee80211_channel* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @IEEE80211_CHAN_NO_HT40, align 4
  %23 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %100

27:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %63, %27
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %31 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %66

34:                                               ; preds = %28
  %35 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %36 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %35, i32 0, i32 1
  %37 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %37, i64 %39
  store %struct.ieee80211_channel* %40, %struct.ieee80211_channel** %9, align 8
  %41 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %42 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %45 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %46, 20
  %48 = icmp eq i32 %43, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %34
  %50 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  store %struct.ieee80211_channel* %50, %struct.ieee80211_channel** %6, align 8
  br label %51

51:                                               ; preds = %49, %34
  %52 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %53 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %56 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 20
  %59 = icmp eq i32 %54, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  store %struct.ieee80211_channel* %61, %struct.ieee80211_channel** %7, align 8
  br label %62

62:                                               ; preds = %60, %51
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %8, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %28

66:                                               ; preds = %28
  %67 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %68 = call i32 @is_ht40_allowed(%struct.ieee80211_channel* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* @IEEE80211_CHAN_NO_HT40MINUS, align 4
  %72 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %73 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %83

76:                                               ; preds = %66
  %77 = load i32, i32* @IEEE80211_CHAN_NO_HT40MINUS, align 4
  %78 = xor i32 %77, -1
  %79 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %80 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %76, %70
  %84 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %85 = call i32 @is_ht40_allowed(%struct.ieee80211_channel* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* @IEEE80211_CHAN_NO_HT40PLUS, align 4
  %89 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %90 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %100

93:                                               ; preds = %83
  %94 = load i32, i32* @IEEE80211_CHAN_NO_HT40PLUS, align 4
  %95 = xor i32 %94, -1
  %96 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %97 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %21, %93, %87
  ret void
}

declare dso_local i32 @is_ht40_allowed(%struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
