; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/mpu401/extr_mpu401_uart.c_snd_mpu401_uart_output_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/mpu401/extr_mpu401_uart.c_snd_mpu401_uart_output_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_mpu401* }
%struct.snd_mpu401 = type { i32 (%struct.snd_mpu401*)*, i32 (%struct.snd_mpu401*)*, i32, %struct.snd_rawmidi_substream* }

@MPU401_MODE_BIT_INPUT = common dso_local global i32 0, align 4
@MPU401_MODE_BIT_OUTPUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rawmidi_substream*)* @snd_mpu401_uart_output_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_mpu401_uart_output_open(%struct.snd_rawmidi_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca %struct.snd_mpu401*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  %6 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %7 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.snd_mpu401*, %struct.snd_mpu401** %9, align 8
  store %struct.snd_mpu401* %10, %struct.snd_mpu401** %4, align 8
  %11 = load %struct.snd_mpu401*, %struct.snd_mpu401** %4, align 8
  %12 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %11, i32 0, i32 0
  %13 = load i32 (%struct.snd_mpu401*)*, i32 (%struct.snd_mpu401*)** %12, align 8
  %14 = icmp ne i32 (%struct.snd_mpu401*)* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.snd_mpu401*, %struct.snd_mpu401** %4, align 8
  %17 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %16, i32 0, i32 0
  %18 = load i32 (%struct.snd_mpu401*)*, i32 (%struct.snd_mpu401*)** %17, align 8
  %19 = load %struct.snd_mpu401*, %struct.snd_mpu401** %4, align 8
  %20 = call i32 %18(%struct.snd_mpu401* %19)
  store i32 %20, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %63

24:                                               ; preds = %15, %1
  %25 = load i32, i32* @MPU401_MODE_BIT_INPUT, align 4
  %26 = load %struct.snd_mpu401*, %struct.snd_mpu401** %4, align 8
  %27 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %26, i32 0, i32 2
  %28 = call i32 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.snd_mpu401*, %struct.snd_mpu401** %4, align 8
  %32 = call i64 @snd_mpu401_do_reset(%struct.snd_mpu401* %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %44

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35, %24
  %37 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %38 = load %struct.snd_mpu401*, %struct.snd_mpu401** %4, align 8
  %39 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %38, i32 0, i32 3
  store %struct.snd_rawmidi_substream* %37, %struct.snd_rawmidi_substream** %39, align 8
  %40 = load i32, i32* @MPU401_MODE_BIT_OUTPUT, align 4
  %41 = load %struct.snd_mpu401*, %struct.snd_mpu401** %4, align 8
  %42 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %41, i32 0, i32 2
  %43 = call i32 @set_bit(i32 %40, i32* %42)
  store i32 0, i32* %2, align 4
  br label %63

44:                                               ; preds = %34
  %45 = load %struct.snd_mpu401*, %struct.snd_mpu401** %4, align 8
  %46 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %45, i32 0, i32 0
  %47 = load i32 (%struct.snd_mpu401*)*, i32 (%struct.snd_mpu401*)** %46, align 8
  %48 = icmp ne i32 (%struct.snd_mpu401*)* %47, null
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = load %struct.snd_mpu401*, %struct.snd_mpu401** %4, align 8
  %51 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %50, i32 0, i32 1
  %52 = load i32 (%struct.snd_mpu401*)*, i32 (%struct.snd_mpu401*)** %51, align 8
  %53 = icmp ne i32 (%struct.snd_mpu401*)* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.snd_mpu401*, %struct.snd_mpu401** %4, align 8
  %56 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %55, i32 0, i32 1
  %57 = load i32 (%struct.snd_mpu401*)*, i32 (%struct.snd_mpu401*)** %56, align 8
  %58 = load %struct.snd_mpu401*, %struct.snd_mpu401** %4, align 8
  %59 = call i32 %57(%struct.snd_mpu401* %58)
  br label %60

60:                                               ; preds = %54, %49, %44
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %60, %36, %22
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @snd_mpu401_do_reset(%struct.snd_mpu401*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
