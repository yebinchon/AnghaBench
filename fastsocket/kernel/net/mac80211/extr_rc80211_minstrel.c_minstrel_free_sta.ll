; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel.c_minstrel_free_sta.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel.c_minstrel_free_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sta = type { i32 }
%struct.minstrel_sta_info = type { %struct.minstrel_sta_info*, %struct.minstrel_sta_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_sta*, i8*)* @minstrel_free_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minstrel_free_sta(i8* %0, %struct.ieee80211_sta* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ieee80211_sta*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.minstrel_sta_info*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.minstrel_sta_info*
  store %struct.minstrel_sta_info* %9, %struct.minstrel_sta_info** %7, align 8
  %10 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %7, align 8
  %11 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %10, i32 0, i32 1
  %12 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %11, align 8
  %13 = call i32 @kfree(%struct.minstrel_sta_info* %12)
  %14 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %7, align 8
  %15 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %14, i32 0, i32 0
  %16 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %15, align 8
  %17 = call i32 @kfree(%struct.minstrel_sta_info* %16)
  %18 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %7, align 8
  %19 = call i32 @kfree(%struct.minstrel_sta_info* %18)
  ret void
}

declare dso_local i32 @kfree(%struct.minstrel_sta_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
