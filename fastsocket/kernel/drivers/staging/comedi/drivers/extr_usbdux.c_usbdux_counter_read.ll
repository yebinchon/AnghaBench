; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_counter_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_counter_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.usbduxsub* }
%struct.usbduxsub = type { i32, i32*, i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@READCOUNTERCOMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @usbdux_counter_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbdux_counter_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.usbduxsub*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  %15 = load %struct.usbduxsub*, %struct.usbduxsub** %14, align 8
  store %struct.usbduxsub* %15, %struct.usbduxsub** %10, align 8
  %16 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %17 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  %19 = load %struct.usbduxsub*, %struct.usbduxsub** %10, align 8
  %20 = icmp ne %struct.usbduxsub* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @EFAULT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %75

24:                                               ; preds = %4
  %25 = load %struct.usbduxsub*, %struct.usbduxsub** %10, align 8
  %26 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %25, i32 0, i32 0
  %27 = call i32 @down(i32* %26)
  %28 = load %struct.usbduxsub*, %struct.usbduxsub** %10, align 8
  %29 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %24
  %33 = load %struct.usbduxsub*, %struct.usbduxsub** %10, align 8
  %34 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %33, i32 0, i32 0
  %35 = call i32 @up(i32* %34)
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %75

38:                                               ; preds = %24
  %39 = load %struct.usbduxsub*, %struct.usbduxsub** %10, align 8
  %40 = load i32, i32* @READCOUNTERCOMMAND, align 4
  %41 = call i32 @send_dux_commands(%struct.usbduxsub* %39, i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.usbduxsub*, %struct.usbduxsub** %10, align 8
  %46 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %45, i32 0, i32 0
  %47 = call i32 @up(i32* %46)
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %5, align 4
  br label %75

49:                                               ; preds = %38
  %50 = load %struct.usbduxsub*, %struct.usbduxsub** %10, align 8
  %51 = load i32, i32* @READCOUNTERCOMMAND, align 4
  %52 = call i32 @receive_dux_commands(%struct.usbduxsub* %50, i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.usbduxsub*, %struct.usbduxsub** %10, align 8
  %57 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %56, i32 0, i32 0
  %58 = call i32 @up(i32* %57)
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %5, align 4
  br label %75

60:                                               ; preds = %49
  %61 = load %struct.usbduxsub*, %struct.usbduxsub** %10, align 8
  %62 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @le16_to_cpu(i32 %68)
  %70 = load i32*, i32** %9, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.usbduxsub*, %struct.usbduxsub** %10, align 8
  %73 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %72, i32 0, i32 0
  %74 = call i32 @up(i32* %73)
  store i32 1, i32* %5, align 4
  br label %75

75:                                               ; preds = %60, %55, %44, %32, %21
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @send_dux_commands(%struct.usbduxsub*, i32) #1

declare dso_local i32 @receive_dux_commands(%struct.usbduxsub*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
