; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_offchannel.c_ieee80211_handle_roc_started.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_offchannel.c_ieee80211_handle_roc_started.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_roc_work = type { i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_handle_roc_started(%struct.ieee80211_roc_work* %0) #0 {
  %2 = alloca %struct.ieee80211_roc_work*, align 8
  store %struct.ieee80211_roc_work* %0, %struct.ieee80211_roc_work** %2, align 8
  %3 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %2, align 8
  %4 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %57

8:                                                ; preds = %1
  %9 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %2, align 8
  %10 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %9, i32 0, i32 6
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %8
  %14 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %2, align 8
  %15 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %14, i32 0, i32 5
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %13
  %23 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %2, align 8
  %24 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %23, i32 0, i32 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %2, align 8
  %27 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %26, i32 0, i32 5
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %2, align 8
  %30 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ieee80211_tx_skb_tid_band(%struct.TYPE_3__* %25, i32* %28, i32 7, i32 %33)
  %35 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %2, align 8
  %36 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %35, i32 0, i32 5
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %22, %13
  br label %54

38:                                               ; preds = %8
  %39 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %2, align 8
  %40 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %39, i32 0, i32 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %2, align 8
  %44 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %2, align 8
  %47 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %2, align 8
  %50 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i32 @cfg80211_ready_on_channel(i32* %42, i32 %45, %struct.TYPE_4__* %48, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %38, %37
  %55 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %2, align 8
  %56 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  br label %57

57:                                               ; preds = %54, %7
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ieee80211_tx_skb_tid_band(%struct.TYPE_3__*, i32*, i32, i32) #1

declare dso_local i32 @cfg80211_ready_on_channel(i32*, i32, %struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
