; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_rawmidi.c_snd_rawmidi_kernel_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_rawmidi.c_snd_rawmidi_kernel_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_file = type { %struct.snd_rawmidi* }
%struct.snd_rawmidi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_rawmidi_kernel_release(%struct.snd_rawmidi_file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_rawmidi_file*, align 8
  %4 = alloca %struct.snd_rawmidi*, align 8
  store %struct.snd_rawmidi_file* %0, %struct.snd_rawmidi_file** %3, align 8
  %5 = load %struct.snd_rawmidi_file*, %struct.snd_rawmidi_file** %3, align 8
  %6 = icmp ne %struct.snd_rawmidi_file* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @snd_BUG_ON(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @ENXIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %26

14:                                               ; preds = %1
  %15 = load %struct.snd_rawmidi_file*, %struct.snd_rawmidi_file** %3, align 8
  %16 = getelementptr inbounds %struct.snd_rawmidi_file, %struct.snd_rawmidi_file* %15, i32 0, i32 0
  %17 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %16, align 8
  store %struct.snd_rawmidi* %17, %struct.snd_rawmidi** %4, align 8
  %18 = load %struct.snd_rawmidi_file*, %struct.snd_rawmidi_file** %3, align 8
  %19 = call i32 @rawmidi_release_priv(%struct.snd_rawmidi_file* %18)
  %20 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %4, align 8
  %21 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @module_put(i32 %24)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %14, %11
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @rawmidi_release_priv(%struct.snd_rawmidi_file*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
