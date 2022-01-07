; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_chandef_downgrade.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_chandef_downgrade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_chan_def = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@IEEE80211_STA_DISABLE_HT = common dso_local global i32 0, align 4
@IEEE80211_STA_DISABLE_VHT = common dso_local global i32 0, align 4
@IEEE80211_STA_DISABLE_40MHZ = common dso_local global i32 0, align 4
@IEEE80211_STA_DISABLE_80P80MHZ = common dso_local global i32 0, align 4
@IEEE80211_STA_DISABLE_160MHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_chan_def*)* @chandef_downgrade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chandef_downgrade(%struct.cfg80211_chan_def* %0) #0 {
  %2 = alloca %struct.cfg80211_chan_def*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.cfg80211_chan_def* %0, %struct.cfg80211_chan_def** %2, align 8
  %5 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %2, align 8
  %6 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %89 [
    i32 132, label %8
    i32 130, label %14
    i32 129, label %27
    i32 128, label %53
    i32 133, label %61
    i32 131, label %90
  ]

8:                                                ; preds = %1
  %9 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %2, align 8
  %10 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %9, i32 0, i32 0
  store i32 131, i32* %10, align 8
  %11 = load i32, i32* @IEEE80211_STA_DISABLE_HT, align 4
  %12 = load i32, i32* @IEEE80211_STA_DISABLE_VHT, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %3, align 4
  br label %97

14:                                               ; preds = %1
  %15 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %2, align 8
  %16 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %15, i32 0, i32 0
  store i32 132, i32* %16, align 8
  %17 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %2, align 8
  %18 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %2, align 8
  %23 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @IEEE80211_STA_DISABLE_40MHZ, align 4
  %25 = load i32, i32* @IEEE80211_STA_DISABLE_VHT, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %3, align 4
  br label %97

27:                                               ; preds = %1
  %28 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %2, align 8
  %29 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 30, %32
  %34 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %2, align 8
  %35 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %33, %36
  %38 = sdiv i32 %37, 20
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = sdiv i32 %39, 2
  store i32 %40, i32* %4, align 4
  %41 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %2, align 8
  %42 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %43, 20
  %45 = load i32, i32* %4, align 4
  %46 = mul nsw i32 40, %45
  %47 = add nsw i32 %44, %46
  %48 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %2, align 8
  %49 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %2, align 8
  %51 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %50, i32 0, i32 0
  store i32 130, i32* %51, align 8
  %52 = load i32, i32* @IEEE80211_STA_DISABLE_VHT, align 4
  store i32 %52, i32* %3, align 4
  br label %97

53:                                               ; preds = %1
  %54 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %2, align 8
  %55 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %54, i32 0, i32 3
  store i32 0, i32* %55, align 8
  %56 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %2, align 8
  %57 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %56, i32 0, i32 0
  store i32 129, i32* %57, align 8
  %58 = load i32, i32* @IEEE80211_STA_DISABLE_80P80MHZ, align 4
  %59 = load i32, i32* @IEEE80211_STA_DISABLE_160MHZ, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %3, align 4
  br label %97

61:                                               ; preds = %1
  %62 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %2, align 8
  %63 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 70, %66
  %68 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %2, align 8
  %69 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %67, %70
  %72 = sdiv i32 %71, 20
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = sdiv i32 %73, 4
  store i32 %74, i32* %4, align 4
  %75 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %2, align 8
  %76 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %77, 40
  %79 = load i32, i32* %4, align 4
  %80 = mul nsw i32 80, %79
  %81 = add nsw i32 %78, %80
  %82 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %2, align 8
  %83 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %2, align 8
  %85 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %84, i32 0, i32 0
  store i32 129, i32* %85, align 8
  %86 = load i32, i32* @IEEE80211_STA_DISABLE_80P80MHZ, align 4
  %87 = load i32, i32* @IEEE80211_STA_DISABLE_160MHZ, align 4
  %88 = or i32 %86, %87
  store i32 %88, i32* %3, align 4
  br label %97

89:                                               ; preds = %1
  br label %90

90:                                               ; preds = %1, %89
  %91 = call i32 @WARN_ON_ONCE(i32 1)
  %92 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %2, align 8
  %93 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %92, i32 0, i32 0
  store i32 131, i32* %93, align 8
  %94 = load i32, i32* @IEEE80211_STA_DISABLE_HT, align 4
  %95 = load i32, i32* @IEEE80211_STA_DISABLE_VHT, align 4
  %96 = or i32 %94, %95
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %90, %61, %53, %27, %14, %8
  %98 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %2, align 8
  %99 = call i32 @cfg80211_chandef_valid(%struct.cfg80211_chan_def* %98)
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = call i32 @WARN_ON_ONCE(i32 %102)
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @cfg80211_chandef_valid(%struct.cfg80211_chan_def*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
