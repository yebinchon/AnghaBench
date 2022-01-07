; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_beep.c_turn_off_beep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_beep.c_turn_off_beep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_beep = type { i32, i64, i32, i32 }

@AC_VERB_SET_BEEP_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_beep*)* @turn_off_beep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @turn_off_beep(%struct.hda_beep* %0) #0 {
  %2 = alloca %struct.hda_beep*, align 8
  store %struct.hda_beep* %0, %struct.hda_beep** %2, align 8
  %3 = load %struct.hda_beep*, %struct.hda_beep** %2, align 8
  %4 = getelementptr inbounds %struct.hda_beep, %struct.hda_beep* %3, i32 0, i32 3
  %5 = call i32 @cancel_work_sync(i32* %4)
  %6 = load %struct.hda_beep*, %struct.hda_beep** %2, align 8
  %7 = getelementptr inbounds %struct.hda_beep, %struct.hda_beep* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = load %struct.hda_beep*, %struct.hda_beep** %2, align 8
  %12 = getelementptr inbounds %struct.hda_beep, %struct.hda_beep* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.hda_beep*, %struct.hda_beep** %2, align 8
  %15 = getelementptr inbounds %struct.hda_beep, %struct.hda_beep* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @AC_VERB_SET_BEEP_CONTROL, align 4
  %18 = call i32 @snd_hda_codec_write(i32 %13, i32 %16, i32 0, i32 %17, i32 0)
  %19 = load %struct.hda_beep*, %struct.hda_beep** %2, align 8
  %20 = getelementptr inbounds %struct.hda_beep, %struct.hda_beep* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.hda_beep*, %struct.hda_beep** %2, align 8
  %22 = getelementptr inbounds %struct.hda_beep, %struct.hda_beep* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @snd_hda_power_down(i32 %23)
  br label %25

25:                                               ; preds = %10, %1
  ret void
}

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @snd_hda_codec_write(i32, i32, i32, i32, i32) #1

declare dso_local i32 @snd_hda_power_down(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
