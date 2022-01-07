; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_emu8000.c_mixer_bass_treble_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_emu8000.c_mixer_bass_treble_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.snd_emu8000 = type { i16, i16, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @mixer_bass_treble_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixer_bass_treble_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_emu8000*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %10 = call %struct.snd_emu8000* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.snd_emu8000* %10, %struct.snd_emu8000** %5, align 8
  %11 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %12 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = srem i32 %17, 12
  %19 = trunc i32 %18 to i16
  store i16 %19, i16* %8, align 2
  %20 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %21 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %20, i32 0, i32 2
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %25 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %2
  %29 = load i16, i16* %8, align 2
  %30 = zext i16 %29 to i32
  %31 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %32 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %31, i32 0, i32 0
  %33 = load i16, i16* %32, align 4
  %34 = zext i16 %33 to i32
  %35 = icmp ne i32 %30, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %7, align 4
  %37 = load i16, i16* %8, align 2
  %38 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %39 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %38, i32 0, i32 0
  store i16 %37, i16* %39, align 4
  br label %52

40:                                               ; preds = %2
  %41 = load i16, i16* %8, align 2
  %42 = zext i16 %41 to i32
  %43 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %44 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %43, i32 0, i32 1
  %45 = load i16, i16* %44, align 2
  %46 = zext i16 %45 to i32
  %47 = icmp ne i32 %42, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %7, align 4
  %49 = load i16, i16* %8, align 2
  %50 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %51 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %50, i32 0, i32 1
  store i16 %49, i16* %51, align 2
  br label %52

52:                                               ; preds = %40, %28
  %53 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %54 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %53, i32 0, i32 2
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %58 = call i32 @snd_emu8000_update_equalizer(%struct.snd_emu8000* %57)
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local %struct.snd_emu8000* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_emu8000_update_equalizer(%struct.snd_emu8000*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
