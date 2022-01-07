; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_layla24_dsp.c_switch_asic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_layla24_dsp.c_switch_asic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { %struct.TYPE_2__*, %struct.firmware* }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32 }

@MONITOR_ARRAY_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ECHOGAIN_MUTED = common dso_local global i32 0, align 4
@DSP_FNC_LOAD_LAYLA24_EXTERNAL_ASIC = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, %struct.firmware*)* @switch_asic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switch_asic(%struct.echoaudio* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.echoaudio*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i32*, align 8
  store %struct.echoaudio* %0, %struct.echoaudio** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  %7 = load %struct.firmware*, %struct.firmware** %5, align 8
  %8 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %9 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %8, i32 0, i32 1
  %10 = load %struct.firmware*, %struct.firmware** %9, align 8
  %11 = icmp ne %struct.firmware* %7, %10
  br i1 %11, label %12, label %67

12:                                               ; preds = %2
  %13 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %14 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MONITOR_ARRAY_SIZE, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32* @kmemdup(i32 %17, i32 %18, i32 %19)
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %12
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %68

26:                                               ; preds = %12
  %27 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %28 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ECHOGAIN_MUTED, align 4
  %33 = load i32, i32* @MONITOR_ARRAY_SIZE, align 4
  %34 = call i32 @memset(i32 %31, i32 %32, i32 %33)
  %35 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %36 = load i32, i32* @DSP_FNC_LOAD_LAYLA24_EXTERNAL_ASIC, align 4
  %37 = load %struct.firmware*, %struct.firmware** %5, align 8
  %38 = call i64 @load_asic_generic(%struct.echoaudio* %35, i32 %36, %struct.firmware* %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %26
  %41 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %42 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* @MONITOR_ARRAY_SIZE, align 4
  %48 = call i32 @memcpy(i32 %45, i32* %46, i32 %47)
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @kfree(i32* %49)
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %68

53:                                               ; preds = %26
  %54 = load %struct.firmware*, %struct.firmware** %5, align 8
  %55 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %56 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %55, i32 0, i32 1
  store %struct.firmware* %54, %struct.firmware** %56, align 8
  %57 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %58 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* @MONITOR_ARRAY_SIZE, align 4
  %64 = call i32 @memcpy(i32 %61, i32* %62, i32 %63)
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @kfree(i32* %65)
  br label %67

67:                                               ; preds = %53, %2
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %40, %23
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32* @kmemdup(i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @load_asic_generic(%struct.echoaudio*, i32, %struct.firmware*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
