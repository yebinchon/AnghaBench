; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_wx.c_r8180_wx_get_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_wx.c_r8180_wx_get_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { i32 }
%struct.r8180_priv = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @r8180_wx_get_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r8180_wx_get_scan(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.r8180_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.r8180_priv* @ieee80211_priv(%struct.net_device* %11)
  store %struct.r8180_priv* %12, %struct.r8180_priv** %10, align 8
  %13 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %14 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %13, i32 0, i32 0
  %15 = call i32 @down(i32* %14)
  %16 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %17 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %4
  %21 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %22 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.iw_request_info*, %struct.iw_request_info** %6, align 8
  %25 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @ieee80211_wx_get_scan(i32 %23, %struct.iw_request_info* %24, %union.iwreq_data* %25, i8* %26)
  store i32 %27, i32* %9, align 4
  br label %29

28:                                               ; preds = %4
  store i32 -1, i32* %9, align 4
  br label %29

29:                                               ; preds = %28, %20
  %30 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %31 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %30, i32 0, i32 0
  %32 = call i32 @up(i32* %31)
  %33 = load i32, i32* %9, align 4
  ret i32 %33
}

declare dso_local %struct.r8180_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @ieee80211_wx_get_scan(i32, %struct.iw_request_info*, %union.iwreq_data*, i8*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
