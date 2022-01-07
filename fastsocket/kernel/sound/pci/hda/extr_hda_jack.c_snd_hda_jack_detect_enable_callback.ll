; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_jack.c_snd_hda_jack_detect_enable_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_jack.c_snd_hda_jack_detect_enable_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i64 }
%struct.hda_jack_tbl = type { i32, i8, i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@AC_VERB_SET_UNSOLICITED_ENABLE = common dso_local global i32 0, align 4
@AC_USRSP_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_jack_detect_enable_callback(%struct.hda_codec* %0, i32 %1, i8 zeroext %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca %struct.hda_jack_tbl*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8 %2, i8* %8, align 1
  store i64 %3, i64* %9, align 8
  %11 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.hda_jack_tbl* @snd_hda_jack_tbl_new(%struct.hda_codec* %11, i32 %12)
  store %struct.hda_jack_tbl* %13, %struct.hda_jack_tbl** %10, align 8
  %14 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %10, align 8
  %15 = icmp ne %struct.hda_jack_tbl* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %57

19:                                               ; preds = %4
  %20 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %10, align 8
  %21 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %57

25:                                               ; preds = %19
  %26 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %10, align 8
  %27 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load i8, i8* %8, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i8, i8* %8, align 1
  %32 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %10, align 8
  %33 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %32, i32 0, i32 1
  store i8 %31, i8* %33, align 4
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i64, i64* %9, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %10, align 8
  %40 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %39, i32 0, i32 3
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %37, %34
  %42 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %43 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %57

47:                                               ; preds = %41
  %48 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @AC_VERB_SET_UNSOLICITED_ENABLE, align 4
  %51 = load i32, i32* @AC_USRSP_EN, align 4
  %52 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %10, align 8
  %53 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %51, %54
  %56 = call i32 @snd_hda_codec_write_cache(%struct.hda_codec* %48, i32 %49, i32 0, i32 %50, i32 %55)
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %47, %46, %24, %16
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local %struct.hda_jack_tbl* @snd_hda_jack_tbl_new(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_codec_write_cache(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
