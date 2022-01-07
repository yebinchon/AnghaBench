; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_softmac.c_ieee80211_sta_wakeup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_softmac.c_ieee80211_sta_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32, i32, i32 (i32)*, i32 (i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_sta_wakeup(%struct.ieee80211_device* %0, i16 signext %1) #0 {
  %3 = alloca %struct.ieee80211_device*, align 8
  %4 = alloca i16, align 2
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %3, align 8
  store i16 %1, i16* %4, align 2
  %5 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %6 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = load i16, i16* %4, align 2
  %11 = icmp ne i16 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %13, i32 0, i32 2
  %15 = load i32 (i32)*, i32 (i32)** %14, align 8
  %16 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %17 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 %15(i32 %18)
  %20 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %21 = call i32 @ieee80211_sta_ps_send_null_frame(%struct.ieee80211_device* %20, i32 0)
  br label %22

22:                                               ; preds = %12, %9
  br label %51

23:                                               ; preds = %2
  %24 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %25 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %30 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %29, i32 0, i32 3
  %31 = load i32 (i32)*, i32 (i32)** %30, align 8
  %32 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %33 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 %31(i32 %34)
  br label %36

36:                                               ; preds = %28, %23
  %37 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %38 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = load i16, i16* %4, align 2
  %40 = icmp ne i16 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %43 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %42, i32 0, i32 2
  %44 = load i32 (i32)*, i32 (i32)** %43, align 8
  %45 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %46 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 %44(i32 %47)
  %49 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %50 = call i32 @ieee80211_sta_ps_send_null_frame(%struct.ieee80211_device* %49, i32 0)
  br label %51

51:                                               ; preds = %22, %41, %36
  ret void
}

declare dso_local i32 @ieee80211_sta_ps_send_null_frame(%struct.ieee80211_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
