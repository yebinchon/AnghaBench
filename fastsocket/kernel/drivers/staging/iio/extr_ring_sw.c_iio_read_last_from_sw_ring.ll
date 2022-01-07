; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_ring_sw.c_iio_read_last_from_sw_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_ring_sw.c_iio_read_last_from_sw_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_sw_ring_buffer = type { i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iio_read_last_from_sw_ring(%struct.iio_sw_ring_buffer* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_sw_ring_buffer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.iio_sw_ring_buffer* %0, %struct.iio_sw_ring_buffer** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %8 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %7, i32 0, i32 1
  %9 = call i32 @iio_mark_sw_rb_in_use(%struct.TYPE_3__* %8)
  br label %10

10:                                               ; preds = %37, %2
  %11 = call i32 (...) @barrier()
  %12 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %13 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %6, align 8
  %15 = call i32 (...) @barrier()
  %16 = load i8*, i8** %6, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load i32, i32* @EAGAIN, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %42

21:                                               ; preds = %10
  %22 = load i8*, i8** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %25 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @memcpy(i8* %22, i8* %23, i32 %27)
  %29 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %30 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = icmp uge i8* %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %21
  br label %10

38:                                               ; preds = %21
  %39 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %4, align 8
  %40 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %39, i32 0, i32 1
  %41 = call i32 @iio_unmark_sw_rb_in_use(%struct.TYPE_3__* %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %18
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @iio_mark_sw_rb_in_use(%struct.TYPE_3__*) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @iio_unmark_sw_rb_in_use(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
