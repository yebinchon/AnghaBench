; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_sigmatel.c_stac_create_spdif_mux_ctls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_sigmatel.c_stac_create_spdif_mux_ctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.sigmatel_spec* }
%struct.sigmatel_spec = type { i8**, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.auto_pin_cfg }
%struct.auto_pin_cfg = type { i32, i32* }
%struct.snd_kcontrol_new = type { i32 }

@stac_spdif_labels = common dso_local global i8** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@stac_smux_mixer = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @stac_create_spdif_mux_ctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stac_create_spdif_mux_ctls(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.sigmatel_spec*, align 8
  %5 = alloca %struct.auto_pin_cfg*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.snd_kcontrol_new*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %10 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %11 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %10, i32 0, i32 0
  %12 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %11, align 8
  store %struct.sigmatel_spec* %12, %struct.sigmatel_spec** %4, align 8
  %13 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %14 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.auto_pin_cfg* %15, %struct.auto_pin_cfg** %5, align 8
  %16 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %17 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %16, i32 0, i32 0
  %18 = load i8**, i8*** %17, align 8
  store i8** %18, i8*** %6, align 8
  %19 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %20 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %87

24:                                               ; preds = %1
  %25 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %26 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %27 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @snd_hda_get_num_conns(%struct.hda_codec* %25, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp sle i32 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %87

35:                                               ; preds = %24
  %36 = load i8**, i8*** %6, align 8
  %37 = icmp ne i8** %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = load i8**, i8*** @stac_spdif_labels, align 8
  store i8** %39, i8*** %6, align 8
  br label %40

40:                                               ; preds = %38, %35
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %69, %40
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %72

45:                                               ; preds = %41
  %46 = load i8**, i8*** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i64 @snd_BUG_ON(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %45
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %87

59:                                               ; preds = %45
  %60 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %61 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %60, i32 0, i32 2
  %62 = load i8**, i8*** %6, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @snd_hda_add_imux_item(i32* %61, i8* %66, i32 %67, i32* null)
  br label %69

69:                                               ; preds = %59
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %41

72:                                               ; preds = %41
  %73 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %74 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %73, i32 0, i32 1
  %75 = call %struct.snd_kcontrol_new* @snd_hda_gen_add_kctl(%struct.TYPE_2__* %74, i32* null, i32* @stac_smux_mixer)
  store %struct.snd_kcontrol_new* %75, %struct.snd_kcontrol_new** %7, align 8
  %76 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %7, align 8
  %77 = icmp ne %struct.snd_kcontrol_new* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %72
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %87

81:                                               ; preds = %72
  %82 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %83 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %7, align 8
  %86 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %81, %78, %56, %34, %23
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @snd_hda_get_num_conns(%struct.hda_codec*, i32) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_hda_add_imux_item(i32*, i8*, i32, i32*) #1

declare dso_local %struct.snd_kcontrol_new* @snd_hda_gen_add_kctl(%struct.TYPE_2__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
