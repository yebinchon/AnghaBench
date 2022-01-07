; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_softmac.c_ieee80211_sta_wakeup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_softmac.c_ieee80211_sta_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32, i32, i32, i32 (i32)* }

@.str = private unnamed_addr constant [59 x i8] c"Warning: driver is probably failing to report TX ps error\0A\00", align 1

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
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = load i16, i16* %4, align 2
  %11 = icmp ne i16 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = call i32 @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %15 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %14, i32 0, i32 1
  store i32 1, i32* %15, align 4
  %16 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %17 = call i32 @ieee80211_sta_ps_send_null_frame(%struct.ieee80211_device* %16, i32 0)
  br label %18

18:                                               ; preds = %12, %9
  br label %42

19:                                               ; preds = %2
  %20 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %21 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %26 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %25, i32 0, i32 3
  %27 = load i32 (i32)*, i32 (i32)** %26, align 8
  %28 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %29 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 %27(i32 %30)
  br label %32

32:                                               ; preds = %24, %19
  %33 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %34 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load i16, i16* %4, align 2
  %36 = icmp ne i16 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %39 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %41 = call i32 @ieee80211_sta_ps_send_null_frame(%struct.ieee80211_device* %40, i32 0)
  br label %42

42:                                               ; preds = %18, %37, %32
  ret void
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @ieee80211_sta_ps_send_null_frame(%struct.ieee80211_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
