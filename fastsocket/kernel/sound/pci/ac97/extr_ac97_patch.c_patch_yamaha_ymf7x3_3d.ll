; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_patch_yamaha_ymf7x3_3d.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_patch_yamaha_ymf7x3_3d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.snd_kcontrol = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@snd_ac97_controls_3d = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"3D Control - Wide\00", align 1
@AC97_3D_CONTROL = common dso_local global i32 0, align 4
@snd_ac97_ymf7x3_controls_speaker = common dso_local global i32 0, align 4
@AC97_YMF7X3_3D_MODE_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ac97*)* @patch_yamaha_ymf7x3_3d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_yamaha_ymf7x3_3d(%struct.snd_ac97* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ac97*, align 8
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %3, align 8
  %6 = load i32*, i32** @snd_ac97_controls_3d, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %9 = call %struct.snd_kcontrol* @snd_ac97_cnew(i32* %7, %struct.snd_ac97* %8)
  store %struct.snd_kcontrol* %9, %struct.snd_kcontrol** %4, align 8
  %10 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %11 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %16 = call i32 @snd_ctl_add(i32 %14, %struct.snd_kcontrol* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %50

21:                                               ; preds = %1
  %22 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %23 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @strcpy(i32 %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @AC97_3D_CONTROL, align 4
  %28 = call i32 @AC97_SINGLE_VALUE(i32 %27, i32 9, i32 7, i32 0)
  %29 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %30 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %32 = load i32, i32* @AC97_3D_CONTROL, align 4
  %33 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %31, i32 %32, i32 0)
  %34 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %35 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %40 = call %struct.snd_kcontrol* @snd_ac97_cnew(i32* @snd_ac97_ymf7x3_controls_speaker, %struct.snd_ac97* %39)
  %41 = call i32 @snd_ctl_add(i32 %38, %struct.snd_kcontrol* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %21
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %50

46:                                               ; preds = %21
  %47 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %48 = load i32, i32* @AC97_YMF7X3_3D_MODE_SEL, align 4
  %49 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %47, i32 %48, i32 3072)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %46, %44, %19
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.snd_kcontrol* @snd_ac97_cnew(i32*, %struct.snd_ac97*) #1

declare dso_local i32 @snd_ctl_add(i32, %struct.snd_kcontrol*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @AC97_SINGLE_VALUE(i32, i32, i32, i32) #1

declare dso_local i32 @snd_ac97_write_cache(%struct.snd_ac97*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
