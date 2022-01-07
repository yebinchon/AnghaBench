; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_io.c_snd_gf1_poke.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_io.c_snd_gf1_poke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gus_card = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@SNDRV_GF1_GW_DRAM_IO_LOW = common dso_local global i8 0, align 1
@SNDRV_GF1_GB_DRAM_IO_HIGH = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_gf1_poke(%struct.snd_gus_card* %0, i32 %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.snd_gus_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  store %struct.snd_gus_card* %0, %struct.snd_gus_card** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  %8 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %9 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %8, i32 0, i32 0
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load i8, i8* @SNDRV_GF1_GW_DRAM_IO_LOW, align 1
  %13 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %14 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @outb(i8 zeroext %12, i32 %16)
  %18 = call i32 (...) @mb()
  %19 = load i32, i32* %5, align 4
  %20 = trunc i32 %19 to i16
  %21 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %22 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @outw(i16 zeroext %20, i32 %24)
  %26 = call i32 (...) @mb()
  %27 = load i8, i8* @SNDRV_GF1_GB_DRAM_IO_HIGH, align 1
  %28 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %29 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @outb(i8 zeroext %27, i32 %31)
  %33 = call i32 (...) @mb()
  %34 = load i32, i32* %5, align 4
  %35 = lshr i32 %34, 16
  %36 = trunc i32 %35 to i8
  %37 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %38 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @outb(i8 zeroext %36, i32 %40)
  %42 = call i32 (...) @mb()
  %43 = load i8, i8* %6, align 1
  %44 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %45 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @outb(i8 zeroext %43, i32 %47)
  %49 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %50 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %49, i32 0, i32 0
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @outw(i16 zeroext, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
