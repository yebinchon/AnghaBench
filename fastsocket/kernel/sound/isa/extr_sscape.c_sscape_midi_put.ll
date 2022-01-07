; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/extr_sscape.c_sscape_midi_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/extr_sscape.c_sscape_midi_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.snd_wss = type { %struct.snd_card* }
%struct.snd_card = type { i32 }
%struct.soundscape = type { i8, i32, i32 }

@CMD_SET_MIDI_VOL = common dso_local global i8 0, align 1
@CMD_XXX_MIDI_VOL = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @sscape_midi_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sscape_midi_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_wss*, align 8
  %6 = alloca %struct.snd_card*, align 8
  %7 = alloca %struct.soundscape*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %11 = call %struct.snd_wss* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.snd_wss* %11, %struct.snd_wss** %5, align 8
  %12 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %13 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %12, i32 0, i32 0
  %14 = load %struct.snd_card*, %struct.snd_card** %13, align 8
  store %struct.snd_card* %14, %struct.snd_card** %6, align 8
  %15 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %16 = call %struct.soundscape* @get_card_soundscape(%struct.snd_card* %15)
  store %struct.soundscape* %16, %struct.soundscape** %7, align 8
  %17 = load %struct.soundscape*, %struct.soundscape** %7, align 8
  %18 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %17, i32 0, i32 1
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.soundscape*, %struct.soundscape** %7, align 8
  %22 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @set_host_mode_unsafe(i32 %23)
  %25 = load %struct.soundscape*, %struct.soundscape** %7, align 8
  %26 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %25, i32 0, i32 0
  %27 = load i8, i8* %26, align 4
  %28 = zext i8 %27 to i32
  %29 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %30 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i8
  %37 = zext i8 %36 to i32
  %38 = and i32 %37, 127
  %39 = icmp eq i32 %28, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %88

41:                                               ; preds = %2
  %42 = load %struct.soundscape*, %struct.soundscape** %7, align 8
  %43 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i8, i8* @CMD_SET_MIDI_VOL, align 1
  %46 = call i64 @host_write_ctrl_unsafe(i32 %44, i8 zeroext %45, i32 100)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %72

48:                                               ; preds = %41
  %49 = load %struct.soundscape*, %struct.soundscape** %7, align 8
  %50 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %53 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i8
  %60 = zext i8 %59 to i32
  %61 = and i32 %60, 127
  %62 = trunc i32 %61 to i8
  %63 = call i64 @host_write_ctrl_unsafe(i32 %51, i8 zeroext %62, i32 100)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %48
  %66 = load %struct.soundscape*, %struct.soundscape** %7, align 8
  %67 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i8, i8* @CMD_XXX_MIDI_VOL, align 1
  %70 = call i64 @host_write_ctrl_unsafe(i32 %68, i8 zeroext %69, i32 100)
  %71 = icmp ne i64 %70, 0
  br label %72

72:                                               ; preds = %65, %48, %41
  %73 = phi i1 [ false, %48 ], [ false, %41 ], [ %71, %65 ]
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %9, align 4
  %75 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %76 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 0
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i8
  %83 = zext i8 %82 to i32
  %84 = and i32 %83, 127
  %85 = trunc i32 %84 to i8
  %86 = load %struct.soundscape*, %struct.soundscape** %7, align 8
  %87 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %86, i32 0, i32 0
  store i8 %85, i8* %87, align 4
  br label %88

88:                                               ; preds = %72, %40
  %89 = load %struct.soundscape*, %struct.soundscape** %7, align 8
  %90 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @set_midi_mode_unsafe(i32 %91)
  %93 = load %struct.soundscape*, %struct.soundscape** %7, align 8
  %94 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %93, i32 0, i32 1
  %95 = load i64, i64* %8, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  %97 = load i32, i32* %9, align 4
  ret i32 %97
}

declare dso_local %struct.snd_wss* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local %struct.soundscape* @get_card_soundscape(%struct.snd_card*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_host_mode_unsafe(i32) #1

declare dso_local i64 @host_write_ctrl_unsafe(i32, i8 zeroext, i32) #1

declare dso_local i32 @set_midi_mode_unsafe(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
