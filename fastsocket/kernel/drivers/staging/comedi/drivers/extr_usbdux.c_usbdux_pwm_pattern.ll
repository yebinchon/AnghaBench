; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_pwm_pattern.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_pwm_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.usbduxsub* }
%struct.usbduxsub = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.comedi_subdevice = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32, i32)* @usbdux_pwm_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbdux_pwm_pattern(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.comedi_device*, align 8
  %8 = alloca %struct.comedi_subdevice*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.usbduxsub*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  store %struct.comedi_device* %0, %struct.comedi_device** %7, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %20 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 0
  %21 = load %struct.usbduxsub*, %struct.usbduxsub** %20, align 8
  store %struct.usbduxsub* %21, %struct.usbduxsub** %12, align 8
  %22 = load %struct.usbduxsub*, %struct.usbduxsub** %12, align 8
  %23 = icmp ne %struct.usbduxsub* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* @EFAULT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %93

27:                                               ; preds = %5
  %28 = load i32, i32* %9, align 4
  %29 = shl i32 1, %28
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %16, align 1
  %31 = load i32, i32* %9, align 4
  %32 = shl i32 16, %31
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %17, align 1
  %34 = load %struct.usbduxsub*, %struct.usbduxsub** %12, align 8
  %35 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %14, align 4
  %37 = load %struct.usbduxsub*, %struct.usbduxsub** %12, align 8
  %38 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8*
  store i8* %42, i8** %15, align 8
  store i32 0, i32* %13, align 4
  br label %43

43:                                               ; preds = %89, %27
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %92

47:                                               ; preds = %43
  %48 = load i8*, i8** %15, align 8
  %49 = load i8, i8* %48, align 1
  store i8 %49, i8* %18, align 1
  %50 = load i8, i8* %18, align 1
  %51 = sext i8 %50 to i32
  %52 = load i8, i8* %16, align 1
  %53 = sext i8 %52 to i32
  %54 = xor i32 %53, -1
  %55 = and i32 %51, %54
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %18, align 1
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %47
  %61 = load i8, i8* %18, align 1
  %62 = sext i8 %61 to i32
  %63 = load i8, i8* %16, align 1
  %64 = sext i8 %63 to i32
  %65 = or i32 %62, %64
  %66 = trunc i32 %65 to i8
  store i8 %66, i8* %18, align 1
  br label %67

67:                                               ; preds = %60, %47
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %67
  %71 = load i8, i8* %18, align 1
  %72 = sext i8 %71 to i32
  %73 = load i8, i8* %17, align 1
  %74 = sext i8 %73 to i32
  %75 = xor i32 %74, -1
  %76 = and i32 %72, %75
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %18, align 1
  br label %85

78:                                               ; preds = %67
  %79 = load i8, i8* %18, align 1
  %80 = sext i8 %79 to i32
  %81 = load i8, i8* %17, align 1
  %82 = sext i8 %81 to i32
  %83 = or i32 %80, %82
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %18, align 1
  br label %85

85:                                               ; preds = %78, %70
  %86 = load i8, i8* %18, align 1
  %87 = load i8*, i8** %15, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %15, align 8
  store i8 %86, i8* %87, align 1
  br label %89

89:                                               ; preds = %85
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %13, align 4
  br label %43

92:                                               ; preds = %43
  store i32 1, i32* %6, align 4
  br label %93

93:                                               ; preds = %92, %24
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
