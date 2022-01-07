; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_SetRFPowerState.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_SetRFPowerState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i64, i32 }

@.str = private unnamed_addr constant [50 x i8] c"SetRFPowerState8185(): unknown RFChipID: 0x%X!!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SetRFPowerState(%struct.net_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.r8180_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call i64 @ieee80211_priv(%struct.net_device* %8)
  %10 = inttoptr i64 %9 to %struct.r8180_priv*
  store %struct.r8180_priv* %10, %struct.r8180_priv** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.r8180_priv*, %struct.r8180_priv** %6, align 8
  %13 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %11, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %33

18:                                               ; preds = %2
  %19 = load %struct.r8180_priv*, %struct.r8180_priv** %6, align 8
  %20 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %26 [
    i32 129, label %22
    i32 128, label %22
  ]

22:                                               ; preds = %18, %18
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @SetZebraRFPowerState8185(%struct.net_device* %23, i64 %24)
  store i32 %25, i32* %7, align 4
  br label %31

26:                                               ; preds = %18
  %27 = load %struct.r8180_priv*, %struct.r8180_priv** %6, align 8
  %28 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %26, %22
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %16
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @SetZebraRFPowerState8185(%struct.net_device*, i64) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
