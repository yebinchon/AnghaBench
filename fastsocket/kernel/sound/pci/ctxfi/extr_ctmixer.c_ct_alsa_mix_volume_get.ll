; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctmixer.c_ct_alsa_mix_volume_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctmixer.c_ct_alsa_mix_volume_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.ct_atc = type { i64 }
%struct.amixer = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.amixer*)* }
%struct.ct_mixer = type { %struct.amixer** }

@CHN_NUM = common dso_local global i32 0, align 4
@VOL_SCALE = common dso_local global i32 0, align 4
@VOL_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @ct_alsa_mix_volume_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ct_alsa_mix_volume_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.ct_atc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.amixer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %11 = call %struct.ct_atc* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.ct_atc* %11, %struct.ct_atc** %5, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %13 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @get_amixer_index(i32 %14)
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %63, %2
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %66

19:                                               ; preds = %16
  %20 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %21 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.ct_mixer*
  %24 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %23, i32 0, i32 0
  %25 = load %struct.amixer**, %struct.amixer*** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @CHN_NUM, align 4
  %28 = mul i32 %26, %27
  %29 = load i32, i32* %8, align 4
  %30 = add i32 %28, %29
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.amixer*, %struct.amixer** %25, i64 %31
  %33 = load %struct.amixer*, %struct.amixer** %32, align 8
  store %struct.amixer* %33, %struct.amixer** %7, align 8
  %34 = load %struct.amixer*, %struct.amixer** %7, align 8
  %35 = getelementptr inbounds %struct.amixer, %struct.amixer* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32 (%struct.amixer*)*, i32 (%struct.amixer*)** %37, align 8
  %39 = load %struct.amixer*, %struct.amixer** %7, align 8
  %40 = call i32 %38(%struct.amixer* %39)
  %41 = load i32, i32* @VOL_SCALE, align 4
  %42 = sdiv i32 %40, %41
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %19
  store i32 0, i32* %9, align 4
  br label %53

46:                                               ; preds = %19
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @VOL_MAX, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @VOL_MAX, align 4
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %50, %46
  br label %53

53:                                               ; preds = %52, %45
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %56 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %54, i32* %62, align 4
  br label %63

63:                                               ; preds = %53
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %16

66:                                               ; preds = %16
  ret i32 0
}

declare dso_local %struct.ct_atc* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @get_amixer_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
