; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_ieee80211ieee80211.h_ieee80211_get_hdrlen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_ieee80211ieee80211.h_ieee80211_get_hdrlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IEEE80211_FCTL_FROMDS = common dso_local global i32 0, align 4
@IEEE80211_FCTL_TODS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_get_hdrlen(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 24, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @WLAN_FC_GET_TYPE(i32 %4)
  switch i32 %5, label %31 [
    i32 130, label %6
    i32 131, label %25
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @IEEE80211_FCTL_TODS, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 30, i32* %3, align 4
  br label %17

17:                                               ; preds = %16, %11, %6
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @IEEE80211_QOS_HAS_SEQ(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 2
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %21, %17
  br label %31

25:                                               ; preds = %1
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @WLAN_FC_GET_STYPE(i32 %26)
  switch i32 %27, label %29 [
    i32 128, label %28
    i32 129, label %28
  ]

28:                                               ; preds = %25, %25
  store i32 10, i32* %3, align 4
  br label %30

29:                                               ; preds = %25
  store i32 16, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %28
  br label %31

31:                                               ; preds = %1, %30, %24
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @WLAN_FC_GET_TYPE(i32) #1

declare dso_local i32 @IEEE80211_QOS_HAS_SEQ(i32) #1

declare dso_local i32 @WLAN_FC_GET_STYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
