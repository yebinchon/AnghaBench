; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_sca3000_ring.c_sca3000_rip_hw_rb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_sca3000_ring.c_sca3000_rip_hw_rb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_ring_buffer = type { i32 }
%struct.iio_hw_ring_buffer = type { %struct.iio_dev* }
%struct.iio_dev = type { %struct.sca3000_state* }
%struct.sca3000_state = type { i32, i32 }

@SCA3000_REG_ADDR_BUF_COUNT = common dso_local global i32 0, align 4
@SCA3000_REG_ADDR_RING_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_ring_buffer*, i64, i32**, i32*)* @sca3000_rip_hw_rb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sca3000_rip_hw_rb(%struct.iio_ring_buffer* %0, i64 %1, i32** %2, i32* %3) #0 {
  %5 = alloca %struct.iio_ring_buffer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.iio_hw_ring_buffer*, align 8
  %10 = alloca %struct.iio_dev*, align 8
  %11 = alloca %struct.sca3000_state*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.iio_ring_buffer* %0, %struct.iio_ring_buffer** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32* %3, i32** %8, align 8
  %17 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %5, align 8
  %18 = call %struct.iio_hw_ring_buffer* @iio_to_hw_ring_buf(%struct.iio_ring_buffer* %17)
  store %struct.iio_hw_ring_buffer* %18, %struct.iio_hw_ring_buffer** %9, align 8
  %19 = load %struct.iio_hw_ring_buffer*, %struct.iio_hw_ring_buffer** %9, align 8
  %20 = getelementptr inbounds %struct.iio_hw_ring_buffer, %struct.iio_hw_ring_buffer* %19, i32 0, i32 0
  %21 = load %struct.iio_dev*, %struct.iio_dev** %20, align 8
  store %struct.iio_dev* %21, %struct.iio_dev** %10, align 8
  %22 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %23 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %22, i32 0, i32 0
  %24 = load %struct.sca3000_state*, %struct.sca3000_state** %23, align 8
  store %struct.sca3000_state* %24, %struct.sca3000_state** %11, align 8
  store i32 0, i32* %15, align 4
  store i32 1, i32* %16, align 4
  %25 = load %struct.sca3000_state*, %struct.sca3000_state** %11, align 8
  %26 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 11
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  store i32 2, i32* %16, align 4
  br label %30

30:                                               ; preds = %29, %4
  %31 = load %struct.sca3000_state*, %struct.sca3000_state** %11, align 8
  %32 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %31, i32 0, i32 1
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.sca3000_state*, %struct.sca3000_state** %11, align 8
  %35 = load i32, i32* @SCA3000_REG_ADDR_BUF_COUNT, align 4
  %36 = call i32 @sca3000_read_data(%struct.sca3000_state* %34, i32 %35, i32** %12, i32 1)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %72

40:                                               ; preds = %30
  %41 = load i32*, i32** %12, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %14, align 4
  br label %44

44:                                               ; preds = %40
  %45 = load i32*, i32** %12, align 8
  %46 = call i32 @kfree(i32* %45)
  %47 = load i64, i64* %6, align 8
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %16, align 4
  %50 = mul nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = icmp ugt i64 %47, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %44
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %16, align 4
  %56 = mul nsw i32 %54, %55
  store i32 %56, i32* %15, align 4
  br label %65

57:                                               ; preds = %44
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load i32, i32* %16, align 4
  %61 = sext i32 %60 to i64
  %62 = urem i64 %59, %61
  %63 = sub i64 %58, %62
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %15, align 4
  br label %65

65:                                               ; preds = %57, %53
  %66 = load i32*, i32** %8, align 8
  store i32 1, i32* %66, align 4
  %67 = load %struct.sca3000_state*, %struct.sca3000_state** %11, align 8
  %68 = load i32, i32* @SCA3000_REG_ADDR_RING_OUT, align 4
  %69 = load i32**, i32*** %7, align 8
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @sca3000_read_data(%struct.sca3000_state* %67, i32 %68, i32** %69, i32 %70)
  store i32 %71, i32* %13, align 4
  br label %72

72:                                               ; preds = %65, %39
  %73 = load %struct.sca3000_state*, %struct.sca3000_state** %11, align 8
  %74 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %73, i32 0, i32 1
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* %13, align 4
  br label %82

80:                                               ; preds = %72
  %81 = load i32, i32* %15, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  ret i32 %83
}

declare dso_local %struct.iio_hw_ring_buffer* @iio_to_hw_ring_buf(%struct.iio_ring_buffer*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sca3000_read_data(%struct.sca3000_state*, i32, i32**, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
