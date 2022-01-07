; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_usbdrv.c_usbdrv_set_mac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_usbdrv.c_usbdrv_set_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.usbdrv_private* }
%struct.usbdrv_private = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbdrv_set_mac(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.usbdrv_private*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 -1, i32* %6, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load %struct.usbdrv_private*, %struct.usbdrv_private** %8, align 8
  store %struct.usbdrv_private* %9, %struct.usbdrv_private** %5, align 8
  %10 = load %struct.usbdrv_private*, %struct.usbdrv_private** %5, align 8
  %11 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %10, i32 0, i32 0
  %12 = call i32 @read_lock(i32* %11)
  %13 = load %struct.usbdrv_private*, %struct.usbdrv_private** %5, align 8
  %14 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %19

18:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %18, %17
  %20 = load %struct.usbdrv_private*, %struct.usbdrv_private** %5, align 8
  %21 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %20, i32 0, i32 0
  %22 = call i32 @read_unlock(i32* %21)
  %23 = load i32, i32* %6, align 4
  ret i32 %23
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
