; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_indigo_express_dsp.c_set_sample_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_indigo_express_dsp.c_set_sample_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@INDIGO_EXPRESS_CLOCK_MASK = common dso_local global i32 0, align 4
@INDIGO_EXPRESS_32000 = common dso_local global i32 0, align 4
@INDIGO_EXPRESS_44100 = common dso_local global i32 0, align 4
@INDIGO_EXPRESS_48000 = common dso_local global i32 0, align 4
@INDIGO_EXPRESS_DOUBLE_SPEED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DSP_VC_UPDATE_CLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i32)* @set_sample_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_sample_rate(%struct.echoaudio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.echoaudio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %10 = call i64 @wait_handshake(%struct.echoaudio* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %71

15:                                               ; preds = %2
  %16 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %17 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le32_to_cpu(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @INDIGO_EXPRESS_CLOCK_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %45 [
    i32 32000, label %27
    i32 44100, label %29
    i32 48000, label %31
    i32 64000, label %33
    i32 88200, label %37
    i32 96000, label %41
  ]

27:                                               ; preds = %15
  %28 = load i32, i32* @INDIGO_EXPRESS_32000, align 4
  store i32 %28, i32* %6, align 4
  br label %48

29:                                               ; preds = %15
  %30 = load i32, i32* @INDIGO_EXPRESS_44100, align 4
  store i32 %30, i32* %6, align 4
  br label %48

31:                                               ; preds = %15
  %32 = load i32, i32* @INDIGO_EXPRESS_48000, align 4
  store i32 %32, i32* %6, align 4
  br label %48

33:                                               ; preds = %15
  %34 = load i32, i32* @INDIGO_EXPRESS_32000, align 4
  %35 = load i32, i32* @INDIGO_EXPRESS_DOUBLE_SPEED, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %6, align 4
  br label %48

37:                                               ; preds = %15
  %38 = load i32, i32* @INDIGO_EXPRESS_44100, align 4
  %39 = load i32, i32* @INDIGO_EXPRESS_DOUBLE_SPEED, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %6, align 4
  br label %48

41:                                               ; preds = %15
  %42 = load i32, i32* @INDIGO_EXPRESS_48000, align 4
  %43 = load i32, i32* @INDIGO_EXPRESS_DOUBLE_SPEED, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %6, align 4
  br label %48

45:                                               ; preds = %15
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %71

48:                                               ; preds = %41, %37, %33, %31, %29, %27
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %48
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @cpu_to_le32(i32 %56)
  %58 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %59 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 %57, i32* %61, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %64 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %66 = call i32 @clear_handshake(%struct.echoaudio* %65)
  %67 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %68 = load i32, i32* @DSP_VC_UPDATE_CLOCKS, align 4
  %69 = call i32 @send_vector(%struct.echoaudio* %67, i32 %68)
  store i32 %69, i32* %3, align 4
  br label %71

70:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %55, %45, %12
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i64 @wait_handshake(%struct.echoaudio*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @clear_handshake(%struct.echoaudio*) #1

declare dso_local i32 @send_vector(%struct.echoaudio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
