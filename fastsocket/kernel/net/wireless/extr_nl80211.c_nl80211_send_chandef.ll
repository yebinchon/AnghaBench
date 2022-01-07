; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_send_chandef.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_send_chandef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.cfg80211_chan_def = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NL80211_ATTR_WIPHY_FREQ = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY_CHANNEL_TYPE = common dso_local global i32 0, align 4
@NL80211_ATTR_CHANNEL_WIDTH = common dso_local global i32 0, align 4
@NL80211_ATTR_CENTER_FREQ1 = common dso_local global i32 0, align 4
@NL80211_ATTR_CENTER_FREQ2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.cfg80211_chan_def*)* @nl80211_send_chandef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_send_chandef(%struct.sk_buff* %0, %struct.cfg80211_chan_def* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.cfg80211_chan_def*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.cfg80211_chan_def* %1, %struct.cfg80211_chan_def** %5, align 8
  %6 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %7 = call i32 @cfg80211_chandef_valid(%struct.cfg80211_chan_def* %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON(i32 %10)
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = load i32, i32* @NL80211_ATTR_WIPHY_FREQ, align 4
  %14 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %15 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @nla_put_u32(%struct.sk_buff* %12, i32 %13, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOBUFS, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %79

24:                                               ; preds = %2
  %25 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %26 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %39 [
    i32 129, label %28
    i32 130, label %28
    i32 128, label %28
  ]

28:                                               ; preds = %24, %24, %24
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = load i32, i32* @NL80211_ATTR_WIPHY_CHANNEL_TYPE, align 4
  %31 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %32 = call i32 @cfg80211_get_chandef_type(%struct.cfg80211_chan_def* %31)
  %33 = call i64 @nla_put_u32(%struct.sk_buff* %29, i32 %30, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @ENOBUFS, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %79

38:                                               ; preds = %28
  br label %40

39:                                               ; preds = %24
  br label %40

40:                                               ; preds = %39, %38
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = load i32, i32* @NL80211_ATTR_CHANNEL_WIDTH, align 4
  %43 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %44 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @nla_put_u32(%struct.sk_buff* %41, i32 %42, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i32, i32* @ENOBUFS, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %79

51:                                               ; preds = %40
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = load i32, i32* @NL80211_ATTR_CENTER_FREQ1, align 4
  %54 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %55 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @nla_put_u32(%struct.sk_buff* %52, i32 %53, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load i32, i32* @ENOBUFS, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %79

62:                                               ; preds = %51
  %63 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %64 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %62
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = load i32, i32* @NL80211_ATTR_CENTER_FREQ2, align 4
  %70 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %71 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @nla_put_u32(%struct.sk_buff* %68, i32 %69, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load i32, i32* @ENOBUFS, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %79

78:                                               ; preds = %67, %62
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %75, %59, %48, %35, %21
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @cfg80211_chandef_valid(%struct.cfg80211_chan_def*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @cfg80211_get_chandef_type(%struct.cfg80211_chan_def*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
