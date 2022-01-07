; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_layla20_dsp.c_load_asic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_layla20_dsp.c_load_asic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i64 }

@DSP_FNC_LOAD_LAYLA_ASIC = common dso_local global i32 0, align 4
@card_fw = common dso_local global i32* null, align 8
@FW_LAYLA20_ASIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*)* @load_asic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_asic(%struct.echoaudio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.echoaudio*, align 8
  %4 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %3, align 8
  %5 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %6 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

10:                                               ; preds = %1
  %11 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %12 = load i32, i32* @DSP_FNC_LOAD_LAYLA_ASIC, align 4
  %13 = load i32*, i32** @card_fw, align 8
  %14 = load i64, i64* @FW_LAYLA20_ASIC, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = call i32 @load_asic_generic(%struct.echoaudio* %11, i32 %12, i32* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %24

21:                                               ; preds = %10
  %22 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %23 = call i32 @check_asic_status(%struct.echoaudio* %22)
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %21, %19, %9
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @load_asic_generic(%struct.echoaudio*, i32, i32*) #1

declare dso_local i32 @check_asic_status(%struct.echoaudio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
