; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_hdmi_eld_ctl_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_hdmi_eld_ctl_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.hda_codec = type { %struct.hdmi_spec* }
%struct.hdmi_spec = type { i32 }
%struct.hdmi_eld = type { i64, i32, i32, i64 }
%struct.TYPE_6__ = type { %struct.hdmi_eld }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @hdmi_eld_ctl_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_eld_ctl_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca %struct.hdmi_spec*, align 8
  %8 = alloca %struct.hdmi_eld*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = call %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.hda_codec* %11, %struct.hda_codec** %6, align 8
  %12 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %13 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %12, i32 0, i32 0
  %14 = load %struct.hdmi_spec*, %struct.hdmi_spec** %13, align 8
  store %struct.hdmi_spec* %14, %struct.hdmi_spec** %7, align 8
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %16 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.hdmi_spec*, %struct.hdmi_spec** %7, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call %struct.TYPE_6__* @get_pin(%struct.hdmi_spec* %18, i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store %struct.hdmi_eld* %21, %struct.hdmi_eld** %8, align 8
  %22 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %23 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %26 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %29 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @ARRAY_SIZE(i32 %32)
  %34 = icmp sgt i64 %27, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %2
  %36 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %37 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %36, i32 0, i32 1
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = call i32 (...) @snd_BUG()
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %76

42:                                               ; preds = %2
  %43 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %44 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %49 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @ARRAY_SIZE(i32 %52)
  %54 = call i32 @memset(i32 %47, i32 0, i64 %53)
  %55 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %56 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %42
  %60 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %61 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %66 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %69 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @memcpy(i32 %64, i32 %67, i64 %70)
  br label %72

72:                                               ; preds = %59, %42
  %73 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %74 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %73, i32 0, i32 1
  %75 = call i32 @mutex_unlock(i32* %74)
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %72, %35
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local %struct.TYPE_6__* @get_pin(%struct.hdmi_spec*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_BUG(...) #1

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
