; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_mlme.c_cfg80211_oper_and_ht_capa.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_mlme.c_cfg80211_oper_and_ht_capa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_ht_cap = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_oper_and_ht_capa(%struct.ieee80211_ht_cap* %0, %struct.ieee80211_ht_cap* %1) #0 {
  %3 = alloca %struct.ieee80211_ht_cap*, align 8
  %4 = alloca %struct.ieee80211_ht_cap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.ieee80211_ht_cap* %0, %struct.ieee80211_ht_cap** %3, align 8
  store %struct.ieee80211_ht_cap* %1, %struct.ieee80211_ht_cap** %4, align 8
  %8 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %4, align 8
  %9 = icmp ne %struct.ieee80211_ht_cap* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %3, align 8
  %12 = call i32 @memset(%struct.ieee80211_ht_cap* %11, i32 0, i32 4)
  br label %37

13:                                               ; preds = %2
  %14 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %3, align 8
  %15 = bitcast %struct.ieee80211_ht_cap* %14 to i32*
  store i32* %15, i32** %6, align 8
  %16 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %4, align 8
  %17 = bitcast %struct.ieee80211_ht_cap* %16 to i32*
  store i32* %17, i32** %7, align 8
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %34, %13
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %20, 4
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %27
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %22
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %18

37:                                               ; preds = %10, %18
  ret void
}

declare dso_local i32 @memset(%struct.ieee80211_ht_cap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
