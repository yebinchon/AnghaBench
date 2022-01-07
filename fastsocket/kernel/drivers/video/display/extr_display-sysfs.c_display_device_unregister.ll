; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/display/extr_display-sysfs.c_display_device_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/display/extr_display-sysfs.c_display_device_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display_device = type { i32, i32, i32 }

@allocated_dsp_lock = common dso_local global i32 0, align 4
@allocated_dsp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @display_device_unregister(%struct.display_device* %0) #0 {
  %2 = alloca %struct.display_device*, align 8
  store %struct.display_device* %0, %struct.display_device** %2, align 8
  %3 = load %struct.display_device*, %struct.display_device** %2, align 8
  %4 = icmp ne %struct.display_device* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %25

6:                                                ; preds = %1
  %7 = load %struct.display_device*, %struct.display_device** %2, align 8
  %8 = getelementptr inbounds %struct.display_device, %struct.display_device* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.display_device*, %struct.display_device** %2, align 8
  %11 = getelementptr inbounds %struct.display_device, %struct.display_device* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @device_unregister(i32 %12)
  %14 = load %struct.display_device*, %struct.display_device** %2, align 8
  %15 = getelementptr inbounds %struct.display_device, %struct.display_device* %14, i32 0, i32 1
  %16 = call i32 @mutex_unlock(i32* %15)
  %17 = call i32 @mutex_lock(i32* @allocated_dsp_lock)
  %18 = load %struct.display_device*, %struct.display_device** %2, align 8
  %19 = getelementptr inbounds %struct.display_device, %struct.display_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @idr_remove(i32* @allocated_dsp, i32 %20)
  %22 = call i32 @mutex_unlock(i32* @allocated_dsp_lock)
  %23 = load %struct.display_device*, %struct.display_device** %2, align 8
  %24 = call i32 @kfree(%struct.display_device* %23)
  br label %25

25:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @device_unregister(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @kfree(%struct.display_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
