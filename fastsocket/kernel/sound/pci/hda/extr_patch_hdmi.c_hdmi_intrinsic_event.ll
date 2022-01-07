; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_hdmi_intrinsic_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_hdmi_intrinsic_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.hdmi_spec* }
%struct.hdmi_spec = type { i32 }
%struct.hda_jack_tbl = type { i32, i32 }

@AC_UNSOL_RES_TAG_SHIFT = common dso_local global i32 0, align 4
@SND_PR_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"HDMI hot plug event: Codec=%d Pin=%d Presence_Detect=%d ELD_Valid=%d\0A\00", align 1
@AC_UNSOL_RES_PD = common dso_local global i32 0, align 4
@AC_UNSOL_RES_ELDV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i32)* @hdmi_intrinsic_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_intrinsic_event(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdmi_spec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hda_jack_tbl*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %11 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %10, i32 0, i32 1
  %12 = load %struct.hdmi_spec*, %struct.hdmi_spec** %11, align 8
  store %struct.hdmi_spec* %12, %struct.hdmi_spec** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @AC_UNSOL_RES_TAG_SHIFT, align 4
  %15 = lshr i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.hda_jack_tbl* @snd_hda_jack_tbl_get_from_tag(%struct.hda_codec* %16, i32 %17)
  store %struct.hda_jack_tbl* %18, %struct.hda_jack_tbl** %9, align 8
  %19 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %9, align 8
  %20 = icmp ne %struct.hda_jack_tbl* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %61

22:                                               ; preds = %2
  %23 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %9, align 8
  %24 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  %26 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %9, align 8
  %27 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = load i32, i32* @SND_PR_VERBOSE, align 4
  %29 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %30 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @AC_UNSOL_RES_PD, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @AC_UNSOL_RES_ELDV, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @_snd_printd(i32 %28, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32, i32 %39, i32 %46)
  %48 = load %struct.hdmi_spec*, %struct.hdmi_spec** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @pin_nid_to_pin_index(%struct.hdmi_spec* %48, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %22
  br label %61

54:                                               ; preds = %22
  %55 = load %struct.hdmi_spec*, %struct.hdmi_spec** %5, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @get_pin(%struct.hdmi_spec* %55, i32 %56)
  %58 = call i32 @hdmi_present_sense(i32 %57, i32 1)
  %59 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %60 = call i32 @snd_hda_jack_report_sync(%struct.hda_codec* %59)
  br label %61

61:                                               ; preds = %54, %53, %21
  ret void
}

declare dso_local %struct.hda_jack_tbl* @snd_hda_jack_tbl_get_from_tag(%struct.hda_codec*, i32) #1

declare dso_local i32 @_snd_printd(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @pin_nid_to_pin_index(%struct.hdmi_spec*, i32) #1

declare dso_local i32 @hdmi_present_sense(i32, i32) #1

declare dso_local i32 @get_pin(%struct.hdmi_spec*, i32) #1

declare dso_local i32 @snd_hda_jack_report_sync(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
