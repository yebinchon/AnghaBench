; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_mona_dsp.c_init_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_mona_dsp.c_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32, i32, i32, i32, i8*, i8*, i8*, i32, i32* }

@.str = private unnamed_addr constant [18 x i8] c"init_hw() - Mona\0A\00", align 1
@MONA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"init_hw - could not initialize DSP comm page\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@ECHO_CLOCK_BIT_INTERNAL = common dso_local global i32 0, align 4
@ECHO_CLOCK_BIT_SPDIF = common dso_local global i32 0, align 4
@ECHO_CLOCK_BIT_WORD = common dso_local global i32 0, align 4
@ECHO_CLOCK_BIT_ADAT = common dso_local global i32 0, align 4
@ECHOCAPS_HAS_DIGITAL_MODE_SPDIF_RCA = common dso_local global i32 0, align 4
@ECHOCAPS_HAS_DIGITAL_MODE_SPDIF_OPTICAL = common dso_local global i32 0, align 4
@ECHOCAPS_HAS_DIGITAL_MODE_ADAT = common dso_local global i32 0, align 4
@DEVICE_ID_56361 = common dso_local global i64 0, align 8
@card_fw = common dso_local global i32* null, align 8
@FW_MONA_361_DSP = common dso_local global i64 0, align 8
@FW_MONA_301_DSP = common dso_local global i64 0, align 8
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
  %9 = call i32 @DE_INIT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %7, align 4
  %11 = and i32 %10, 65520
  %12 = load i32, i32* @MONA, align 4
  %13 = icmp ne i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @snd_BUG_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %109

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
  br label %109

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
  %37 = load i32, i32* @ECHO_CLOCK_BIT_INTERNAL, align 4
  %38 = load i32, i32* @ECHO_CLOCK_BIT_SPDIF, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @ECHO_CLOCK_BIT_WORD, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @ECHO_CLOCK_BIT_ADAT, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %45 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @ECHOCAPS_HAS_DIGITAL_MODE_SPDIF_RCA, align 4
  %47 = load i32, i32* @ECHOCAPS_HAS_DIGITAL_MODE_SPDIF_OPTICAL, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @ECHOCAPS_HAS_DIGITAL_MODE_ADAT, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %52 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %54 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* @DEVICE_ID_56361, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %27
  %60 = load i32*, i32** @card_fw, align 8
  %61 = load i64, i64* @FW_MONA_361_DSP, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %64 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %63, i32 0, i32 8
  store i32* %62, i32** %64, align 8
  br label %71

65:                                               ; preds = %27
  %66 = load i32*, i32** @card_fw, align 8
  %67 = load i64, i64* @FW_MONA_301_DSP, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %70 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %69, i32 0, i32 8
  store i32* %68, i32** %70, align 8
  br label %71

71:                                               ; preds = %65, %59
  %72 = load i32, i32* @DIGITAL_MODE_SPDIF_RCA, align 4
  %73 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %74 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %73, i32 0, i32 7
  store i32 %72, i32* %74, align 8
  %75 = load i8*, i8** @FALSE, align 8
  %76 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %77 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %76, i32 0, i32 6
  store i8* %75, i8** %77, align 8
  %78 = load i8*, i8** @TRUE, align 8
  %79 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %80 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %79, i32 0, i32 5
  store i8* %78, i8** %80, align 8
  %81 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %82 = call i32 @load_firmware(%struct.echoaudio* %81)
  store i32 %82, i32* %8, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %71
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %4, align 4
  br label %109

86:                                               ; preds = %71
  %87 = load i8*, i8** @FALSE, align 8
  %88 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %89 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %88, i32 0, i32 4
  store i8* %87, i8** %89, align 8
  %90 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %91 = call i32 @init_line_levels(%struct.echoaudio* %90)
  store i32 %91, i32* %8, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %4, align 4
  br label %109

95:                                               ; preds = %86
  %96 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %97 = load i32, i32* @DIGITAL_MODE_SPDIF_RCA, align 4
  %98 = call i32 @set_digital_mode(%struct.echoaudio* %96, i32 %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %4, align 4
  br label %109

103:                                              ; preds = %95
  %104 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %105 = load i8*, i8** @TRUE, align 8
  %106 = call i32 @set_professional_spdif(%struct.echoaudio* %104, i8* %105)
  store i32 %106, i32* %8, align 4
  %107 = call i32 @DE_INIT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %103, %101, %93, %84, %24, %17
  %110 = load i32, i32* %4, align 4
  ret i32 %110
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
