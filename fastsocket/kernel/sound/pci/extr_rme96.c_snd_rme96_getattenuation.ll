; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_rme96.c_snd_rme96_getattenuation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_rme96.c_snd_rme96_getattenuation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rme96 = type { i32 }

@RME96_WCR_BITPOS_GAIN_0 = common dso_local global i32 0, align 4
@RME96_WCR_BITPOS_GAIN_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rme96*)* @snd_rme96_getattenuation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme96_getattenuation(%struct.rme96* %0) #0 {
  %2 = alloca %struct.rme96*, align 8
  store %struct.rme96* %0, %struct.rme96** %2, align 8
  %3 = load %struct.rme96*, %struct.rme96** %2, align 8
  %4 = getelementptr inbounds %struct.rme96, %struct.rme96* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @RME96_WCR_BITPOS_GAIN_0, align 4
  %7 = ashr i32 %5, %6
  %8 = and i32 %7, 1
  %9 = load %struct.rme96*, %struct.rme96** %2, align 8
  %10 = getelementptr inbounds %struct.rme96, %struct.rme96* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @RME96_WCR_BITPOS_GAIN_1, align 4
  %13 = ashr i32 %11, %12
  %14 = and i32 %13, 1
  %15 = shl i32 %14, 1
  %16 = add nsw i32 %8, %15
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
