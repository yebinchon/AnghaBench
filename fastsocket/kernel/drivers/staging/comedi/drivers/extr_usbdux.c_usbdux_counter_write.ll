; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_counter_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_counter_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.usbduxsub* }
%struct.usbduxsub = type { i32, i32*, i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@WRITECOUNTERCOMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @usbdux_counter_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbdux_counter_write(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.usbduxsub*, align 8
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 0
  %14 = load %struct.usbduxsub*, %struct.usbduxsub** %13, align 8
  store %struct.usbduxsub* %14, %struct.usbduxsub** %10, align 8
  %15 = load %struct.usbduxsub*, %struct.usbduxsub** %10, align 8
  %16 = icmp ne %struct.usbduxsub* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @EFAULT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %63

20:                                               ; preds = %4
  %21 = load %struct.usbduxsub*, %struct.usbduxsub** %10, align 8
  %22 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %21, i32 0, i32 0
  %23 = call i32 @down(i32* %22)
  %24 = load %struct.usbduxsub*, %struct.usbduxsub** %10, align 8
  %25 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %20
  %29 = load %struct.usbduxsub*, %struct.usbduxsub** %10, align 8
  %30 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %29, i32 0, i32 0
  %31 = call i32 @up(i32* %30)
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %63

34:                                               ; preds = %20
  %35 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %36 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.usbduxsub*, %struct.usbduxsub** %10, align 8
  %39 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 %37, i32* %41, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @cpu_to_le16(i32 %43)
  %45 = load %struct.usbduxsub*, %struct.usbduxsub** %10, align 8
  %46 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  store i32 %44, i32* %48, align 4
  %49 = load %struct.usbduxsub*, %struct.usbduxsub** %10, align 8
  %50 = load i32, i32* @WRITECOUNTERCOMMAND, align 4
  %51 = call i32 @send_dux_commands(%struct.usbduxsub* %49, i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %34
  %55 = load %struct.usbduxsub*, %struct.usbduxsub** %10, align 8
  %56 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %55, i32 0, i32 0
  %57 = call i32 @up(i32* %56)
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %5, align 4
  br label %63

59:                                               ; preds = %34
  %60 = load %struct.usbduxsub*, %struct.usbduxsub** %10, align 8
  %61 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %60, i32 0, i32 0
  %62 = call i32 @up(i32* %61)
  store i32 1, i32* %5, align 4
  br label %63

63:                                               ; preds = %59, %54, %28, %17
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @send_dux_commands(%struct.usbduxsub*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
