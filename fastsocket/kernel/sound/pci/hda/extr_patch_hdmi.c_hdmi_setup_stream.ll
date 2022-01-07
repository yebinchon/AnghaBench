; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_hdmi_setup_stream.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_hdmi_setup_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@AC_PINCAP_HBR = common dso_local global i32 0, align 4
@AC_VERB_GET_PIN_WIDGET_CONTROL = common dso_local global i32 0, align 4
@AC_PINCTL_EPT = common dso_local global i32 0, align 4
@AC_PINCTL_EPT_HBR = common dso_local global i32 0, align 4
@AC_PINCTL_EPT_NATIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"hdmi_setup_stream: NID=0x%x, %spinctl=0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"new-\00", align 1
@AC_VERB_SET_PIN_WIDGET_CONTROL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"hdmi_setup_stream: HBR is not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i32, i32, i32)* @hdmi_setup_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_setup_stream(%struct.hda_codec* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hda_codec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %15 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, -2138691577
  br i1 %17, label %18, label %23

18:                                               ; preds = %5
  %19 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @haswell_verify_pin_D0(%struct.hda_codec* %19, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %18, %5
  %24 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @snd_hda_query_pin_caps(%struct.hda_codec* %24, i32 %25)
  %27 = load i32, i32* @AC_PINCAP_HBR, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %69

30:                                               ; preds = %23
  %31 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @AC_VERB_GET_PIN_WIDGET_CONTROL, align 4
  %34 = call i32 @snd_hda_codec_read(%struct.hda_codec* %31, i32 %32, i32 0, i32 %33, i32 0)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @AC_PINCTL_EPT, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i64 @is_hbr_format(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %30
  %43 = load i32, i32* @AC_PINCTL_EPT_HBR, align 4
  %44 = load i32, i32* %13, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %13, align 4
  br label %50

46:                                               ; preds = %30
  %47 = load i32, i32* @AC_PINCTL_EPT_NATIVE, align 4
  %48 = load i32, i32* %13, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %13, align 4
  br label %50

50:                                               ; preds = %46, %42
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp eq i32 %52, %53
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %57 = load i32, i32* %13, align 4
  %58 = call i32 (i8*, ...) @snd_printdd(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %51, i8* %56, i32 %57)
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %50
  %63 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @AC_VERB_SET_PIN_WIDGET_CONTROL, align 4
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @snd_hda_codec_write(%struct.hda_codec* %63, i32 %64, i32 0, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %62, %50
  br label %69

69:                                               ; preds = %68, %23
  %70 = load i32, i32* %11, align 4
  %71 = call i64 @is_hbr_format(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = call i32 (i8*, ...) @snd_printdd(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %6, align 4
  br label %86

80:                                               ; preds = %73, %69
  %81 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @snd_hda_codec_setup_stream(%struct.hda_codec* %81, i32 %82, i32 %83, i32 0, i32 %84)
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %80, %76
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32 @haswell_verify_pin_D0(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_hda_query_pin_caps(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i64 @is_hbr_format(i32) #1

declare dso_local i32 @snd_printdd(i8*, ...) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_hda_codec_setup_stream(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
