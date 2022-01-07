; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_mona_dsp.c_switch_asic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_mona_dsp.c_switch_asic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32 }
%struct.echoaudio = type { i64, %struct.firmware* }

@DEVICE_ID_56361 = common dso_local global i64 0, align 8
@card_fw = common dso_local global %struct.firmware* null, align 8
@FW_MONA_361_1_ASIC96 = common dso_local global i64 0, align 8
@FW_MONA_361_1_ASIC48 = common dso_local global i64 0, align 8
@FW_MONA_301_1_ASIC96 = common dso_local global i64 0, align 8
@FW_MONA_301_1_ASIC48 = common dso_local global i64 0, align 8
@DSP_FNC_LOAD_MONA_PCI_CARD_ASIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i8)* @switch_asic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switch_asic(%struct.echoaudio* %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.echoaudio*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %4, align 8
  store i8 %1, i8* %5, align 1
  %8 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %9 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @DEVICE_ID_56361, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load i8, i8* %5, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load %struct.firmware*, %struct.firmware** @card_fw, align 8
  %18 = load i64, i64* @FW_MONA_361_1_ASIC96, align 8
  %19 = getelementptr inbounds %struct.firmware, %struct.firmware* %17, i64 %18
  store %struct.firmware* %19, %struct.firmware** %6, align 8
  br label %24

20:                                               ; preds = %13
  %21 = load %struct.firmware*, %struct.firmware** @card_fw, align 8
  %22 = load i64, i64* @FW_MONA_361_1_ASIC48, align 8
  %23 = getelementptr inbounds %struct.firmware, %struct.firmware* %21, i64 %22
  store %struct.firmware* %23, %struct.firmware** %6, align 8
  br label %24

24:                                               ; preds = %20, %16
  br label %37

25:                                               ; preds = %2
  %26 = load i8, i8* %5, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load %struct.firmware*, %struct.firmware** @card_fw, align 8
  %30 = load i64, i64* @FW_MONA_301_1_ASIC96, align 8
  %31 = getelementptr inbounds %struct.firmware, %struct.firmware* %29, i64 %30
  store %struct.firmware* %31, %struct.firmware** %6, align 8
  br label %36

32:                                               ; preds = %25
  %33 = load %struct.firmware*, %struct.firmware** @card_fw, align 8
  %34 = load i64, i64* @FW_MONA_301_1_ASIC48, align 8
  %35 = getelementptr inbounds %struct.firmware, %struct.firmware* %33, i64 %34
  store %struct.firmware* %35, %struct.firmware** %6, align 8
  br label %36

36:                                               ; preds = %32, %28
  br label %37

37:                                               ; preds = %36, %24
  %38 = load %struct.firmware*, %struct.firmware** %6, align 8
  %39 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %40 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %39, i32 0, i32 1
  %41 = load %struct.firmware*, %struct.firmware** %40, align 8
  %42 = icmp ne %struct.firmware* %38, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %37
  %44 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %45 = load i32, i32* @DSP_FNC_LOAD_MONA_PCI_CARD_ASIC, align 4
  %46 = load %struct.firmware*, %struct.firmware** %6, align 8
  %47 = call i32 @load_asic_generic(%struct.echoaudio* %44, i32 %45, %struct.firmware* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %3, align 4
  br label %57

52:                                               ; preds = %43
  %53 = load %struct.firmware*, %struct.firmware** %6, align 8
  %54 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %55 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %54, i32 0, i32 1
  store %struct.firmware* %53, %struct.firmware** %55, align 8
  br label %56

56:                                               ; preds = %52, %37
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %50
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @load_asic_generic(%struct.echoaudio*, i32, %struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
