; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/virtio/extr_virtio_balloon.c_stats_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/virtio/extr_virtio_balloon.c_stats_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i32 }
%struct.virtio_balloon = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtqueue*)* @stats_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stats_request(%struct.virtqueue* %0) #0 {
  %2 = alloca %struct.virtqueue*, align 8
  %3 = alloca %struct.virtio_balloon*, align 8
  %4 = alloca i32, align 4
  store %struct.virtqueue* %0, %struct.virtqueue** %2, align 8
  %5 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %6 = call %struct.virtio_balloon* @virtqueue_get_buf(%struct.virtqueue* %5, i32* %4)
  store %struct.virtio_balloon* %6, %struct.virtio_balloon** %3, align 8
  %7 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %8 = icmp ne %struct.virtio_balloon* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %16

10:                                               ; preds = %1
  %11 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %12 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %14 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %13, i32 0, i32 1
  %15 = call i32 @wake_up(i32* %14)
  br label %16

16:                                               ; preds = %10, %9
  ret void
}

declare dso_local %struct.virtio_balloon* @virtqueue_get_buf(%struct.virtqueue*, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
