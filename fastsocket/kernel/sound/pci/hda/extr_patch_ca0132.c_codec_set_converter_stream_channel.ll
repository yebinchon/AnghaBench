; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_codec_set_converter_stream_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_codec_set_converter_stream_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@AC_VERB_SET_CHANNEL_STREAMID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i8, i8, i32*)* @codec_set_converter_stream_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @codec_set_converter_stream_channel(%struct.hda_codec* %0, i32 %1, i8 zeroext %2, i8 zeroext %3, i32* %4) #0 {
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32*, align 8
  %11 = alloca i8, align 1
  store %struct.hda_codec* %0, %struct.hda_codec** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8 %2, i8* %8, align 1
  store i8 %3, i8* %9, align 1
  store i32* %4, i32** %10, align 8
  store i8 0, i8* %11, align 1
  %12 = load i8, i8* %8, align 1
  %13 = zext i8 %12 to i32
  %14 = shl i32 %13, 4
  %15 = load i8, i8* %9, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 15
  %18 = or i32 %14, %17
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %11, align 1
  %20 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @AC_VERB_SET_CHANNEL_STREAMID, align 4
  %23 = load i8, i8* %11, align 1
  %24 = load i32*, i32** %10, align 8
  %25 = call i32 @codec_send_command(%struct.hda_codec* %20, i32 %21, i32 %22, i8 zeroext %23, i32* %24)
  ret i32 %25
}

declare dso_local i32 @codec_send_command(%struct.hda_codec*, i32, i32, i8 zeroext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
