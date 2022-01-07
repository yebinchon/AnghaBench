; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_layla24_dsp.c_init_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_layla24_dsp.c_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32, i32, i32, i32, i8*, i8*, i8*, i32, i32*, i8* }

@.str = private unnamed_addr constant [21 x i8] c"init_hw() - Layla24\0A\00", align 1
@LAYLA24 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"init_hw - could not initialize DSP comm page\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@card_fw = common dso_local global i32* null, align 8
@FW_LAYLA24_DSP = common dso_local global i64 0, align 8
@ECHO_CLOCK_BIT_INTERNAL = common dso_local global i32 0, align 4
@ECHO_CLOCK_BIT_SPDIF = common dso_local global i32 0, align 4
@ECHO_CLOCK_BIT_WORD = common dso_local global i32 0, align 4
@ECHO_CLOCK_BIT_ADAT = common dso_local global i32 0, align 4
@ECHOCAPS_HAS_DIGITAL_MODE_SPDIF_RCA = common dso_local global i32 0, align 4
@ECHOCAPS_HAS_DIGITAL_MODE_SPDIF_OPTICAL = common dso_local global i32 0, align 4
@ECHOCAPS_HAS_DIGITAL_MODE_ADAT = common dso_local global i32 0, align 4
@DIGITAL_MODE_SPDIF_RCA = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"init_hw done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i32, i32)* @init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_hw(%struct.echoaudio* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.echoaudio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = call i32 @DE_INIT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %7, align 4
  %11 = and i32 %10, 65520
  %12 = load i32, i32* @LAYLA24, align 4
  %13 = icmp ne i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @snd_BUG_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %98

20:                                               ; preds = %3
  %21 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %22 = call i32 @init_dsp_comm_page(%struct.echoaudio* %21)
  store i32 %22, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = call i32 @DE_INIT(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %98

27:                                               ; preds = %20
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %30 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %33 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i8*, i8** @TRUE, align 8
  %35 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %36 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %35, i32 0, i32 4
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** @TRUE, align 8
  %38 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %39 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %38, i32 0, i32 9
  store i8* %37, i8** %39, align 8
  %40 = load i32*, i32** @card_fw, align 8
  %41 = load i64, i64* @FW_LAYLA24_DSP, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %44 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %43, i32 0, i32 8
  store i32* %42, i32** %44, align 8
  %45 = load i32, i32* @ECHO_CLOCK_BIT_INTERNAL, align 4
  %46 = load i32, i32* @ECHO_CLOCK_BIT_SPDIF, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @ECHO_CLOCK_BIT_WORD, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @ECHO_CLOCK_BIT_ADAT, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %53 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @ECHOCAPS_HAS_DIGITAL_MODE_SPDIF_RCA, align 4
  %55 = load i32, i32* @ECHOCAPS_HAS_DIGITAL_MODE_SPDIF_OPTICAL, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @ECHOCAPS_HAS_DIGITAL_MODE_ADAT, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %60 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @DIGITAL_MODE_SPDIF_RCA, align 4
  %62 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %63 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %62, i32 0, i32 7
  store i32 %61, i32* %63, align 8
  %64 = load i8*, i8** @FALSE, align 8
  %65 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %66 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %65, i32 0, i32 6
  store i8* %64, i8** %66, align 8
  %67 = load i8*, i8** @TRUE, align 8
  %68 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %69 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %68, i32 0, i32 5
  store i8* %67, i8** %69, align 8
  %70 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %71 = call i32 @load_firmware(%struct.echoaudio* %70)
  store i32 %71, i32* %8, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %27
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %4, align 4
  br label %98

75:                                               ; preds = %27
  %76 = load i8*, i8** @FALSE, align 8
  %77 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %78 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %77, i32 0, i32 4
  store i8* %76, i8** %78, align 8
  %79 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %80 = call i32 @init_line_levels(%struct.echoaudio* %79)
  store i32 %80, i32* %8, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %4, align 4
  br label %98

84:                                               ; preds = %75
  %85 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %86 = load i32, i32* @DIGITAL_MODE_SPDIF_RCA, align 4
  %87 = call i32 @set_digital_mode(%struct.echoaudio* %85, i32 %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %4, align 4
  br label %98

92:                                               ; preds = %84
  %93 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %94 = load i8*, i8** @TRUE, align 8
  %95 = call i32 @set_professional_spdif(%struct.echoaudio* %93, i8* %94)
  store i32 %95, i32* %8, align 4
  %96 = call i32 @DE_INIT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %92, %90, %82, %73, %24, %17
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @DE_INIT(i8*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @init_dsp_comm_page(%struct.echoaudio*) #1

declare dso_local i32 @load_firmware(%struct.echoaudio*) #1

declare dso_local i32 @init_line_levels(%struct.echoaudio*) #1

declare dso_local i32 @set_digital_mode(%struct.echoaudio*, i32) #1

declare dso_local i32 @set_professional_spdif(%struct.echoaudio*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
