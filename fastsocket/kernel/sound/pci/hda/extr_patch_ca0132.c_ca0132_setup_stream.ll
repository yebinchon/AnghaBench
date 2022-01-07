; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_ca0132_setup_stream.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_ca0132_setup_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@.str = private unnamed_addr constant [69 x i8] c"ca0132_setup_stream: NID=0x%x, stream=0x%x, channel=%d, format=0x%x\0A\00", align 1
@AC_VERB_GET_STREAM_FORMAT = common dso_local global i32 0, align 4
@AC_VERB_SET_STREAM_FORMAT = common dso_local global i32 0, align 4
@AC_VERB_GET_CONV = common dso_local global i32 0, align 4
@AC_VERB_SET_CHANNEL_STREAMID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i32, i32, i32, i32)* @ca0132_setup_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ca0132_setup_stream(%struct.hda_codec* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %5
  br label %54

16:                                               ; preds = %5
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @snd_printdd(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i32 %19, i32 %20)
  %22 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @AC_VERB_GET_STREAM_FORMAT, align 4
  %25 = call i32 @snd_hda_codec_read(%struct.hda_codec* %22, i32 %23, i32 0, i32 %24, i32 0)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %16
  %30 = call i32 @msleep(i32 20)
  %31 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @AC_VERB_SET_STREAM_FORMAT, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @snd_hda_codec_write(%struct.hda_codec* %31, i32 %32, i32 0, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %29, %16
  %37 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @AC_VERB_GET_CONV, align 4
  %40 = call i32 @snd_hda_codec_read(%struct.hda_codec* %37, i32 %38, i32 0, i32 %39, i32 0)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %8, align 4
  %42 = shl i32 %41, 4
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %36
  %49 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @AC_VERB_SET_CHANNEL_STREAMID, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @snd_hda_codec_write(%struct.hda_codec* %49, i32 %50, i32 0, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %15, %48, %36
  ret void
}

declare dso_local i32 @snd_printdd(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
