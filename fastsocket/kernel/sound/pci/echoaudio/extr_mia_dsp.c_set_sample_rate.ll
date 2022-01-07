; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_mia_dsp.c_set_sample_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_mia_dsp.c_set_sample_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i8* }

@MIA_96000 = common dso_local global i32 0, align 4
@MIA_88200 = common dso_local global i32 0, align 4
@MIA_48000 = common dso_local global i32 0, align 4
@MIA_44100 = common dso_local global i32 0, align 4
@MIA_32000 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"set_sample_rate: %d invalid!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ECHO_CLOCK_SPDIF = common dso_local global i64 0, align 8
@MIA_SPDIF = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@DSP_VC_UPDATE_CLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i32)* @set_sample_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_sample_rate(%struct.echoaudio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.echoaudio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %18 [
    i32 96000, label %8
    i32 88200, label %10
    i32 48000, label %12
    i32 44100, label %14
    i32 32000, label %16
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @MIA_96000, align 4
  store i32 %9, i32* %6, align 4
  br label %25

10:                                               ; preds = %2
  %11 = load i32, i32* @MIA_88200, align 4
  store i32 %11, i32* %6, align 4
  br label %25

12:                                               ; preds = %2
  %13 = load i32, i32* @MIA_48000, align 4
  store i32 %13, i32* %6, align 4
  br label %25

14:                                               ; preds = %2
  %15 = load i32, i32* @MIA_44100, align 4
  store i32 %15, i32* %6, align 4
  br label %25

16:                                               ; preds = %2
  %17 = load i32, i32* @MIA_32000, align 4
  store i32 %17, i32* %6, align 4
  br label %25

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @DE_ACT(i8* %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %73

25:                                               ; preds = %16, %14, %12, %10, %8
  %26 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %27 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ECHO_CLOCK_SPDIF, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32, i32* @MIA_SPDIF, align 4
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %31, %25
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %38 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @le32_to_cpu(i8* %41)
  %43 = icmp ne i32 %36, %42
  br i1 %43, label %44, label %72

44:                                               ; preds = %35
  %45 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %46 = call i64 @wait_handshake(%struct.echoaudio* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %73

51:                                               ; preds = %44
  %52 = load i32, i32* %5, align 4
  %53 = call i8* @cpu_to_le32(i32 %52)
  %54 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %55 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store i8* %53, i8** %57, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i8* @cpu_to_le32(i32 %58)
  %60 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %61 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %60, i32 0, i32 2
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i8* %59, i8** %63, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %66 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %68 = call i32 @clear_handshake(%struct.echoaudio* %67)
  %69 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %70 = load i32, i32* @DSP_VC_UPDATE_CLOCKS, align 4
  %71 = call i32 @send_vector(%struct.echoaudio* %69, i32 %70)
  store i32 %71, i32* %3, align 4
  br label %73

72:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %51, %48, %18
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @DE_ACT(i8*) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i64 @wait_handshake(%struct.echoaudio*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @clear_handshake(%struct.echoaudio*) #1

declare dso_local i32 @send_vector(%struct.echoaudio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
