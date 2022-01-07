; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_debugfs_netdev.c_ieee80211_if_parse_uapsd_max_sp_len.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_debugfs_netdev.c_ieee80211_if_parse_uapsd_max_sp_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_WMM_IE_STA_QOSINFO_SP_MASK = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*, i8*, i32)* @ieee80211_if_parse_uapsd_max_sp_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_if_parse_uapsd_max_sp_len(%struct.ieee80211_sub_if_data* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_if_managed*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.ieee80211_if_managed* %13, %struct.ieee80211_if_managed** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @kstrtoul(i8* %14, i32 0, i64* %9)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %35

21:                                               ; preds = %3
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @IEEE80211_WMM_IE_STA_QOSINFO_SP_MASK, align 8
  %24 = xor i64 %23, -1
  %25 = and i64 %22, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @ERANGE, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %35

30:                                               ; preds = %21
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %8, align 8
  %33 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %30, %27, %18
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
