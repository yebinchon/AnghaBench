; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_wm87x6.c_wm8776_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_wm87x6.c_wm8776_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { %struct.xonar_wm87x6* }
%struct.xonar_wm87x6 = type { i32* }

@WM8776_HPZCEN = common dso_local global i32 0, align 4
@WM8776_HPLVOL = common dso_local global i64 0, align 8
@WM8776_HPRVOL = common dso_local global i64 0, align 8
@WM8776_ADCFMT_LJUST = common dso_local global i32 0, align 4
@WM8776_ADCWL_24 = common dso_local global i32 0, align 4
@WM8776_ADCMCLK = common dso_local global i32 0, align 4
@WM8776_ADCIFCTRL = common dso_local global i64 0, align 8
@WM8776_ADCRATE_256 = common dso_local global i32 0, align 4
@WM8776_DACRATE_256 = common dso_local global i32 0, align 4
@WM8776_MSTRCTRL = common dso_local global i64 0, align 8
@WM8776_HPPD = common dso_local global i32 0, align 4
@WM8776_PWRDOWN = common dso_local global i64 0, align 8
@WM8776_ZCA = common dso_local global i32 0, align 4
@WM8776_ADCLVOL = common dso_local global i64 0, align 8
@WM8776_ADCRVOL = common dso_local global i64 0, align 8
@WM8776_ADCMUX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*)* @wm8776_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8776_init(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  %3 = alloca %struct.xonar_wm87x6*, align 8
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %4 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %5 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %4, i32 0, i32 0
  %6 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %5, align 8
  store %struct.xonar_wm87x6* %6, %struct.xonar_wm87x6** %3, align 8
  %7 = load i32, i32* @WM8776_HPZCEN, align 4
  %8 = or i32 61, %7
  %9 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %3, align 8
  %10 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @WM8776_HPLVOL, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  store i32 %8, i32* %13, align 4
  %14 = load i32, i32* @WM8776_HPZCEN, align 4
  %15 = or i32 61, %14
  %16 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %3, align 8
  %17 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @WM8776_HPRVOL, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32 %15, i32* %20, align 4
  %21 = load i32, i32* @WM8776_ADCFMT_LJUST, align 4
  %22 = load i32, i32* @WM8776_ADCWL_24, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @WM8776_ADCMCLK, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %3, align 8
  %27 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @WM8776_ADCIFCTRL, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 %25, i32* %30, align 4
  %31 = load i32, i32* @WM8776_ADCRATE_256, align 4
  %32 = load i32, i32* @WM8776_DACRATE_256, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %3, align 8
  %35 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @WM8776_MSTRCTRL, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32 %33, i32* %38, align 4
  %39 = load i32, i32* @WM8776_HPPD, align 4
  %40 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %3, align 8
  %41 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @WM8776_PWRDOWN, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32 %39, i32* %44, align 4
  %45 = load i32, i32* @WM8776_ZCA, align 4
  %46 = or i32 165, %45
  %47 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %3, align 8
  %48 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @WM8776_ADCLVOL, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32 %46, i32* %51, align 4
  %52 = load i32, i32* @WM8776_ZCA, align 4
  %53 = or i32 165, %52
  %54 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %3, align 8
  %55 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @WM8776_ADCRVOL, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32 %53, i32* %58, align 4
  %59 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %3, align 8
  %60 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @WM8776_ADCMUX, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32 1, i32* %63, align 4
  %64 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %65 = call i32 @wm8776_registers_init(%struct.oxygen* %64)
  ret void
}

declare dso_local i32 @wm8776_registers_init(%struct.oxygen*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
