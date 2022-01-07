; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_dm.c_SetAntenna8185.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_dm.c_SetAntenna8185.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i32, i32 }

@ANTSEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"SetAntenna8185: unkown RFChipID(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"SetAntenna8185: unkown u1bAntennaIndex(%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SetAntenna8185(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r8180_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call i64 @ieee80211_priv(%struct.net_device* %7)
  %9 = inttoptr i64 %8 to %struct.r8180_priv*
  store %struct.r8180_priv* %9, %struct.r8180_priv** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %47 [
    i32 0, label %11
    i32 1, label %29
  ]

11:                                               ; preds = %2
  %12 = load %struct.r8180_priv*, %struct.r8180_priv** %5, align 8
  %13 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %23 [
    i32 129, label %15
    i32 128, label %15
  ]

15:                                               ; preds = %11, %11
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = load i32, i32* @ANTSEL, align 4
  %18 = call i32 @write_nic_byte(%struct.net_device* %16, i32 %17, i32 3)
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = call i32 @write_phy_cck(%struct.net_device* %19, i32 17, i32 155)
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = call i32 @write_phy_ofdm(%struct.net_device* %21, i32 13, i32 92)
  store i32 1, i32* %6, align 4
  br label %28

23:                                               ; preds = %11
  %24 = load %struct.r8180_priv*, %struct.r8180_priv** %5, align 8
  %25 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %23, %15
  br label %50

29:                                               ; preds = %2
  %30 = load %struct.r8180_priv*, %struct.r8180_priv** %5, align 8
  %31 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %41 [
    i32 129, label %33
    i32 128, label %33
  ]

33:                                               ; preds = %29, %29
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = load i32, i32* @ANTSEL, align 4
  %36 = call i32 @write_nic_byte(%struct.net_device* %34, i32 %35, i32 0)
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = call i32 @write_phy_cck(%struct.net_device* %37, i32 17, i32 187)
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = call i32 @write_phy_ofdm(%struct.net_device* %39, i32 13, i32 84)
  store i32 1, i32* %6, align 4
  br label %46

41:                                               ; preds = %29
  %42 = load %struct.r8180_priv*, %struct.r8180_priv** %5, align 8
  %43 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %41, %33
  br label %50

47:                                               ; preds = %2
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %47, %46, %28
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.r8180_priv*, %struct.r8180_priv** %5, align 8
  %56 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %53, %50
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @write_phy_cck(%struct.net_device*, i32, i32) #1

declare dso_local i32 @write_phy_ofdm(%struct.net_device*, i32, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
