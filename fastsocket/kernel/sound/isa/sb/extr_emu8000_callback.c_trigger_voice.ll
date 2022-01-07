; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_emu8000_callback.c_trigger_voice.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_emu8000_callback.c_trigger_voice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux_voice = type { i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_4__*, %struct.snd_emu8000* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64* }
%struct.snd_emu8000 = type { i32 }

@MIDI_CTL_E1_REVERB_DEPTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emux_voice*)* @trigger_voice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trigger_voice(%struct.snd_emux_voice* %0) #0 {
  %2 = alloca %struct.snd_emux_voice*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_emu8000*, align 8
  store %struct.snd_emux_voice* %0, %struct.snd_emux_voice** %2, align 8
  %6 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %7 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %10 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %9, i32 0, i32 5
  %11 = load %struct.snd_emu8000*, %struct.snd_emu8000** %10, align 8
  store %struct.snd_emu8000* %11, %struct.snd_emu8000** %5, align 8
  %12 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %13 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  %17 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %18 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %17, i32 0, i32 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* @MIDI_CTL_E1_REVERB_DEPTH, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = mul nsw i32 %25, 9
  %27 = sdiv i32 %26, 10
  %28 = load i32, i32* %4, align 4
  %29 = add i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @LIMITMAX(i32 %30, i32 255)
  %32 = load i32, i32* %4, align 4
  %33 = shl i32 %32, 8
  %34 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %35 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 16
  %38 = or i32 %33, %37
  %39 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %40 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %38, %41
  store i32 %42, i32* %4, align 4
  %43 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @EMU8000_PTRX_WRITE(%struct.snd_emu8000* %43, i32 %44, i32 %45)
  %47 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %50 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 16
  %53 = call i32 @EMU8000_CPF_WRITE(%struct.snd_emu8000* %47, i32 %48, i32 %52)
  %54 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %55 = load i32, i32* %3, align 4
  %56 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %57 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @EMU8000_DCYSUSV_WRITE(%struct.snd_emu8000* %54, i32 %55, i32 %60)
  ret void
}

declare dso_local i32 @LIMITMAX(i32, i32) #1

declare dso_local i32 @EMU8000_PTRX_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_CPF_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_DCYSUSV_WRITE(%struct.snd_emu8000*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
