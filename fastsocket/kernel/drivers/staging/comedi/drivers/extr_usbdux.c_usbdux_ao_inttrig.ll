; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_ao_inttrig.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_ao_inttrig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.usbduxsub* }
%struct.usbduxsub = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.comedi_subdevice = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

@EFAULT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"comedi%d: usbdux_ao_inttrig: invalid trignum\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"comedi%d: usbdux_ao_inttrig: submitURB: err=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"comedi%d: ao_inttrig but acqu is already running.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @usbdux_ao_inttrig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbdux_ao_inttrig(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2) #0 {
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
  br label %92

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
  br label %92

32:                                               ; preds = %18
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load %struct.usbduxsub*, %struct.usbduxsub** %9, align 8
  %37 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %41 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %39, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %92

46:                                               ; preds = %32
  %47 = load %struct.usbduxsub*, %struct.usbduxsub** %9, align 8
  %48 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %79, label %51

51:                                               ; preds = %46
  %52 = load %struct.usbduxsub*, %struct.usbduxsub** %9, align 8
  %53 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load %struct.usbduxsub*, %struct.usbduxsub** %9, align 8
  %55 = call i32 @usbduxsub_submit_OutURBs(%struct.usbduxsub* %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %51
  %59 = load %struct.usbduxsub*, %struct.usbduxsub** %9, align 8
  %60 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %59, i32 0, i32 2
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %64 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %62, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %66)
  %68 = load %struct.usbduxsub*, %struct.usbduxsub** %9, align 8
  %69 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %68, i32 0, i32 0
  store i32 0, i32* %69, align 8
  %70 = load %struct.usbduxsub*, %struct.usbduxsub** %9, align 8
  %71 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %70, i32 0, i32 1
  %72 = call i32 @up(i32* %71)
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %4, align 4
  br label %92

74:                                               ; preds = %51
  %75 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %76 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store i32* null, i32** %78, align 8
  br label %88

79:                                               ; preds = %46
  %80 = load %struct.usbduxsub*, %struct.usbduxsub** %9, align 8
  %81 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %80, i32 0, i32 2
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %85 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %83, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %79, %74
  %89 = load %struct.usbduxsub*, %struct.usbduxsub** %9, align 8
  %90 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %89, i32 0, i32 1
  %91 = call i32 @up(i32* %90)
  store i32 1, i32* %4, align 4
  br label %92

92:                                               ; preds = %88, %58, %35, %26, %15
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @usbduxsub_submit_OutURBs(%struct.usbduxsub*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
