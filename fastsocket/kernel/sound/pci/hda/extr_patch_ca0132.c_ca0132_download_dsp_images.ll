; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_ca0132_download_dsp_images.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_ca0132_download_dsp_images.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.dsp_image_seg = type { i32 }
%struct.firmware = type { i64 }

@EFX_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"ca0132 dspload_image failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @ca0132_download_dsp_images to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca0132_download_dsp_images(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsp_image_seg*, align 8
  %6 = alloca %struct.firmware*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* @EFX_FILE, align 4
  %8 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @request_firmware(%struct.firmware** %6, i32 %7, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

18:                                               ; preds = %1
  %19 = load %struct.firmware*, %struct.firmware** %6, align 8
  %20 = getelementptr inbounds %struct.firmware, %struct.firmware* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.dsp_image_seg*
  store %struct.dsp_image_seg* %22, %struct.dsp_image_seg** %5, align 8
  %23 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %24 = load %struct.dsp_image_seg*, %struct.dsp_image_seg** %5, align 8
  %25 = call i64 @dspload_image(%struct.hda_codec* %23, %struct.dsp_image_seg* %24, i32 0, i32 0, i32 1, i32 0)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %32

29:                                               ; preds = %18
  %30 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %31 = call i32 @dspload_wait_loaded(%struct.hda_codec* %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %29, %27
  %33 = load %struct.firmware*, %struct.firmware** %6, align 8
  %34 = call i32 @release_firmware(%struct.firmware* %33)
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %32, %17
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @request_firmware(%struct.firmware**, i32, i32) #1

declare dso_local i64 @dspload_image(%struct.hda_codec*, %struct.dsp_image_seg*, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @dspload_wait_loaded(%struct.hda_codec*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
