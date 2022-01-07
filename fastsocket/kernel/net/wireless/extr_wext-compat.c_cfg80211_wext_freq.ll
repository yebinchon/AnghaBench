; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-compat.c_cfg80211_wext_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-compat.c_cfg80211_wext_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.iw_freq = type { i64, i32 }

@IEEE80211_BAND_2GHZ = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_wext_freq(%struct.wiphy* %0, %struct.iw_freq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.iw_freq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.iw_freq* %1, %struct.iw_freq** %5, align 8
  %9 = load %struct.iw_freq*, %struct.iw_freq** %5, align 8
  %10 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %2
  %14 = load i32, i32* @IEEE80211_BAND_2GHZ, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.iw_freq*, %struct.iw_freq** %5, align 8
  %16 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %59

20:                                               ; preds = %13
  %21 = load %struct.iw_freq*, %struct.iw_freq** %5, align 8
  %22 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %23, 14
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @IEEE80211_BAND_5GHZ, align 4
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %25, %20
  %28 = load %struct.iw_freq*, %struct.iw_freq** %5, align 8
  %29 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @ieee80211_channel_to_frequency(i32 %30, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %59

33:                                               ; preds = %2
  store i32 1000000, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %44, %33
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = load %struct.iw_freq*, %struct.iw_freq** %5, align 8
  %38 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %36, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load i32, i32* %8, align 4
  %43 = sdiv i32 %42, 10
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %34

47:                                               ; preds = %34
  %48 = load i32, i32* %8, align 4
  %49 = icmp sle i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %59

53:                                               ; preds = %47
  %54 = load %struct.iw_freq*, %struct.iw_freq** %5, align 8
  %55 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sdiv i32 %56, %57
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %53, %50, %27, %19
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @ieee80211_channel_to_frequency(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
