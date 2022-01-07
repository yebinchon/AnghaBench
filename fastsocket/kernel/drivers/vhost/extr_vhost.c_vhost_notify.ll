; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_vhost.c_vhost_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_vhost.c_vhost_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_dev = type { i32 }
%struct.vhost_virtqueue = type { i64, i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@VIRTIO_F_NOTIFY_ON_EMPTY = common dso_local global i32 0, align 4
@VIRTIO_RING_F_EVENT_IDX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Failed to get flags\00", align 1
@VRING_AVAIL_F_NO_INTERRUPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to get used event idx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vhost_dev*, %struct.vhost_virtqueue*)* @vhost_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhost_notify(%struct.vhost_dev* %0, %struct.vhost_virtqueue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vhost_dev*, align 8
  %5 = alloca %struct.vhost_virtqueue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vhost_dev* %0, %struct.vhost_dev** %4, align 8
  store %struct.vhost_virtqueue* %1, %struct.vhost_virtqueue** %5, align 8
  %11 = call i32 (...) @smp_mb()
  %12 = load %struct.vhost_dev*, %struct.vhost_dev** %4, align 8
  %13 = load i32, i32* @VIRTIO_F_NOTIFY_ON_EMPTY, align 4
  %14 = call i64 @vhost_has_feature(%struct.vhost_dev* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %18 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %21 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %86

28:                                               ; preds = %16, %2
  %29 = load %struct.vhost_dev*, %struct.vhost_dev** %4, align 8
  %30 = load i32, i32* @VIRTIO_RING_F_EVENT_IDX, align 4
  %31 = call i64 @vhost_has_feature(%struct.vhost_dev* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %51, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %36 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %35, i32 0, i32 5
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i64 @__get_user(i32 %34, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %43 = call i32 @vq_err(%struct.vhost_virtqueue* %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %86

44:                                               ; preds = %33
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @VRING_AVAIL_F_NO_INTERRUPT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %3, align 4
  br label %86

51:                                               ; preds = %28
  %52 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %53 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %6, align 4
  %55 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %56 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %9, align 4
  %58 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %59 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %62 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  store i32 %60, i32* %7, align 4
  %63 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %64 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %63, i32 0, i32 3
  store i32 1, i32* %64, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %51
  store i32 1, i32* %3, align 4
  br label %86

72:                                               ; preds = %51
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %75 = call i32 @vhost_used_event(%struct.vhost_virtqueue* %74)
  %76 = call i64 @get_user(i32 %73, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %80 = call i32 @vq_err(%struct.vhost_virtqueue* %79, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %86

81:                                               ; preds = %72
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @vring_need_event(i32 %82, i32 %83, i32 %84)
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %81, %78, %71, %44, %41, %27
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @vhost_has_feature(%struct.vhost_dev*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @__get_user(i32, i32*) #1

declare dso_local i32 @vq_err(%struct.vhost_virtqueue*, i8*) #1

declare dso_local i64 @get_user(i32, i32) #1

declare dso_local i32 @vhost_used_event(%struct.vhost_virtqueue*) #1

declare dso_local i32 @vring_need_event(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
