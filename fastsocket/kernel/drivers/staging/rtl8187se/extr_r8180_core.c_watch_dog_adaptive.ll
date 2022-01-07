; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_watch_dog_adaptive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_watch_dog_adaptive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8180_priv = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"<----watch_dog_adaptive():driver is not up!\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@IEEE80211_WATCH_DOG_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @watch_dog_adaptive(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.r8180_priv*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.net_device*
  %6 = call %struct.r8180_priv* @ieee80211_priv(%struct.net_device* %5)
  store %struct.r8180_priv* %6, %struct.r8180_priv** %3, align 8
  %7 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %8 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = call i32 @DMESG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %38

13:                                               ; preds = %1
  %14 = load i64, i64* %2, align 8
  %15 = inttoptr i64 %14 to %struct.net_device*
  %16 = call i32 @rtl8180_watch_dog(%struct.net_device* %15)
  %17 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %18 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %23 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = bitcast i32* %25 to i8*
  %27 = call i32 @queue_work(i32 %21, i8* %26)
  %28 = load i64, i64* @jiffies, align 8
  %29 = load i32, i32* @IEEE80211_WATCH_DOG_TIME, align 4
  %30 = call i64 @MSECS(i32 %29)
  %31 = add nsw i64 %28, %30
  %32 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %33 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  %35 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %36 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %35, i32 0, i32 0
  %37 = call i32 @add_timer(%struct.TYPE_4__* %36)
  br label %38

38:                                               ; preds = %13, %11
  ret void
}

declare dso_local %struct.r8180_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @DMESG(i8*) #1

declare dso_local i32 @rtl8180_watch_dog(%struct.net_device*) #1

declare dso_local i32 @queue_work(i32, i8*) #1

declare dso_local i64 @MSECS(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
