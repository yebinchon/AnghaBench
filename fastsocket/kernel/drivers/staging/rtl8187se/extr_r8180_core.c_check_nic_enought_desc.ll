; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_check_nic_enought_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_check_nic_enought_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i16 @check_nic_enought_desc(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r8180_priv*, align 8
  %6 = alloca %struct.ieee80211_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.r8180_priv* @ieee80211_priv(%struct.net_device* %9)
  store %struct.r8180_priv* %10, %struct.r8180_priv** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.ieee80211_device* @netdev_priv(%struct.net_device* %11)
  store %struct.ieee80211_device* %12, %struct.ieee80211_device** %6, align 8
  %13 = load %struct.r8180_priv*, %struct.r8180_priv** %5, align 8
  %14 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = add i64 %18, 4
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %7, align 4
  %21 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 2
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %26, %2
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.r8180_priv*, %struct.r8180_priv** %5, align 8
  %32 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %33, 4
  %35 = sdiv i32 %30, %34
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.r8180_priv*, %struct.r8180_priv** %5, align 8
  %38 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = srem i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %29
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %42, %29
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 2
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @get_curr_tx_free_desc(%struct.net_device* %48, i32 %49)
  %51 = icmp slt i32 %47, %50
  %52 = zext i1 %51 to i32
  %53 = trunc i32 %52 to i16
  ret i16 %53
}

declare dso_local %struct.r8180_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local %struct.ieee80211_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @get_curr_tx_free_desc(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
