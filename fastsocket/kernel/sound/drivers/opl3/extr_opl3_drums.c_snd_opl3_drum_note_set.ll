; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl3/extr_opl3_drums.c_snd_opl3_drum_note_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl3/extr_opl3_drums.c_snd_opl3_drum_note_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opl3 = type { i32 (%struct.snd_opl3*, i16, i32)* }
%struct.snd_opl3_drum_note = type { i8, i32, i32 }

@OPL3_LEFT = common dso_local global i8 0, align 1
@OPL3_REG_FNUM_LOW = common dso_local global i8 0, align 1
@OPL3_REG_KEYON_BLOCK = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_opl3*, %struct.snd_opl3_drum_note*)* @snd_opl3_drum_note_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_opl3_drum_note_set(%struct.snd_opl3* %0, %struct.snd_opl3_drum_note* %1) #0 {
  %3 = alloca %struct.snd_opl3*, align 8
  %4 = alloca %struct.snd_opl3_drum_note*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i16, align 2
  store %struct.snd_opl3* %0, %struct.snd_opl3** %3, align 8
  store %struct.snd_opl3_drum_note* %1, %struct.snd_opl3_drum_note** %4, align 8
  %7 = load %struct.snd_opl3_drum_note*, %struct.snd_opl3_drum_note** %4, align 8
  %8 = getelementptr inbounds %struct.snd_opl3_drum_note, %struct.snd_opl3_drum_note* %7, i32 0, i32 0
  %9 = load i8, i8* %8, align 4
  store i8 %9, i8* %5, align 1
  %10 = load i8, i8* @OPL3_LEFT, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* @OPL3_REG_FNUM_LOW, align 1
  %13 = zext i8 %12 to i32
  %14 = load i8, i8* %5, align 1
  %15 = zext i8 %14 to i32
  %16 = add nsw i32 %13, %15
  %17 = or i32 %11, %16
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* %6, align 2
  %19 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %20 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %19, i32 0, i32 0
  %21 = load i32 (%struct.snd_opl3*, i16, i32)*, i32 (%struct.snd_opl3*, i16, i32)** %20, align 8
  %22 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %23 = load i16, i16* %6, align 2
  %24 = load %struct.snd_opl3_drum_note*, %struct.snd_opl3_drum_note** %4, align 8
  %25 = getelementptr inbounds %struct.snd_opl3_drum_note, %struct.snd_opl3_drum_note* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 %21(%struct.snd_opl3* %22, i16 zeroext %23, i32 %26)
  %28 = load i8, i8* @OPL3_LEFT, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* @OPL3_REG_KEYON_BLOCK, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, i8* %5, align 1
  %33 = zext i8 %32 to i32
  %34 = add nsw i32 %31, %33
  %35 = or i32 %29, %34
  %36 = trunc i32 %35 to i16
  store i16 %36, i16* %6, align 2
  %37 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %38 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %37, i32 0, i32 0
  %39 = load i32 (%struct.snd_opl3*, i16, i32)*, i32 (%struct.snd_opl3*, i16, i32)** %38, align 8
  %40 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %41 = load i16, i16* %6, align 2
  %42 = load %struct.snd_opl3_drum_note*, %struct.snd_opl3_drum_note** %4, align 8
  %43 = getelementptr inbounds %struct.snd_opl3_drum_note, %struct.snd_opl3_drum_note* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 %39(%struct.snd_opl3* %40, i16 zeroext %41, i32 %44)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
