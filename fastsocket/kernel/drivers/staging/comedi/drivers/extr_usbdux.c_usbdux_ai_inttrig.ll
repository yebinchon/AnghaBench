; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_ai_inttrig.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_ai_inttrig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.usbduxsub* }
%struct.usbduxsub = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.comedi_subdevice = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

@EFAULT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"comedi%d: usbdux_ai_inttrig\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"comedi%d: usbdux_ai_inttrig: invalid trignum\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"comedi%d: usbdux_ai_inttrig: urbSubmit: err=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"comedi%d: ai_inttrig but acqu is already running\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @usbdux_ai_inttrig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbdux_ai_inttrig(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.usbduxsub*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 1
  %12 = load %struct.usbduxsub*, %struct.usbduxsub** %11, align 8
  store %struct.usbduxsub* %12, %struct.usbduxsub** %9, align 8
  %13 = load %struct.usbduxsub*, %struct.usbduxsub** %9, align 8
  %14 = icmp ne %struct.usbduxsub* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EFAULT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %103

18:                                               ; preds = %3
  %19 = load %struct.usbduxsub*, %struct.usbduxsub** %9, align 8
  %20 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %19, i32 0, i32 1
  %21 = call i32 @down(i32* %20)
  %22 = load %struct.usbduxsub*, %struct.usbduxsub** %9, align 8
  %23 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %18
  %27 = load %struct.usbduxsub*, %struct.usbduxsub** %9, align 8
  %28 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %27, i32 0, i32 1
  %29 = call i32 @up(i32* %28)
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %103

32:                                               ; preds = %18
  %33 = load %struct.usbduxsub*, %struct.usbduxsub** %9, align 8
  %34 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %38 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dev_dbg(i32* %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %32
  %44 = load %struct.usbduxsub*, %struct.usbduxsub** %9, align 8
  %45 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %44, i32 0, i32 2
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %49 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %47, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load %struct.usbduxsub*, %struct.usbduxsub** %9, align 8
  %53 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %52, i32 0, i32 1
  %54 = call i32 @up(i32* %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %103

57:                                               ; preds = %32
  %58 = load %struct.usbduxsub*, %struct.usbduxsub** %9, align 8
  %59 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %90, label %62

62:                                               ; preds = %57
  %63 = load %struct.usbduxsub*, %struct.usbduxsub** %9, align 8
  %64 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load %struct.usbduxsub*, %struct.usbduxsub** %9, align 8
  %66 = call i32 @usbduxsub_submit_InURBs(%struct.usbduxsub* %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %62
  %70 = load %struct.usbduxsub*, %struct.usbduxsub** %9, align 8
  %71 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %75 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %73, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %77)
  %79 = load %struct.usbduxsub*, %struct.usbduxsub** %9, align 8
  %80 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %79, i32 0, i32 0
  store i32 0, i32* %80, align 8
  %81 = load %struct.usbduxsub*, %struct.usbduxsub** %9, align 8
  %82 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %81, i32 0, i32 1
  %83 = call i32 @up(i32* %82)
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %4, align 4
  br label %103

85:                                               ; preds = %62
  %86 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %87 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i32* null, i32** %89, align 8
  br label %99

90:                                               ; preds = %57
  %91 = load %struct.usbduxsub*, %struct.usbduxsub** %9, align 8
  %92 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %91, i32 0, i32 2
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %96 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %94, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %90, %85
  %100 = load %struct.usbduxsub*, %struct.usbduxsub** %9, align 8
  %101 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %100, i32 0, i32 1
  %102 = call i32 @up(i32* %101)
  store i32 1, i32* %4, align 4
  br label %103

103:                                              ; preds = %99, %69, %43, %26, %15
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @usbduxsub_submit_InURBs(%struct.usbduxsub*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
