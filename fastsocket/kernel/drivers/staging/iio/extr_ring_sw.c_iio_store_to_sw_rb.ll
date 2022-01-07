; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_ring_sw.c_iio_store_to_sw_rb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_ring_sw.c_iio_store_to_sw_rb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_ring_buffer = type { i32 }
%struct.iio_sw_ring_buffer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iio_store_to_sw_rb(%struct.iio_ring_buffer* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.iio_ring_buffer*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_sw_ring_buffer*, align 8
  store %struct.iio_ring_buffer* %0, %struct.iio_ring_buffer** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %4, align 8
  %9 = call %struct.iio_sw_ring_buffer* @iio_to_sw_ring(%struct.iio_ring_buffer* %8)
  store %struct.iio_sw_ring_buffer* %9, %struct.iio_sw_ring_buffer** %7, align 8
  %10 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @iio_store_to_sw_ring(%struct.iio_sw_ring_buffer* %10, i32* %11, i32 %12)
  ret i32 %13
}

declare dso_local %struct.iio_sw_ring_buffer* @iio_to_sw_ring(%struct.iio_ring_buffer*) #1

declare dso_local i32 @iio_store_to_sw_ring(%struct.iio_sw_ring_buffer*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
