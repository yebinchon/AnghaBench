; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_add_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_add_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol_new = type { i32, i64, i32 }
%struct.hda_gen_spec = type { i32 }

@control_templates = common dso_local global i32* null, align 8
@HDA_SUBDEV_AMP_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_kcontrol_new* (%struct.hda_gen_spec*, i32, i8*, i32, i64)* @add_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_kcontrol_new* @add_control(%struct.hda_gen_spec* %0, i32 %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.snd_kcontrol_new*, align 8
  %7 = alloca %struct.hda_gen_spec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.snd_kcontrol_new*, align 8
  store %struct.hda_gen_spec* %0, %struct.hda_gen_spec** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %13 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = load i32*, i32** @control_templates, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = call %struct.snd_kcontrol_new* @snd_hda_gen_add_kctl(%struct.hda_gen_spec* %13, i8* %14, i32* %18)
  store %struct.snd_kcontrol_new* %19, %struct.snd_kcontrol_new** %12, align 8
  %20 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %12, align 8
  %21 = icmp ne %struct.snd_kcontrol_new* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %5
  store %struct.snd_kcontrol_new* null, %struct.snd_kcontrol_new** %6, align 8
  br label %39

23:                                               ; preds = %5
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %12, align 8
  %26 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i64, i64* %11, align 8
  %28 = call i64 @get_amp_nid_(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32, i32* @HDA_SUBDEV_AMP_FLAG, align 4
  %32 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %12, align 8
  %33 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %30, %23
  %35 = load i64, i64* %11, align 8
  %36 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %12, align 8
  %37 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %12, align 8
  store %struct.snd_kcontrol_new* %38, %struct.snd_kcontrol_new** %6, align 8
  br label %39

39:                                               ; preds = %34, %22
  %40 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  ret %struct.snd_kcontrol_new* %40
}

declare dso_local %struct.snd_kcontrol_new* @snd_hda_gen_add_kctl(%struct.hda_gen_spec*, i8*, i32*) #1

declare dso_local i64 @get_amp_nid_(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
