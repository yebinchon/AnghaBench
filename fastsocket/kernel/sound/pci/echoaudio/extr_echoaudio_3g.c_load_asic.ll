; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio_3g.c_load_asic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio_3g.c_load_asic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32*, i64 }

@DSP_FNC_LOAD_3G_ASIC = common dso_local global i32 0, align 4
@card_fw = common dso_local global i32* null, align 8
@FW_3G_ASIC = common dso_local global i64 0, align 8
@E3G_48KHZ = common dso_local global i32 0, align 4
@E3G_FREQ_REG_DEFAULT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*)* @load_asic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_asic(%struct.echoaudio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.echoaudio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %3, align 8
  %6 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %7 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %47

11:                                               ; preds = %1
  %12 = call i32 @mdelay(i32 2)
  %13 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %14 = load i32, i32* @DSP_FNC_LOAD_3G_ASIC, align 4
  %15 = load i32*, i32** @card_fw, align 8
  %16 = load i64, i64* @FW_3G_ASIC, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = call i32 @load_asic_generic(%struct.echoaudio* %13, i32 %14, i32* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %11
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %47

23:                                               ; preds = %11
  %24 = load i32*, i32** @card_fw, align 8
  %25 = load i64, i64* @FW_3G_ASIC, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %28 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %27, i32 0, i32 0
  store i32* %26, i32** %28, align 8
  %29 = call i32 @msleep(i32 1000)
  %30 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %31 = call i32 @check_asic_status(%struct.echoaudio* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %23
  %35 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %36 = load i32, i32* @E3G_48KHZ, align 4
  %37 = load i32, i32* @E3G_FREQ_REG_DEFAULT, align 4
  %38 = load i32, i32* @TRUE, align 4
  %39 = call i32 @write_control_reg(%struct.echoaudio* %35, i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %47

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %23
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %42, %21, %10
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @load_asic_generic(%struct.echoaudio*, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @check_asic_status(%struct.echoaudio*) #1

declare dso_local i32 @write_control_reg(%struct.echoaudio*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
