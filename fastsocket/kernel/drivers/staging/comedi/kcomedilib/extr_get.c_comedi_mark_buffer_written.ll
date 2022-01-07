; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/kcomedilib/extr_get.c_comedi_mark_buffer_written.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/kcomedilib/extr_get.c_comedi_mark_buffer_written.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comedi_mark_buffer_written(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.comedi_device*, align 8
  %9 = alloca %struct.comedi_subdevice*, align 8
  %10 = alloca %struct.comedi_async*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.comedi_device*
  store %struct.comedi_device* %13, %struct.comedi_device** %8, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 1
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %16, i64 %18
  store %struct.comedi_subdevice* %19, %struct.comedi_subdevice** %9, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %22 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp uge i32 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %45

26:                                               ; preds = %3
  %27 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %28 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %27, i32 0, i32 0
  %29 = load %struct.comedi_async*, %struct.comedi_async** %28, align 8
  store %struct.comedi_async* %29, %struct.comedi_async** %10, align 8
  %30 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %31 = icmp eq %struct.comedi_async* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 -1, i32* %4, align 4
  br label %45

33:                                               ; preds = %26
  %34 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @comedi_buf_write_alloc(%struct.comedi_async* %34, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @comedi_buf_write_free(%struct.comedi_async* %37, i32 %38)
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  store i32 -1, i32* %4, align 4
  br label %45

44:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %43, %32, %25
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @comedi_buf_write_alloc(%struct.comedi_async*, i32) #1

declare dso_local i32 @comedi_buf_write_free(%struct.comedi_async*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
