; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_snd_ac97_ad1986_vrefout_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_snd_ac97_ad1986_vrefout_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_ac97 = type { i32 }

@AC97_AD1986_CVREF2 = common dso_local global i16 0, align 2
@AC97_AD1986_LVREF2 = common dso_local global i16 0, align 2
@AC97_AD1986_MVREF2 = common dso_local global i16 0, align 2
@AC97_AD1986_CVREF0 = common dso_local global i16 0, align 2
@AC97_AD1986_LVREF0 = common dso_local global i16 0, align 2
@AC97_AD1986_MVREF0 = common dso_local global i16 0, align 2
@AC97_AD1986_CVREF1 = common dso_local global i16 0, align 2
@AC97_AD1986_LVREF1 = common dso_local global i16 0, align 2
@AC97_AD1986_MVREF1 = common dso_local global i16 0, align 2
@EINVAL = common dso_local global i32 0, align 4
@AC97_AD_MISC2 = common dso_local global i32 0, align 4
@AC97_AD1986_CVREF_MASK = common dso_local global i32 0, align 4
@AC97_AD_MISC3 = common dso_local global i32 0, align 4
@AC97_AD1986_LVREF_MASK = common dso_local global i32 0, align 4
@AC97_AD1986_MVREF_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_ac97_ad1986_vrefout_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ac97_ad1986_vrefout_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_ac97*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %14 = call %struct.snd_ac97* @snd_kcontrol_chip(%struct.snd_kcontrol* %13)
  store %struct.snd_ac97* %14, %struct.snd_ac97** %6, align 8
  %15 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %16 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %35 [
    i32 0, label %22
    i32 1, label %23
    i32 2, label %27
    i32 3, label %31
  ]

22:                                               ; preds = %2
  store i16 0, i16* %7, align 2
  store i16 0, i16* %8, align 2
  store i16 0, i16* %9, align 2
  br label %38

23:                                               ; preds = %2
  %24 = load i16, i16* @AC97_AD1986_CVREF2, align 2
  store i16 %24, i16* %7, align 2
  %25 = load i16, i16* @AC97_AD1986_LVREF2, align 2
  store i16 %25, i16* %8, align 2
  %26 = load i16, i16* @AC97_AD1986_MVREF2, align 2
  store i16 %26, i16* %9, align 2
  br label %38

27:                                               ; preds = %2
  %28 = load i16, i16* @AC97_AD1986_CVREF0, align 2
  store i16 %28, i16* %7, align 2
  %29 = load i16, i16* @AC97_AD1986_LVREF0, align 2
  store i16 %29, i16* %8, align 2
  %30 = load i16, i16* @AC97_AD1986_MVREF0, align 2
  store i16 %30, i16* %9, align 2
  br label %38

31:                                               ; preds = %2
  %32 = load i16, i16* @AC97_AD1986_CVREF1, align 2
  store i16 %32, i16* %7, align 2
  %33 = load i16, i16* @AC97_AD1986_LVREF1, align 2
  store i16 %33, i16* %8, align 2
  %34 = load i16, i16* @AC97_AD1986_MVREF1, align 2
  store i16 %34, i16* %9, align 2
  br label %38

35:                                               ; preds = %2
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %81

38:                                               ; preds = %31, %27, %23, %22
  %39 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %40 = load i32, i32* @AC97_AD_MISC2, align 4
  %41 = load i32, i32* @AC97_AD1986_CVREF_MASK, align 4
  %42 = load i16, i16* %7, align 2
  %43 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %39, i32 %40, i32 %41, i16 zeroext %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %3, align 4
  br label %81

48:                                               ; preds = %38
  %49 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %50 = load i32, i32* @AC97_AD_MISC3, align 4
  %51 = load i32, i32* @AC97_AD1986_LVREF_MASK, align 4
  %52 = load i16, i16* %8, align 2
  %53 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %49, i32 %50, i32 %51, i16 zeroext %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %3, align 4
  br label %81

58:                                               ; preds = %48
  %59 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %60 = load i32, i32* @AC97_AD_MISC2, align 4
  %61 = load i32, i32* @AC97_AD1986_MVREF_MASK, align 4
  %62 = load i16, i16* %9, align 2
  %63 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %59, i32 %60, i32 %61, i16 zeroext %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %3, align 4
  br label %81

68:                                               ; preds = %58
  %69 = load i32, i32* %10, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %11, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %12, align 4
  %76 = icmp sgt i32 %75, 0
  br label %77

77:                                               ; preds = %74, %71, %68
  %78 = phi i1 [ true, %71 ], [ true, %68 ], [ %76, %74 ]
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 1, i32 0
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %77, %66, %56, %46, %35
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.snd_ac97* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_ac97_update_bits(%struct.snd_ac97*, i32, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
