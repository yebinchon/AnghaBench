; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/display/extr_display-sysfs.c_display_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/display/extr_display-sysfs.c_display_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.display_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.display_device*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @display_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @display_resume(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.display_device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.display_device* @dev_get_drvdata(%struct.device* %4)
  store %struct.display_device* %5, %struct.display_device** %3, align 8
  %6 = load %struct.display_device*, %struct.display_device** %3, align 8
  %7 = getelementptr inbounds %struct.display_device, %struct.display_device* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.display_device*, %struct.display_device** %3, align 8
  %10 = getelementptr inbounds %struct.display_device, %struct.display_device* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.display_device*)*, i32 (%struct.display_device*)** %12, align 8
  %14 = call i64 @likely(i32 (%struct.display_device*)* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.display_device*, %struct.display_device** %3, align 8
  %18 = getelementptr inbounds %struct.display_device, %struct.display_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.display_device*)*, i32 (%struct.display_device*)** %20, align 8
  %22 = load %struct.display_device*, %struct.display_device** %3, align 8
  %23 = call i32 %21(%struct.display_device* %22)
  br label %24

24:                                               ; preds = %16, %1
  %25 = load %struct.display_device*, %struct.display_device** %3, align 8
  %26 = getelementptr inbounds %struct.display_device, %struct.display_device* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  ret i32 0
}

declare dso_local %struct.display_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @likely(i32 (%struct.display_device*)*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
