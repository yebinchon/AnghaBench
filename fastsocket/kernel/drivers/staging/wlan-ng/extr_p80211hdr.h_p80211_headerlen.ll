; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_p80211hdr.h_p80211_headerlen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_p80211hdr.h_p80211_headerlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WLAN_HDR_A3_LEN = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i64 0, align 8
@WLAN_FCS_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @p80211_headerlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @p80211_headerlen(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i64 0, i64* %3, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i32 @WLAN_GET_FC_FTYPE(i64 %4)
  switch i32 %5, label %28 [
    i32 128, label %6
    i32 129, label %8
    i32 130, label %22
  ]

6:                                                ; preds = %1
  %7 = load i64, i64* @WLAN_HDR_A3_LEN, align 8
  store i64 %7, i64* %3, align 8
  br label %30

8:                                                ; preds = %1
  %9 = load i64, i64* @WLAN_HDR_A3_LEN, align 8
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %2, align 8
  %11 = call i32 @WLAN_GET_FC_TODS(i64 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = load i64, i64* %2, align 8
  %15 = call i32 @WLAN_GET_FC_FROMDS(i64 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i64, i64* @ETH_ALEN, align 8
  %19 = load i64, i64* %3, align 8
  %20 = add nsw i64 %19, %18
  store i64 %20, i64* %3, align 8
  br label %21

21:                                               ; preds = %17, %13, %8
  br label %30

22:                                               ; preds = %1
  %23 = load i64, i64* %2, align 8
  %24 = call i32 @WLAN_GET_FC_FSTYPE(i64 %23)
  %25 = call i64 @WLAN_CTL_FRAMELEN(i32 %24)
  %26 = load i64, i64* @WLAN_FCS_LEN, align 8
  %27 = sub nsw i64 %25, %26
  store i64 %27, i64* %3, align 8
  br label %30

28:                                               ; preds = %1
  %29 = load i64, i64* @WLAN_HDR_A3_LEN, align 8
  store i64 %29, i64* %3, align 8
  br label %30

30:                                               ; preds = %28, %22, %21, %6
  %31 = load i64, i64* %3, align 8
  ret i64 %31
}

declare dso_local i32 @WLAN_GET_FC_FTYPE(i64) #1

declare dso_local i32 @WLAN_GET_FC_TODS(i64) #1

declare dso_local i32 @WLAN_GET_FC_FROMDS(i64) #1

declare dso_local i64 @WLAN_CTL_FRAMELEN(i32) #1

declare dso_local i32 @WLAN_GET_FC_FSTYPE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
