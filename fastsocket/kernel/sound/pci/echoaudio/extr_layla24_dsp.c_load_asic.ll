; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_layla24_dsp.c_load_asic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_layla24_dsp.c_load_asic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32*, i64 }

@.str = private unnamed_addr constant [11 x i8] c"load_asic\0A\00", align 1
@DSP_FNC_LOAD_LAYLA24_PCI_CARD_ASIC = common dso_local global i32 0, align 4
@card_fw = common dso_local global i32* null, align 8
@FW_LAYLA24_1_ASIC = common dso_local global i64 0, align 8
@FW_LAYLA24_2S_ASIC = common dso_local global i64 0, align 8
@DSP_FNC_LOAD_LAYLA24_EXTERNAL_ASIC = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@GML_CONVERTER_ENABLE = common dso_local global i32 0, align 4
@GML_48KHZ = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"load_asic() done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*)* @load_asic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_asic(%struct.echoaudio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.echoaudio*, align 8
  %4 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %3, align 8
  %5 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %6 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %56

10:                                               ; preds = %1
  %11 = call i32 @DE_INIT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @mdelay(i32 10)
  %13 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %14 = load i32, i32* @DSP_FNC_LOAD_LAYLA24_PCI_CARD_ASIC, align 4
  %15 = load i32*, i32** @card_fw, align 8
  %16 = load i64, i64* @FW_LAYLA24_1_ASIC, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = call i32 @load_asic_generic(%struct.echoaudio* %13, i32 %14, i32* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %10
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %56

23:                                               ; preds = %10
  %24 = load i32*, i32** @card_fw, align 8
  %25 = load i64, i64* @FW_LAYLA24_2S_ASIC, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %28 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %27, i32 0, i32 0
  store i32* %26, i32** %28, align 8
  %29 = call i32 @mdelay(i32 10)
  %30 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %31 = load i32, i32* @DSP_FNC_LOAD_LAYLA24_EXTERNAL_ASIC, align 4
  %32 = load i32*, i32** @card_fw, align 8
  %33 = load i64, i64* @FW_LAYLA24_2S_ASIC, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = call i32 @load_asic_generic(%struct.echoaudio* %30, i32 %31, i32* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %23
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %2, align 4
  br label %56

40:                                               ; preds = %23
  %41 = call i32 @mdelay(i32 10)
  %42 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %43 = call i32 @check_asic_status(%struct.echoaudio* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %40
  %47 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %48 = load i32, i32* @GML_CONVERTER_ENABLE, align 4
  %49 = load i32, i32* @GML_48KHZ, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @TRUE, align 4
  %52 = call i32 @write_control_reg(%struct.echoaudio* %47, i32 %50, i32 %51)
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %46, %40
  %54 = call i32 @DE_INIT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %53, %38, %21, %9
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @DE_INIT(i8*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @load_asic_generic(%struct.echoaudio*, i32, i32*) #1

declare dso_local i32 @check_asic_status(%struct.echoaudio*) #1

declare dso_local i32 @write_control_reg(%struct.echoaudio*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
