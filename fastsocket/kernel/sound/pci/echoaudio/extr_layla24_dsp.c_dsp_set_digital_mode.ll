; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_layla24_dsp.c_dsp_set_digital_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_layla24_dsp.c_dsp_set_digital_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32 }
%struct.echoaudio = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@ECHO_CLOCK_ADAT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@card_fw = common dso_local global %struct.firmware* null, align 8
@FW_LAYLA24_2S_ASIC = common dso_local global i64 0, align 8
@ECHO_CLOCK_SPDIF = common dso_local global i32 0, align 4
@FW_LAYLA24_2A_ASIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Digital mode not supported: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ECHO_CLOCK_INTERNAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GML_DIGITAL_MODE_CLEAR_MASK = common dso_local global i32 0, align 4
@GML_SPDIF_OPTICAL_MODE = common dso_local global i32 0, align 4
@GML_ADAT_MODE = common dso_local global i32 0, align 4
@GML_DOUBLE_SPEED_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"set_digital_mode to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i32)* @dsp_set_digital_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsp_set_digital_mode(%struct.echoaudio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.echoaudio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.firmware*, align 8
  store %struct.echoaudio* %0, %struct.echoaudio** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %36 [
    i32 129, label %12
    i32 128, label %12
    i32 130, label %24
  ]

12:                                               ; preds = %2, %2
  %13 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %14 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @ECHO_CLOCK_ADAT, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* @TRUE, align 4
  store i32 %19, i32* %8, align 4
  br label %20

20:                                               ; preds = %18, %12
  %21 = load %struct.firmware*, %struct.firmware** @card_fw, align 8
  %22 = load i64, i64* @FW_LAYLA24_2S_ASIC, align 8
  %23 = getelementptr inbounds %struct.firmware, %struct.firmware* %21, i64 %22
  store %struct.firmware* %23, %struct.firmware** %9, align 8
  br label %43

24:                                               ; preds = %2
  %25 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %26 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @ECHO_CLOCK_SPDIF, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @TRUE, align 4
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %30, %24
  %33 = load %struct.firmware*, %struct.firmware** @card_fw, align 8
  %34 = load i64, i64* @FW_LAYLA24_2A_ASIC, align 8
  %35 = getelementptr inbounds %struct.firmware, %struct.firmware* %33, i64 %34
  store %struct.firmware* %35, %struct.firmware** %9, align 8
  br label %43

36:                                               ; preds = %2
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @DE_ACT(i8* %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %114

43:                                               ; preds = %32, %20
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %48 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %47, i32 0, i32 0
  store i32 48000, i32* %48, align 8
  %49 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %50 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %49, i32 0, i32 2
  %51 = call i32 @spin_lock_irq(i32* %50)
  %52 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %53 = load i32, i32* @ECHO_CLOCK_INTERNAL, align 4
  %54 = call i32 @set_input_clock(%struct.echoaudio* %52, i32 %53)
  %55 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %56 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %55, i32 0, i32 2
  %57 = call i32 @spin_unlock_irq(i32* %56)
  br label %58

58:                                               ; preds = %46, %43
  %59 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %60 = load %struct.firmware*, %struct.firmware** %9, align 8
  %61 = call i64 @switch_asic(%struct.echoaudio* %59, %struct.firmware* %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %114

66:                                               ; preds = %58
  %67 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %68 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %67, i32 0, i32 2
  %69 = call i32 @spin_lock_irq(i32* %68)
  %70 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %71 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %70, i32 0, i32 3
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @le32_to_cpu(i32 %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* @GML_DIGITAL_MODE_CLEAR_MASK, align 4
  %77 = load i32, i32* %6, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %5, align 4
  switch i32 %79, label %93 [
    i32 129, label %80
    i32 128, label %84
    i32 130, label %85
  ]

80:                                               ; preds = %66
  %81 = load i32, i32* @GML_SPDIF_OPTICAL_MODE, align 4
  %82 = load i32, i32* %6, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %6, align 4
  br label %93

84:                                               ; preds = %66
  br label %93

85:                                               ; preds = %66
  %86 = load i32, i32* @GML_ADAT_MODE, align 4
  %87 = load i32, i32* %6, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* @GML_DOUBLE_SPEED_MODE, align 4
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %6, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %66, %85, %84, %80
  %94 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @TRUE, align 4
  %97 = call i32 @write_control_reg(%struct.echoaudio* %94, i32 %95, i32 %96)
  store i32 %97, i32* %7, align 4
  %98 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %99 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %98, i32 0, i32 2
  %100 = call i32 @spin_unlock_irq(i32* %99)
  %101 = load i32, i32* %7, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %93
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %3, align 4
  br label %114

105:                                              ; preds = %93
  %106 = load i32, i32* %5, align 4
  %107 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %108 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = inttoptr i64 %110 to i8*
  %112 = call i32 @DE_ACT(i8* %111)
  %113 = load i32, i32* %8, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %105, %103, %63, %36
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @DE_ACT(i8*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @set_input_clock(%struct.echoaudio*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @switch_asic(%struct.echoaudio*, %struct.firmware*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @write_control_reg(%struct.echoaudio*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
