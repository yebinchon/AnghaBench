; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_azt3328.c_snd_azf3328_info_mixer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_azt3328.c_snd_azf3328_info_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_info = type { %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.azf3328_mixer_reg = type { i32, i64 }

@SNDRV_CTL_ELEM_TYPE_BOOLEAN = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_TYPE_INTEGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)* @snd_azf3328_info_mixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_azf3328_info_mixer(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_info* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_info*, align 8
  %5 = alloca %struct.azf3328_mixer_reg, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %4, align 8
  %6 = call i32 (...) @snd_azf3328_dbgcallenter()
  %7 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %8 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @snd_azf3328_mixer_reg_decode(%struct.azf3328_mixer_reg* %5, i32 %9)
  %11 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %5, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @SNDRV_CTL_ELEM_TYPE_BOOLEAN, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @SNDRV_CTL_ELEM_TYPE_INTEGER, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  %20 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %21 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %5, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 1
  %25 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %26 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %28 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %5, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %34 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 8
  %37 = call i32 (...) @snd_azf3328_dbgcallleave()
  ret i32 0
}

declare dso_local i32 @snd_azf3328_dbgcallenter(...) #1

declare dso_local i32 @snd_azf3328_mixer_reg_decode(%struct.azf3328_mixer_reg*, i32) #1

declare dso_local i32 @snd_azf3328_dbgcallleave(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
