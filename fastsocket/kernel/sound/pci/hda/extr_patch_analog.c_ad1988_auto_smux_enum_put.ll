; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_analog.c_ad1988_auto_smux_enum_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_analog.c_ad1988_auto_smux_enum_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.hda_codec = type { i32, i32, %struct.ad198x_spec* }
%struct.ad198x_spec = type { i32, i32* }
%struct.nid_path = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @ad1988_auto_smux_enum_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad1988_auto_smux_enum_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca %struct.ad198x_spec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nid_path*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %12 = call %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.hda_codec* %12, %struct.hda_codec** %6, align 8
  %13 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 2
  %15 = load %struct.ad198x_spec*, %struct.ad198x_spec** %14, align 8
  store %struct.ad198x_spec* %15, %struct.ad198x_spec** %7, align 8
  %16 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %17 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %24 = call i32 @snd_hda_get_num_conns(%struct.hda_codec* %23, i32 11)
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp uge i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %89

32:                                               ; preds = %2
  %33 = load %struct.ad198x_spec*, %struct.ad198x_spec** %7, align 8
  %34 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %89

39:                                               ; preds = %32
  %40 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %41 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %40, i32 0, i32 1
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %44 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %46 = load %struct.ad198x_spec*, %struct.ad198x_spec** %7, align 8
  %47 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.ad198x_spec*, %struct.ad198x_spec** %7, align 8
  %50 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.nid_path* @snd_hda_get_path_from_idx(%struct.hda_codec* %45, i32 %54)
  store %struct.nid_path* %55, %struct.nid_path** %9, align 8
  %56 = load %struct.nid_path*, %struct.nid_path** %9, align 8
  %57 = icmp ne %struct.nid_path* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %39
  %59 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %60 = load %struct.nid_path*, %struct.nid_path** %9, align 8
  %61 = call i32 @snd_hda_activate_path(%struct.hda_codec* %59, %struct.nid_path* %60, i32 0, i32 1)
  br label %62

62:                                               ; preds = %58, %39
  %63 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %64 = load %struct.ad198x_spec*, %struct.ad198x_spec** %7, align 8
  %65 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call %struct.nid_path* @snd_hda_get_path_from_idx(%struct.hda_codec* %63, i32 %70)
  store %struct.nid_path* %71, %struct.nid_path** %9, align 8
  %72 = load %struct.nid_path*, %struct.nid_path** %9, align 8
  %73 = icmp ne %struct.nid_path* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %62
  %75 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %76 = load %struct.nid_path*, %struct.nid_path** %9, align 8
  %77 = call i32 @snd_hda_activate_path(%struct.hda_codec* %75, %struct.nid_path* %76, i32 1, i32 1)
  br label %78

78:                                               ; preds = %74, %62
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.ad198x_spec*, %struct.ad198x_spec** %7, align 8
  %81 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %83 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  %84 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %85 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %84, i32 0, i32 1
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %88 = call i32 @snd_hda_codec_flush_cache(%struct.hda_codec* %87)
  store i32 1, i32* %3, align 4
  br label %89

89:                                               ; preds = %78, %38, %29
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_hda_get_num_conns(%struct.hda_codec*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.nid_path* @snd_hda_get_path_from_idx(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_activate_path(%struct.hda_codec*, %struct.nid_path*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_hda_codec_flush_cache(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
