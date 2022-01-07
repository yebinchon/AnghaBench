; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nl80211_fam = common dso_local global i32 0, align 4
@nl80211_ops = common dso_local global i32 0, align 4
@nl80211_config_mcgrp = common dso_local global i32 0, align 4
@nl80211_scan_mcgrp = common dso_local global i32 0, align 4
@nl80211_regulatory_mcgrp = common dso_local global i32 0, align 4
@nl80211_mlme_mcgrp = common dso_local global i32 0, align 4
@nl80211_netlink_notifier = common dso_local global i32 0, align 4
@nl80211_testmode_mcgrp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nl80211_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @nl80211_ops, align 4
  %4 = load i32, i32* @nl80211_ops, align 4
  %5 = call i32 @ARRAY_SIZE(i32 %4)
  %6 = call i32 @genl_register_family_with_ops(i32* @nl80211_fam, i32 %3, i32 %5)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4
  store i32 %10, i32* %1, align 4
  br label %40

11:                                               ; preds = %0
  %12 = call i32 @genl_register_mc_group(i32* @nl80211_fam, i32* @nl80211_config_mcgrp)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %37

16:                                               ; preds = %11
  %17 = call i32 @genl_register_mc_group(i32* @nl80211_fam, i32* @nl80211_scan_mcgrp)
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %37

21:                                               ; preds = %16
  %22 = call i32 @genl_register_mc_group(i32* @nl80211_fam, i32* @nl80211_regulatory_mcgrp)
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %37

26:                                               ; preds = %21
  %27 = call i32 @genl_register_mc_group(i32* @nl80211_fam, i32* @nl80211_mlme_mcgrp)
  store i32 %27, i32* %2, align 4
  %28 = load i32, i32* %2, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %37

31:                                               ; preds = %26
  %32 = call i32 @netlink_register_notifier(i32* @nl80211_netlink_notifier)
  store i32 %32, i32* %2, align 4
  %33 = load i32, i32* %2, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %37

36:                                               ; preds = %31
  store i32 0, i32* %1, align 4
  br label %40

37:                                               ; preds = %35, %30, %25, %20, %15
  %38 = call i32 @genl_unregister_family(i32* @nl80211_fam)
  %39 = load i32, i32* %2, align 4
  store i32 %39, i32* %1, align 4
  br label %40

40:                                               ; preds = %37, %36, %9
  %41 = load i32, i32* %1, align 4
  ret i32 %41
}

declare dso_local i32 @genl_register_family_with_ops(i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @genl_register_mc_group(i32*, i32*) #1

declare dso_local i32 @netlink_register_notifier(i32*) #1

declare dso_local i32 @genl_unregister_family(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
