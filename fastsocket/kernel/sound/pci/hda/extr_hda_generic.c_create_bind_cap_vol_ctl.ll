; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_create_bind_cap_vol_ctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_create_bind_cap_vol_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32 }
%struct.snd_kcontrol_new = type { i32, i32, i8* }

@cap_vol_temp = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HDA_SUBDEV_AMP_FLAG = common dso_local global i8* null, align 8
@cap_sw_temp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i32, i32)* @create_bind_cap_vol_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_bind_cap_vol_ctl(%struct.hda_codec* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hda_gen_spec*, align 8
  %11 = alloca %struct.snd_kcontrol_new*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %13 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %12, i32 0, i32 0
  %14 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %13, align 8
  store %struct.hda_gen_spec* %14, %struct.hda_gen_spec** %10, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %4
  %18 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  %19 = call %struct.snd_kcontrol_new* @snd_hda_gen_add_kctl(%struct.hda_gen_spec* %18, i32* null, i32* @cap_vol_temp)
  store %struct.snd_kcontrol_new* %19, %struct.snd_kcontrol_new** %11, align 8
  %20 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %11, align 8
  %21 = icmp ne %struct.snd_kcontrol_new* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %57

25:                                               ; preds = %17
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %11, align 8
  %28 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %11, align 8
  %31 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i8*, i8** @HDA_SUBDEV_AMP_FLAG, align 8
  %33 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %11, align 8
  %34 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  br label %35

35:                                               ; preds = %25, %4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %35
  %39 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  %40 = call %struct.snd_kcontrol_new* @snd_hda_gen_add_kctl(%struct.hda_gen_spec* %39, i32* null, i32* @cap_sw_temp)
  store %struct.snd_kcontrol_new* %40, %struct.snd_kcontrol_new** %11, align 8
  %41 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %11, align 8
  %42 = icmp ne %struct.snd_kcontrol_new* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %57

46:                                               ; preds = %38
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %11, align 8
  %49 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %11, align 8
  %52 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i8*, i8** @HDA_SUBDEV_AMP_FLAG, align 8
  %54 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %11, align 8
  %55 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  br label %56

56:                                               ; preds = %46, %35
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %43, %22
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local %struct.snd_kcontrol_new* @snd_hda_gen_add_kctl(%struct.hda_gen_spec*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
