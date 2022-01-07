; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_cxt5066_olpc_automic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_cxt5066_olpc_automic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.conexant_spec* }
%struct.conexant_spec = type { i32, i64 }

@AC_VERB_GET_PIN_SENSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"CXT5066: external microphone detected\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"CXT5066: external microphone absent\0A\00", align 1
@AC_VERB_SET_CONNECT_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @cxt5066_olpc_automic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxt5066_olpc_automic(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.conexant_spec*, align 8
  %4 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %5 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %6 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %5, i32 0, i32 0
  %7 = load %struct.conexant_spec*, %struct.conexant_spec** %6, align 8
  store %struct.conexant_spec* %7, %struct.conexant_spec** %3, align 8
  %8 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %9 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %41

13:                                               ; preds = %1
  %14 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %15 = load i32, i32* @AC_VERB_GET_PIN_SENSE, align 4
  %16 = call i32 @snd_hda_codec_read(%struct.hda_codec* %14, i32 26, i32 0, i32 %15, i32 0)
  %17 = and i32 %16, -2147483648
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = call i32 @snd_printdd(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %24

22:                                               ; preds = %13
  %23 = call i32 @snd_printdd(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %20
  %25 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %26 = load i32, i32* @AC_VERB_SET_CONNECT_SEL, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 0, i32 1
  %31 = call i32 @snd_hda_codec_write(%struct.hda_codec* %25, i32 23, i32 0, i32 %26, i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %38 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %40 = call i32 @cxt5066_olpc_select_mic(%struct.hda_codec* %39)
  br label %41

41:                                               ; preds = %24, %12
  ret void
}

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_printdd(i8*) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @cxt5066_olpc_select_mic(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
