; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_dm.c_GetDegradeTxRate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_dm.c_GetDegradeTxRate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"GetDegradeTxRate(): Input Tx Rate(%d) is undefined!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetDegradeTxRate(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.r8180_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.r8180_priv* @ieee80211_priv(%struct.net_device* %8)
  store %struct.r8180_priv* %9, %struct.r8180_priv** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %20 [
    i32 108, label %11
    i32 96, label %12
    i32 72, label %13
    i32 48, label %14
    i32 36, label %15
    i32 22, label %16
    i32 11, label %17
    i32 4, label %18
    i32 2, label %19
  ]

11:                                               ; preds = %2
  store i32 96, i32* %7, align 4
  br label %24

12:                                               ; preds = %2
  store i32 72, i32* %7, align 4
  br label %24

13:                                               ; preds = %2
  store i32 48, i32* %7, align 4
  br label %24

14:                                               ; preds = %2
  store i32 36, i32* %7, align 4
  br label %24

15:                                               ; preds = %2
  store i32 22, i32* %7, align 4
  br label %24

16:                                               ; preds = %2
  store i32 11, i32* %7, align 4
  br label %24

17:                                               ; preds = %2
  store i32 4, i32* %7, align 4
  br label %24

18:                                               ; preds = %2
  store i32 2, i32* %7, align 4
  br label %24

19:                                               ; preds = %2
  store i32 2, i32* %7, align 4
  br label %24

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %3, align 4
  br label %33

24:                                               ; preds = %19, %18, %17, %16, %15, %14, %13, %12, %11
  %25 = load %struct.r8180_priv*, %struct.r8180_priv** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @IncludedInSupportedRates(%struct.r8180_priv* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %29, %20
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.r8180_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i64 @IncludedInSupportedRates(%struct.r8180_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
