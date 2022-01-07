; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_ao_insn_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_ao_insn_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.usbduxsub* }
%struct.usbduxsub = type { i32*, i32*, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"comedi%d: ao_insn_write\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"comedi%d: ao_insn_write: ERROR: asynchronous ao_cmd is running\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"comedi%d: ao_insn_write: data[chan=%d,i=%d]=%d\0A\00", align 1
@SENDDACOMMANDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @usbdux_ao_insn_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbdux_ao_insn_write(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.usbduxsub*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %15 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @CR_CHAN(i32 %16)
  store i32 %17, i32* %12, align 4
  %18 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 1
  %20 = load %struct.usbduxsub*, %struct.usbduxsub** %19, align 8
  store %struct.usbduxsub* %20, %struct.usbduxsub** %13, align 8
  %21 = load %struct.usbduxsub*, %struct.usbduxsub** %13, align 8
  %22 = icmp ne %struct.usbduxsub* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @EFAULT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %138

26:                                               ; preds = %4
  %27 = load %struct.usbduxsub*, %struct.usbduxsub** %13, align 8
  %28 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %27, i32 0, i32 3
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %32 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.usbduxsub*, %struct.usbduxsub** %13, align 8
  %36 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %35, i32 0, i32 2
  %37 = call i32 @down(i32* %36)
  %38 = load %struct.usbduxsub*, %struct.usbduxsub** %13, align 8
  %39 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %26
  %43 = load %struct.usbduxsub*, %struct.usbduxsub** %13, align 8
  %44 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %43, i32 0, i32 2
  %45 = call i32 @up(i32* %44)
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %138

48:                                               ; preds = %26
  %49 = load %struct.usbduxsub*, %struct.usbduxsub** %13, align 8
  %50 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %48
  %54 = load %struct.usbduxsub*, %struct.usbduxsub** %13, align 8
  %55 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %54, i32 0, i32 3
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %59 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load %struct.usbduxsub*, %struct.usbduxsub** %13, align 8
  %63 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %62, i32 0, i32 2
  %64 = call i32 @up(i32* %63)
  store i32 0, i32* %5, align 4
  br label %138

65:                                               ; preds = %48
  store i32 0, i32* %10, align 4
  br label %66

66:                                               ; preds = %130, %65
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %69 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %133

72:                                               ; preds = %66
  %73 = load %struct.usbduxsub*, %struct.usbduxsub** %13, align 8
  %74 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %73, i32 0, i32 3
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %78 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %76, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %79, i32 %80, i32 %81, i32 %86)
  %88 = load %struct.usbduxsub*, %struct.usbduxsub** %13, align 8
  %89 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  store i32 1, i32* %91, align 4
  %92 = load i32*, i32** %9, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @cpu_to_le16(i32 %96)
  %98 = load %struct.usbduxsub*, %struct.usbduxsub** %13, align 8
  %99 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  store i32 %97, i32* %101, align 4
  %102 = load i32*, i32** %9, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.usbduxsub*, %struct.usbduxsub** %13, align 8
  %108 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 %106, i32* %112, align 4
  %113 = load i32, i32* %12, align 4
  %114 = shl i32 %113, 6
  %115 = load %struct.usbduxsub*, %struct.usbduxsub** %13, align 8
  %116 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 4
  store i32 %114, i32* %118, align 4
  %119 = load %struct.usbduxsub*, %struct.usbduxsub** %13, align 8
  %120 = load i32, i32* @SENDDACOMMANDS, align 4
  %121 = call i32 @send_dux_commands(%struct.usbduxsub* %119, i32 %120)
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %11, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %72
  %125 = load %struct.usbduxsub*, %struct.usbduxsub** %13, align 8
  %126 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %125, i32 0, i32 2
  %127 = call i32 @up(i32* %126)
  %128 = load i32, i32* %11, align 4
  store i32 %128, i32* %5, align 4
  br label %138

129:                                              ; preds = %72
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %10, align 4
  br label %66

133:                                              ; preds = %66
  %134 = load %struct.usbduxsub*, %struct.usbduxsub** %13, align 8
  %135 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %134, i32 0, i32 2
  %136 = call i32 @up(i32* %135)
  %137 = load i32, i32* %10, align 4
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %133, %124, %53, %42, %23
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @send_dux_commands(%struct.usbduxsub*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
