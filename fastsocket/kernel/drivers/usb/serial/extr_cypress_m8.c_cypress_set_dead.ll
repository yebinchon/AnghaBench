; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_cypress_m8.c_cypress_set_dead.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_cypress_m8.c_cypress_set_dead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32, i32 }
%struct.cypress_private = type { i32, i64 }

@.str = private unnamed_addr constant [69 x i8] c"cypress_m8 suspending failing port %d - interval might be too short\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial_port*)* @cypress_set_dead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cypress_set_dead(%struct.usb_serial_port* %0) #0 {
  %2 = alloca %struct.usb_serial_port*, align 8
  %3 = alloca %struct.cypress_private*, align 8
  %4 = alloca i64, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %2, align 8
  %5 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %6 = call %struct.cypress_private* @usb_get_serial_port_data(%struct.usb_serial_port* %5)
  store %struct.cypress_private* %6, %struct.cypress_private** %3, align 8
  %7 = load %struct.cypress_private*, %struct.cypress_private** %3, align 8
  %8 = getelementptr inbounds %struct.cypress_private, %struct.cypress_private* %7, i32 0, i32 0
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.cypress_private*, %struct.cypress_private** %3, align 8
  %12 = getelementptr inbounds %struct.cypress_private, %struct.cypress_private* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.cypress_private*, %struct.cypress_private** %3, align 8
  %17 = getelementptr inbounds %struct.cypress_private, %struct.cypress_private* %16, i32 0, i32 0
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @spin_unlock_irqrestore(i32* %17, i64 %18)
  br label %33

20:                                               ; preds = %1
  %21 = load %struct.cypress_private*, %struct.cypress_private** %3, align 8
  %22 = getelementptr inbounds %struct.cypress_private, %struct.cypress_private* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.cypress_private*, %struct.cypress_private** %3, align 8
  %24 = getelementptr inbounds %struct.cypress_private, %struct.cypress_private* %23, i32 0, i32 0
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %28 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %27, i32 0, i32 1
  %29 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %30 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %20, %15
  ret void
}

declare dso_local %struct.cypress_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
