; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio_dsp.c_restore_dsp_rettings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio_dsp.c_restore_dsp_rettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"restore_dsp_settings\0A\00", align 1
@GD_CLOCK_UNDEF = common dso_local global i32 0, align 4
@GD_SPDIF_STATUS_UNDEF = common dso_local global i32 0, align 4
@DSP_VC_METERS_ON = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"restore_dsp_rettings done\0A\00", align 1
@DSP_VC_UPDATE_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*)* @restore_dsp_rettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @restore_dsp_rettings(%struct.echoaudio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.echoaudio*, align 8
  %4 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %3, align 8
  %5 = call i32 @DE_INIT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %7 = call i32 @check_asic_status(%struct.echoaudio* %6)
  store i32 %7, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %76

11:                                               ; preds = %1
  %12 = load i32, i32* @GD_CLOCK_UNDEF, align 4
  %13 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %14 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %13, i32 0, i32 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  store i32 %12, i32* %16, align 4
  %17 = load i32, i32* @GD_SPDIF_STATUS_UNDEF, align 4
  %18 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %19 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %18, i32 0, i32 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i32 %17, i32* %21, align 4
  %22 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %23 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %22, i32 0, i32 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 -1, i32* %25, align 4
  %26 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %27 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %28 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @set_sample_rate(%struct.echoaudio* %26, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %11
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %76

34:                                               ; preds = %11
  %35 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %36 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %41 = load i32, i32* @DSP_VC_METERS_ON, align 4
  %42 = call i32 @send_vector(%struct.echoaudio* %40, i32 %41)
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %76

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %34
  %49 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %50 = call i64 @update_output_line_level(%struct.echoaudio* %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %76

55:                                               ; preds = %48
  %56 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %57 = call i64 @update_input_line_level(%struct.echoaudio* %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %76

62:                                               ; preds = %55
  %63 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %64 = call i64 @wait_handshake(%struct.echoaudio* %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %76

69:                                               ; preds = %62
  %70 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %71 = call i32 @clear_handshake(%struct.echoaudio* %70)
  %72 = call i32 @DE_INIT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %73 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %74 = load i32, i32* @DSP_VC_UPDATE_FLAGS, align 4
  %75 = call i32 @send_vector(%struct.echoaudio* %73, i32 %74)
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %69, %66, %59, %52, %44, %32, %9
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @DE_INIT(i8*) #1

declare dso_local i32 @check_asic_status(%struct.echoaudio*) #1

declare dso_local i32 @set_sample_rate(%struct.echoaudio*, i32) #1

declare dso_local i32 @send_vector(%struct.echoaudio*, i32) #1

declare dso_local i64 @update_output_line_level(%struct.echoaudio*) #1

declare dso_local i64 @update_input_line_level(%struct.echoaudio*) #1

declare dso_local i64 @wait_handshake(%struct.echoaudio*) #1

declare dso_local i32 @clear_handshake(%struct.echoaudio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
