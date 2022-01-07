; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_industrialio-trigger.c_iio_trigger_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_industrialio-trigger.c_iio_trigger_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_trigger = type { i32, i32, i64 }

@.str = private unnamed_addr constant [11 x i8] c"trigger%ld\00", align 1
@iio_trigger_list_lock = common dso_local global i32 0, align 4
@iio_trigger_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iio_trigger_register(%struct.iio_trigger* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_trigger*, align 8
  %4 = alloca i32, align 4
  store %struct.iio_trigger* %0, %struct.iio_trigger** %3, align 8
  %5 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  %6 = call i32 @iio_trigger_register_id(%struct.iio_trigger* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %42

10:                                               ; preds = %1
  %11 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  %12 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %11, i32 0, i32 0
  %13 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  %14 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @dev_set_name(i32* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  %18 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %17, i32 0, i32 0
  %19 = call i32 @device_add(i32* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %10
  br label %39

23:                                               ; preds = %10
  %24 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  %25 = call i32 @iio_trigger_register_sysfs(%struct.iio_trigger* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %35

29:                                               ; preds = %23
  %30 = call i32 @mutex_lock(i32* @iio_trigger_list_lock)
  %31 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  %32 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %31, i32 0, i32 1
  %33 = call i32 @list_add_tail(i32* %32, i32* @iio_trigger_list)
  %34 = call i32 @mutex_unlock(i32* @iio_trigger_list_lock)
  store i32 0, i32* %2, align 4
  br label %44

35:                                               ; preds = %28
  %36 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  %37 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %36, i32 0, i32 0
  %38 = call i32 @device_del(i32* %37)
  br label %39

39:                                               ; preds = %35, %22
  %40 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  %41 = call i32 @iio_trigger_unregister_id(%struct.iio_trigger* %40)
  br label %42

42:                                               ; preds = %39, %9
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %29
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @iio_trigger_register_id(%struct.iio_trigger*) #1

declare dso_local i32 @dev_set_name(i32*, i8*, i64) #1

declare dso_local i32 @device_add(i32*) #1

declare dso_local i32 @iio_trigger_register_sysfs(%struct.iio_trigger*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @device_del(i32*) #1

declare dso_local i32 @iio_trigger_unregister_id(%struct.iio_trigger*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
