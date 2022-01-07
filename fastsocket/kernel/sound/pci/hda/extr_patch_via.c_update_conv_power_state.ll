; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_update_conv_power_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_update_conv_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.via_spec* }
%struct.via_spec = type { i32* }

@AC_VERB_GET_CONV = common dso_local global i32 0, align 4
@AC_VERB_SET_POWER_STATE = common dso_local global i32 0, align 4
@AC_PWRST_D0 = common dso_local global i32 0, align 4
@AC_VERB_SET_CHANNEL_STREAMID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i32, i32, i32)* @update_conv_power_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_conv_power_state(%struct.hda_codec* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.via_spec*, align 8
  %10 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %12 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %11, i32 0, i32 0
  %13 = load %struct.via_spec*, %struct.via_spec** %12, align 8
  store %struct.via_spec* %13, %struct.via_spec** %9, align 8
  %14 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @snd_hda_check_power_state(%struct.hda_codec* %14, i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %84

20:                                               ; preds = %4
  %21 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @AC_VERB_GET_CONV, align 4
  %24 = call i32 @snd_hda_codec_read(%struct.hda_codec* %21, i32 %22, i32 0, i32 %23, i32 0)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %20
  %28 = load %struct.via_spec*, %struct.via_spec** %9, align 8
  %29 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %27
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.via_spec*, %struct.via_spec** %9, align 8
  %40 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %38, i32* %44, align 4
  br label %45

45:                                               ; preds = %37, %27, %20
  %46 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @AC_VERB_SET_POWER_STATE, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @snd_hda_codec_write(%struct.hda_codec* %46, i32 %47, i32 0, i32 %48, i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @AC_PWRST_D0, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %84

54:                                               ; preds = %45
  %55 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @AC_VERB_GET_CONV, align 4
  %58 = call i32 @snd_hda_codec_read(%struct.hda_codec* %55, i32 %56, i32 0, i32 %57, i32 0)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %83, label %61

61:                                               ; preds = %54
  %62 = load %struct.via_spec*, %struct.via_spec** %9, align 8
  %63 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %61
  %72 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @AC_VERB_SET_CHANNEL_STREAMID, align 4
  %75 = load %struct.via_spec*, %struct.via_spec** %9, align 8
  %76 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @snd_hda_codec_write(%struct.hda_codec* %72, i32 %73, i32 0, i32 %74, i32 %81)
  br label %83

83:                                               ; preds = %71, %61, %54
  br label %84

84:                                               ; preds = %19, %83, %45
  ret void
}

declare dso_local i64 @snd_hda_check_power_state(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
