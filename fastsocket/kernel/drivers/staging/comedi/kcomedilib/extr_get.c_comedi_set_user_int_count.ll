; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/kcomedilib/extr_get.c_comedi_set_user_int_count.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/kcomedilib/extr_get.c_comedi_set_user_int_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comedi_set_user_int_count(i8* %0, i32 %1, i32 %2) #0 {
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
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 0
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %16, i64 %18
  store %struct.comedi_subdevice* %19, %struct.comedi_subdevice** %9, align 8
  %20 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %21 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %20, i32 0, i32 0
  %22 = load %struct.comedi_async*, %struct.comedi_async** %21, align 8
  store %struct.comedi_async* %22, %struct.comedi_async** %10, align 8
  %23 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %24 = icmp eq %struct.comedi_async* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %42

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %29 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub i32 %27, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 -1, i32* %4, align 4
  br label %42

35:                                               ; preds = %26
  %36 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @comedi_buf_read_alloc(%struct.comedi_async* %36, i32 %37)
  %39 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @comedi_buf_read_free(%struct.comedi_async* %39, i32 %40)
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %35, %34, %25
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @comedi_buf_read_alloc(%struct.comedi_async*, i32) #1

declare dso_local i32 @comedi_buf_read_free(%struct.comedi_async*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
