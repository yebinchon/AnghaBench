; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_industrialio-ring.c_iio_ring_buffer_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_industrialio-ring.c_iio_ring_buffer_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_ring_buffer = type { i32, i32, i32 }

@iio_ring_idr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"ring_buffer%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iio_ring_buffer_register(%struct.iio_ring_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_ring_buffer*, align 8
  %4 = alloca i32, align 4
  store %struct.iio_ring_buffer* %0, %struct.iio_ring_buffer** %3, align 8
  %5 = call i32 @iio_get_new_idr_val(i32* @iio_ring_idr)
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %60

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %3, align 8
  %12 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  br label %13

13:                                               ; preds = %9
  %14 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %3, align 8
  %15 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %14, i32 0, i32 1
  %16 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %3, align 8
  %17 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_set_name(i32* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %3, align 8
  %21 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %20, i32 0, i32 1
  %22 = call i32 @device_add(i32* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  br label %55

26:                                               ; preds = %13
  %27 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %3, align 8
  %28 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %3, align 8
  %29 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %3, align 8
  %32 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %31, i32 0, i32 1
  %33 = call i32 @__iio_request_ring_buffer_event_chrdev(%struct.iio_ring_buffer* %27, i32 0, i32 %30, i32* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %51

37:                                               ; preds = %26
  %38 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %3, align 8
  %39 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %3, align 8
  %40 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @__iio_request_ring_buffer_access_chrdev(%struct.iio_ring_buffer* %38, i32 0, i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %48

46:                                               ; preds = %37
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %62

48:                                               ; preds = %45
  %49 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %3, align 8
  %50 = call i32 @__iio_free_ring_buffer_event_chrdev(%struct.iio_ring_buffer* %49)
  br label %51

51:                                               ; preds = %48, %36
  %52 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %3, align 8
  %53 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %52, i32 0, i32 1
  %54 = call i32 @device_del(i32* %53)
  br label %55

55:                                               ; preds = %51, %25
  %56 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %3, align 8
  %57 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @iio_free_idr_val(i32* @iio_ring_idr, i32 %58)
  br label %60

60:                                               ; preds = %55, %8
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %60, %46
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @iio_get_new_idr_val(i32*) #1

declare dso_local i32 @dev_set_name(i32*, i8*, i32) #1

declare dso_local i32 @device_add(i32*) #1

declare dso_local i32 @__iio_request_ring_buffer_event_chrdev(%struct.iio_ring_buffer*, i32, i32, i32*) #1

declare dso_local i32 @__iio_request_ring_buffer_access_chrdev(%struct.iio_ring_buffer*, i32, i32) #1

declare dso_local i32 @__iio_free_ring_buffer_event_chrdev(%struct.iio_ring_buffer*) #1

declare dso_local i32 @device_del(i32*) #1

declare dso_local i32 @iio_free_idr_val(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
