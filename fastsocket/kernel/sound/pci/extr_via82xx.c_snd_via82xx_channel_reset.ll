; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_via82xx.c_snd_via82xx_channel_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_via82xx.c_snd_via82xx_channel_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via82xx = type { i32 }
%struct.viadev = type { i64, i64 }

@VIA_REG_CTRL_PAUSE = common dso_local global i32 0, align 4
@VIA_REG_CTRL_TERMINATE = common dso_local global i32 0, align 4
@VIA_REG_CTRL_RESET = common dso_local global i32 0, align 4
@OFFSET_CONTROL = common dso_local global i32 0, align 4
@OFFSET_STATUS = common dso_local global i32 0, align 4
@OFFSET_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.via82xx*, %struct.viadev*)* @snd_via82xx_channel_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_via82xx_channel_reset(%struct.via82xx* %0, %struct.viadev* %1) #0 {
  %3 = alloca %struct.via82xx*, align 8
  %4 = alloca %struct.viadev*, align 8
  store %struct.via82xx* %0, %struct.via82xx** %3, align 8
  store %struct.viadev* %1, %struct.viadev** %4, align 8
  %5 = load i32, i32* @VIA_REG_CTRL_PAUSE, align 4
  %6 = load i32, i32* @VIA_REG_CTRL_TERMINATE, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @VIA_REG_CTRL_RESET, align 4
  %9 = or i32 %7, %8
  %10 = load %struct.viadev*, %struct.viadev** %4, align 8
  %11 = load i32, i32* @OFFSET_CONTROL, align 4
  %12 = call i32 @VIADEV_REG(%struct.viadev* %10, i32 %11)
  %13 = call i32 @outb(i32 %9, i32 %12)
  %14 = load %struct.viadev*, %struct.viadev** %4, align 8
  %15 = load i32, i32* @OFFSET_CONTROL, align 4
  %16 = call i32 @VIADEV_REG(%struct.viadev* %14, i32 %15)
  %17 = call i32 @inb(i32 %16)
  %18 = call i32 @udelay(i32 50)
  %19 = load %struct.viadev*, %struct.viadev** %4, align 8
  %20 = load i32, i32* @OFFSET_CONTROL, align 4
  %21 = call i32 @VIADEV_REG(%struct.viadev* %19, i32 %20)
  %22 = call i32 @outb(i32 0, i32 %21)
  %23 = load %struct.viadev*, %struct.viadev** %4, align 8
  %24 = load i32, i32* @OFFSET_STATUS, align 4
  %25 = call i32 @VIADEV_REG(%struct.viadev* %23, i32 %24)
  %26 = call i32 @outb(i32 3, i32 %25)
  %27 = load %struct.viadev*, %struct.viadev** %4, align 8
  %28 = load i32, i32* @OFFSET_TYPE, align 4
  %29 = call i32 @VIADEV_REG(%struct.viadev* %27, i32 %28)
  %30 = call i32 @outb(i32 0, i32 %29)
  %31 = load %struct.viadev*, %struct.viadev** %4, align 8
  %32 = getelementptr inbounds %struct.viadev, %struct.viadev* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.viadev*, %struct.viadev** %4, align 8
  %34 = getelementptr inbounds %struct.viadev, %struct.viadev* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  ret void
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @VIADEV_REG(%struct.viadev*, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
