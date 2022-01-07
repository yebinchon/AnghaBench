; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_wx.c_r8180_wx_set_rts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_wx.c_r8180_wx_set_rts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.r8180_priv = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@DEFAULT_RTS_THRESHOLD = common dso_local global i64 0, align 8
@MIN_RTS_THRESHOLD = common dso_local global i64 0, align 8
@MAX_RTS_THRESHOLD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @r8180_wx_set_rts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r8180_wx_set_rts(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.r8180_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.r8180_priv* @ieee80211_priv(%struct.net_device* %11)
  store %struct.r8180_priv* %12, %struct.r8180_priv** %10, align 8
  %13 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %14 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %55

20:                                               ; preds = %4
  %21 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %22 = bitcast %union.iwreq_data* %21 to %struct.TYPE_4__*
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i64, i64* @DEFAULT_RTS_THRESHOLD, align 8
  %28 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %29 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %54

30:                                               ; preds = %20
  %31 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %32 = bitcast %union.iwreq_data* %31 to %struct.TYPE_4__*
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MIN_RTS_THRESHOLD, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %44, label %37

37:                                               ; preds = %30
  %38 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %39 = bitcast %union.iwreq_data* %38 to %struct.TYPE_4__*
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MAX_RTS_THRESHOLD, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %37, %30
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %55

47:                                               ; preds = %37
  %48 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %49 = bitcast %union.iwreq_data* %48 to %struct.TYPE_4__*
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %53 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %47, %26
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %44, %19
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local %struct.r8180_priv* @ieee80211_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
