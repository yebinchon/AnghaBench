; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_industrialio-ring.c_iio_ring_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_industrialio-ring.c_iio_ring_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.cdev* }
%struct.cdev = type { i32 }
%struct.file = type { i32 }
%struct.iio_handler = type { %struct.iio_ring_buffer* }
%struct.iio_ring_buffer = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.iio_ring_buffer.0*)* }
%struct.iio_ring_buffer.0 = type opaque
%struct.TYPE_3__ = type { i32 }

@IIO_BUSY_BIT_POS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iio_ring_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.iio_handler*, align 8
  %7 = alloca %struct.iio_ring_buffer*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = load %struct.cdev*, %struct.cdev** %9, align 8
  store %struct.cdev* %10, %struct.cdev** %5, align 8
  %11 = load %struct.cdev*, %struct.cdev** %5, align 8
  %12 = call %struct.iio_handler* @iio_cdev_to_handler(%struct.cdev* %11)
  store %struct.iio_handler* %12, %struct.iio_handler** %6, align 8
  %13 = load %struct.iio_handler*, %struct.iio_handler** %6, align 8
  %14 = getelementptr inbounds %struct.iio_handler, %struct.iio_handler* %13, i32 0, i32 0
  %15 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %14, align 8
  store %struct.iio_ring_buffer* %15, %struct.iio_ring_buffer** %7, align 8
  %16 = load i32, i32* @IIO_BUSY_BIT_POS, align 4
  %17 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %7, align 8
  %18 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i32 @clear_bit(i32 %16, i32* %19)
  %21 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %7, align 8
  %22 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32 (%struct.iio_ring_buffer.0*)*, i32 (%struct.iio_ring_buffer.0*)** %23, align 8
  %25 = icmp ne i32 (%struct.iio_ring_buffer.0*)* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %2
  %27 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %7, align 8
  %28 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32 (%struct.iio_ring_buffer.0*)*, i32 (%struct.iio_ring_buffer.0*)** %29, align 8
  %31 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %7, align 8
  %32 = bitcast %struct.iio_ring_buffer* %31 to %struct.iio_ring_buffer.0*
  %33 = call i32 %30(%struct.iio_ring_buffer.0* %32)
  br label %34

34:                                               ; preds = %26, %2
  ret i32 0
}

declare dso_local %struct.iio_handler* @iio_cdev_to_handler(%struct.cdev*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
