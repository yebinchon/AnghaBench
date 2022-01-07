; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_sync_vmaster_hook.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_sync_vmaster_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_vmaster_mute_hook = type { i32, %struct.TYPE_4__*, i32 (%struct.TYPE_4__*, i32)*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hda_sync_vmaster_hook(%struct.hda_vmaster_mute_hook* %0) #0 {
  %2 = alloca %struct.hda_vmaster_mute_hook*, align 8
  store %struct.hda_vmaster_mute_hook* %0, %struct.hda_vmaster_mute_hook** %2, align 8
  %3 = load %struct.hda_vmaster_mute_hook*, %struct.hda_vmaster_mute_hook** %2, align 8
  %4 = getelementptr inbounds %struct.hda_vmaster_mute_hook, %struct.hda_vmaster_mute_hook* %3, i32 0, i32 2
  %5 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %4, align 8
  %6 = icmp ne i32 (%struct.TYPE_4__*, i32)* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.hda_vmaster_mute_hook*, %struct.hda_vmaster_mute_hook** %2, align 8
  %9 = getelementptr inbounds %struct.hda_vmaster_mute_hook, %struct.hda_vmaster_mute_hook* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7, %1
  br label %43

13:                                               ; preds = %7
  %14 = load %struct.hda_vmaster_mute_hook*, %struct.hda_vmaster_mute_hook** %2, align 8
  %15 = getelementptr inbounds %struct.hda_vmaster_mute_hook, %struct.hda_vmaster_mute_hook* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %43

23:                                               ; preds = %13
  %24 = load %struct.hda_vmaster_mute_hook*, %struct.hda_vmaster_mute_hook** %2, align 8
  %25 = getelementptr inbounds %struct.hda_vmaster_mute_hook, %struct.hda_vmaster_mute_hook* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %32 [
    i32 128, label %27
  ]

27:                                               ; preds = %23
  %28 = load %struct.hda_vmaster_mute_hook*, %struct.hda_vmaster_mute_hook** %2, align 8
  %29 = getelementptr inbounds %struct.hda_vmaster_mute_hook, %struct.hda_vmaster_mute_hook* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @snd_ctl_sync_vmaster_hook(i32 %30)
  br label %43

32:                                               ; preds = %23
  %33 = load %struct.hda_vmaster_mute_hook*, %struct.hda_vmaster_mute_hook** %2, align 8
  %34 = getelementptr inbounds %struct.hda_vmaster_mute_hook, %struct.hda_vmaster_mute_hook* %33, i32 0, i32 2
  %35 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %34, align 8
  %36 = load %struct.hda_vmaster_mute_hook*, %struct.hda_vmaster_mute_hook** %2, align 8
  %37 = getelementptr inbounds %struct.hda_vmaster_mute_hook, %struct.hda_vmaster_mute_hook* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load %struct.hda_vmaster_mute_hook*, %struct.hda_vmaster_mute_hook** %2, align 8
  %40 = getelementptr inbounds %struct.hda_vmaster_mute_hook, %struct.hda_vmaster_mute_hook* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 %35(%struct.TYPE_4__* %38, i32 %41)
  br label %43

43:                                               ; preds = %12, %22, %32, %27
  ret void
}

declare dso_local i32 @snd_ctl_sync_vmaster_hook(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
