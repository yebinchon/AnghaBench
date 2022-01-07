; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_add_mixer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_add_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_spec = type { i64, %struct.snd_kcontrol_new** }
%struct.snd_kcontrol_new = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alc_spec*, %struct.snd_kcontrol_new*)* @add_mixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_mixer(%struct.alc_spec* %0, %struct.snd_kcontrol_new* %1) #0 {
  %3 = alloca %struct.alc_spec*, align 8
  %4 = alloca %struct.snd_kcontrol_new*, align 8
  store %struct.alc_spec* %0, %struct.alc_spec** %3, align 8
  store %struct.snd_kcontrol_new* %1, %struct.snd_kcontrol_new** %4, align 8
  %5 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %6 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %9 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %8, i32 0, i32 1
  %10 = load %struct.snd_kcontrol_new**, %struct.snd_kcontrol_new*** %9, align 8
  %11 = call i64 @ARRAY_SIZE(%struct.snd_kcontrol_new** %10)
  %12 = icmp sge i64 %7, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @snd_BUG_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %27

17:                                               ; preds = %2
  %18 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %4, align 8
  %19 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %20 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %19, i32 0, i32 1
  %21 = load %struct.snd_kcontrol_new**, %struct.snd_kcontrol_new*** %20, align 8
  %22 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %23 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %23, align 8
  %26 = getelementptr inbounds %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %21, i64 %24
  store %struct.snd_kcontrol_new* %18, %struct.snd_kcontrol_new** %26, align 8
  br label %27

27:                                               ; preds = %17, %16
  ret void
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.snd_kcontrol_new**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
