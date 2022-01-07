; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_rtl8225z2.c_rtl8225z2_rf_set_chan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_rtl8225z2.c_rtl8225z2_rf_set_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@rtl8225_chan = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8225z2_rf_set_chan(%struct.net_device* %0, i16 signext %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i16, align 2
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i16 %1, i16* %4, align 2
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = load i16, i16* %4, align 2
  %7 = call i32 @rtl8225z2_SetTXPowerLevel(%struct.net_device* %5, i16 signext %6)
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = load i32*, i32** @rtl8225_chan, align 8
  %10 = load i16, i16* %4, align 2
  %11 = sext i16 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @RF_WriteReg(%struct.net_device* %8, i32 7, i32 %13)
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call i32 @RF_ReadReg(%struct.net_device* %15, i32 7)
  %17 = and i32 %16, 3968
  %18 = load i32*, i32** @rtl8225_chan, align 8
  %19 = load i16, i16* %4, align 2
  %20 = sext i16 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %17, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = load i32*, i32** @rtl8225_chan, align 8
  %27 = load i16, i16* %4, align 2
  %28 = sext i16 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @RF_WriteReg(%struct.net_device* %25, i32 7, i32 %30)
  br label %32

32:                                               ; preds = %24, %2
  %33 = call i32 @mdelay(i32 1)
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = call i32 @force_pci_posting(%struct.net_device* %34)
  %36 = call i32 @mdelay(i32 10)
  ret void
}

declare dso_local i32 @rtl8225z2_SetTXPowerLevel(%struct.net_device*, i16 signext) #1

declare dso_local i32 @RF_WriteReg(%struct.net_device*, i32, i32) #1

declare dso_local i32 @RF_ReadReg(%struct.net_device*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @force_pci_posting(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
