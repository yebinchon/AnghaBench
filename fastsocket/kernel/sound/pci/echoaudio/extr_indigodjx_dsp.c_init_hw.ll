; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_indigodjx_dsp.c_init_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_indigodjx_dsp.c_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32, i32, i8*, i32, i8*, i32* }

@.str = private unnamed_addr constant [24 x i8] c"init_hw() - Indigo DJx\0A\00", align 1
@INDIGO_DJX = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"init_hw - could not initialize DSP comm page\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@card_fw = common dso_local global i32* null, align 8
@FW_INDIGO_DJX_DSP = common dso_local global i64 0, align 8
@ECHO_CLOCK_BIT_INTERNAL = common dso_local global i32 0, align 4
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
  %9 = call i32 @DE_INIT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %7, align 4
  %11 = and i32 %10, 65520
  %12 = load i32, i32* @INDIGO_DJX, align 4
  %13 = icmp ne i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @snd_BUG_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %68

20:                                               ; preds = %3
  %21 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %22 = call i32 @init_dsp_comm_page(%struct.echoaudio* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = call i32 @DE_INIT(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %68

28:                                               ; preds = %20
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %31 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %34 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i8*, i8** @TRUE, align 8
  %36 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %37 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load i32*, i32** @card_fw, align 8
  %39 = load i64, i64* @FW_INDIGO_DJX_DSP, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %42 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %41, i32 0, i32 5
  store i32* %40, i32** %42, align 8
  %43 = load i8*, i8** @TRUE, align 8
  %44 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %45 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* @ECHO_CLOCK_BIT_INTERNAL, align 4
  %47 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %48 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %50 = call i32 @load_firmware(%struct.echoaudio* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %28
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %4, align 4
  br label %68

55:                                               ; preds = %28
  %56 = load i8*, i8** @FALSE, align 8
  %57 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %58 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %60 = call i32 @init_line_levels(%struct.echoaudio* %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %4, align 4
  br label %68

65:                                               ; preds = %55
  %66 = call i32 @DE_INIT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %65, %63, %53, %25, %17
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @DE_INIT(i8*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @init_dsp_comm_page(%struct.echoaudio*) #1

declare dso_local i32 @load_firmware(%struct.echoaudio*) #1

declare dso_local i32 @init_line_levels(%struct.echoaudio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
