; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_gina24_dsp.c_load_asic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_gina24_dsp.c_load_asic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32 }
%struct.echoaudio = type { i64, %struct.firmware*, i64 }

@DEVICE_ID_56361 = common dso_local global i64 0, align 8
@card_fw = common dso_local global %struct.firmware* null, align 8
@FW_GINA24_361_ASIC = common dso_local global i64 0, align 8
@FW_GINA24_301_ASIC = common dso_local global i64 0, align 8
@DSP_FNC_LOAD_GINA24_ASIC = common dso_local global i32 0, align 4
@GML_CONVERTER_ENABLE = common dso_local global i32 0, align 4
@GML_48KHZ = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"load_asic() done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*)* @load_asic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_asic(%struct.echoaudio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.echoaudio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.firmware*, align 8
  store %struct.echoaudio* %0, %struct.echoaudio** %3, align 8
  %7 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %8 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %55

12:                                               ; preds = %1
  %13 = call i32 @mdelay(i32 10)
  %14 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %15 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @DEVICE_ID_56361, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load %struct.firmware*, %struct.firmware** @card_fw, align 8
  %21 = load i64, i64* @FW_GINA24_361_ASIC, align 8
  %22 = getelementptr inbounds %struct.firmware, %struct.firmware* %20, i64 %21
  store %struct.firmware* %22, %struct.firmware** %6, align 8
  br label %27

23:                                               ; preds = %12
  %24 = load %struct.firmware*, %struct.firmware** @card_fw, align 8
  %25 = load i64, i64* @FW_GINA24_301_ASIC, align 8
  %26 = getelementptr inbounds %struct.firmware, %struct.firmware* %24, i64 %25
  store %struct.firmware* %26, %struct.firmware** %6, align 8
  br label %27

27:                                               ; preds = %23, %19
  %28 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %29 = load i32, i32* @DSP_FNC_LOAD_GINA24_ASIC, align 4
  %30 = load %struct.firmware*, %struct.firmware** %6, align 8
  %31 = call i32 @load_asic_generic(%struct.echoaudio* %28, i32 %29, %struct.firmware* %30)
  store i32 %31, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %55

35:                                               ; preds = %27
  %36 = load %struct.firmware*, %struct.firmware** %6, align 8
  %37 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %38 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %37, i32 0, i32 1
  store %struct.firmware* %36, %struct.firmware** %38, align 8
  %39 = call i32 @mdelay(i32 10)
  %40 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %41 = call i32 @check_asic_status(%struct.echoaudio* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %35
  %45 = load i32, i32* @GML_CONVERTER_ENABLE, align 4
  %46 = load i32, i32* @GML_48KHZ, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %4, align 4
  %48 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @TRUE, align 4
  %51 = call i32 @write_control_reg(%struct.echoaudio* %48, i32 %49, i32 %50)
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %44, %35
  %53 = call i32 @DE_INIT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %52, %33, %11
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @load_asic_generic(%struct.echoaudio*, i32, %struct.firmware*) #1

declare dso_local i32 @check_asic_status(%struct.echoaudio*) #1

declare dso_local i32 @write_control_reg(%struct.echoaudio*, i32, i32) #1

declare dso_local i32 @DE_INIT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
