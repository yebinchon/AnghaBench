; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_industrialio-ring.c_iio_ring_rip_outer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_industrialio-ring.c_iio_ring_rip_outer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.iio_ring_buffer* }
%struct.iio_ring_buffer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.iio_ring_buffer.0*, i64, i32**, i32*)* }
%struct.iio_ring_buffer.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iio_ring_rip_outer(%struct.file* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.iio_ring_buffer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.file*, %struct.file** %6, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %16, align 8
  store %struct.iio_ring_buffer* %17, %struct.iio_ring_buffer** %10, align 8
  %18 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %10, align 8
  %19 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.iio_ring_buffer.0*, i64, i32**, i32*)*, i32 (%struct.iio_ring_buffer.0*, i64, i32**, i32*)** %20, align 8
  %22 = icmp ne i32 (%struct.iio_ring_buffer.0*, i64, i32**, i32*)* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %60

26:                                               ; preds = %4
  %27 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %10, align 8
  %28 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.iio_ring_buffer.0*, i64, i32**, i32*)*, i32 (%struct.iio_ring_buffer.0*, i64, i32**, i32*)** %29, align 8
  %31 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %10, align 8
  %32 = bitcast %struct.iio_ring_buffer* %31 to %struct.iio_ring_buffer.0*
  %33 = load i64, i64* %8, align 8
  %34 = call i32 %30(%struct.iio_ring_buffer.0* %32, i64 %33, i32** %14, i32* %12)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %11, align 4
  br label %58

39:                                               ; preds = %26
  %40 = load i8*, i8** %7, align 8
  %41 = load i32*, i32** %14, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %13, align 4
  %46 = call i64 @copy_to_user(i8* %40, i32* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32, i32* @EFAULT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %11, align 4
  br label %55

51:                                               ; preds = %39
  %52 = load i32*, i32** %14, align 8
  %53 = call i32 @kfree(i32* %52)
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %5, align 4
  br label %60

55:                                               ; preds = %48
  %56 = load i32*, i32** %14, align 8
  %57 = call i32 @kfree(i32* %56)
  br label %58

58:                                               ; preds = %55, %37
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %58, %51, %23
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i64 @copy_to_user(i8*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
