; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_add_fx_switch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_add_fx_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.snd_kcontrol_new = type { i32 }

@HDA_INPUT = common dso_local global i32 0, align 4
@HDA_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s %s Switch\00", align 1
@dirstr = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i8*, i32)* @add_fx_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_fx_switch(%struct.hda_codec* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [44 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_kcontrol_new, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @HDA_INPUT, align 4
  br label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @HDA_OUTPUT, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %10, align 4
  %20 = getelementptr inbounds [44 x i8], [44 x i8]* %9, i64 0, i64 0
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @CA0132_CODEC_MUTE_MONO(i8* %20, i32 %21, i32 1, i32 %22)
  %24 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %11, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds [44 x i8], [44 x i8]* %9, i64 0, i64 0
  %26 = load i8*, i8** %7, align 8
  %27 = load i8**, i8*** @dirstr, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @sprintf(i8* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %26, i8* %31)
  %33 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %36 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* %11, %struct.hda_codec* %35)
  %37 = call i32 @snd_hda_ctl_add(%struct.hda_codec* %33, i32 %34, i32 %36)
  ret i32 %37
}

declare dso_local i32 @CA0132_CODEC_MUTE_MONO(i8*, i32, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @snd_hda_ctl_add(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_ctl_new1(%struct.snd_kcontrol_new*, %struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
