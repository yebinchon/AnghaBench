; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctmixer.c_ct_mixer_kcontrol_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctmixer.c_ct_mixer_kcontrol_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.ct_mixer = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.snd_kcontrol_new = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_IFACE_PCM = common dso_local global i64 0, align 8
@IEC958 = common dso_local global i32 0, align 4
@kctls = common dso_local global %struct.snd_kcontrol** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ct_mixer*, %struct.snd_kcontrol_new*)* @ct_mixer_kcontrol_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ct_mixer_kcontrol_new(%struct.ct_mixer* %0, %struct.snd_kcontrol_new* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ct_mixer*, align 8
  %5 = alloca %struct.snd_kcontrol_new*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  store %struct.ct_mixer* %0, %struct.ct_mixer** %4, align 8
  store %struct.snd_kcontrol_new* %1, %struct.snd_kcontrol_new** %5, align 8
  %8 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %5, align 8
  %9 = load %struct.ct_mixer*, %struct.ct_mixer** %4, align 8
  %10 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* %8, %struct.TYPE_4__* %11)
  store %struct.snd_kcontrol* %12, %struct.snd_kcontrol** %6, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %14 = icmp ne %struct.snd_kcontrol* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %56

18:                                               ; preds = %2
  %19 = load i64, i64* @SNDRV_CTL_ELEM_IFACE_PCM, align 8
  %20 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %21 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %19, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load i32, i32* @IEC958, align 4
  %27 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %28 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 8
  br label %30

30:                                               ; preds = %25, %18
  %31 = load %struct.ct_mixer*, %struct.ct_mixer** %4, align 8
  %32 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %37 = call i32 @snd_ctl_add(i32 %35, %struct.snd_kcontrol* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %56

42:                                               ; preds = %30
  %43 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %5, align 8
  %44 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %54 [
    i32 129, label %46
    i32 128, label %50
  ]

46:                                               ; preds = %42
  %47 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %48 = load %struct.snd_kcontrol**, %struct.snd_kcontrol*** @kctls, align 8
  %49 = getelementptr inbounds %struct.snd_kcontrol*, %struct.snd_kcontrol** %48, i64 0
  store %struct.snd_kcontrol* %47, %struct.snd_kcontrol** %49, align 8
  br label %55

50:                                               ; preds = %42
  %51 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %52 = load %struct.snd_kcontrol**, %struct.snd_kcontrol*** @kctls, align 8
  %53 = getelementptr inbounds %struct.snd_kcontrol*, %struct.snd_kcontrol** %52, i64 1
  store %struct.snd_kcontrol* %51, %struct.snd_kcontrol** %53, align 8
  br label %55

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54, %50, %46
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %40, %15
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new*, %struct.TYPE_4__*) #1

declare dso_local i32 @snd_ctl_add(i32, %struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
