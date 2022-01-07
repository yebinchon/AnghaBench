; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_mona_dsp.c_load_asic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_mona_dsp.c_load_asic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32 }
%struct.echoaudio = type { i64, %struct.firmware*, i64 }

@DEVICE_ID_56361 = common dso_local global i64 0, align 8
@card_fw = common dso_local global %struct.firmware* null, align 8
@FW_MONA_361_1_ASIC48 = common dso_local global i64 0, align 8
@FW_MONA_301_1_ASIC48 = common dso_local global i64 0, align 8
@DSP_FNC_LOAD_MONA_PCI_CARD_ASIC = common dso_local global i32 0, align 4
@DSP_FNC_LOAD_MONA_EXTERNAL_ASIC = common dso_local global i32 0, align 4
@FW_MONA_2_ASIC = common dso_local global i64 0, align 8
@GML_CONVERTER_ENABLE = common dso_local global i32 0, align 4
@GML_48KHZ = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
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
  store i32 0, i32* %2, align 4
  br label %67

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
  %21 = load i64, i64* @FW_MONA_361_1_ASIC48, align 8
  %22 = getelementptr inbounds %struct.firmware, %struct.firmware* %20, i64 %21
  store %struct.firmware* %22, %struct.firmware** %6, align 8
  br label %27

23:                                               ; preds = %12
  %24 = load %struct.firmware*, %struct.firmware** @card_fw, align 8
  %25 = load i64, i64* @FW_MONA_301_1_ASIC48, align 8
  %26 = getelementptr inbounds %struct.firmware, %struct.firmware* %24, i64 %25
  store %struct.firmware* %26, %struct.firmware** %6, align 8
  br label %27

27:                                               ; preds = %23, %19
  %28 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %29 = load i32, i32* @DSP_FNC_LOAD_MONA_PCI_CARD_ASIC, align 4
  %30 = load %struct.firmware*, %struct.firmware** %6, align 8
  %31 = call i32 @load_asic_generic(%struct.echoaudio* %28, i32 %29, %struct.firmware* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %67

36:                                               ; preds = %27
  %37 = load %struct.firmware*, %struct.firmware** %6, align 8
  %38 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %39 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %38, i32 0, i32 1
  store %struct.firmware* %37, %struct.firmware** %39, align 8
  %40 = call i32 @mdelay(i32 10)
  %41 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %42 = load i32, i32* @DSP_FNC_LOAD_MONA_EXTERNAL_ASIC, align 4
  %43 = load %struct.firmware*, %struct.firmware** @card_fw, align 8
  %44 = load i64, i64* @FW_MONA_2_ASIC, align 8
  %45 = getelementptr inbounds %struct.firmware, %struct.firmware* %43, i64 %44
  %46 = call i32 @load_asic_generic(%struct.echoaudio* %41, i32 %42, %struct.firmware* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %36
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %67

51:                                               ; preds = %36
  %52 = call i32 @mdelay(i32 10)
  %53 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %54 = call i32 @check_asic_status(%struct.echoaudio* %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %51
  %58 = load i32, i32* @GML_CONVERTER_ENABLE, align 4
  %59 = load i32, i32* @GML_48KHZ, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %4, align 4
  %61 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @TRUE, align 4
  %64 = call i32 @write_control_reg(%struct.echoaudio* %61, i32 %62, i32 %63)
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %57, %51
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %49, %34, %11
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @load_asic_generic(%struct.echoaudio*, i32, %struct.firmware*) #1

declare dso_local i32 @check_asic_status(%struct.echoaudio*) #1

declare dso_local i32 @write_control_reg(%struct.echoaudio*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
