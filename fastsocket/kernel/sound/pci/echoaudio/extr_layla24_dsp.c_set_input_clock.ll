; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_layla24_dsp.c_set_input_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_layla24_dsp.c_set_input_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@GML_CLOCK_CLEAR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Set Layla24 clock to INTERNAL\0A\00", align 1
@DIGITAL_MODE_ADAT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@GML_SPDIF_CLOCK = common dso_local global i32 0, align 4
@GML_DOUBLE_SPEED_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Set Layla24 clock to SPDIF\0A\00", align 1
@GML_WORD_CLOCK = common dso_local global i32 0, align 4
@GML_CLOCK_DETECT_BIT_WORD96 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Set Layla24 clock to WORD\0A\00", align 1
@GML_ADAT_CLOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Set Layla24 clock to ADAT\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Input clock 0x%x not supported for Layla24\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i32)* @set_input_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_input_clock(%struct.echoaudio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.echoaudio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %9 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @le32_to_cpu(i32 %12)
  %14 = load i32, i32* @GML_CLOCK_CLEAR_MASK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %17 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le32_to_cpu(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %87 [
    i32 130, label %23
    i32 129, label %32
    i32 128, label %50
    i32 131, label %69
  ]

23:                                               ; preds = %2
  %24 = call i32 @DE_ACT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %26 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %25, i32 0, i32 0
  store i32 130, i32* %26, align 8
  %27 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %28 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %29 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @set_sample_rate(%struct.echoaudio* %27, i32 %30)
  store i32 %31, i32* %3, align 4
  br label %102

32:                                               ; preds = %2
  %33 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %34 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DIGITAL_MODE_ADAT, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EAGAIN, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %102

41:                                               ; preds = %32
  %42 = load i32, i32* @GML_SPDIF_CLOCK, align 4
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* @GML_DOUBLE_SPEED_MODE, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %6, align 4
  %49 = call i32 @DE_ACT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %94

50:                                               ; preds = %2
  %51 = load i32, i32* @GML_WORD_CLOCK, align 4
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @GML_CLOCK_DETECT_BIT_WORD96, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = load i32, i32* @GML_DOUBLE_SPEED_MODE, align 4
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %6, align 4
  br label %67

62:                                               ; preds = %50
  %63 = load i32, i32* @GML_DOUBLE_SPEED_MODE, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %6, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %62, %58
  %68 = call i32 @DE_ACT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %94

69:                                               ; preds = %2
  %70 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %71 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @DIGITAL_MODE_ADAT, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i32, i32* @EAGAIN, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %102

78:                                               ; preds = %69
  %79 = load i32, i32* @GML_ADAT_CLOCK, align 4
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* @GML_DOUBLE_SPEED_MODE, align 4
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %6, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %6, align 4
  %86 = call i32 @DE_ACT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %94

87:                                               ; preds = %2
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to i8*
  %91 = call i32 @DE_ACT(i8* %90)
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %102

94:                                               ; preds = %78, %67, %41
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %97 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @TRUE, align 4
  %101 = call i32 @write_control_reg(%struct.echoaudio* %98, i32 %99, i32 %100)
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %94, %87, %75, %38, %23
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @DE_ACT(i8*) #1

declare dso_local i32 @set_sample_rate(%struct.echoaudio*, i32) #1

declare dso_local i32 @write_control_reg(%struct.echoaudio*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
