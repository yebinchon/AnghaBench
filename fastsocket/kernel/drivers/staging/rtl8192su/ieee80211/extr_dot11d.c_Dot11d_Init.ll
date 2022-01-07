; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_dot11d.c_Dot11d_Init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_dot11d.c_Dot11d_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i64, i32, i64 }

@DOT11D_STATE_NONE = common dso_local global i32 0, align 4
@MAX_CHANNEL_NUMBER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"Dot11d_Init()\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Dot11d_Init(%struct.ieee80211_device* %0) #0 {
  %2 = alloca %struct.ieee80211_device*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %2, align 8
  %4 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %5 = call %struct.TYPE_3__* @GET_DOT11D_INFO(%struct.ieee80211_device* %4)
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 4
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* @DOT11D_STATE_NONE, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* @MAX_CHANNEL_NUMBER, align 8
  %17 = add nsw i64 %16, 1
  %18 = call i32 @memset(i32 %15, i32 0, i64 %17)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i64, i64* @MAX_CHANNEL_NUMBER, align 8
  %23 = add nsw i64 %22, 1
  %24 = call i32 @memset(i32 %21, i32 255, i64 %23)
  %25 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %26 = call i32 @RESET_CIE_WATCHDOG(%struct.ieee80211_device* %25)
  %27 = call i32 @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local %struct.TYPE_3__* @GET_DOT11D_INFO(%struct.ieee80211_device*) #1

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local i32 @RESET_CIE_WATCHDOG(%struct.ieee80211_device*) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
