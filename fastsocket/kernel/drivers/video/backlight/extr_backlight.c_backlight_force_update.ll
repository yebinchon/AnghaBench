; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_backlight.c_backlight_force_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_backlight.c_backlight_force_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.backlight_device*)* }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @backlight_force_update(%struct.backlight_device* %0, i32 %1) #0 {
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %6 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %9 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %30

12:                                               ; preds = %2
  %13 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %14 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32 (%struct.backlight_device*)*, i32 (%struct.backlight_device*)** %16, align 8
  %18 = icmp ne i32 (%struct.backlight_device*)* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %12
  %20 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %21 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32 (%struct.backlight_device*)*, i32 (%struct.backlight_device*)** %23, align 8
  %25 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %26 = call i32 %24(%struct.backlight_device* %25)
  %27 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %28 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  br label %30

30:                                               ; preds = %19, %12, %2
  %31 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %32 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @backlight_generate_event(%struct.backlight_device* %34, i32 %35)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @backlight_generate_event(%struct.backlight_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
