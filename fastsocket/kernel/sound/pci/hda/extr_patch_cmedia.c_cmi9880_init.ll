; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_cmedia.c_cmi9880_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_cmedia.c_cmi9880_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.cmi_spec* }
%struct.cmi_spec = type { i64, i32 }

@CMI_ALLOUT = common dso_local global i64 0, align 8
@cmi9880_allout_init = common dso_local global i32 0, align 4
@cmi9880_basic_init = common dso_local global i32 0, align 4
@CMI_AUTO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @cmi9880_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmi9880_init(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.cmi_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %4 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %5 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %4, i32 0, i32 0
  %6 = load %struct.cmi_spec*, %struct.cmi_spec** %5, align 8
  store %struct.cmi_spec* %6, %struct.cmi_spec** %3, align 8
  %7 = load %struct.cmi_spec*, %struct.cmi_spec** %3, align 8
  %8 = getelementptr inbounds %struct.cmi_spec, %struct.cmi_spec* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CMI_ALLOUT, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %14 = load i32, i32* @cmi9880_allout_init, align 4
  %15 = call i32 @snd_hda_sequence_write(%struct.hda_codec* %13, i32 %14)
  br label %20

16:                                               ; preds = %1
  %17 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %18 = load i32, i32* @cmi9880_basic_init, align 4
  %19 = call i32 @snd_hda_sequence_write(%struct.hda_codec* %17, i32 %18)
  br label %20

20:                                               ; preds = %16, %12
  %21 = load %struct.cmi_spec*, %struct.cmi_spec** %3, align 8
  %22 = getelementptr inbounds %struct.cmi_spec, %struct.cmi_spec* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CMI_AUTO, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %28 = load %struct.cmi_spec*, %struct.cmi_spec** %3, align 8
  %29 = getelementptr inbounds %struct.cmi_spec, %struct.cmi_spec* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @snd_hda_sequence_write(%struct.hda_codec* %27, i32 %30)
  br label %32

32:                                               ; preds = %26, %20
  ret i32 0
}

declare dso_local i32 @snd_hda_sequence_write(%struct.hda_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
