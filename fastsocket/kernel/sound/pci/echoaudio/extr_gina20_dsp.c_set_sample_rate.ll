; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_gina20_dsp.c_set_sample_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_gina20_dsp.c_set_sample_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i64, i32 }

@EIO = common dso_local global i32 0, align 4
@GD_CLOCK_44 = common dso_local global i64 0, align 8
@GD_SPDIF_STATUS_44 = common dso_local global i64 0, align 8
@GD_CLOCK_48 = common dso_local global i64 0, align 8
@GD_SPDIF_STATUS_48 = common dso_local global i64 0, align 8
@GD_CLOCK_NOCHANGE = common dso_local global i64 0, align 8
@GD_SPDIF_STATUS_NOCHANGE = common dso_local global i64 0, align 8
@DSP_VC_SET_GD_AUDIO_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i32)* @set_sample_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_sample_rate(%struct.echoaudio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.echoaudio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.echoaudio* %0, %struct.echoaudio** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %9 = call i64 @wait_handshake(%struct.echoaudio* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %86

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %22 [
    i32 44100, label %16
    i32 48000, label %19
  ]

16:                                               ; preds = %14
  %17 = load i64, i64* @GD_CLOCK_44, align 8
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* @GD_SPDIF_STATUS_44, align 8
  store i64 %18, i64* %7, align 8
  br label %25

19:                                               ; preds = %14
  %20 = load i64, i64* @GD_CLOCK_48, align 8
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* @GD_SPDIF_STATUS_48, align 8
  store i64 %21, i64* %7, align 8
  br label %25

22:                                               ; preds = %14
  %23 = load i64, i64* @GD_CLOCK_NOCHANGE, align 8
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* @GD_SPDIF_STATUS_NOCHANGE, align 8
  store i64 %24, i64* %7, align 8
  br label %25

25:                                               ; preds = %22, %19, %16
  %26 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %27 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i64, i64* @GD_CLOCK_NOCHANGE, align 8
  store i64 %32, i64* %6, align 8
  br label %33

33:                                               ; preds = %31, %25
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %36 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i64, i64* @GD_SPDIF_STATUS_NOCHANGE, align 8
  store i64 %40, i64* %7, align 8
  br label %41

41:                                               ; preds = %39, %33
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @cpu_to_le32(i32 %42)
  %44 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %45 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %44, i32 0, i32 3
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  store i32 %43, i32* %47, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %50 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  store i64 %48, i64* %52, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %55 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %54, i32 0, i32 3
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store i64 %53, i64* %57, align 8
  %58 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %59 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %58, i32 0, i32 3
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 3, i32* %61, align 8
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* @GD_CLOCK_NOCHANGE, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %41
  %66 = load i64, i64* %6, align 8
  %67 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %68 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %65, %41
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* @GD_SPDIF_STATUS_NOCHANGE, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i64, i64* %7, align 8
  %75 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %76 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %73, %69
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %80 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %82 = call i32 @clear_handshake(%struct.echoaudio* %81)
  %83 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %84 = load i32, i32* @DSP_VC_SET_GD_AUDIO_STATE, align 4
  %85 = call i32 @send_vector(%struct.echoaudio* %83, i32 %84)
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %77, %11
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i64 @wait_handshake(%struct.echoaudio*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @clear_handshake(%struct.echoaudio*) #1

declare dso_local i32 @send_vector(%struct.echoaudio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
