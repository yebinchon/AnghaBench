; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_wx.c_r8192_wx_set_sens.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_wx.c_r8192_wx_set_sens.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.r8192_priv = type { i64 (%struct.net_device.0*, i32)*, i32, i32 }
%struct.net_device.0 = type opaque

@EINVAL = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @r8192_wx_set_sens to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r8192_wx_set_sens(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.r8192_priv*, align 8
  %10 = alloca i16, align 2
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %11)
  store %struct.r8192_priv* %12, %struct.r8192_priv** %9, align 8
  store i16 0, i16* %10, align 2
  %13 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %14 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %13, i32 0, i32 1
  %15 = call i32 @down(i32* %14)
  %16 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %17 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %16, i32 0, i32 0
  %18 = load i64 (%struct.net_device.0*, i32)*, i64 (%struct.net_device.0*, i32)** %17, align 8
  %19 = icmp eq i64 (%struct.net_device.0*, i32)* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i16 -1, i16* %10, align 2
  br label %46

21:                                               ; preds = %4
  %22 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %23 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %22, i32 0, i32 0
  %24 = load i64 (%struct.net_device.0*, i32)*, i64 (%struct.net_device.0*, i32)** %23, align 8
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = bitcast %struct.net_device* %25 to %struct.net_device.0*
  %27 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %28 = bitcast %union.iwreq_data* %27 to %struct.TYPE_2__*
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 %24(%struct.net_device.0* %26, i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %21
  %34 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %35 = bitcast %union.iwreq_data* %34 to %struct.TYPE_2__*
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %39 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  br label %45

40:                                               ; preds = %21
  %41 = load i16, i16* @EINVAL, align 2
  %42 = sext i16 %41 to i32
  %43 = sub nsw i32 0, %42
  %44 = trunc i32 %43 to i16
  store i16 %44, i16* %10, align 2
  br label %45

45:                                               ; preds = %40, %33
  br label %46

46:                                               ; preds = %45, %20
  %47 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %48 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %47, i32 0, i32 1
  %49 = call i32 @up(i32* %48)
  %50 = load i16, i16* %10, align 2
  %51 = sext i16 %50 to i32
  ret i32 %51
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
