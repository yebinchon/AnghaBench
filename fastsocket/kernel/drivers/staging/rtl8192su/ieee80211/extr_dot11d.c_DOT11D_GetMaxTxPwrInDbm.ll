; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_dot11d.c_DOT11D_GetMaxTxPwrInDbm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_dot11d.c_DOT11D_GetMaxTxPwrInDbm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32 }
%struct.TYPE_3__ = type { i64*, i64* }

@MAX_CHANNEL_NUMBER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"DOT11D_GetMaxTxPwrInDbm(): Invalid Channel\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @DOT11D_GetMaxTxPwrInDbm(%struct.ieee80211_device* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ieee80211_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %9 = call %struct.TYPE_3__* @GET_DOT11D_INFO(%struct.ieee80211_device* %8)
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %6, align 8
  store i64 255, i64* %7, align 8
  %10 = load i64, i64* @MAX_CHANNEL_NUMBER, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = call i32 @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %15 = load i64, i64* %7, align 8
  store i64 %15, i64* %3, align 8
  br label %33

16:                                               ; preds = %2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %16
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %7, align 8
  br label %31

31:                                               ; preds = %24, %16
  %32 = load i64, i64* %7, align 8
  store i64 %32, i64* %3, align 8
  br label %33

33:                                               ; preds = %31, %13
  %34 = load i64, i64* %3, align 8
  ret i64 %34
}

declare dso_local %struct.TYPE_3__* @GET_DOT11D_INFO(%struct.ieee80211_device*) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
