; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_reset_tlv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_reset_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.snd_ctl_elem_id = type { i32, i32 }
%struct.snd_kcontrol = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@SNDRV_CTL_ELEM_IFACE_MIXER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*, i8*, i32*)* @reset_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_tlv(%struct.snd_ac97* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.snd_ctl_elem_id, align 4
  %8 = alloca %struct.snd_kcontrol*, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = call i32 @memset(%struct.snd_ctl_elem_id* %7, i32 0, i32 8)
  %10 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %7, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strcpy(i32 %11, i8* %12)
  %14 = load i32, i32* @SNDRV_CTL_ELEM_IFACE_MIXER, align 4
  %15 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %7, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %17 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.snd_kcontrol* @snd_ctl_find_id(i32 %20, %struct.snd_ctl_elem_id* %7)
  store %struct.snd_kcontrol* %21, %struct.snd_kcontrol** %8, align 8
  %22 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %23 = icmp ne %struct.snd_kcontrol* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %3
  %25 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %26 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load i32*, i32** %6, align 8
  %32 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %33 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32* %31, i32** %34, align 8
  br label %35

35:                                               ; preds = %30, %24, %3
  ret void
}

declare dso_local i32 @memset(%struct.snd_ctl_elem_id*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_find_id(i32, %struct.snd_ctl_elem_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
