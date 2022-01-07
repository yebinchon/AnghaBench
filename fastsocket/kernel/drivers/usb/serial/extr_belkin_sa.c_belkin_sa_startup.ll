; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_belkin_sa.c_belkin_sa_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_belkin_sa.c_belkin_sa_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { %struct.TYPE_4__**, %struct.usb_device* }
%struct.TYPE_4__ = type { i32 }
%struct.usb_device = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.belkin_sa_private = type { i32, i64, i64, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"bcdDevice: %04x, bfc: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*)* @belkin_sa_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @belkin_sa_startup(%struct.usb_serial* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.belkin_sa_private*, align 8
  store %struct.usb_serial* %0, %struct.usb_serial** %3, align 8
  %6 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %7 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %6, i32 0, i32 1
  %8 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  store %struct.usb_device* %8, %struct.usb_device** %4, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.belkin_sa_private* @kmalloc(i32 40, i32 %9)
  store %struct.belkin_sa_private* %10, %struct.belkin_sa_private** %5, align 8
  %11 = load %struct.belkin_sa_private*, %struct.belkin_sa_private** %5, align 8
  %12 = icmp ne %struct.belkin_sa_private* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %59

14:                                               ; preds = %1
  %15 = load %struct.belkin_sa_private*, %struct.belkin_sa_private** %5, align 8
  %16 = getelementptr inbounds %struct.belkin_sa_private, %struct.belkin_sa_private* %15, i32 0, i32 4
  %17 = call i32 @spin_lock_init(i32* %16)
  %18 = load %struct.belkin_sa_private*, %struct.belkin_sa_private** %5, align 8
  %19 = getelementptr inbounds %struct.belkin_sa_private, %struct.belkin_sa_private* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load %struct.belkin_sa_private*, %struct.belkin_sa_private** %5, align 8
  %21 = getelementptr inbounds %struct.belkin_sa_private, %struct.belkin_sa_private* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.belkin_sa_private*, %struct.belkin_sa_private** %5, align 8
  %23 = getelementptr inbounds %struct.belkin_sa_private, %struct.belkin_sa_private* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %25 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le16_to_cpu(i32 %27)
  %29 = icmp sle i32 %28, 518
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 1, i32 0
  %32 = load %struct.belkin_sa_private*, %struct.belkin_sa_private** %5, align 8
  %33 = getelementptr inbounds %struct.belkin_sa_private, %struct.belkin_sa_private* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %35 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %34, i32 0, i32 1
  %36 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %37 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le16_to_cpu(i32 %39)
  %41 = load %struct.belkin_sa_private*, %struct.belkin_sa_private** %5, align 8
  %42 = getelementptr inbounds %struct.belkin_sa_private, %struct.belkin_sa_private* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dev_info(i32* %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43)
  %45 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %46 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %47, i64 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = call i32 @init_waitqueue_head(i32* %50)
  %52 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %53 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %54, i64 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load %struct.belkin_sa_private*, %struct.belkin_sa_private** %5, align 8
  %58 = call i32 @usb_set_serial_port_data(%struct.TYPE_4__* %56, %struct.belkin_sa_private* %57)
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %14, %13
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.belkin_sa_private* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @usb_set_serial_port_data(%struct.TYPE_4__*, %struct.belkin_sa_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
