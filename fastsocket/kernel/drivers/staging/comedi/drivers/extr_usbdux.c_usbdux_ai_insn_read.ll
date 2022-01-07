; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.usbduxsub* }
%struct.usbduxsub = type { i32, i32*, i32*, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32, i32 }

@.str = private unnamed_addr constant [53 x i8] c"comedi%d: ai_insn_read, insn->n=%d, insn->subdev=%d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"comedi%d: ai_insn_read not possible. Async Command is running.\0A\00", align 1
@SENDSINGLEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @usbdux_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbdux_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.usbduxsub*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 1
  %18 = load %struct.usbduxsub*, %struct.usbduxsub** %17, align 8
  store %struct.usbduxsub* %18, %struct.usbduxsub** %15, align 8
  %19 = load %struct.usbduxsub*, %struct.usbduxsub** %15, align 8
  %20 = icmp ne %struct.usbduxsub* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %139

22:                                               ; preds = %4
  %23 = load %struct.usbduxsub*, %struct.usbduxsub** %15, align 8
  %24 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %23, i32 0, i32 3
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %28 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %31 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %34 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_dbg(i32* %26, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32, i32 %35)
  %37 = load %struct.usbduxsub*, %struct.usbduxsub** %15, align 8
  %38 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %37, i32 0, i32 0
  %39 = call i32 @down(i32* %38)
  %40 = load %struct.usbduxsub*, %struct.usbduxsub** %15, align 8
  %41 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %22
  %45 = load %struct.usbduxsub*, %struct.usbduxsub** %15, align 8
  %46 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %45, i32 0, i32 0
  %47 = call i32 @up(i32* %46)
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %139

50:                                               ; preds = %22
  %51 = load %struct.usbduxsub*, %struct.usbduxsub** %15, align 8
  %52 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %50
  %56 = load %struct.usbduxsub*, %struct.usbduxsub** %15, align 8
  %57 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %56, i32 0, i32 3
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %61 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @dev_err(i32* %59, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load %struct.usbduxsub*, %struct.usbduxsub** %15, align 8
  %65 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %64, i32 0, i32 0
  %66 = call i32 @up(i32* %65)
  store i32 0, i32* %5, align 4
  br label %139

67:                                               ; preds = %50
  %68 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %69 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @CR_CHAN(i32 %70)
  store i32 %71, i32* %12, align 4
  %72 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %73 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @CR_RANGE(i32 %74)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @create_adc_command(i32 %76, i32 %77)
  %79 = load %struct.usbduxsub*, %struct.usbduxsub** %15, align 8
  %80 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  store i32 %78, i32* %82, align 4
  %83 = load %struct.usbduxsub*, %struct.usbduxsub** %15, align 8
  %84 = load i32, i32* @SENDSINGLEAD, align 4
  %85 = call i32 @send_dux_commands(%struct.usbduxsub* %83, i32 %84)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %67
  %89 = load %struct.usbduxsub*, %struct.usbduxsub** %15, align 8
  %90 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %89, i32 0, i32 0
  %91 = call i32 @up(i32* %90)
  %92 = load i32, i32* %14, align 4
  store i32 %92, i32* %5, align 4
  br label %139

93:                                               ; preds = %67
  store i32 0, i32* %10, align 4
  br label %94

94:                                               ; preds = %131, %93
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %97 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %134

100:                                              ; preds = %94
  %101 = load %struct.usbduxsub*, %struct.usbduxsub** %15, align 8
  %102 = load i32, i32* @SENDSINGLEAD, align 4
  %103 = call i32 @receive_dux_commands(%struct.usbduxsub* %101, i32 %102)
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = load %struct.usbduxsub*, %struct.usbduxsub** %15, align 8
  %108 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %107, i32 0, i32 0
  %109 = call i32 @up(i32* %108)
  store i32 0, i32* %5, align 4
  br label %139

110:                                              ; preds = %100
  %111 = load %struct.usbduxsub*, %struct.usbduxsub** %15, align 8
  %112 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @le16_to_cpu(i32 %115)
  store i32 %116, i32* %11, align 4
  %117 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %118 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @CR_RANGE(i32 %119)
  %121 = icmp sle i32 %120, 1
  br i1 %121, label %122, label %125

122:                                              ; preds = %110
  %123 = load i32, i32* %11, align 4
  %124 = xor i32 %123, 2048
  store i32 %124, i32* %11, align 4
  br label %125

125:                                              ; preds = %122, %110
  %126 = load i32, i32* %11, align 4
  %127 = load i32*, i32** %9, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32 %126, i32* %130, align 4
  br label %131

131:                                              ; preds = %125
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %10, align 4
  br label %94

134:                                              ; preds = %94
  %135 = load %struct.usbduxsub*, %struct.usbduxsub** %15, align 8
  %136 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %135, i32 0, i32 0
  %137 = call i32 @up(i32* %136)
  %138 = load i32, i32* %10, align 4
  store i32 %138, i32* %5, align 4
  br label %139

139:                                              ; preds = %134, %106, %88, %55, %44, %21
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @create_adc_command(i32, i32) #1

declare dso_local i32 @send_dux_commands(%struct.usbduxsub*, i32) #1

declare dso_local i32 @receive_dux_commands(%struct.usbduxsub*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
