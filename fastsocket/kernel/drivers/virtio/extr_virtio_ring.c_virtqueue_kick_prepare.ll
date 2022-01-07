; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/virtio/extr_virtio_ring.c_virtqueue_kick_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/virtio/extr_virtio_ring.c_virtqueue_kick_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i32 }
%struct.vring_virtqueue = type { %struct.TYPE_6__, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@VRING_USED_F_NO_NOTIFY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @virtqueue_kick_prepare(%struct.virtqueue* %0) #0 {
  %2 = alloca %struct.virtqueue*, align 8
  %3 = alloca %struct.vring_virtqueue*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.virtqueue* %0, %struct.virtqueue** %2, align 8
  %7 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %8 = call %struct.vring_virtqueue* @to_vvq(%struct.virtqueue* %7)
  store %struct.vring_virtqueue* %8, %struct.vring_virtqueue** %3, align 8
  %9 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %10 = call i32 @START_USE(%struct.vring_virtqueue* %9)
  %11 = call i32 (...) @virtio_wmb()
  %12 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %13 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %20 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  %23 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %24 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i64 %22, i64* %27, align 8
  store i64 %22, i64* %4, align 8
  %28 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %29 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = call i32 (...) @virtio_mb()
  %31 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %32 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %1
  %36 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %37 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %36, i32 0, i32 0
  %38 = call i32 @vring_avail_event(%struct.TYPE_6__* %37)
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @vring_need_event(i32 %38, i64 %39, i64 %40)
  store i32 %41, i32* %6, align 4
  br label %54

42:                                               ; preds = %1
  %43 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %44 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @VRING_USED_F_NO_NOTIFY, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %42, %35
  %55 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %56 = call i32 @END_USE(%struct.vring_virtqueue* %55)
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local %struct.vring_virtqueue* @to_vvq(%struct.virtqueue*) #1

declare dso_local i32 @START_USE(%struct.vring_virtqueue*) #1

declare dso_local i32 @virtio_wmb(...) #1

declare dso_local i32 @virtio_mb(...) #1

declare dso_local i32 @vring_need_event(i32, i64, i64) #1

declare dso_local i32 @vring_avail_event(%struct.TYPE_6__*) #1

declare dso_local i32 @END_USE(%struct.vring_virtqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
