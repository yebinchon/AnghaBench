; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/adc/extr_max1363_ring.c_max1363_ring_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/adc/extr_max1363_ring.c_max1363_ring_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @max1363_ring_cleanup(%struct.iio_dev* %0) #0 {
  %2 = alloca %struct.iio_dev*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %2, align 8
  %3 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %9 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @iio_put_trigger(i64 %10)
  %12 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %13 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %16 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @iio_trigger_dettach_poll_func(i64 %14, i32 %17)
  br label %19

19:                                               ; preds = %7, %1
  %20 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %21 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @kfree(i32 %22)
  %24 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %25 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @iio_sw_rb_free(i32 %26)
  ret void
}

declare dso_local i32 @iio_put_trigger(i64) #1

declare dso_local i32 @iio_trigger_dettach_poll_func(i64, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @iio_sw_rb_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
