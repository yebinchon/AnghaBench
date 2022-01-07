; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_snd_ac97_ad1986_vrefout_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_snd_ac97_ad1986_vrefout_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i16* }
%struct.snd_ac97 = type { i16* }

@AC97_AD_MISC2 = common dso_local global i64 0, align 8
@AC97_AD1986_MVREF0 = common dso_local global i16 0, align 2
@AC97_AD1986_MVREF1 = common dso_local global i16 0, align 2
@AC97_AD1986_MVREF2 = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_ac97_ad1986_vrefout_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ac97_ad1986_vrefout_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_ac97*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %9 = call %struct.snd_ac97* @snd_kcontrol_chip(%struct.snd_kcontrol* %8)
  store %struct.snd_ac97* %9, %struct.snd_ac97** %5, align 8
  %10 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %11 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %10, i32 0, i32 0
  %12 = load i16*, i16** %11, align 8
  %13 = load i64, i64* @AC97_AD_MISC2, align 8
  %14 = getelementptr inbounds i16, i16* %12, i64 %13
  %15 = load i16, i16* %14, align 2
  store i16 %15, i16* %7, align 2
  %16 = load i16, i16* %7, align 2
  %17 = zext i16 %16 to i32
  %18 = load i16, i16* @AC97_AD1986_MVREF0, align 2
  %19 = zext i16 %18 to i32
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i16 2, i16* %6, align 2
  br label %42

23:                                               ; preds = %2
  %24 = load i16, i16* %7, align 2
  %25 = zext i16 %24 to i32
  %26 = load i16, i16* @AC97_AD1986_MVREF1, align 2
  %27 = zext i16 %26 to i32
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i16 3, i16* %6, align 2
  br label %41

31:                                               ; preds = %23
  %32 = load i16, i16* %7, align 2
  %33 = zext i16 %32 to i32
  %34 = load i16, i16* @AC97_AD1986_MVREF2, align 2
  %35 = zext i16 %34 to i32
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i16 1, i16* %6, align 2
  br label %40

39:                                               ; preds = %31
  store i16 0, i16* %6, align 2
  br label %40

40:                                               ; preds = %39, %38
  br label %41

41:                                               ; preds = %40, %30
  br label %42

42:                                               ; preds = %41, %22
  %43 = load i16, i16* %6, align 2
  %44 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %45 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i16*, i16** %47, align 8
  %49 = getelementptr inbounds i16, i16* %48, i64 0
  store i16 %43, i16* %49, align 2
  ret i32 0
}

declare dso_local %struct.snd_ac97* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
