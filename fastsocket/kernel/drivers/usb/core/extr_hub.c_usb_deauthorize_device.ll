; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_usb_deauthorize_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_usb_deauthorize_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i64, %struct.TYPE_2__, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"n/a (unauthorized)\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_deauthorize_device(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.usb_device*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %2, align 8
  %3 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %4 = call i32 @usb_lock_device(%struct.usb_device* %3)
  %5 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %6 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %44

10:                                               ; preds = %1
  %11 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %12 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %14 = call i32 @usb_set_configuration(%struct.usb_device* %13, i32 -1)
  %15 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %16 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %15, i32 0, i32 4
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @kfree(i8* %17)
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @kstrdup(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %22 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %21, i32 0, i32 4
  store i8* %20, i8** %22, align 8
  %23 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %24 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %23, i32 0, i32 3
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @kfree(i8* %25)
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @kstrdup(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %30 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %32 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @kfree(i8* %33)
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @kstrdup(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %38 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %40 = call i32 @usb_destroy_configuration(%struct.usb_device* %39)
  %41 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %42 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %10, %9
  %45 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %46 = call i32 @usb_unlock_device(%struct.usb_device* %45)
  ret i32 0
}

declare dso_local i32 @usb_lock_device(%struct.usb_device*) #1

declare dso_local i32 @usb_set_configuration(%struct.usb_device*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @usb_destroy_configuration(%struct.usb_device*) #1

declare dso_local i32 @usb_unlock_device(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
