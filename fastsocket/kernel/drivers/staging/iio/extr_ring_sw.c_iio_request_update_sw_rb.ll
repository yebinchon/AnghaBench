; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_ring_sw.c_iio_request_update_sw_rb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_ring_sw.c_iio_request_update_sw_rb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_ring_buffer = type { i32 }
%struct.iio_sw_ring_buffer = type { i32, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iio_request_update_sw_rb(%struct.iio_ring_buffer* %0) #0 {
  %2 = alloca %struct.iio_ring_buffer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_sw_ring_buffer*, align 8
  store %struct.iio_ring_buffer* %0, %struct.iio_ring_buffer** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %2, align 8
  %6 = call %struct.iio_sw_ring_buffer* @iio_to_sw_ring(%struct.iio_ring_buffer* %5)
  store %struct.iio_sw_ring_buffer* %6, %struct.iio_sw_ring_buffer** %4, align 8
  %7 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %8 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %11 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %36

15:                                               ; preds = %1
  %16 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %17 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @EAGAIN, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %36

23:                                               ; preds = %15
  %24 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %25 = call i32 @__iio_free_sw_ring_buffer(%struct.iio_sw_ring_buffer* %24)
  %26 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %27 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %28 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %32 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @__iio_init_sw_ring_buffer(%struct.iio_sw_ring_buffer* %26, i32 %30, i32 %34)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %23, %20, %14
  %37 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %38 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock(i32* %38)
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.iio_sw_ring_buffer* @iio_to_sw_ring(%struct.iio_ring_buffer*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__iio_free_sw_ring_buffer(%struct.iio_sw_ring_buffer*) #1

declare dso_local i32 @__iio_init_sw_ring_buffer(%struct.iio_sw_ring_buffer*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
