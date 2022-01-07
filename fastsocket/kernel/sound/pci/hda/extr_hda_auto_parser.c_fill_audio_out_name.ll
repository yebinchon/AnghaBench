; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_auto_parser.c_fill_audio_out_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_auto_parser.c_fill_audio_out_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.auto_pin_cfg = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Line Out\00", align 1
@INPUT_PIN_ATTR_INT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"Speaker\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, %struct.auto_pin_cfg*, i8*, i8*, i32, i32*)* @fill_audio_out_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_audio_out_name(%struct.hda_codec* %0, i32 %1, %struct.auto_pin_cfg* %2, i8* %3, i8* %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.hda_codec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.auto_pin_cfg*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.auto_pin_cfg* %2, %struct.auto_pin_cfg** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %20 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @snd_hda_codec_get_pincfg(%struct.hda_codec* %20, i32 %21)
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %15, align 4
  %24 = call i32 @snd_hda_get_input_pin_attr(i32 %23)
  store i32 %24, i32* %16, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %7
  %29 = load i32, i32* %16, align 4
  %30 = load i32, i32* @INPUT_PIN_ATTR_INT, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %33

33:                                               ; preds = %32, %28, %7
  %34 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i8* @check_output_pfx(%struct.hda_codec* %34, i32 %35)
  store i8* %36, i8** %17, align 8
  %37 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %10, align 8
  %38 = icmp ne %struct.auto_pin_cfg* %37, null
  br i1 %38, label %39, label %81

39:                                               ; preds = %33
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %10, align 8
  %42 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %10, align 8
  %45 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %14, align 8
  %48 = call i8* @check_output_sfx(i32 %40, i32 %43, i32 %46, i32* %47)
  store i8* %48, i8** %18, align 8
  %49 = load i8*, i8** %18, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %61, label %51

51:                                               ; preds = %39
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %10, align 8
  %54 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %10, align 8
  %57 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %14, align 8
  %60 = call i8* @check_output_sfx(i32 %52, i32 %55, i32 %58, i32* %59)
  store i8* %60, i8** %18, align 8
  br label %61

61:                                               ; preds = %51, %39
  %62 = load i8*, i8** %18, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %80, label %64

64:                                               ; preds = %61
  %65 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %10, align 8
  %68 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %10, align 8
  %71 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @get_hp_label_index(%struct.hda_codec* %65, i32 %66, i32 %69, i32 %72)
  store i32 %73, i32* %19, align 4
  %74 = load i32, i32* %19, align 4
  %75 = icmp sge i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %64
  %77 = load i32, i32* %19, align 4
  %78 = load i32*, i32** %14, align 8
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %76, %64
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  br label %80

80:                                               ; preds = %79, %61
  br label %81

81:                                               ; preds = %80, %33
  %82 = load i8*, i8** %12, align 8
  %83 = load i32, i32* %13, align 4
  %84 = load i8*, i8** %17, align 8
  %85 = load i8*, i8** %11, align 8
  %86 = load i8*, i8** %18, align 8
  %87 = call i32 @snprintf(i8* %82, i32 %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %84, i8* %85, i8* %86)
  ret i32 1
}

declare dso_local i32 @snd_hda_codec_get_pincfg(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_get_input_pin_attr(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @check_output_pfx(%struct.hda_codec*, i32) #1

declare dso_local i8* @check_output_sfx(i32, i32, i32, i32*) #1

declare dso_local i32 @get_hp_label_index(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
