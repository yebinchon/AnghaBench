; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_indigo_dsp.c_set_sample_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_indigo_dsp.c_set_sample_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i8* }

@MIA_96000 = common dso_local global i32 0, align 4
@MIA_88200 = common dso_local global i32 0, align 4
@MIA_48000 = common dso_local global i32 0, align 4
@MIA_44100 = common dso_local global i32 0, align 4
@MIA_32000 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"set_sample_rate: %d invalid!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
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
  br label %63

25:                                               ; preds = %16, %14, %12, %10, %8
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %28 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @le32_to_cpu(i8* %31)
  %33 = icmp ne i32 %26, %32
  br i1 %33, label %34, label %62

34:                                               ; preds = %25
  %35 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %36 = call i64 @wait_handshake(%struct.echoaudio* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %63

41:                                               ; preds = %34
  %42 = load i32, i32* %5, align 4
  %43 = call i8* @cpu_to_le32(i32 %42)
  %44 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %45 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i8* %43, i8** %47, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i8* @cpu_to_le32(i32 %48)
  %50 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %51 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i8* %49, i8** %53, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %56 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %58 = call i32 @clear_handshake(%struct.echoaudio* %57)
  %59 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %60 = load i32, i32* @DSP_VC_UPDATE_CLOCKS, align 4
  %61 = call i32 @send_vector(%struct.echoaudio* %59, i32 %60)
  store i32 %61, i32* %3, align 4
  br label %63

62:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %41, %38, %18
  %64 = load i32, i32* %3, align 4
  ret i32 %64
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
