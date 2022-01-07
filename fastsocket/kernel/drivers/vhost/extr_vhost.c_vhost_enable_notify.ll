; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_vhost.c_vhost_enable_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_vhost.c_vhost_enable_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_dev = type { i32 }
%struct.vhost_virtqueue = type { i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@VRING_USED_F_NO_NOTIFY = common dso_local global i32 0, align 4
@VIRTIO_RING_F_EVENT_IDX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to enable notification at %p: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Failed to update avail event index at %p: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to check avail idx at %p: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vhost_enable_notify(%struct.vhost_dev* %0, %struct.vhost_virtqueue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vhost_dev*, align 8
  %5 = alloca %struct.vhost_virtqueue*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.vhost_dev* %0, %struct.vhost_dev** %4, align 8
  store %struct.vhost_virtqueue* %1, %struct.vhost_virtqueue** %5, align 8
  %8 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %9 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @VRING_USED_F_NO_NOTIFY, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %80

15:                                               ; preds = %2
  %16 = load i32, i32* @VRING_USED_F_NO_NOTIFY, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %19 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load %struct.vhost_dev*, %struct.vhost_dev** %4, align 8
  %23 = load i32, i32* @VIRTIO_RING_F_EVENT_IDX, align 4
  %24 = call i32 @vhost_has_feature(%struct.vhost_dev* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %15
  %27 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %28 = call i32 @vhost_update_used_flags(%struct.vhost_virtqueue* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %33 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %34 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %33, i32 0, i32 3
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @vq_err(%struct.vhost_virtqueue* %32, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32* %36, i32 %37)
  store i32 0, i32* %3, align 4
  br label %80

39:                                               ; preds = %26
  br label %55

40:                                               ; preds = %15
  %41 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %42 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %43 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @vhost_update_avail_event(%struct.vhost_virtqueue* %41, i64 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %50 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %51 = call i32* @vhost_avail_event(%struct.vhost_virtqueue* %50)
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @vq_err(%struct.vhost_virtqueue* %49, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32* %51, i32 %52)
  store i32 0, i32* %3, align 4
  br label %80

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %54, %39
  %56 = call i32 (...) @smp_mb()
  %57 = load i64, i64* %6, align 8
  %58 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %59 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %58, i32 0, i32 2
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = call i32 @__get_user(i64 %57, i32* %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %55
  %66 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %67 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %68 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %67, i32 0, i32 2
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @vq_err(%struct.vhost_virtqueue* %66, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32* %70, i32 %71)
  store i32 0, i32* %3, align 4
  br label %80

73:                                               ; preds = %55
  %74 = load i64, i64* %6, align 8
  %75 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %76 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %74, %77
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %73, %65, %48, %31, %14
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @vhost_has_feature(%struct.vhost_dev*, i32) #1

declare dso_local i32 @vhost_update_used_flags(%struct.vhost_virtqueue*) #1

declare dso_local i32 @vq_err(%struct.vhost_virtqueue*, i8*, i32*, i32) #1

declare dso_local i32 @vhost_update_avail_event(%struct.vhost_virtqueue*, i64) #1

declare dso_local i32* @vhost_avail_event(%struct.vhost_virtqueue*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @__get_user(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
