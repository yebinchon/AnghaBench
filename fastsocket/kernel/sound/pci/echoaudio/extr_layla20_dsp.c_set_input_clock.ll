; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_layla20_dsp.c_set_input_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_layla20_dsp.c_set_input_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"set_input_clock:\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Set Layla20 clock to INTERNAL\0A\00", align 1
@LAYLA20_CLOCK_INTERNAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Set Layla20 clock to SPDIF\0A\00", align 1
@LAYLA20_CLOCK_SPDIF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Set Layla20 clock to WORD\0A\00", align 1
@LAYLA20_CLOCK_WORD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Set Layla20 clock to SUPER\0A\00", align 1
@LAYLA20_CLOCK_SUPER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"Input clock 0x%x not supported for Layla24\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DSP_VC_UPDATE_CLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i32)* @set_input_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_input_clock(%struct.echoaudio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.echoaudio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.echoaudio* %0, %struct.echoaudio** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call i32 @DE_ACT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %7, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %25 [
    i32 131, label %10
    i32 130, label %16
    i32 128, label %19
    i32 129, label %22
  ]

10:                                               ; preds = %2
  %11 = call i32 @DE_ACT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %12 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %13 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  %15 = load i32, i32* @LAYLA20_CLOCK_INTERNAL, align 4
  store i32 %15, i32* %6, align 4
  br label %32

16:                                               ; preds = %2
  %17 = call i32 @DE_ACT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %18 = load i32, i32* @LAYLA20_CLOCK_SPDIF, align 4
  store i32 %18, i32* %6, align 4
  br label %32

19:                                               ; preds = %2
  %20 = call i32 @DE_ACT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %21 = load i32, i32* @LAYLA20_CLOCK_WORD, align 4
  store i32 %21, i32* %6, align 4
  br label %32

22:                                               ; preds = %2
  %23 = call i32 @DE_ACT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %24 = load i32, i32* @LAYLA20_CLOCK_SUPER, align 4
  store i32 %24, i32* %6, align 4
  br label %32

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @DE_ACT(i8* %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %54

32:                                               ; preds = %22, %19, %16, %10
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %35 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @cpu_to_le16(i32 %36)
  %38 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %39 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 4
  %42 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %43 = call i32 @clear_handshake(%struct.echoaudio* %42)
  %44 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %45 = load i32, i32* @DSP_VC_UPDATE_CLOCKS, align 4
  %46 = call i32 @send_vector(%struct.echoaudio* %44, i32 %45)
  %47 = load i64, i64* %7, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %32
  %50 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @set_sample_rate(%struct.echoaudio* %50, i64 %51)
  br label %53

53:                                               ; preds = %49, %32
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %25
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @DE_ACT(i8*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @clear_handshake(%struct.echoaudio*) #1

declare dso_local i32 @send_vector(%struct.echoaudio*, i32) #1

declare dso_local i32 @set_sample_rate(%struct.echoaudio*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
