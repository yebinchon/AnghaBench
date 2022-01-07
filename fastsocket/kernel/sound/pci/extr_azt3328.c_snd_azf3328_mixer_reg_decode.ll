; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_azt3328.c_snd_azf3328_mixer_reg_decode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_azt3328.c_snd_azf3328_mixer_reg_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.azf3328_mixer_reg = type { i64, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.azf3328_mixer_reg*, i64)* @snd_azf3328_mixer_reg_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_azf3328_mixer_reg_decode(%struct.azf3328_mixer_reg* %0, i64 %1) #0 {
  %3 = alloca %struct.azf3328_mixer_reg*, align 8
  %4 = alloca i64, align 8
  store %struct.azf3328_mixer_reg* %0, %struct.azf3328_mixer_reg** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = and i64 %5, 255
  %7 = load %struct.azf3328_mixer_reg*, %struct.azf3328_mixer_reg** %3, align 8
  %8 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %7, i32 0, i32 0
  store i64 %6, i64* %8, align 8
  %9 = load i64, i64* %4, align 8
  %10 = lshr i64 %9, 8
  %11 = and i64 %10, 15
  %12 = load %struct.azf3328_mixer_reg*, %struct.azf3328_mixer_reg** %3, align 8
  %13 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %12, i32 0, i32 1
  store i64 %11, i64* %13, align 8
  %14 = load i64, i64* %4, align 8
  %15 = lshr i64 %14, 12
  %16 = and i64 %15, 15
  %17 = load %struct.azf3328_mixer_reg*, %struct.azf3328_mixer_reg** %3, align 8
  %18 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %17, i32 0, i32 2
  store i64 %16, i64* %18, align 8
  %19 = load i64, i64* %4, align 8
  %20 = lshr i64 %19, 16
  %21 = and i64 %20, 255
  %22 = load %struct.azf3328_mixer_reg*, %struct.azf3328_mixer_reg** %3, align 8
  %23 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %22, i32 0, i32 3
  store i64 %21, i64* %23, align 8
  %24 = load i64, i64* %4, align 8
  %25 = lshr i64 %24, 24
  %26 = and i64 %25, 1
  %27 = load %struct.azf3328_mixer_reg*, %struct.azf3328_mixer_reg** %3, align 8
  %28 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %27, i32 0, i32 4
  store i64 %26, i64* %28, align 8
  %29 = load i64, i64* %4, align 8
  %30 = lshr i64 %29, 25
  %31 = and i64 %30, 1
  %32 = load %struct.azf3328_mixer_reg*, %struct.azf3328_mixer_reg** %3, align 8
  %33 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %32, i32 0, i32 5
  store i64 %31, i64* %33, align 8
  %34 = load i64, i64* %4, align 8
  %35 = lshr i64 %34, 26
  %36 = and i64 %35, 15
  %37 = load %struct.azf3328_mixer_reg*, %struct.azf3328_mixer_reg** %3, align 8
  %38 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %37, i32 0, i32 6
  store i64 %36, i64* %38, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
