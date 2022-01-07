; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_mona_dsp.c_set_input_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_mona_dsp.c_set_input_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"set_input_clock:\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@GML_CLOCK_CLEAR_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Set Mona clock to INTERNAL\0A\00", align 1
@DIGITAL_MODE_ADAT = common dso_local global i32 0, align 4
@GML_CLOCK_DETECT_BIT_SPDIF96 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Set Mona clock to SPDIF\0A\00", align 1
@GML_SPDIF_CLOCK = common dso_local global i32 0, align 4
@GML_DOUBLE_SPEED_MODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Set Mona clock to WORD\0A\00", align 1
@GML_CLOCK_DETECT_BIT_WORD96 = common dso_local global i32 0, align 4
@GML_WORD_CLOCK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Set Mona clock to ADAT\0A\00", align 1
@GML_ADAT_CLOCK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"Input clock 0x%x not supported for Mona\0A\00", align 1
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
  %8 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call i32 @DE_ACT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %11 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %10, i32 0, i32 5
  %12 = call i64 @atomic_read(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EAGAIN, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %154

17:                                               ; preds = %2
  %18 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %19 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %18, i32 0, i32 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le32_to_cpu(i32 %22)
  %24 = load i32, i32* @GML_CLOCK_CLEAR_MASK, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %6, align 4
  %26 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %27 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %26, i32 0, i32 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le32_to_cpu(i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %5, align 4
  switch i32 %32, label %139 [
    i32 130, label %33
    i32 129, label %42
    i32 128, label %86
    i32 131, label %121
  ]

33:                                               ; preds = %17
  %34 = call i32 @DE_ACT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %36 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %35, i32 0, i32 0
  store i32 130, i32* %36, align 8
  %37 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %38 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %39 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @set_sample_rate(%struct.echoaudio* %37, i32 %40)
  store i32 %41, i32* %3, align 4
  br label %154

42:                                               ; preds = %17
  %43 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %44 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @DIGITAL_MODE_ADAT, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @EAGAIN, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %154

51:                                               ; preds = %42
  %52 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %53 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %52, i32 0, i32 2
  %54 = call i32 @spin_unlock_irq(i32* %53)
  %55 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @GML_CLOCK_DETECT_BIT_SPDIF96, align 4
  %58 = and i32 %56, %57
  %59 = call i32 @switch_asic(%struct.echoaudio* %55, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %61 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %60, i32 0, i32 2
  %62 = call i32 @spin_lock_irq(i32* %61)
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %51
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %154

67:                                               ; preds = %51
  %68 = call i32 @DE_ACT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* @GML_SPDIF_CLOCK, align 4
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @GML_CLOCK_DETECT_BIT_SPDIF96, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %67
  %77 = load i32, i32* @GML_DOUBLE_SPEED_MODE, align 4
  %78 = load i32, i32* %6, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %6, align 4
  br label %85

80:                                               ; preds = %67
  %81 = load i32, i32* @GML_DOUBLE_SPEED_MODE, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %6, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %80, %76
  br label %146

86:                                               ; preds = %17
  %87 = call i32 @DE_ACT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %88 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %89 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %88, i32 0, i32 2
  %90 = call i32 @spin_unlock_irq(i32* %89)
  %91 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @GML_CLOCK_DETECT_BIT_WORD96, align 4
  %94 = and i32 %92, %93
  %95 = call i32 @switch_asic(%struct.echoaudio* %91, i32 %94)
  store i32 %95, i32* %8, align 4
  %96 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %97 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %96, i32 0, i32 2
  %98 = call i32 @spin_lock_irq(i32* %97)
  %99 = load i32, i32* %8, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %86
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %3, align 4
  br label %154

103:                                              ; preds = %86
  %104 = load i32, i32* @GML_WORD_CLOCK, align 4
  %105 = load i32, i32* %6, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @GML_CLOCK_DETECT_BIT_WORD96, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %103
  %112 = load i32, i32* @GML_DOUBLE_SPEED_MODE, align 4
  %113 = load i32, i32* %6, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %6, align 4
  br label %120

115:                                              ; preds = %103
  %116 = load i32, i32* @GML_DOUBLE_SPEED_MODE, align 4
  %117 = xor i32 %116, -1
  %118 = load i32, i32* %6, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* %6, align 4
  br label %120

120:                                              ; preds = %115, %111
  br label %146

121:                                              ; preds = %17
  %122 = call i32 @DE_ACT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %123 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %124 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @DIGITAL_MODE_ADAT, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = load i32, i32* @EAGAIN, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %3, align 4
  br label %154

131:                                              ; preds = %121
  %132 = load i32, i32* @GML_ADAT_CLOCK, align 4
  %133 = load i32, i32* %6, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* @GML_DOUBLE_SPEED_MODE, align 4
  %136 = xor i32 %135, -1
  %137 = load i32, i32* %6, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %6, align 4
  br label %146

139:                                              ; preds = %17
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = inttoptr i64 %141 to i8*
  %143 = call i32 @DE_ACT(i8* %142)
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %3, align 4
  br label %154

146:                                              ; preds = %131, %120, %85
  %147 = load i32, i32* %5, align 4
  %148 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %149 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* @TRUE, align 4
  %153 = call i32 @write_control_reg(%struct.echoaudio* %150, i32 %151, i32 %152)
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %146, %139, %128, %101, %65, %48, %33, %14
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i32 @DE_ACT(i8*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @set_sample_rate(%struct.echoaudio*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @switch_asic(%struct.echoaudio*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @write_control_reg(%struct.echoaudio*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
