; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_IPSEnter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_IPSEnter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i64, i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i64 }

@eRfOn = common dso_local global i64 0, align 8
@IEEE80211_LINKED = common dso_local global i64 0, align 8
@eRfOff = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IPSEnter(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8180_priv*, align 8
  %4 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call i64 @ieee80211_priv(%struct.net_device* %5)
  %7 = inttoptr i64 %6 to %struct.r8180_priv*
  store %struct.r8180_priv* %7, %struct.r8180_priv** %3, align 8
  %8 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %9 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %39

12:                                               ; preds = %1
  %13 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %14 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @eRfOn, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %12
  %20 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %21 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %19
  %25 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %26 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @IEEE80211_LINKED, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = load i32, i32* @eRfOff, align 4
  %34 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %35 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = call i32 @InactivePowerSave(%struct.net_device* %36)
  br label %38

38:                                               ; preds = %32, %24, %19, %12
  br label %39

39:                                               ; preds = %38, %1
  ret void
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @InactivePowerSave(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
