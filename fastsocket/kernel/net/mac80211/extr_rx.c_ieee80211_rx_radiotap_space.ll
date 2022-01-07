; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rx.c_ieee80211_rx_radiotap_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rx.c_ieee80211_rx_radiotap_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_rx_status = type { i32, i32, i64 }

@IEEE80211_HW_SIGNAL_DBM = common dso_local global i32 0, align 4
@RX_FLAG_HT = common dso_local global i32 0, align 4
@RX_FLAG_AMPDU_DETAILS = common dso_local global i32 0, align 4
@RX_FLAG_VHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_local*, %struct.ieee80211_rx_status*)* @ieee80211_rx_radiotap_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_rx_radiotap_space(%struct.ieee80211_local* %0, %struct.ieee80211_rx_status* %1) #0 {
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca %struct.ieee80211_rx_status*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %3, align 8
  store %struct.ieee80211_rx_status* %1, %struct.ieee80211_rx_status** %4, align 8
  store i32 13, i32* %5, align 4
  %6 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %4, align 8
  %7 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = add nsw i32 %11, 4
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %10, %2
  %14 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %4, align 8
  %15 = call i64 @ieee80211_have_rx_timestamp(%struct.ieee80211_rx_status* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @ALIGN(i32 %18, i32 8)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 8
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %17, %13
  %23 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %24 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IEEE80211_HW_SIGNAL_DBM, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %30, %22
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @ALIGN(i32 %34, i32 2)
  store i32 %35, i32* %5, align 4
  %36 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %4, align 8
  %37 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @RX_FLAG_HT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 3
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %42, %33
  %46 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %4, align 8
  %47 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @RX_FLAG_AMPDU_DETAILS, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @ALIGN(i32 %53, i32 4)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 8
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %52, %45
  %58 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %4, align 8
  %59 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @RX_FLAG_VHT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @ALIGN(i32 %65, i32 2)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 12
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %64, %57
  %70 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %4, align 8
  %71 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %95

74:                                               ; preds = %69
  %75 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %4, align 8
  %76 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i64 @WARN_ON_ONCE(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %4, align 8
  %84 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %83, i32 0, i32 1
  store i32 1, i32* %84, align 4
  br label %85

85:                                               ; preds = %82, %74
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @ALIGN(i32 %86, i32 2)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 6
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %4, align 8
  %92 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ALIGN(i32 %90, i32 %93)
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %85, %69
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i64 @ieee80211_have_rx_timestamp(%struct.ieee80211_rx_status*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
