; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_read_pin_defaults.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_read_pin_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, i32, i64 }
%struct.hda_pincfg = type { i8*, i8*, i64 }

@AC_WID_PIN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AC_VERB_GET_CONFIG_DEFAULT = common dso_local global i32 0, align 4
@AC_VERB_GET_PIN_WIDGET_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @read_pin_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_pin_defaults(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.hda_pincfg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %9 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %53, %1
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %15 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %58

18:                                               ; preds = %12
  %19 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @get_wcaps(%struct.hda_codec* %19, i64 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @get_wcaps_type(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @AC_WID_PIN, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %53

28:                                               ; preds = %18
  %29 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %30 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %29, i32 0, i32 1
  %31 = call %struct.hda_pincfg* @snd_array_new(i32* %30)
  store %struct.hda_pincfg* %31, %struct.hda_pincfg** %6, align 8
  %32 = load %struct.hda_pincfg*, %struct.hda_pincfg** %6, align 8
  %33 = icmp ne %struct.hda_pincfg* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %59

37:                                               ; preds = %28
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.hda_pincfg*, %struct.hda_pincfg** %6, align 8
  %40 = getelementptr inbounds %struct.hda_pincfg, %struct.hda_pincfg* %39, i32 0, i32 2
  store i64 %38, i64* %40, align 8
  %41 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load i32, i32* @AC_VERB_GET_CONFIG_DEFAULT, align 4
  %44 = call i8* @snd_hda_codec_read(%struct.hda_codec* %41, i64 %42, i32 0, i32 %43, i32 0)
  %45 = load %struct.hda_pincfg*, %struct.hda_pincfg** %6, align 8
  %46 = getelementptr inbounds %struct.hda_pincfg, %struct.hda_pincfg* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %48 = load i64, i64* %5, align 8
  %49 = load i32, i32* @AC_VERB_GET_PIN_WIDGET_CONTROL, align 4
  %50 = call i8* @snd_hda_codec_read(%struct.hda_codec* %47, i64 %48, i32 0, i32 %49, i32 0)
  %51 = load %struct.hda_pincfg*, %struct.hda_pincfg** %6, align 8
  %52 = getelementptr inbounds %struct.hda_pincfg, %struct.hda_pincfg* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  br label %53

53:                                               ; preds = %37, %27
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  %56 = load i64, i64* %5, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %5, align 8
  br label %12

58:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %34
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @get_wcaps(%struct.hda_codec*, i64) #1

declare dso_local i32 @get_wcaps_type(i32) #1

declare dso_local %struct.hda_pincfg* @snd_array_new(i32*) #1

declare dso_local i8* @snd_hda_codec_read(%struct.hda_codec*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
