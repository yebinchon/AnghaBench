; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_vhost.c_vhost_disable_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_vhost.c_vhost_disable_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_dev = type { i32 }
%struct.vhost_virtqueue = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@VRING_USED_F_NO_NOTIFY = common dso_local global i32 0, align 4
@VIRTIO_RING_F_EVENT_IDX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to enable notification at %p: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vhost_disable_notify(%struct.vhost_dev* %0, %struct.vhost_virtqueue* %1) #0 {
  %3 = alloca %struct.vhost_dev*, align 8
  %4 = alloca %struct.vhost_virtqueue*, align 8
  %5 = alloca i32, align 4
  store %struct.vhost_dev* %0, %struct.vhost_dev** %3, align 8
  store %struct.vhost_virtqueue* %1, %struct.vhost_virtqueue** %4, align 8
  %6 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %7 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @VRING_USED_F_NO_NOTIFY, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %37

13:                                               ; preds = %2
  %14 = load i32, i32* @VRING_USED_F_NO_NOTIFY, align 4
  %15 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %16 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %20 = load i32, i32* @VIRTIO_RING_F_EVENT_IDX, align 4
  %21 = call i32 @vhost_has_feature(%struct.vhost_dev* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %13
  %24 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %25 = call i32 @vhost_update_used_flags(%struct.vhost_virtqueue* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %30 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %31 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @vq_err(%struct.vhost_virtqueue* %29, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32* %33, i32 %34)
  br label %36

36:                                               ; preds = %28, %23
  br label %37

37:                                               ; preds = %12, %36, %13
  ret void
}

declare dso_local i32 @vhost_has_feature(%struct.vhost_dev*, i32) #1

declare dso_local i32 @vhost_update_used_flags(%struct.vhost_virtqueue*) #1

declare dso_local i32 @vq_err(%struct.vhost_virtqueue*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
