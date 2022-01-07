; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_proc.c_print_amp_caps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_proc.c_print_amp_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_buffer = type { i32 }
%struct.hda_codec = type { i32 }

@HDA_OUTPUT = common dso_local global i32 0, align 4
@AC_PAR_AMP_OUT_CAP = common dso_local global i32 0, align 4
@AC_PAR_AMP_IN_CAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"N/A\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"ofs=0x%02x, nsteps=0x%02x, stepsize=0x%02x, mute=%x\0A\00", align 1
@AC_AMPCAP_OFFSET = common dso_local global i32 0, align 4
@AC_AMPCAP_NUM_STEPS = common dso_local global i32 0, align 4
@AC_AMPCAP_NUM_STEPS_SHIFT = common dso_local global i32 0, align 4
@AC_AMPCAP_STEP_SIZE = common dso_local global i32 0, align 4
@AC_AMPCAP_STEP_SIZE_SHIFT = common dso_local global i32 0, align 4
@AC_AMPCAP_MUTE = common dso_local global i32 0, align 4
@AC_AMPCAP_MUTE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_buffer*, %struct.hda_codec*, i32, i32)* @print_amp_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_amp_caps(%struct.snd_info_buffer* %0, %struct.hda_codec* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_info_buffer*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_info_buffer* %0, %struct.snd_info_buffer** %5, align 8
  store %struct.hda_codec* %1, %struct.hda_codec** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @HDA_OUTPUT, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @AC_PAR_AMP_OUT_CAP, align 4
  br label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @AC_PAR_AMP_IN_CAP, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = call i32 @snd_hda_param_read(%struct.hda_codec* %10, i32 %11, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %9, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24, %19
  %28 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %29 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %51

30:                                               ; preds = %24
  %31 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @AC_AMPCAP_OFFSET, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @AC_AMPCAP_NUM_STEPS, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @AC_AMPCAP_NUM_STEPS_SHIFT, align 4
  %39 = lshr i32 %37, %38
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @AC_AMPCAP_STEP_SIZE, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @AC_AMPCAP_STEP_SIZE_SHIFT, align 4
  %44 = lshr i32 %42, %43
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @AC_AMPCAP_MUTE, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @AC_AMPCAP_MUTE_SHIFT, align 4
  %49 = lshr i32 %47, %48
  %50 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %31, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %39, i32 %44, i32 %49)
  br label %51

51:                                               ; preds = %30, %27
  ret void
}

declare dso_local i32 @snd_hda_param_read(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
