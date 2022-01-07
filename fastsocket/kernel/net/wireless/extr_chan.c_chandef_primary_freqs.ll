; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_chan.c_chandef_primary_freqs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_chan.c_chandef_primary_freqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_chan_def = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfg80211_chan_def*, i32*, i32*)* @chandef_primary_freqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chandef_primary_freqs(%struct.cfg80211_chan_def* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.cfg80211_chan_def*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.cfg80211_chan_def* %0, %struct.cfg80211_chan_def** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %9 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %75 [
    i32 130, label %11
    i32 129, label %17
    i32 128, label %17
    i32 131, label %43
  ]

11:                                               ; preds = %3
  %12 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %13 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** %5, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i32*, i32** %6, align 8
  store i32 0, i32* %16, align 4
  br label %77

17:                                               ; preds = %3, %3
  %18 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %19 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %6, align 8
  store i32 %20, i32* %21, align 4
  %22 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %23 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 30, %26
  %28 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %29 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %27, %30
  %32 = sdiv i32 %31, 20
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sdiv i32 %33, 2
  store i32 %34, i32* %7, align 4
  %35 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %36 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 20
  %39 = load i32, i32* %7, align 4
  %40 = mul nsw i32 40, %39
  %41 = add nsw i32 %38, %40
  %42 = load i32*, i32** %5, align 8
  store i32 %41, i32* %42, align 4
  br label %77

43:                                               ; preds = %3
  %44 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %45 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 70, %48
  %50 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %51 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %49, %52
  %54 = sdiv i32 %53, 20
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = sdiv i32 %55, 2
  store i32 %56, i32* %7, align 4
  %57 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %58 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %59, 60
  %61 = load i32, i32* %7, align 4
  %62 = mul nsw i32 40, %61
  %63 = add nsw i32 %60, %62
  %64 = load i32*, i32** %5, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* %7, align 4
  %66 = sdiv i32 %65, 2
  store i32 %66, i32* %7, align 4
  %67 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %68 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, 40
  %71 = load i32, i32* %7, align 4
  %72 = mul nsw i32 80, %71
  %73 = add nsw i32 %70, %72
  %74 = load i32*, i32** %6, align 8
  store i32 %73, i32* %74, align 4
  br label %77

75:                                               ; preds = %3
  %76 = call i32 @WARN_ON_ONCE(i32 1)
  br label %77

77:                                               ; preds = %75, %43, %17, %11
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
