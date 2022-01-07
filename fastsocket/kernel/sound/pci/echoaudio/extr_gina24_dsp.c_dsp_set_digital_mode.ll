; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_gina24_dsp.c_dsp_set_digital_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_gina24_dsp.c_dsp_set_digital_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@ECHO_CLOCK_ADAT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ECHO_CLOCK_SPDIF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Digital mode not supported: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ECHO_CLOCK_INTERNAL = common dso_local global i32 0, align 4
@GML_DIGITAL_MODE_CLEAR_MASK = common dso_local global i32 0, align 4
@GML_SPDIF_OPTICAL_MODE = common dso_local global i32 0, align 4
@DEVICE_ID_56301 = common dso_local global i32 0, align 4
@GML_SPDIF_CDROM_MODE = common dso_local global i32 0, align 4
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
  store %struct.echoaudio* %0, %struct.echoaudio** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %29 [
    i32 129, label %11
    i32 130, label %11
    i32 128, label %11
    i32 131, label %20
  ]

11:                                               ; preds = %2, %2, %2
  %12 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %13 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @ECHO_CLOCK_ADAT, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @TRUE, align 4
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %17, %11
  br label %36

20:                                               ; preds = %2
  %21 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %22 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ECHO_CLOCK_SPDIF, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @TRUE, align 4
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %26, %20
  br label %36

29:                                               ; preds = %2
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @DE_ACT(i8* %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %106

36:                                               ; preds = %28, %19
  %37 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %38 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %37, i32 0, i32 2
  %39 = call i32 @spin_lock_irq(i32* %38)
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %44 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %43, i32 0, i32 0
  store i32 48000, i32* %44, align 8
  %45 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %46 = load i32, i32* @ECHO_CLOCK_INTERNAL, align 4
  %47 = call i32 @set_input_clock(%struct.echoaudio* %45, i32 %46)
  br label %48

48:                                               ; preds = %42, %36
  %49 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %50 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %49, i32 0, i32 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le32_to_cpu(i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* @GML_DIGITAL_MODE_CLEAR_MASK, align 4
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %5, align 4
  switch i32 %58, label %83 [
    i32 129, label %59
    i32 130, label %63
    i32 128, label %74
    i32 131, label %75
  ]

59:                                               ; preds = %48
  %60 = load i32, i32* @GML_SPDIF_OPTICAL_MODE, align 4
  %61 = load i32, i32* %6, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %6, align 4
  br label %83

63:                                               ; preds = %48
  %64 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %65 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @DEVICE_ID_56301, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i32, i32* @GML_SPDIF_CDROM_MODE, align 4
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %69, %63
  br label %83

74:                                               ; preds = %48
  br label %83

75:                                               ; preds = %48
  %76 = load i32, i32* @GML_ADAT_MODE, align 4
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* @GML_DOUBLE_SPEED_MODE, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %6, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %48, %75, %74, %73, %59
  %84 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @TRUE, align 4
  %87 = call i32 @write_control_reg(%struct.echoaudio* %84, i32 %85, i32 %86)
  store i32 %87, i32* %7, align 4
  %88 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %89 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %88, i32 0, i32 2
  %90 = call i32 @spin_unlock_irq(i32* %89)
  %91 = load i32, i32* %7, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %83
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %3, align 4
  br label %106

95:                                               ; preds = %83
  %96 = load i32, i32* %5, align 4
  %97 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %98 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %100 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = inttoptr i64 %102 to i8*
  %104 = call i32 @DE_ACT(i8* %103)
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %95, %93, %29
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @DE_ACT(i8*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @set_input_clock(%struct.echoaudio*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @write_control_reg(%struct.echoaudio*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
