; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_industrialio-core.c_iio_remove_event_from_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_industrialio-core.c_iio_remove_event_from_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_event_handler_list = type { i64, i32, i32 }
%struct.list_head = type { i32 }
%struct.iio_interrupt = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iio_remove_event_from_list(%struct.iio_event_handler_list* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.iio_event_handler_list*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.iio_interrupt*, align 8
  store %struct.iio_event_handler_list* %0, %struct.iio_event_handler_list** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %7 = load %struct.list_head*, %struct.list_head** %4, align 8
  %8 = call %struct.iio_interrupt* @to_iio_interrupt(%struct.list_head* %7)
  store %struct.iio_interrupt* %8, %struct.iio_interrupt** %6, align 8
  %9 = load %struct.iio_event_handler_list*, %struct.iio_event_handler_list** %3, align 8
  %10 = getelementptr inbounds %struct.iio_event_handler_list, %struct.iio_event_handler_list* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.iio_event_handler_list*, %struct.iio_event_handler_list** %3, align 8
  %13 = getelementptr inbounds %struct.iio_event_handler_list, %struct.iio_event_handler_list* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, -1
  store i64 %15, i64* %13, align 8
  %16 = load %struct.iio_event_handler_list*, %struct.iio_event_handler_list** %3, align 8
  %17 = getelementptr inbounds %struct.iio_event_handler_list, %struct.iio_event_handler_list* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %2
  %21 = load %struct.iio_interrupt*, %struct.iio_interrupt** %6, align 8
  %22 = getelementptr inbounds %struct.iio_interrupt, %struct.iio_interrupt* %21, i32 0, i32 0
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.iio_event_handler_list*, %struct.iio_event_handler_list** %3, align 8
  %26 = getelementptr inbounds %struct.iio_event_handler_list, %struct.iio_event_handler_list* %25, i32 0, i32 2
  %27 = call i32 @list_del_init(i32* %26)
  %28 = load %struct.iio_interrupt*, %struct.iio_interrupt** %6, align 8
  %29 = getelementptr inbounds %struct.iio_interrupt, %struct.iio_interrupt* %28, i32 0, i32 0
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  br label %32

32:                                               ; preds = %20, %2
  %33 = load %struct.iio_event_handler_list*, %struct.iio_event_handler_list** %3, align 8
  %34 = getelementptr inbounds %struct.iio_event_handler_list, %struct.iio_event_handler_list* %33, i32 0, i32 1
  %35 = call i32 @mutex_unlock(i32* %34)
  ret void
}

declare dso_local %struct.iio_interrupt* @to_iio_interrupt(%struct.list_head*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
