; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_rme96.c_snd_rme96_apply_dac_volume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_rme96.c_snd_rme96_apply_dac_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rme96 = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rme96*)* @snd_rme96_apply_dac_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_rme96_apply_dac_volume(%struct.rme96* %0) #0 {
  %2 = alloca %struct.rme96*, align 8
  store %struct.rme96* %0, %struct.rme96** %2, align 8
  %3 = load %struct.rme96*, %struct.rme96** %2, align 8
  %4 = call i64 @RME96_DAC_IS_1852(%struct.rme96* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %1
  %7 = load %struct.rme96*, %struct.rme96** %2, align 8
  %8 = load %struct.rme96*, %struct.rme96** %2, align 8
  %9 = getelementptr inbounds %struct.rme96, %struct.rme96* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 %12, 2
  %14 = call i32 @snd_rme96_write_SPI(%struct.rme96* %7, i32 %13)
  %15 = load %struct.rme96*, %struct.rme96** %2, align 8
  %16 = load %struct.rme96*, %struct.rme96** %2, align 8
  %17 = getelementptr inbounds %struct.rme96, %struct.rme96* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 2
  %22 = or i32 %21, 2
  %23 = call i32 @snd_rme96_write_SPI(%struct.rme96* %15, i32 %22)
  br label %47

24:                                               ; preds = %1
  %25 = load %struct.rme96*, %struct.rme96** %2, align 8
  %26 = call i64 @RME96_DAC_IS_1855(%struct.rme96* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %24
  %29 = load %struct.rme96*, %struct.rme96** %2, align 8
  %30 = load %struct.rme96*, %struct.rme96** %2, align 8
  %31 = getelementptr inbounds %struct.rme96, %struct.rme96* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 1023
  %36 = call i32 @snd_rme96_write_SPI(%struct.rme96* %29, i32 %35)
  %37 = load %struct.rme96*, %struct.rme96** %2, align 8
  %38 = load %struct.rme96*, %struct.rme96** %2, align 8
  %39 = getelementptr inbounds %struct.rme96, %struct.rme96* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 1023
  %44 = or i32 %43, 1024
  %45 = call i32 @snd_rme96_write_SPI(%struct.rme96* %37, i32 %44)
  br label %46

46:                                               ; preds = %28, %24
  br label %47

47:                                               ; preds = %46, %6
  ret void
}

declare dso_local i64 @RME96_DAC_IS_1852(%struct.rme96*) #1

declare dso_local i32 @snd_rme96_write_SPI(%struct.rme96*, i32) #1

declare dso_local i64 @RME96_DAC_IS_1855(%struct.rme96*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
