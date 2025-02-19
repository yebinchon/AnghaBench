; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel.c_calc_rate_durations.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel.c_calc_rate_durations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minstrel_rate = type { i8*, i8* }
%struct.ieee80211_rate = type { i32, i32 }

@IEEE80211_RATE_ERP_G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.minstrel_rate*, %struct.ieee80211_rate*)* @calc_rate_durations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_rate_durations(i32 %0, %struct.minstrel_rate* %1, %struct.ieee80211_rate* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.minstrel_rate*, align 8
  %6 = alloca %struct.ieee80211_rate*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.minstrel_rate* %1, %struct.minstrel_rate** %5, align 8
  store %struct.ieee80211_rate* %2, %struct.ieee80211_rate** %6, align 8
  %8 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %6, align 8
  %9 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @IEEE80211_RATE_ERP_G, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i8* @ieee80211_frame_duration(i32 %17, i32 1200, i32 %20, i32 %21, i32 1)
  %23 = load %struct.minstrel_rate*, %struct.minstrel_rate** %5, align 8
  %24 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %6, align 8
  %27 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i8* @ieee80211_frame_duration(i32 %25, i32 10, i32 %28, i32 %29, i32 1)
  %31 = load %struct.minstrel_rate*, %struct.minstrel_rate** %5, align 8
  %32 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  ret void
}

declare dso_local i8* @ieee80211_frame_duration(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
