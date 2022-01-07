; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/adc/extr_max1363_ring.c_max1363_register_ring_funcs_and_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/adc/extr_max1363_ring.c_max1363_register_ring_funcs_and_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { %struct.TYPE_9__*, i32, %struct.TYPE_8__*, %struct.max1363_state* }
%struct.TYPE_9__ = type { i32*, i32*, i32* }
%struct.TYPE_8__ = type { %struct.iio_dev*, i32* }
%struct.max1363_state = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@max1363_poll_func_th = common dso_local global i32 0, align 4
@max1363_ring_postenable = common dso_local global i32 0, align 4
@max1363_ring_preenable = common dso_local global i32 0, align 4
@max1363_ring_predisable = common dso_local global i32 0, align 4
@max1363_poll_bh_to_ring = common dso_local global i32 0, align 4
@INDIO_RING_TRIGGERED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @max1363_register_ring_funcs_and_init(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.max1363_state*, align 8
  %5 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %6 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %7 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %6, i32 0, i32 3
  %8 = load %struct.max1363_state*, %struct.max1363_state** %7, align 8
  store %struct.max1363_state* %8, %struct.max1363_state** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %10 = call %struct.TYPE_9__* @iio_sw_rb_allocate(%struct.iio_dev* %9)
  %11 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %12 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %11, i32 0, i32 0
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %12, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %14 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = icmp ne %struct.TYPE_9__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %74

20:                                               ; preds = %1
  %21 = load %struct.max1363_state*, %struct.max1363_state** %4, align 8
  %22 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %21, i32 0, i32 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = call i32 @iio_ring_sw_register_funcs(i32* %26)
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.TYPE_8__* @kzalloc(i32 16, i32 %28)
  %30 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %31 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %30, i32 0, i32 2
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %31, align 8
  %32 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %33 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %32, i32 0, i32 2
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = icmp eq %struct.TYPE_8__* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %20
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %69

39:                                               ; preds = %20
  %40 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %41 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %40, i32 0, i32 2
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  store i32* @max1363_poll_func_th, i32** %43, align 8
  %44 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %45 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %46 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %45, i32 0, i32 2
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store %struct.iio_dev* %44, %struct.iio_dev** %48, align 8
  %49 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %50 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %49, i32 0, i32 0
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  store i32* @max1363_ring_postenable, i32** %52, align 8
  %53 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 0
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  store i32* @max1363_ring_preenable, i32** %56, align 8
  %57 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %58 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %57, i32 0, i32 0
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  store i32* @max1363_ring_predisable, i32** %60, align 8
  %61 = load %struct.max1363_state*, %struct.max1363_state** %4, align 8
  %62 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %61, i32 0, i32 0
  %63 = call i32 @INIT_WORK(i32* %62, i32* @max1363_poll_bh_to_ring)
  %64 = load i32, i32* @INDIO_RING_TRIGGERED, align 4
  %65 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %66 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  store i32 0, i32* %2, align 4
  br label %76

69:                                               ; preds = %36
  %70 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %71 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %70, i32 0, i32 0
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = call i32 @iio_sw_rb_free(%struct.TYPE_9__* %72)
  br label %74

74:                                               ; preds = %69, %17
  %75 = load i32, i32* %5, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %74, %39
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.TYPE_9__* @iio_sw_rb_allocate(%struct.iio_dev*) #1

declare dso_local i32 @iio_ring_sw_register_funcs(i32*) #1

declare dso_local %struct.TYPE_8__* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32*) #1

declare dso_local i32 @iio_sw_rb_free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
