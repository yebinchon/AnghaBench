; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_ieee80211ieee80211.h_ieee80211_get_hdrlen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_ieee80211ieee80211.h_ieee80211_get_hdrlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IEEE80211_3ADDR_LEN = common dso_local global i32 0, align 4
@IEEE80211_FCTL_FROMDS = common dso_local global i32 0, align 4
@IEEE80211_FCTL_TODS = common dso_local global i32 0, align 4
@IEEE80211_4ADDR_LEN = common dso_local global i32 0, align 4
@IEEE80211_1ADDR_LEN = common dso_local global i32 0, align 4
@IEEE80211_2ADDR_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_get_hdrlen(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @IEEE80211_3ADDR_LEN, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @WLAN_FC_GET_TYPE(i32 %5)
  switch i32 %6, label %35 [
    i32 130, label %7
    i32 131, label %27
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %7
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @IEEE80211_FCTL_TODS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* @IEEE80211_4ADDR_LEN, align 4
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %17, %12, %7
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @IEEE80211_QOS_HAS_SEQ(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 2
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %23, %19
  br label %35

27:                                               ; preds = %1
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @WLAN_FC_GET_STYPE(i32 %28)
  switch i32 %29, label %32 [
    i32 128, label %30
    i32 129, label %30
  ]

30:                                               ; preds = %27, %27
  %31 = load i32, i32* @IEEE80211_1ADDR_LEN, align 4
  store i32 %31, i32* %3, align 4
  br label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @IEEE80211_2ADDR_LEN, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %30
  br label %35

35:                                               ; preds = %1, %34, %26
  %36 = load i32, i32* %3, align 4
  ret i32 %36
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
