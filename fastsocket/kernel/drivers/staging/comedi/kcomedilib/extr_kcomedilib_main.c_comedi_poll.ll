; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/kcomedilib/extr_kcomedilib_main.c_comedi_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/kcomedilib/extr_kcomedilib_main.c_comedi_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { i64, i8*, i32 (%struct.comedi_device.0*, %struct.comedi_subdevice*)*, i32, %struct.comedi_async* }
%struct.comedi_device.0 = type opaque
%struct.comedi_async = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@COMEDI_SUBD_UNUSED = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comedi_poll(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_async*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.comedi_device*
  store %struct.comedi_device* %10, %struct.comedi_device** %6, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 1
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %12, align 8
  store %struct.comedi_subdevice* %13, %struct.comedi_subdevice** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp uge i32 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %73

22:                                               ; preds = %2
  %23 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %24 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %23, i32 0, i32 1
  %25 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %25, i64 %27
  store %struct.comedi_subdevice* %28, %struct.comedi_subdevice** %7, align 8
  %29 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %30 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %29, i32 0, i32 4
  %31 = load %struct.comedi_async*, %struct.comedi_async** %30, align 8
  store %struct.comedi_async* %31, %struct.comedi_async** %8, align 8
  %32 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %33 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @COMEDI_SUBD_UNUSED, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %40, label %37

37:                                               ; preds = %22
  %38 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %39 = icmp ne %struct.comedi_async* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37, %22
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %73

43:                                               ; preds = %37
  %44 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %45 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %50 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = icmp ne i8* %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @EACCES, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %73

57:                                               ; preds = %48, %43
  %58 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %59 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %73

65:                                               ; preds = %57
  %66 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %67 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %66, i32 0, i32 2
  %68 = load i32 (%struct.comedi_device.0*, %struct.comedi_subdevice*)*, i32 (%struct.comedi_device.0*, %struct.comedi_subdevice*)** %67, align 8
  %69 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %70 = bitcast %struct.comedi_device* %69 to %struct.comedi_device.0*
  %71 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %72 = call i32 %68(%struct.comedi_device.0* %70, %struct.comedi_subdevice* %71)
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %65, %62, %54, %40, %19
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
