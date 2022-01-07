; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/virtio/extr_virtio_balloon.c_virtballoon_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/virtio/extr_virtio_balloon.c_virtballoon_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { %struct.TYPE_2__*, %struct.virtio_balloon* }
%struct.TYPE_2__ = type { {}* }
%struct.virtio_balloon = type { i32, i32, i64, %struct.virtio_device*, i32, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@balloon = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"vballoon\00", align 1
@VIRTIO_BALLOON_F_MUST_TELL_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_device*)* @virtballoon_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtballoon_probe(%struct.virtio_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.virtio_device*, align 8
  %4 = alloca %struct.virtio_balloon*, align 8
  %5 = alloca i32, align 4
  store %struct.virtio_device* %0, %struct.virtio_device** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.virtio_balloon* @kmalloc(i32 48, i32 %6)
  store %struct.virtio_balloon* %7, %struct.virtio_balloon** %4, align 8
  %8 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %9 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %8, i32 0, i32 1
  store %struct.virtio_balloon* %7, %struct.virtio_balloon** %9, align 8
  %10 = load %struct.virtio_balloon*, %struct.virtio_balloon** %4, align 8
  %11 = icmp ne %struct.virtio_balloon* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  br label %68

15:                                               ; preds = %1
  %16 = load %struct.virtio_balloon*, %struct.virtio_balloon** %4, align 8
  %17 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %16, i32 0, i32 6
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.virtio_balloon*, %struct.virtio_balloon** %4, align 8
  %20 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %19, i32 0, i32 5
  store i64 0, i64* %20, align 8
  %21 = load %struct.virtio_balloon*, %struct.virtio_balloon** %4, align 8
  %22 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %21, i32 0, i32 4
  %23 = call i32 @init_waitqueue_head(i32* %22)
  %24 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %25 = load %struct.virtio_balloon*, %struct.virtio_balloon** %4, align 8
  %26 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %25, i32 0, i32 3
  store %struct.virtio_device* %24, %struct.virtio_device** %26, align 8
  %27 = load %struct.virtio_balloon*, %struct.virtio_balloon** %4, align 8
  %28 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.virtio_balloon*, %struct.virtio_balloon** %4, align 8
  %30 = call i32 @init_vqs(%struct.virtio_balloon* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %15
  br label %65

34:                                               ; preds = %15
  %35 = load i32, i32* @balloon, align 4
  %36 = load %struct.virtio_balloon*, %struct.virtio_balloon** %4, align 8
  %37 = call i32 @kthread_run(i32 %35, %struct.virtio_balloon* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.virtio_balloon*, %struct.virtio_balloon** %4, align 8
  %39 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.virtio_balloon*, %struct.virtio_balloon** %4, align 8
  %41 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @IS_ERR(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %34
  %46 = load %struct.virtio_balloon*, %struct.virtio_balloon** %4, align 8
  %47 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @PTR_ERR(i32 %48)
  store i32 %49, i32* %5, align 4
  br label %56

50:                                               ; preds = %34
  %51 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %52 = load i32, i32* @VIRTIO_BALLOON_F_MUST_TELL_HOST, align 4
  %53 = call i32 @virtio_has_feature(%struct.virtio_device* %51, i32 %52)
  %54 = load %struct.virtio_balloon*, %struct.virtio_balloon** %4, align 8
  %55 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  store i32 0, i32* %2, align 4
  br label %70

56:                                               ; preds = %45
  %57 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %58 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = bitcast {}** %60 to i32 (%struct.virtio_device*)**
  %62 = load i32 (%struct.virtio_device*)*, i32 (%struct.virtio_device*)** %61, align 8
  %63 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %64 = call i32 %62(%struct.virtio_device* %63)
  br label %65

65:                                               ; preds = %56, %33
  %66 = load %struct.virtio_balloon*, %struct.virtio_balloon** %4, align 8
  %67 = call i32 @kfree(%struct.virtio_balloon* %66)
  br label %68

68:                                               ; preds = %65, %12
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %50
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.virtio_balloon* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @init_vqs(%struct.virtio_balloon*) #1

declare dso_local i32 @kthread_run(i32, %struct.virtio_balloon*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @virtio_has_feature(%struct.virtio_device*, i32) #1

declare dso_local i32 @kfree(%struct.virtio_balloon*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
