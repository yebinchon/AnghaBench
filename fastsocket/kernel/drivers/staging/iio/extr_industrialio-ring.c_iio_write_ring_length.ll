; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_industrialio-ring.c_iio_write_ring_length.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_industrialio-ring.c_iio_write_ring_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_ring_buffer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.iio_ring_buffer.0*)*, i32 (%struct.iio_ring_buffer.1*)*, i32 (%struct.iio_ring_buffer.2*, i64)* }
%struct.iio_ring_buffer.0 = type opaque
%struct.iio_ring_buffer.1 = type opaque
%struct.iio_ring_buffer.2 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iio_write_ring_length(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.iio_ring_buffer*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.iio_ring_buffer* @dev_get_drvdata(%struct.device* %13)
  store %struct.iio_ring_buffer* %14, %struct.iio_ring_buffer** %12, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @strict_strtoul(i8* %15, i32 10, i64* %11)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %5, align 4
  br label %73

21:                                               ; preds = %4
  %22 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %12, align 8
  %23 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64 (%struct.iio_ring_buffer.0*)*, i64 (%struct.iio_ring_buffer.0*)** %24, align 8
  %26 = icmp ne i64 (%struct.iio_ring_buffer.0*)* %25, null
  br i1 %26, label %27, label %41

27:                                               ; preds = %21
  %28 = load i64, i64* %11, align 8
  %29 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %12, align 8
  %30 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64 (%struct.iio_ring_buffer.0*)*, i64 (%struct.iio_ring_buffer.0*)** %31, align 8
  %33 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %12, align 8
  %34 = bitcast %struct.iio_ring_buffer* %33 to %struct.iio_ring_buffer.0*
  %35 = call i64 %32(%struct.iio_ring_buffer.0* %34)
  %36 = icmp eq i64 %28, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load i64, i64* %9, align 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %5, align 4
  br label %73

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40, %21
  %42 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %12, align 8
  %43 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32 (%struct.iio_ring_buffer.2*, i64)*, i32 (%struct.iio_ring_buffer.2*, i64)** %44, align 8
  %46 = icmp ne i32 (%struct.iio_ring_buffer.2*, i64)* %45, null
  br i1 %46, label %47, label %70

47:                                               ; preds = %41
  %48 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %12, align 8
  %49 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32 (%struct.iio_ring_buffer.2*, i64)*, i32 (%struct.iio_ring_buffer.2*, i64)** %50, align 8
  %52 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %12, align 8
  %53 = bitcast %struct.iio_ring_buffer* %52 to %struct.iio_ring_buffer.2*
  %54 = load i64, i64* %11, align 8
  %55 = call i32 %51(%struct.iio_ring_buffer.2* %53, i64 %54)
  %56 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %12, align 8
  %57 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32 (%struct.iio_ring_buffer.1*)*, i32 (%struct.iio_ring_buffer.1*)** %58, align 8
  %60 = icmp ne i32 (%struct.iio_ring_buffer.1*)* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %47
  %62 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %12, align 8
  %63 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32 (%struct.iio_ring_buffer.1*)*, i32 (%struct.iio_ring_buffer.1*)** %64, align 8
  %66 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %12, align 8
  %67 = bitcast %struct.iio_ring_buffer* %66 to %struct.iio_ring_buffer.1*
  %68 = call i32 %65(%struct.iio_ring_buffer.1* %67)
  br label %69

69:                                               ; preds = %61, %47
  br label %70

70:                                               ; preds = %69, %41
  %71 = load i64, i64* %9, align 8
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %70, %37, %19
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local %struct.iio_ring_buffer* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @strict_strtoul(i8*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
