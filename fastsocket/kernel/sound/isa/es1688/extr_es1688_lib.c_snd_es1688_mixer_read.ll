; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/es1688/extr_es1688_lib.c_snd_es1688_mixer_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/es1688/extr_es1688_lib.c_snd_es1688_mixer_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_es1688 = type { i32 }

@MIXER_ADDR = common dso_local global i32 0, align 4
@MIXER_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.snd_es1688*, i8)* @snd_es1688_mixer_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @snd_es1688_mixer_read(%struct.snd_es1688* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.snd_es1688*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store %struct.snd_es1688* %0, %struct.snd_es1688** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load i8, i8* %4, align 1
  %7 = load %struct.snd_es1688*, %struct.snd_es1688** %3, align 8
  %8 = load i32, i32* @MIXER_ADDR, align 4
  %9 = call i32 @ES1688P(%struct.snd_es1688* %7, i32 %8)
  %10 = call i32 @outb(i8 zeroext %6, i32 %9)
  %11 = call i32 @udelay(i32 10)
  %12 = load %struct.snd_es1688*, %struct.snd_es1688** %3, align 8
  %13 = load i32, i32* @MIXER_DATA, align 4
  %14 = call i32 @ES1688P(%struct.snd_es1688* %12, i32 %13)
  %15 = call zeroext i8 @inb(i32 %14)
  store i8 %15, i8* %5, align 1
  %16 = call i32 @udelay(i32 10)
  %17 = load i8, i8* %5, align 1
  ret i8 %17
}

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i32 @ES1688P(%struct.snd_es1688*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local zeroext i8 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
