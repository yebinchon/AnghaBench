; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_generic_hdmi_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_generic_hdmi_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_2__*, %struct.hdmi_spec* }
%struct.TYPE_2__ = type { i32 }
%struct.hdmi_spec = type { i32 }
%struct.hdmi_spec_per_pin = type { i32, %struct.hdmi_eld }
%struct.hdmi_eld = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @generic_hdmi_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generic_hdmi_free(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.hdmi_spec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdmi_spec_per_pin*, align 8
  %6 = alloca %struct.hdmi_eld*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 1
  %9 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  store %struct.hdmi_spec* %9, %struct.hdmi_spec** %3, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %28, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.hdmi_spec*, %struct.hdmi_spec** %3, align 8
  %13 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %10
  %17 = load %struct.hdmi_spec*, %struct.hdmi_spec** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec* %17, i32 %18)
  store %struct.hdmi_spec_per_pin* %19, %struct.hdmi_spec_per_pin** %5, align 8
  %20 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %5, align 8
  %21 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %20, i32 0, i32 1
  store %struct.hdmi_eld* %21, %struct.hdmi_eld** %6, align 8
  %22 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %5, align 8
  %23 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %22, i32 0, i32 0
  %24 = call i32 @cancel_delayed_work(i32* %23)
  %25 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %26 = load %struct.hdmi_eld*, %struct.hdmi_eld** %6, align 8
  %27 = call i32 @snd_hda_eld_proc_free(%struct.hda_codec* %25, %struct.hdmi_eld* %26)
  br label %28

28:                                               ; preds = %16
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %10

31:                                               ; preds = %10
  %32 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %33 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @flush_workqueue(i32 %36)
  %38 = load %struct.hdmi_spec*, %struct.hdmi_spec** %3, align 8
  %39 = call i32 @hdmi_array_free(%struct.hdmi_spec* %38)
  %40 = load %struct.hdmi_spec*, %struct.hdmi_spec** %3, align 8
  %41 = call i32 @kfree(%struct.hdmi_spec* %40)
  ret void
}

declare dso_local %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec*, i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @snd_hda_eld_proc_free(%struct.hda_codec*, %struct.hdmi_eld*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @hdmi_array_free(%struct.hdmi_spec*) #1

declare dso_local i32 @kfree(%struct.hdmi_spec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
