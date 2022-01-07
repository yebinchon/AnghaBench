; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_wx.c_r8180_wx_reset_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_wx.c_r8180_wx_reset_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { i32 }
%struct.r8180_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @r8180_wx_reset_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r8180_wx_reset_stats(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.r8180_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.r8180_priv* @ieee80211_priv(%struct.net_device* %10)
  store %struct.r8180_priv* %11, %struct.r8180_priv** %9, align 8
  %12 = load %struct.r8180_priv*, %struct.r8180_priv** %9, align 8
  %13 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %12, i32 0, i32 0
  %14 = call i32 @down(i32* %13)
  %15 = load %struct.r8180_priv*, %struct.r8180_priv** %9, align 8
  %16 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 25
  store i64 0, i64* %17, align 8
  %18 = load %struct.r8180_priv*, %struct.r8180_priv** %9, align 8
  %19 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 24
  store i64 0, i64* %20, align 8
  %21 = load %struct.r8180_priv*, %struct.r8180_priv** %9, align 8
  %22 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 23
  store i64 0, i64* %23, align 8
  %24 = load %struct.r8180_priv*, %struct.r8180_priv** %9, align 8
  %25 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 22
  store i64 0, i64* %26, align 8
  %27 = load %struct.r8180_priv*, %struct.r8180_priv** %9, align 8
  %28 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 21
  store i64 0, i64* %29, align 8
  %30 = load %struct.r8180_priv*, %struct.r8180_priv** %9, align 8
  %31 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 20
  store i64 0, i64* %32, align 8
  %33 = load %struct.r8180_priv*, %struct.r8180_priv** %9, align 8
  %34 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 19
  store i64 0, i64* %35, align 8
  %36 = load %struct.r8180_priv*, %struct.r8180_priv** %9, align 8
  %37 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 18
  store i64 0, i64* %38, align 8
  %39 = load %struct.r8180_priv*, %struct.r8180_priv** %9, align 8
  %40 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 17
  store i64 0, i64* %41, align 8
  %42 = load %struct.r8180_priv*, %struct.r8180_priv** %9, align 8
  %43 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 16
  store i64 0, i64* %44, align 8
  %45 = load %struct.r8180_priv*, %struct.r8180_priv** %9, align 8
  %46 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 15
  store i64 0, i64* %47, align 8
  %48 = load %struct.r8180_priv*, %struct.r8180_priv** %9, align 8
  %49 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 14
  store i64 0, i64* %50, align 8
  %51 = load %struct.r8180_priv*, %struct.r8180_priv** %9, align 8
  %52 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 13
  store i64 0, i64* %53, align 8
  %54 = load %struct.r8180_priv*, %struct.r8180_priv** %9, align 8
  %55 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 12
  store i64 0, i64* %56, align 8
  %57 = load %struct.r8180_priv*, %struct.r8180_priv** %9, align 8
  %58 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 11
  store i64 0, i64* %59, align 8
  %60 = load %struct.r8180_priv*, %struct.r8180_priv** %9, align 8
  %61 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 10
  store i64 0, i64* %62, align 8
  %63 = load %struct.r8180_priv*, %struct.r8180_priv** %9, align 8
  %64 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 9
  store i64 0, i64* %65, align 8
  %66 = load %struct.r8180_priv*, %struct.r8180_priv** %9, align 8
  %67 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 8
  store i64 0, i64* %68, align 8
  %69 = load %struct.r8180_priv*, %struct.r8180_priv** %9, align 8
  %70 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 7
  store i64 0, i64* %71, align 8
  %72 = load %struct.r8180_priv*, %struct.r8180_priv** %9, align 8
  %73 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 6
  store i64 0, i64* %74, align 8
  %75 = load %struct.r8180_priv*, %struct.r8180_priv** %9, align 8
  %76 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 5
  store i64 0, i64* %77, align 8
  %78 = load %struct.r8180_priv*, %struct.r8180_priv** %9, align 8
  %79 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 4
  store i64 0, i64* %80, align 8
  %81 = load %struct.r8180_priv*, %struct.r8180_priv** %9, align 8
  %82 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 3
  store i64 0, i64* %83, align 8
  %84 = load %struct.r8180_priv*, %struct.r8180_priv** %9, align 8
  %85 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  store i64 0, i64* %86, align 8
  %87 = load %struct.r8180_priv*, %struct.r8180_priv** %9, align 8
  %88 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  store i64 0, i64* %89, align 8
  %90 = load %struct.r8180_priv*, %struct.r8180_priv** %9, align 8
  %91 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i64 0, i64* %92, align 8
  %93 = load %struct.r8180_priv*, %struct.r8180_priv** %9, align 8
  %94 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %93, i32 0, i32 0
  %95 = call i32 @up(i32* %94)
  ret i32 0
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
