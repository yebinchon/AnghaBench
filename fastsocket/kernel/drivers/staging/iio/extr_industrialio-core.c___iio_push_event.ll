; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_industrialio-core.c___iio_push_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_industrialio-core.c___iio_push_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_event_interface = type { i64, i64, i32, i32, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.iio_shared_ev_pointer = type { %struct.iio_detected_event_list* }
%struct.iio_detected_event_list = type { i32, %struct.iio_shared_ev_pointer*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@IIO_BUSY_BIT_POS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__iio_push_event(%struct.iio_event_interface* %0, i32 %1, i32 %2, %struct.iio_shared_ev_pointer* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iio_event_interface*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iio_shared_ev_pointer*, align 8
  %10 = alloca %struct.iio_detected_event_list*, align 8
  %11 = alloca i32, align 4
  store %struct.iio_event_interface* %0, %struct.iio_event_interface** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.iio_shared_ev_pointer* %3, %struct.iio_shared_ev_pointer** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.iio_event_interface*, %struct.iio_event_interface** %6, align 8
  %13 = getelementptr inbounds %struct.iio_event_interface, %struct.iio_event_interface* %12, i32 0, i32 2
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load i32, i32* @IIO_BUSY_BIT_POS, align 4
  %16 = load %struct.iio_event_interface*, %struct.iio_event_interface** %6, align 8
  %17 = getelementptr inbounds %struct.iio_event_interface, %struct.iio_event_interface* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i64 @test_bit(i32 %15, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %75

21:                                               ; preds = %4
  %22 = load %struct.iio_event_interface*, %struct.iio_event_interface** %6, align 8
  %23 = getelementptr inbounds %struct.iio_event_interface, %struct.iio_event_interface* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.iio_event_interface*, %struct.iio_event_interface** %6, align 8
  %26 = getelementptr inbounds %struct.iio_event_interface, %struct.iio_event_interface* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %82

30:                                               ; preds = %21
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.iio_detected_event_list* @kmalloc(i32 24, i32 %31)
  store %struct.iio_detected_event_list* %32, %struct.iio_detected_event_list** %10, align 8
  %33 = load %struct.iio_detected_event_list*, %struct.iio_detected_event_list** %10, align 8
  %34 = icmp eq %struct.iio_detected_event_list* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %11, align 4
  br label %80

38:                                               ; preds = %30
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.iio_detected_event_list*, %struct.iio_detected_event_list** %10, align 8
  %41 = getelementptr inbounds %struct.iio_detected_event_list, %struct.iio_detected_event_list* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.iio_detected_event_list*, %struct.iio_detected_event_list** %10, align 8
  %45 = getelementptr inbounds %struct.iio_detected_event_list, %struct.iio_detected_event_list* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load %struct.iio_shared_ev_pointer*, %struct.iio_shared_ev_pointer** %9, align 8
  %48 = load %struct.iio_detected_event_list*, %struct.iio_detected_event_list** %10, align 8
  %49 = getelementptr inbounds %struct.iio_detected_event_list, %struct.iio_detected_event_list* %48, i32 0, i32 1
  store %struct.iio_shared_ev_pointer* %47, %struct.iio_shared_ev_pointer** %49, align 8
  %50 = load %struct.iio_detected_event_list*, %struct.iio_detected_event_list** %10, align 8
  %51 = getelementptr inbounds %struct.iio_detected_event_list, %struct.iio_detected_event_list* %50, i32 0, i32 1
  %52 = load %struct.iio_shared_ev_pointer*, %struct.iio_shared_ev_pointer** %51, align 8
  %53 = icmp ne %struct.iio_shared_ev_pointer* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %38
  %55 = load %struct.iio_detected_event_list*, %struct.iio_detected_event_list** %10, align 8
  %56 = load %struct.iio_shared_ev_pointer*, %struct.iio_shared_ev_pointer** %9, align 8
  %57 = getelementptr inbounds %struct.iio_shared_ev_pointer, %struct.iio_shared_ev_pointer* %56, i32 0, i32 0
  store %struct.iio_detected_event_list* %55, %struct.iio_detected_event_list** %57, align 8
  br label %58

58:                                               ; preds = %54, %38
  %59 = load %struct.iio_detected_event_list*, %struct.iio_detected_event_list** %10, align 8
  %60 = getelementptr inbounds %struct.iio_detected_event_list, %struct.iio_detected_event_list* %59, i32 0, i32 0
  %61 = load %struct.iio_event_interface*, %struct.iio_event_interface** %6, align 8
  %62 = getelementptr inbounds %struct.iio_event_interface, %struct.iio_event_interface* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = call i32 @list_add_tail(i32* %60, i32* %63)
  %65 = load %struct.iio_event_interface*, %struct.iio_event_interface** %6, align 8
  %66 = getelementptr inbounds %struct.iio_event_interface, %struct.iio_event_interface* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %66, align 8
  %69 = load %struct.iio_event_interface*, %struct.iio_event_interface** %6, align 8
  %70 = getelementptr inbounds %struct.iio_event_interface, %struct.iio_event_interface* %69, i32 0, i32 2
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load %struct.iio_event_interface*, %struct.iio_event_interface** %6, align 8
  %73 = getelementptr inbounds %struct.iio_event_interface, %struct.iio_event_interface* %72, i32 0, i32 3
  %74 = call i32 @wake_up_interruptible(i32* %73)
  br label %79

75:                                               ; preds = %4
  %76 = load %struct.iio_event_interface*, %struct.iio_event_interface** %6, align 8
  %77 = getelementptr inbounds %struct.iio_event_interface, %struct.iio_event_interface* %76, i32 0, i32 2
  %78 = call i32 @mutex_unlock(i32* %77)
  br label %79

79:                                               ; preds = %75, %58
  br label %80

80:                                               ; preds = %79, %35
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %80, %29
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.iio_detected_event_list* @kmalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
