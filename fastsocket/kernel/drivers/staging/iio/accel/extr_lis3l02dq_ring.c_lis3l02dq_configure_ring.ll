; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_lis3l02dq_ring.c_lis3l02dq_configure_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_lis3l02dq_ring.c_lis3l02dq_configure_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.iio_dev = type { i32, %struct.iio_ring_buffer*, i32, %struct.TYPE_5__*, i32*, %struct.lis3l02dq_state* }
%struct.iio_ring_buffer = type { i32, i32*, i32*, i32*, i32 }
%struct.TYPE_5__ = type { %struct.iio_dev*, i32* }
%struct.lis3l02dq_state = type { i32 }

@lis3l02dq_trigger_bh_to_ring = common dso_local global i32 0, align 4
@iio_scan_el_accel_x = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@iio_scan_el_accel_y = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@iio_scan_el_accel_z = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@lis3l02dq_scan_el_group = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lis3l02dq_data_rdy_ring_preenable = common dso_local global i32 0, align 4
@lis3l02dq_data_rdy_ring_postenable = common dso_local global i32 0, align 4
@lis3l02dq_data_rdy_ring_predisable = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@lis3l02dq_poll_func_th = common dso_local global i32 0, align 4
@INDIO_RING_TRIGGERED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lis3l02dq_configure_ring(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lis3l02dq_state*, align 8
  %6 = alloca %struct.iio_ring_buffer*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %7, i32 0, i32 5
  %9 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %8, align 8
  store %struct.lis3l02dq_state* %9, %struct.lis3l02dq_state** %5, align 8
  %10 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %5, align 8
  %11 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %10, i32 0, i32 0
  %12 = load i32, i32* @lis3l02dq_trigger_bh_to_ring, align 4
  %13 = call i32 @INIT_WORK(i32* %11, i32 %12)
  %14 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @iio_scan_el_accel_x, i32 0, i32 0), align 4
  %16 = call i32 @iio_scan_mask_set(%struct.iio_dev* %14, i32 %15)
  %17 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @iio_scan_el_accel_y, i32 0, i32 0), align 4
  %19 = call i32 @iio_scan_mask_set(%struct.iio_dev* %17, i32 %18)
  %20 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @iio_scan_el_accel_z, i32 0, i32 0), align 4
  %22 = call i32 @iio_scan_mask_set(%struct.iio_dev* %20, i32 %21)
  %23 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %24 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %26 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %25, i32 0, i32 4
  store i32* @lis3l02dq_scan_el_group, i32** %26, align 8
  %27 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %28 = call %struct.iio_ring_buffer* @iio_sw_rb_allocate(%struct.iio_dev* %27)
  store %struct.iio_ring_buffer* %28, %struct.iio_ring_buffer** %6, align 8
  %29 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %6, align 8
  %30 = icmp ne %struct.iio_ring_buffer* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %1
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %83

35:                                               ; preds = %1
  %36 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %6, align 8
  %37 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %38 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %37, i32 0, i32 1
  store %struct.iio_ring_buffer* %36, %struct.iio_ring_buffer** %38, align 8
  %39 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %6, align 8
  %40 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %39, i32 0, i32 4
  %41 = call i32 @iio_ring_sw_register_funcs(i32* %40)
  %42 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %6, align 8
  %43 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %42, i32 0, i32 3
  store i32* @lis3l02dq_data_rdy_ring_preenable, i32** %43, align 8
  %44 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %6, align 8
  %45 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %44, i32 0, i32 2
  store i32* @lis3l02dq_data_rdy_ring_postenable, i32** %45, align 8
  %46 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %6, align 8
  %47 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %46, i32 0, i32 1
  store i32* @lis3l02dq_data_rdy_ring_predisable, i32** %47, align 8
  %48 = load i32, i32* @THIS_MODULE, align 4
  %49 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %6, align 8
  %50 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call %struct.TYPE_5__* @kzalloc(i32 16, i32 %51)
  %53 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 3
  store %struct.TYPE_5__* %52, %struct.TYPE_5__** %54, align 8
  %55 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %56 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %55, i32 0, i32 3
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = icmp eq %struct.TYPE_5__* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %35
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %77

62:                                               ; preds = %35
  %63 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %64 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %63, i32 0, i32 3
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  store i32* @lis3l02dq_poll_func_th, i32** %66, align 8
  %67 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %68 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %69 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %68, i32 0, i32 3
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store %struct.iio_dev* %67, %struct.iio_dev** %71, align 8
  %72 = load i32, i32* @INDIO_RING_TRIGGERED, align 4
  %73 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %74 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  store i32 0, i32* %2, align 4
  br label %83

77:                                               ; preds = %59
  %78 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %79 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %78, i32 0, i32 1
  %80 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %79, align 8
  %81 = call i32 @iio_sw_rb_free(%struct.iio_ring_buffer* %80)
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %77, %62, %31
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @iio_scan_mask_set(%struct.iio_dev*, i32) #1

declare dso_local %struct.iio_ring_buffer* @iio_sw_rb_allocate(%struct.iio_dev*) #1

declare dso_local i32 @iio_ring_sw_register_funcs(i32*) #1

declare dso_local %struct.TYPE_5__* @kzalloc(i32, i32) #1

declare dso_local i32 @iio_sw_rb_free(%struct.iio_ring_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
