; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_dio_insn_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_dio_insn_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.usbduxsub* }
%struct.usbduxsub = type { i32*, i32, i32*, i32 }
%struct.comedi_subdevice = type { i32, i32 }
%struct.comedi_insn = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SENDDIOBITSCOMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @usbdux_dio_insn_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbdux_dio_insn_bits(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
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
  br label %109

20:                                               ; preds = %4
  %21 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %22 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 2
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %109

28:                                               ; preds = %20
  %29 = load %struct.usbduxsub*, %struct.usbduxsub** %10, align 8
  %30 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %29, i32 0, i32 1
  %31 = call i32 @down(i32* %30)
  %32 = load %struct.usbduxsub*, %struct.usbduxsub** %10, align 8
  %33 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %28
  %37 = load %struct.usbduxsub*, %struct.usbduxsub** %10, align 8
  %38 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %37, i32 0, i32 1
  %39 = call i32 @up(i32* %38)
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %109

42:                                               ; preds = %28
  %43 = load i32*, i32** %9, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %48 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %53, %56
  %58 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %59 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %63 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.usbduxsub*, %struct.usbduxsub** %10, align 8
  %66 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  store i32 %64, i32* %68, align 4
  %69 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %70 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.usbduxsub*, %struct.usbduxsub** %10, align 8
  %73 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  store i32 %71, i32* %75, align 4
  %76 = load %struct.usbduxsub*, %struct.usbduxsub** %10, align 8
  %77 = load i32, i32* @SENDDIOBITSCOMMAND, align 4
  %78 = call i32 @send_dux_commands(%struct.usbduxsub* %76, i32 %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %42
  %82 = load %struct.usbduxsub*, %struct.usbduxsub** %10, align 8
  %83 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %82, i32 0, i32 1
  %84 = call i32 @up(i32* %83)
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %5, align 4
  br label %109

86:                                               ; preds = %42
  %87 = load %struct.usbduxsub*, %struct.usbduxsub** %10, align 8
  %88 = load i32, i32* @SENDDIOBITSCOMMAND, align 4
  %89 = call i32 @receive_dux_commands(%struct.usbduxsub* %87, i32 %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load %struct.usbduxsub*, %struct.usbduxsub** %10, align 8
  %94 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %93, i32 0, i32 1
  %95 = call i32 @up(i32* %94)
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %5, align 4
  br label %109

97:                                               ; preds = %86
  %98 = load %struct.usbduxsub*, %struct.usbduxsub** %10, align 8
  %99 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @le16_to_cpu(i32 %102)
  %104 = load i32*, i32** %9, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.usbduxsub*, %struct.usbduxsub** %10, align 8
  %107 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %106, i32 0, i32 1
  %108 = call i32 @up(i32* %107)
  store i32 2, i32* %5, align 4
  br label %109

109:                                              ; preds = %97, %92, %81, %36, %25, %17
  %110 = load i32, i32* %5, align 4
  ret i32 %110
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
