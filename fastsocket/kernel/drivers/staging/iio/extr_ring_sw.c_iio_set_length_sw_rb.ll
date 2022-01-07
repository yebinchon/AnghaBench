; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_ring_sw.c_iio_set_length_sw_rb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_ring_sw.c_iio_set_length_sw_rb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_ring_buffer = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.iio_ring_buffer.0*)* }
%struct.iio_ring_buffer.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iio_set_length_sw_rb(%struct.iio_ring_buffer* %0, i32 %1) #0 {
  %3 = alloca %struct.iio_ring_buffer*, align 8
  %4 = alloca i32, align 4
  store %struct.iio_ring_buffer* %0, %struct.iio_ring_buffer** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %3, align 8
  %6 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %3, align 8
  %13 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %3, align 8
  %15 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.iio_ring_buffer.0*)*, i32 (%struct.iio_ring_buffer.0*)** %16, align 8
  %18 = icmp ne i32 (%struct.iio_ring_buffer.0*)* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %10
  %20 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %3, align 8
  %21 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.iio_ring_buffer.0*)*, i32 (%struct.iio_ring_buffer.0*)** %22, align 8
  %24 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %3, align 8
  %25 = bitcast %struct.iio_ring_buffer* %24 to %struct.iio_ring_buffer.0*
  %26 = call i32 %23(%struct.iio_ring_buffer.0* %25)
  br label %27

27:                                               ; preds = %19, %10
  br label %28

28:                                               ; preds = %27, %2
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
