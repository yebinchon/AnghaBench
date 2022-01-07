; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uio/extr_uio.c_uio_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uio/extr_uio.c_uio_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.uio_listener* }
%struct.uio_listener = type { i64, %struct.uio_device* }
%struct.uio_device = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@UIO_IRQ_NONE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @uio_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uio_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.uio_listener*, align 8
  %7 = alloca %struct.uio_device*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.uio_listener*, %struct.uio_listener** %9, align 8
  store %struct.uio_listener* %10, %struct.uio_listener** %6, align 8
  %11 = load %struct.uio_listener*, %struct.uio_listener** %6, align 8
  %12 = getelementptr inbounds %struct.uio_listener, %struct.uio_listener* %11, i32 0, i32 1
  %13 = load %struct.uio_device*, %struct.uio_device** %12, align 8
  store %struct.uio_device* %13, %struct.uio_device** %7, align 8
  %14 = load %struct.uio_device*, %struct.uio_device** %7, align 8
  %15 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @UIO_IRQ_NONE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EIO, align 4
  %23 = sub i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %42

24:                                               ; preds = %2
  %25 = load %struct.file*, %struct.file** %4, align 8
  %26 = load %struct.uio_device*, %struct.uio_device** %7, align 8
  %27 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %26, i32 0, i32 1
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @poll_wait(%struct.file* %25, i32* %27, i32* %28)
  %30 = load %struct.uio_listener*, %struct.uio_listener** %6, align 8
  %31 = getelementptr inbounds %struct.uio_listener, %struct.uio_listener* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.uio_device*, %struct.uio_device** %7, align 8
  %34 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %33, i32 0, i32 0
  %35 = call i64 @atomic_read(i32* %34)
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %24
  %38 = load i32, i32* @POLLIN, align 4
  %39 = load i32, i32* @POLLRDNORM, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %37, %21
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
