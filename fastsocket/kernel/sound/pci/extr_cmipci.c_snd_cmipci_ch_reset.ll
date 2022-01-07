; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_cmipci.c_snd_cmipci_ch_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_cmipci.c_snd_cmipci_ch_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmipci = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CM_RST_CH0 = common dso_local global i32 0, align 4
@CM_REG_FUNCTRL0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmipci*, i32)* @snd_cmipci_ch_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_cmipci_ch_reset(%struct.cmipci* %0, i32 %1) #0 {
  %3 = alloca %struct.cmipci*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cmipci* %0, %struct.cmipci** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @CM_RST_CH0, align 4
  %7 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %8 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 %6, %14
  store i32 %15, i32* %5, align 4
  %16 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %17 = load i32, i32* @CM_REG_FUNCTRL0, align 4
  %18 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %19 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @snd_cmipci_write(%struct.cmipci* %16, i32 %17, i32 %22)
  %24 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %25 = load i32, i32* @CM_REG_FUNCTRL0, align 4
  %26 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %27 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = call i32 @snd_cmipci_write(%struct.cmipci* %24, i32 %25, i32 %31)
  %33 = call i32 @udelay(i32 10)
  ret void
}

declare dso_local i32 @snd_cmipci_write(%struct.cmipci*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
