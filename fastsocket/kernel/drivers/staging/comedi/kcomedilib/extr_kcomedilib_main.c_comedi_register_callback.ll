; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/kcomedilib/extr_kcomedilib_main.c_comedi_register_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/kcomedilib/extr_kcomedilib_main.c_comedi_register_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { i64, i8*, i64, %struct.comedi_async* }
%struct.comedi_async = type { i32, i32 (i32, i8*)*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@COMEDI_SUBD_UNUSED = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comedi_register_callback(i8* %0, i32 %1, i32 %2, i32 (i32, i8*)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32 (i32, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.comedi_device*, align 8
  %13 = alloca %struct.comedi_subdevice*, align 8
  %14 = alloca %struct.comedi_async*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 (i32, i8*)* %3, i32 (i32, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.comedi_device*
  store %struct.comedi_device* %16, %struct.comedi_device** %12, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.comedi_device*, %struct.comedi_device** %12, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp uge i32 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %90

25:                                               ; preds = %5
  %26 = load %struct.comedi_device*, %struct.comedi_device** %12, align 8
  %27 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %26, i32 0, i32 1
  %28 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %28, i64 %30
  store %struct.comedi_subdevice* %31, %struct.comedi_subdevice** %13, align 8
  %32 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %13, align 8
  %33 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %32, i32 0, i32 3
  %34 = load %struct.comedi_async*, %struct.comedi_async** %33, align 8
  store %struct.comedi_async* %34, %struct.comedi_async** %14, align 8
  %35 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %13, align 8
  %36 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @COMEDI_SUBD_UNUSED, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %43, label %40

40:                                               ; preds = %25
  %41 = load %struct.comedi_async*, %struct.comedi_async** %14, align 8
  %42 = icmp ne %struct.comedi_async* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %40, %25
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %90

46:                                               ; preds = %40
  %47 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %13, align 8
  %48 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %13, align 8
  %53 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = icmp ne i8* %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* @EACCES, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  br label %90

60:                                               ; preds = %51, %46
  %61 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %13, align 8
  %62 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* @EBUSY, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  br label %90

68:                                               ; preds = %60
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %68
  %72 = load %struct.comedi_async*, %struct.comedi_async** %14, align 8
  %73 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %72, i32 0, i32 0
  store i32 0, i32* %73, align 8
  %74 = load %struct.comedi_async*, %struct.comedi_async** %14, align 8
  %75 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %74, i32 0, i32 1
  store i32 (i32, i8*)* null, i32 (i32, i8*)** %75, align 8
  %76 = load %struct.comedi_async*, %struct.comedi_async** %14, align 8
  %77 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %76, i32 0, i32 2
  store i32* null, i32** %77, align 8
  br label %89

78:                                               ; preds = %68
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.comedi_async*, %struct.comedi_async** %14, align 8
  %81 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load i32 (i32, i8*)*, i32 (i32, i8*)** %10, align 8
  %83 = load %struct.comedi_async*, %struct.comedi_async** %14, align 8
  %84 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %83, i32 0, i32 1
  store i32 (i32, i8*)* %82, i32 (i32, i8*)** %84, align 8
  %85 = load i8*, i8** %11, align 8
  %86 = bitcast i8* %85 to i32*
  %87 = load %struct.comedi_async*, %struct.comedi_async** %14, align 8
  %88 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %87, i32 0, i32 2
  store i32* %86, i32** %88, align 8
  br label %89

89:                                               ; preds = %78, %71
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %89, %65, %57, %43, %22
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
