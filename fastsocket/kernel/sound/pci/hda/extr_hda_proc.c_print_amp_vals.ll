; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_proc.c_print_amp_vals.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_proc.c_print_amp_vals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_buffer = type { i32 }
%struct.hda_codec = type { i32 }

@HDA_OUTPUT = common dso_local global i32 0, align 4
@AC_AMP_GET_OUTPUT = common dso_local global i32 0, align 4
@AC_AMP_GET_INPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c" [\00", align 1
@AC_VERB_GET_AMP_GAIN_MUTE = common dso_local global i32 0, align 4
@AC_AMP_GET_LEFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"0x%02x\00", align 1
@AC_AMP_GET_RIGHT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c" 0x%02x\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_buffer*, %struct.hda_codec*, i32, i32, i32, i32)* @print_amp_vals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_amp_vals(%struct.snd_info_buffer* %0, %struct.hda_codec* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.snd_info_buffer*, align 8
  %8 = alloca %struct.hda_codec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_info_buffer* %0, %struct.snd_info_buffer** %7, align 8
  store %struct.hda_codec* %1, %struct.hda_codec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @HDA_OUTPUT, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %6
  %19 = load i32, i32* @AC_AMP_GET_OUTPUT, align 4
  br label %22

20:                                               ; preds = %6
  %21 = load i32, i32* @AC_AMP_GET_INPUT, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %10, align 4
  store i32 0, i32* %14, align 4
  br label %24

24:                                               ; preds = %61, %22
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %64

28:                                               ; preds = %24
  %29 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %7, align 8
  %30 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @AC_VERB_GET_AMP_GAIN_MUTE, align 4
  %34 = load i32, i32* @AC_AMP_GET_LEFT, align 4
  %35 = load i32, i32* %10, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %14, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @snd_hda_codec_read(%struct.hda_codec* %31, i32 %32, i32 0, i32 %33, i32 %38)
  store i32 %39, i32* %13, align 4
  %40 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %7, align 8
  %41 = load i32, i32* %13, align 4
  %42 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %28
  %46 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @AC_VERB_GET_AMP_GAIN_MUTE, align 4
  %49 = load i32, i32* @AC_AMP_GET_RIGHT, align 4
  %50 = load i32, i32* %10, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* %14, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @snd_hda_codec_read(%struct.hda_codec* %46, i32 %47, i32 0, i32 %48, i32 %53)
  store i32 %54, i32* %13, align 4
  %55 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %7, align 8
  %56 = load i32, i32* %13, align 4
  %57 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %45, %28
  %59 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %7, align 8
  %60 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %14, align 4
  br label %24

64:                                               ; preds = %24
  %65 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %7, align 8
  %66 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
