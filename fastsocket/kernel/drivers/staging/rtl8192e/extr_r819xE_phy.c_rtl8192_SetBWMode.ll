; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r819xE_phy.c_rtl8192_SetBWMode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r819xE_phy.c_rtl8192_SetBWMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HT_EXTCHNL_OFFSET_LOWER = common dso_local global i64 0, align 8
@HAL_PRIME_CHNL_OFFSET_UPPER = common dso_local global i32 0, align 4
@HT_EXTCHNL_OFFSET_UPPER = common dso_local global i64 0, align 8
@HAL_PRIME_CHNL_OFFSET_LOWER = common dso_local global i32 0, align 4
@HAL_PRIME_CHNL_OFFSET_DONT_CARE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8192_SetBWMode(%struct.net_device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %8)
  store %struct.r8192_priv* %9, %struct.r8192_priv** %7, align 8
  %10 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %11 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %49

15:                                               ; preds = %3
  %16 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %17 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @atomic_inc(i32* %19)
  %21 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %22 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %25 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @HT_EXTCHNL_OFFSET_LOWER, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %15
  %30 = load i32, i32* @HAL_PRIME_CHNL_OFFSET_UPPER, align 4
  %31 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %32 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %46

33:                                               ; preds = %15
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @HT_EXTCHNL_OFFSET_UPPER, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* @HAL_PRIME_CHNL_OFFSET_LOWER, align 4
  %39 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %40 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %45

41:                                               ; preds = %33
  %42 = load i32, i32* @HAL_PRIME_CHNL_OFFSET_DONT_CARE, align 4
  %43 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %44 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %37
  br label %46

46:                                               ; preds = %45, %29
  %47 = load %struct.net_device*, %struct.net_device** %4, align 8
  %48 = call i32 @rtl8192_SetBWModeWorkItem(%struct.net_device* %47)
  br label %49

49:                                               ; preds = %46, %14
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @rtl8192_SetBWModeWorkItem(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
