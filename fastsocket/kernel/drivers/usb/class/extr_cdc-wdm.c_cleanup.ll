; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-wdm.c_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-wdm.c_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wdm_device = type { %struct.wdm_device*, %struct.wdm_device*, %struct.wdm_device*, %struct.TYPE_3__*, i32, i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wdm_device*)* @cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup(%struct.wdm_device* %0) #0 {
  %2 = alloca %struct.wdm_device*, align 8
  store %struct.wdm_device* %0, %struct.wdm_device** %2, align 8
  %3 = load %struct.wdm_device*, %struct.wdm_device** %2, align 8
  %4 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %3, i32 0, i32 6
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @interface_to_usbdev(i32 %5)
  %7 = load %struct.wdm_device*, %struct.wdm_device** %2, align 8
  %8 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %7, i32 0, i32 9
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.wdm_device*, %struct.wdm_device** %2, align 8
  %11 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %10, i32 0, i32 8
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.wdm_device*, %struct.wdm_device** %2, align 8
  %14 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %13, i32 0, i32 7
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @usb_buffer_free(i32 %6, i32 %9, i32 %12, i32 %17)
  %19 = load %struct.wdm_device*, %struct.wdm_device** %2, align 8
  %20 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @interface_to_usbdev(i32 %21)
  %23 = load %struct.wdm_device*, %struct.wdm_device** %2, align 8
  %24 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.wdm_device*, %struct.wdm_device** %2, align 8
  %27 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.wdm_device*, %struct.wdm_device** %2, align 8
  %30 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %29, i32 0, i32 3
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @usb_buffer_free(i32 %22, i32 %25, i32 %28, i32 %33)
  %35 = load %struct.wdm_device*, %struct.wdm_device** %2, align 8
  %36 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %35, i32 0, i32 2
  %37 = load %struct.wdm_device*, %struct.wdm_device** %36, align 8
  %38 = call i32 @kfree(%struct.wdm_device* %37)
  %39 = load %struct.wdm_device*, %struct.wdm_device** %2, align 8
  %40 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %39, i32 0, i32 1
  %41 = load %struct.wdm_device*, %struct.wdm_device** %40, align 8
  %42 = call i32 @kfree(%struct.wdm_device* %41)
  %43 = load %struct.wdm_device*, %struct.wdm_device** %2, align 8
  %44 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %43, i32 0, i32 0
  %45 = load %struct.wdm_device*, %struct.wdm_device** %44, align 8
  %46 = call i32 @kfree(%struct.wdm_device* %45)
  %47 = load %struct.wdm_device*, %struct.wdm_device** %2, align 8
  %48 = call i32 @free_urbs(%struct.wdm_device* %47)
  %49 = load %struct.wdm_device*, %struct.wdm_device** %2, align 8
  %50 = call i32 @kfree(%struct.wdm_device* %49)
  ret void
}

declare dso_local i32 @usb_buffer_free(i32, i32, i32, i32) #1

declare dso_local i32 @interface_to_usbdev(i32) #1

declare dso_local i32 @kfree(%struct.wdm_device*) #1

declare dso_local i32 @free_urbs(%struct.wdm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
