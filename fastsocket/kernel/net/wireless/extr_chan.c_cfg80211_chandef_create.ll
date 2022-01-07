; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_chan.c_cfg80211_chandef_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_chan.c_cfg80211_chandef_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_chan_def = type { i32, i8*, i64, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }

@NL80211_CHAN_WIDTH_20_NOHT = common dso_local global i8* null, align 8
@NL80211_CHAN_WIDTH_20 = common dso_local global i8* null, align 8
@NL80211_CHAN_WIDTH_40 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_chandef_create(%struct.cfg80211_chan_def* %0, %struct.ieee80211_channel* %1, i32 %2) #0 {
  %4 = alloca %struct.cfg80211_chan_def*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca i32, align 4
  store %struct.cfg80211_chan_def* %0, %struct.cfg80211_chan_def** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %8 = icmp ne %struct.ieee80211_channel* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %61

14:                                               ; preds = %3
  %15 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %16 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %17 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %16, i32 0, i32 3
  store %struct.ieee80211_channel* %15, %struct.ieee80211_channel** %17, align 8
  %18 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %19 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %59 [
    i32 128, label %21
    i32 131, label %30
    i32 129, label %39
    i32 130, label %49
  ]

21:                                               ; preds = %14
  %22 = load i8*, i8** @NL80211_CHAN_WIDTH_20_NOHT, align 8
  %23 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %24 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %26 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %29 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  br label %61

30:                                               ; preds = %14
  %31 = load i8*, i8** @NL80211_CHAN_WIDTH_20, align 8
  %32 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %33 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %35 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %38 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %61

39:                                               ; preds = %14
  %40 = load i8*, i8** @NL80211_CHAN_WIDTH_40, align 8
  %41 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %42 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %44 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 10
  %47 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %48 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %61

49:                                               ; preds = %14
  %50 = load i8*, i8** @NL80211_CHAN_WIDTH_40, align 8
  %51 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %52 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %54 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %55, 10
  %57 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %58 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  br label %61

59:                                               ; preds = %14
  %60 = call i64 @WARN_ON(i32 1)
  br label %61

61:                                               ; preds = %13, %59, %49, %39, %30, %21
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
