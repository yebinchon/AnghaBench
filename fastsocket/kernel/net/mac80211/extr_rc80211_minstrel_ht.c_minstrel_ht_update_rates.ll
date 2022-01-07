; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_update_rates.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_update_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minstrel_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.minstrel_ht_sta = type { i32, i32, i32, i32 }
%struct.ieee80211_sta_rates = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.minstrel_priv*, %struct.minstrel_ht_sta*)* @minstrel_ht_update_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minstrel_ht_update_rates(%struct.minstrel_priv* %0, %struct.minstrel_ht_sta* %1) #0 {
  %3 = alloca %struct.minstrel_priv*, align 8
  %4 = alloca %struct.minstrel_ht_sta*, align 8
  %5 = alloca %struct.ieee80211_sta_rates*, align 8
  %6 = alloca i32, align 4
  store %struct.minstrel_priv* %0, %struct.minstrel_priv** %3, align 8
  store %struct.minstrel_ht_sta* %1, %struct.minstrel_ht_sta** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = call %struct.ieee80211_sta_rates* @kzalloc(i32 8, i32 %7)
  store %struct.ieee80211_sta_rates* %8, %struct.ieee80211_sta_rates** %5, align 8
  %9 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %5, align 8
  %10 = icmp ne %struct.ieee80211_sta_rates* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %71

12:                                               ; preds = %2
  %13 = load %struct.minstrel_priv*, %struct.minstrel_priv** %3, align 8
  %14 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %15 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %6, align 4
  %18 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %19 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @minstrel_ht_set_rate(%struct.minstrel_priv* %13, %struct.minstrel_ht_sta* %14, %struct.ieee80211_sta_rates* %15, i32 %16, i32 %20)
  %22 = load %struct.minstrel_priv*, %struct.minstrel_priv** %3, align 8
  %23 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %26, 3
  br i1 %27, label %28, label %38

28:                                               ; preds = %12
  %29 = load %struct.minstrel_priv*, %struct.minstrel_priv** %3, align 8
  %30 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %31 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  %34 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %35 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @minstrel_ht_set_rate(%struct.minstrel_priv* %29, %struct.minstrel_ht_sta* %30, %struct.ieee80211_sta_rates* %31, i32 %32, i32 %36)
  br label %38

38:                                               ; preds = %28, %12
  %39 = load %struct.minstrel_priv*, %struct.minstrel_priv** %3, align 8
  %40 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp sge i32 %43, 2
  br i1 %44, label %45, label %55

45:                                               ; preds = %38
  %46 = load %struct.minstrel_priv*, %struct.minstrel_priv** %3, align 8
  %47 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %48 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  %51 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %52 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @minstrel_ht_set_rate(%struct.minstrel_priv* %46, %struct.minstrel_ht_sta* %47, %struct.ieee80211_sta_rates* %48, i32 %49, i32 %53)
  br label %55

55:                                               ; preds = %45, %38
  %56 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %5, align 8
  %57 = getelementptr inbounds %struct.ieee80211_sta_rates, %struct.ieee80211_sta_rates* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i32 -1, i32* %62, align 4
  %63 = load %struct.minstrel_priv*, %struct.minstrel_priv** %3, align 8
  %64 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %67 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %5, align 8
  %70 = call i32 @rate_control_set_rates(%struct.TYPE_4__* %65, i32 %68, %struct.ieee80211_sta_rates* %69)
  br label %71

71:                                               ; preds = %55, %11
  ret void
}

declare dso_local %struct.ieee80211_sta_rates* @kzalloc(i32, i32) #1

declare dso_local i32 @minstrel_ht_set_rate(%struct.minstrel_priv*, %struct.minstrel_ht_sta*, %struct.ieee80211_sta_rates*, i32, i32) #1

declare dso_local i32 @rate_control_set_rates(%struct.TYPE_4__*, i32, %struct.ieee80211_sta_rates*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
