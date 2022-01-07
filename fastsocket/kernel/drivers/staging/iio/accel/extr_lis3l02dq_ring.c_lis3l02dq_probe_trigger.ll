; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_lis3l02dq_ring.c_lis3l02dq_probe_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_lis3l02dq_ring.c_lis3l02dq_probe_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, %struct.lis3l02dq_state* }
%struct.lis3l02dq_state = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64, i32*, i32*, i32*, %struct.lis3l02dq_state*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_7__ = type { i32 }

@IIO_TRIGGER_NAME_LENGTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"lis3l02dq-dev%d\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@lis3l02dq_data_rdy_trigger_set_state = common dso_local global i32 0, align 4
@lis3l02dq_trig_try_reen = common dso_local global i32 0, align 4
@lis3l02dq_trigger_attr_group = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lis3l02dq_probe_trigger(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lis3l02dq_state*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %6 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %7 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %6, i32 0, i32 1
  %8 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %7, align 8
  store %struct.lis3l02dq_state* %8, %struct.lis3l02dq_state** %5, align 8
  %9 = call %struct.TYPE_8__* (...) @iio_allocate_trigger()
  %10 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %5, align 8
  %11 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %10, i32 0, i32 0
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %11, align 8
  %12 = load i32, i32* @IIO_TRIGGER_NAME_LENGTH, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i64 @kmalloc(i32 %12, i32 %13)
  %15 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %5, align 8
  %16 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store i64 %14, i64* %18, align 8
  %19 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %5, align 8
  %20 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %86

28:                                               ; preds = %1
  %29 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %5, align 8
  %30 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = load i32, i32* @IIO_TRIGGER_NAME_LENGTH, align 4
  %36 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %37 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @snprintf(i8* %34, i32 %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %5, align 8
  %41 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %40, i32 0, i32 1
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %5, align 8
  %45 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 6
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i32* %43, i32** %48, align 8
  %49 = load i32, i32* @THIS_MODULE, align 4
  %50 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %5, align 8
  %51 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 5
  store i32 %49, i32* %53, align 8
  %54 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %5, align 8
  %55 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %5, align 8
  %56 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 4
  store %struct.lis3l02dq_state* %54, %struct.lis3l02dq_state** %58, align 8
  %59 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %5, align 8
  %60 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 3
  store i32* @lis3l02dq_data_rdy_trigger_set_state, i32** %62, align 8
  %63 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %5, align 8
  %64 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  store i32* @lis3l02dq_trig_try_reen, i32** %66, align 8
  %67 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %5, align 8
  %68 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %67, i32 0, i32 0
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  store i32* @lis3l02dq_trigger_attr_group, i32** %70, align 8
  %71 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %5, align 8
  %72 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %71, i32 0, i32 0
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = call i32 @iio_trigger_register(%struct.TYPE_8__* %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %28
  br label %79

78:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %92

79:                                               ; preds = %77
  %80 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %5, align 8
  %81 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %80, i32 0, i32 0
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @kfree(i64 %84)
  br label %86

86:                                               ; preds = %79, %25
  %87 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %5, align 8
  %88 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %87, i32 0, i32 0
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = call i32 @iio_free_trigger(%struct.TYPE_8__* %89)
  %91 = load i32, i32* %4, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %86, %78
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.TYPE_8__* @iio_allocate_trigger(...) #1

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @iio_trigger_register(%struct.TYPE_8__*) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @iio_free_trigger(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
