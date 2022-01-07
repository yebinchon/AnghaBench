; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedi_fops.c_do_poll_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedi_fops.c_do_poll_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { i8*, i8*, i32 (%struct.comedi_device.0*, %struct.comedi_subdevice*)* }
%struct.comedi_device.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32, i8*)* @do_poll_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_poll_ioctl(%struct.comedi_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp uge i32 %9, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %68

17:                                               ; preds = %3
  %18 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 1
  %20 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %20, i64 %22
  store %struct.comedi_subdevice* %23, %struct.comedi_subdevice** %8, align 8
  %24 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %25 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %17
  %29 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %30 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ne i8* %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @EACCES, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %68

37:                                               ; preds = %28, %17
  %38 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %39 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %68

43:                                               ; preds = %37
  %44 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %45 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = icmp ne i8* %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %68

52:                                               ; preds = %43
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %54 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %53, i32 0, i32 2
  %55 = load i32 (%struct.comedi_device.0*, %struct.comedi_subdevice*)*, i32 (%struct.comedi_device.0*, %struct.comedi_subdevice*)** %54, align 8
  %56 = icmp ne i32 (%struct.comedi_device.0*, %struct.comedi_subdevice*)* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %59 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %58, i32 0, i32 2
  %60 = load i32 (%struct.comedi_device.0*, %struct.comedi_subdevice*)*, i32 (%struct.comedi_device.0*, %struct.comedi_subdevice*)** %59, align 8
  %61 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %62 = bitcast %struct.comedi_device* %61 to %struct.comedi_device.0*
  %63 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %64 = call i32 %60(%struct.comedi_device.0* %62, %struct.comedi_subdevice* %63)
  store i32 %64, i32* %4, align 4
  br label %68

65:                                               ; preds = %52
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %65, %57, %49, %42, %34, %14
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
