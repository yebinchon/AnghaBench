; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_rawmidi.c_snd_rawmidi_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_rawmidi.c_snd_rawmidi_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.snd_rawmidi_file* }
%struct.snd_rawmidi_file = type { %struct.snd_rawmidi* }
%struct.snd_rawmidi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.module* }
%struct.module = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @snd_rawmidi_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rawmidi_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.snd_rawmidi_file*, align 8
  %6 = alloca %struct.snd_rawmidi*, align 8
  %7 = alloca %struct.module*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.snd_rawmidi_file*, %struct.snd_rawmidi_file** %9, align 8
  store %struct.snd_rawmidi_file* %10, %struct.snd_rawmidi_file** %5, align 8
  %11 = load %struct.snd_rawmidi_file*, %struct.snd_rawmidi_file** %5, align 8
  %12 = getelementptr inbounds %struct.snd_rawmidi_file, %struct.snd_rawmidi_file* %11, i32 0, i32 0
  %13 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %12, align 8
  store %struct.snd_rawmidi* %13, %struct.snd_rawmidi** %6, align 8
  %14 = load %struct.snd_rawmidi_file*, %struct.snd_rawmidi_file** %5, align 8
  %15 = call i32 @rawmidi_release_priv(%struct.snd_rawmidi_file* %14)
  %16 = load %struct.snd_rawmidi_file*, %struct.snd_rawmidi_file** %5, align 8
  %17 = call i32 @kfree(%struct.snd_rawmidi_file* %16)
  %18 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %19 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.module*, %struct.module** %21, align 8
  store %struct.module* %22, %struct.module** %7, align 8
  %23 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %24 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load %struct.file*, %struct.file** %4, align 8
  %27 = call i32 @snd_card_file_remove(%struct.TYPE_2__* %25, %struct.file* %26)
  %28 = load %struct.module*, %struct.module** %7, align 8
  %29 = call i32 @module_put(%struct.module* %28)
  ret i32 0
}

declare dso_local i32 @rawmidi_release_priv(%struct.snd_rawmidi_file*) #1

declare dso_local i32 @kfree(%struct.snd_rawmidi_file*) #1

declare dso_local i32 @snd_card_file_remove(%struct.TYPE_2__*, %struct.file*) #1

declare dso_local i32 @module_put(%struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
