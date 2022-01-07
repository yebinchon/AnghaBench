; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_wx.c_r8180_wx_set_sens.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_wx.c_r8180_wx_set_sens.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.r8180_priv = type { i64 (%struct.net_device.0*, i32)*, i32, i32, %struct.TYPE_4__* }
%struct.net_device.0 = type opaque
%struct.TYPE_4__ = type { i64 }

@EINVAL = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @r8180_wx_set_sens to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r8180_wx_set_sens(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.r8180_priv*, align 8
  %11 = alloca i16, align 2
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.r8180_priv* @ieee80211_priv(%struct.net_device* %12)
  store %struct.r8180_priv* %13, %struct.r8180_priv** %10, align 8
  store i16 0, i16* %11, align 2
  %14 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %15 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %14, i32 0, i32 3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %61

21:                                               ; preds = %4
  %22 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %23 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %22, i32 0, i32 1
  %24 = call i32 @down(i32* %23)
  %25 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %26 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %25, i32 0, i32 0
  %27 = load i64 (%struct.net_device.0*, i32)*, i64 (%struct.net_device.0*, i32)** %26, align 8
  %28 = icmp eq i64 (%struct.net_device.0*, i32)* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i16 -1, i16* %11, align 2
  br label %55

30:                                               ; preds = %21
  %31 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %32 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %31, i32 0, i32 0
  %33 = load i64 (%struct.net_device.0*, i32)*, i64 (%struct.net_device.0*, i32)** %32, align 8
  %34 = load %struct.net_device*, %struct.net_device** %6, align 8
  %35 = bitcast %struct.net_device* %34 to %struct.net_device.0*
  %36 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %37 = bitcast %union.iwreq_data* %36 to %struct.TYPE_3__*
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 %33(%struct.net_device.0* %35, i32 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %30
  %43 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %44 = bitcast %union.iwreq_data* %43 to %struct.TYPE_3__*
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %48 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  br label %54

49:                                               ; preds = %30
  %50 = load i16, i16* @EINVAL, align 2
  %51 = sext i16 %50 to i32
  %52 = sub nsw i32 0, %51
  %53 = trunc i32 %52 to i16
  store i16 %53, i16* %11, align 2
  br label %54

54:                                               ; preds = %49, %42
  br label %55

55:                                               ; preds = %54, %29
  %56 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %57 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %56, i32 0, i32 1
  %58 = call i32 @up(i32* %57)
  %59 = load i16, i16* %11, align 2
  %60 = sext i16 %59 to i32
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %55, %20
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local %struct.r8180_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
