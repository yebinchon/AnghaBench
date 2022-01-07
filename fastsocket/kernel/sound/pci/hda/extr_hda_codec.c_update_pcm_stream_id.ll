; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_update_pcm_stream_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_update_pcm_stream_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.hda_cvt_setup = type { i32, i32 }

@AC_VERB_GET_CONV = common dso_local global i32 0, align 4
@AC_VERB_SET_CHANNEL_STREAMID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.hda_cvt_setup*, i32, i32, i32)* @update_pcm_stream_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_pcm_stream_id(%struct.hda_codec* %0, %struct.hda_cvt_setup* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca %struct.hda_cvt_setup*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %6, align 8
  store %struct.hda_cvt_setup* %1, %struct.hda_cvt_setup** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.hda_cvt_setup*, %struct.hda_cvt_setup** %7, align 8
  %14 = getelementptr inbounds %struct.hda_cvt_setup, %struct.hda_cvt_setup* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %5
  %19 = load %struct.hda_cvt_setup*, %struct.hda_cvt_setup** %7, align 8
  %20 = getelementptr inbounds %struct.hda_cvt_setup, %struct.hda_cvt_setup* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %49

24:                                               ; preds = %18, %5
  %25 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @AC_VERB_GET_CONV, align 4
  %28 = call i32 @snd_hda_codec_read(%struct.hda_codec* %25, i32 %26, i32 0, i32 %27, i32 0)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %9, align 4
  %30 = shl i32 %29, 4
  %31 = load i32, i32* %10, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %24
  %37 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @AC_VERB_SET_CHANNEL_STREAMID, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @snd_hda_codec_write(%struct.hda_codec* %37, i32 %38, i32 0, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %36, %24
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.hda_cvt_setup*, %struct.hda_cvt_setup** %7, align 8
  %45 = getelementptr inbounds %struct.hda_cvt_setup, %struct.hda_cvt_setup* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.hda_cvt_setup*, %struct.hda_cvt_setup** %7, align 8
  %48 = getelementptr inbounds %struct.hda_cvt_setup, %struct.hda_cvt_setup* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %42, %18
  ret void
}

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
