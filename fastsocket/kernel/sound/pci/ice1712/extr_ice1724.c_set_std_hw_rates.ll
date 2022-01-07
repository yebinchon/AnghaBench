; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1724.c_set_std_hw_rates.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1724.c_set_std_hw_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@ICE_EEP2_ACLINK = common dso_local global i64 0, align 8
@VT1724_CFG_PRO_I2S = common dso_local global i32 0, align 4
@ICE_EEP2_I2S = common dso_local global i64 0, align 8
@hw_constraints_rates_192 = common dso_local global i32 0, align 4
@hw_constraints_rates_96 = common dso_local global i32 0, align 4
@hw_constraints_rates_48 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*)* @set_std_hw_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_std_hw_rates(%struct.snd_ice1712* %0) #0 {
  %2 = alloca %struct.snd_ice1712*, align 8
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %2, align 8
  %3 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %4 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* @ICE_EEP2_ACLINK, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @VT1724_CFG_PRO_I2S, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %1
  %14 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %15 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @ICE_EEP2_I2S, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %13
  %24 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %25 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %30 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %29, i32 0, i32 0
  store i32* @hw_constraints_rates_192, i32** %30, align 8
  br label %34

31:                                               ; preds = %23, %13
  %32 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %33 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %32, i32 0, i32 0
  store i32* @hw_constraints_rates_96, i32** %33, align 8
  br label %34

34:                                               ; preds = %31, %28
  br label %38

35:                                               ; preds = %1
  %36 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %37 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %36, i32 0, i32 0
  store i32* @hw_constraints_rates_48, i32** %37, align 8
  br label %38

38:                                               ; preds = %35, %34
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
