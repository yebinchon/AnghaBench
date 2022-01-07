; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel.c_minstrel_update_rates.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel.c_minstrel_update_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minstrel_priv = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.minstrel_sta_info = type { i32, i32, i32, i32* }
%struct.ieee80211_sta_rates = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.minstrel_priv*, %struct.minstrel_sta_info*)* @minstrel_update_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minstrel_update_rates(%struct.minstrel_priv* %0, %struct.minstrel_sta_info* %1) #0 {
  %3 = alloca %struct.minstrel_priv*, align 8
  %4 = alloca %struct.minstrel_sta_info*, align 8
  %5 = alloca %struct.ieee80211_sta_rates*, align 8
  %6 = alloca i32, align 4
  store %struct.minstrel_priv* %0, %struct.minstrel_priv** %3, align 8
  store %struct.minstrel_sta_info* %1, %struct.minstrel_sta_info** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = call %struct.ieee80211_sta_rates* @kzalloc(i32 8, i32 %7)
  store %struct.ieee80211_sta_rates* %8, %struct.ieee80211_sta_rates** %5, align 8
  %9 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %5, align 8
  %10 = icmp ne %struct.ieee80211_sta_rates* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %105

12:                                               ; preds = %2
  %13 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %4, align 8
  %14 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %6, align 4
  %17 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %4, align 8
  %18 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @minstrel_set_rate(%struct.minstrel_sta_info* %13, %struct.ieee80211_sta_rates* %14, i32 %15, i32 %21)
  %23 = load %struct.minstrel_priv*, %struct.minstrel_priv** %3, align 8
  %24 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sge i32 %27, 3
  br i1 %28, label %29, label %40

29:                                               ; preds = %12
  %30 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %4, align 8
  %31 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  %34 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %4, align 8
  %35 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @minstrel_set_rate(%struct.minstrel_sta_info* %30, %struct.ieee80211_sta_rates* %31, i32 %32, i32 %38)
  br label %40

40:                                               ; preds = %29, %12
  %41 = load %struct.minstrel_priv*, %struct.minstrel_priv** %3, align 8
  %42 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sge i32 %45, 2
  br i1 %46, label %47, label %56

47:                                               ; preds = %40
  %48 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %4, align 8
  %49 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  %52 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %4, align 8
  %53 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @minstrel_set_rate(%struct.minstrel_sta_info* %48, %struct.ieee80211_sta_rates* %49, i32 %50, i32 %54)
  br label %56

56:                                               ; preds = %47, %40
  %57 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %4, align 8
  %58 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %5, align 8
  %61 = getelementptr inbounds %struct.ieee80211_sta_rates, %struct.ieee80211_sta_rates* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 3
  store i32 %59, i32* %66, align 4
  %67 = load %struct.minstrel_priv*, %struct.minstrel_priv** %3, align 8
  %68 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %5, align 8
  %71 = getelementptr inbounds %struct.ieee80211_sta_rates, %struct.ieee80211_sta_rates* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  store i32 %69, i32* %76, align 4
  %77 = load %struct.minstrel_priv*, %struct.minstrel_priv** %3, align 8
  %78 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %5, align 8
  %81 = getelementptr inbounds %struct.ieee80211_sta_rates, %struct.ieee80211_sta_rates* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  store i32 %79, i32* %86, align 4
  %87 = load %struct.minstrel_priv*, %struct.minstrel_priv** %3, align 8
  %88 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %5, align 8
  %91 = getelementptr inbounds %struct.ieee80211_sta_rates, %struct.ieee80211_sta_rates* %90, i32 0, i32 0
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  store i32 %89, i32* %96, align 4
  %97 = load %struct.minstrel_priv*, %struct.minstrel_priv** %3, align 8
  %98 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %4, align 8
  %101 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %5, align 8
  %104 = call i32 @rate_control_set_rates(%struct.TYPE_4__* %99, i32 %102, %struct.ieee80211_sta_rates* %103)
  br label %105

105:                                              ; preds = %56, %11
  ret void
}

declare dso_local %struct.ieee80211_sta_rates* @kzalloc(i32, i32) #1

declare dso_local i32 @minstrel_set_rate(%struct.minstrel_sta_info*, %struct.ieee80211_sta_rates*, i32, i32) #1

declare dso_local i32 @rate_control_set_rates(%struct.TYPE_4__*, i32, %struct.ieee80211_sta_rates*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
