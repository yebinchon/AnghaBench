; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_visor.c_generic_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_visor.c_generic_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { i32, %struct.usb_serial_port** }
%struct.usb_serial_port = type { i32 }
%struct.visor_private = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*)* @generic_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_startup(%struct.usb_serial* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial*, align 8
  %4 = alloca %struct.usb_serial_port**, align 8
  %5 = alloca %struct.visor_private*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_serial* %0, %struct.usb_serial** %3, align 8
  %7 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %8 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %7, i32 0, i32 1
  %9 = load %struct.usb_serial_port**, %struct.usb_serial_port*** %8, align 8
  store %struct.usb_serial_port** %9, %struct.usb_serial_port*** %4, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %55, %1
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %13 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %58

16:                                               ; preds = %10
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.visor_private* @kzalloc(i32 4, i32 %17)
  store %struct.visor_private* %18, %struct.visor_private** %5, align 8
  %19 = load %struct.visor_private*, %struct.visor_private** %5, align 8
  %20 = icmp ne %struct.visor_private* %19, null
  br i1 %20, label %44, label %21

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %26, %21
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %6, align 4
  %25 = icmp ne i32 %23, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %22
  %27 = load %struct.usb_serial_port**, %struct.usb_serial_port*** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.usb_serial_port*, %struct.usb_serial_port** %27, i64 %29
  %31 = load %struct.usb_serial_port*, %struct.usb_serial_port** %30, align 8
  %32 = call %struct.visor_private* @usb_get_serial_port_data(%struct.usb_serial_port* %31)
  store %struct.visor_private* %32, %struct.visor_private** %5, align 8
  %33 = load %struct.usb_serial_port**, %struct.usb_serial_port*** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.usb_serial_port*, %struct.usb_serial_port** %33, i64 %35
  %37 = load %struct.usb_serial_port*, %struct.usb_serial_port** %36, align 8
  %38 = call i32 @usb_set_serial_port_data(%struct.usb_serial_port* %37, %struct.visor_private* null)
  %39 = load %struct.visor_private*, %struct.visor_private** %5, align 8
  %40 = call i32 @kfree(%struct.visor_private* %39)
  br label %22

41:                                               ; preds = %22
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %59

44:                                               ; preds = %16
  %45 = load %struct.visor_private*, %struct.visor_private** %5, align 8
  %46 = getelementptr inbounds %struct.visor_private, %struct.visor_private* %45, i32 0, i32 0
  %47 = call i32 @spin_lock_init(i32* %46)
  %48 = load %struct.usb_serial_port**, %struct.usb_serial_port*** %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.usb_serial_port*, %struct.usb_serial_port** %48, i64 %50
  %52 = load %struct.usb_serial_port*, %struct.usb_serial_port** %51, align 8
  %53 = load %struct.visor_private*, %struct.visor_private** %5, align 8
  %54 = call i32 @usb_set_serial_port_data(%struct.usb_serial_port* %52, %struct.visor_private* %53)
  br label %55

55:                                               ; preds = %44
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %10

58:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %41
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.visor_private* @kzalloc(i32, i32) #1

declare dso_local %struct.visor_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @usb_set_serial_port_data(%struct.usb_serial_port*, %struct.visor_private*) #1

declare dso_local i32 @kfree(%struct.visor_private*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
