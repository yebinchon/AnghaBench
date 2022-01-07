; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_industrialio-ring.c___iio_request_ring_buffer_event_chrdev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_industrialio-ring.c___iio_request_ring_buffer_event_chrdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_ring_buffer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.module = type { i32 }
%struct.device = type { i32 }

@iio_ring_event_idr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"ring_event_line%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_ring_buffer*, i32, %struct.module*, %struct.device*)* @__iio_request_ring_buffer_event_chrdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__iio_request_ring_buffer_event_chrdev(%struct.iio_ring_buffer* %0, i32 %1, %struct.module* %2, %struct.device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iio_ring_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.module*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  store %struct.iio_ring_buffer* %0, %struct.iio_ring_buffer** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.module* %2, %struct.module** %8, align 8
  store %struct.device* %3, %struct.device** %9, align 8
  %11 = call i32 @iio_get_new_idr_val(i32* @iio_ring_event_idr)
  store i32 %11, i32* %10, align 4
  %12 = load i32, i32* %10, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %49

15:                                               ; preds = %4
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %6, align 8
  %18 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  br label %20

20:                                               ; preds = %15
  %21 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %6, align 8
  %22 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %6, align 8
  %26 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @snprintf(i32 %24, i32 20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %6, align 8
  %31 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %30, i32 0, i32 0
  %32 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %6, align 8
  %33 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.module*, %struct.module** %8, align 8
  %37 = load %struct.device*, %struct.device** %9, align 8
  %38 = call i32 @iio_setup_ev_int(%struct.TYPE_2__* %31, i32 %35, %struct.module* %36, %struct.device* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %20
  br label %43

42:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %51

43:                                               ; preds = %41
  %44 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %6, align 8
  %45 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @iio_free_idr_val(i32* @iio_ring_event_idr, i32 %47)
  br label %49

49:                                               ; preds = %43, %14
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %49, %42
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @iio_get_new_idr_val(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @iio_setup_ev_int(%struct.TYPE_2__*, i32, %struct.module*, %struct.device*) #1

declare dso_local i32 @iio_free_idr_val(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
