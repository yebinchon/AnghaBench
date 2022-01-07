; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_industrialio-ring.c_iio_ring_buffer_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_industrialio-ring.c_iio_ring_buffer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_ring_buffer = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.iio_dev*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.iio_ring_buffer* }
%struct.TYPE_5__ = type { %struct.iio_ring_buffer* }
%struct.TYPE_4__ = type { i32 (%struct.iio_ring_buffer*)* }
%struct.iio_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iio_ring_buffer_init(%struct.iio_ring_buffer* %0, %struct.iio_dev* %1) #0 {
  %3 = alloca %struct.iio_ring_buffer*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  store %struct.iio_ring_buffer* %0, %struct.iio_ring_buffer** %3, align 8
  store %struct.iio_dev* %1, %struct.iio_dev** %4, align 8
  %5 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %3, align 8
  %6 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32 (%struct.iio_ring_buffer*)*, i32 (%struct.iio_ring_buffer*)** %7, align 8
  %9 = icmp ne i32 (%struct.iio_ring_buffer*)* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %3, align 8
  %12 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32 (%struct.iio_ring_buffer*)*, i32 (%struct.iio_ring_buffer*)** %13, align 8
  %15 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %3, align 8
  %16 = call i32 %14(%struct.iio_ring_buffer* %15)
  br label %17

17:                                               ; preds = %10, %2
  %18 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %19 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %3, align 8
  %20 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %19, i32 0, i32 2
  store %struct.iio_dev* %18, %struct.iio_dev** %20, align 8
  %21 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %3, align 8
  %22 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %3, align 8
  %23 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store %struct.iio_ring_buffer* %21, %struct.iio_ring_buffer** %24, align 8
  %25 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %3, align 8
  %26 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %3, align 8
  %27 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store %struct.iio_ring_buffer* %25, %struct.iio_ring_buffer** %28, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
