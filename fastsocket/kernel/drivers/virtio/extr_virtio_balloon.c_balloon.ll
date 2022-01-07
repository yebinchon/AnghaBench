; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/virtio/extr_virtio_balloon.c_balloon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/virtio/extr_virtio_balloon.c_balloon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_balloon = type { i64, i32 }

@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @balloon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @balloon(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.virtio_balloon*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.virtio_balloon*
  store %struct.virtio_balloon* %6, %struct.virtio_balloon** %3, align 8
  %7 = call i32 (...) @set_freezable()
  br label %8

8:                                                ; preds = %59, %1
  %9 = call i64 (...) @kthread_should_stop()
  %10 = icmp ne i64 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %62

12:                                               ; preds = %8
  %13 = call i32 (...) @try_to_freeze()
  %14 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %15 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %18 = call i32 @towards_target(%struct.virtio_balloon* %17)
  store i32 %18, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %12
  %21 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %22 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %20
  %26 = call i64 (...) @kthread_should_stop()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @current, align 4
  %30 = call i64 @freezing(i32 %29)
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %28, %25, %20, %12
  %33 = phi i1 [ true, %25 ], [ true, %20 ], [ true, %12 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @wait_event_interruptible(i32 %16, i32 %34)
  %36 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %37 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %42 = call i32 @stats_handle_request(%struct.virtio_balloon* %41)
  br label %43

43:                                               ; preds = %40, %32
  %44 = load i32, i32* %4, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @fill_balloon(%struct.virtio_balloon* %47, i32 %48)
  br label %59

50:                                               ; preds = %43
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sub nsw i32 0, %55
  %57 = call i32 @leak_balloon(%struct.virtio_balloon* %54, i32 %56)
  br label %58

58:                                               ; preds = %53, %50
  br label %59

59:                                               ; preds = %58, %46
  %60 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %61 = call i32 @update_balloon_size(%struct.virtio_balloon* %60)
  br label %8

62:                                               ; preds = %8
  ret i32 0
}

declare dso_local i32 @set_freezable(...) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @try_to_freeze(...) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @towards_target(%struct.virtio_balloon*) #1

declare dso_local i64 @freezing(i32) #1

declare dso_local i32 @stats_handle_request(%struct.virtio_balloon*) #1

declare dso_local i32 @fill_balloon(%struct.virtio_balloon*, i32) #1

declare dso_local i32 @leak_balloon(%struct.virtio_balloon*, i32) #1

declare dso_local i32 @update_balloon_size(%struct.virtio_balloon*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
