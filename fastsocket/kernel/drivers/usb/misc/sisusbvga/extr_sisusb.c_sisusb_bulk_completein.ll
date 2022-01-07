; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_bulk_completein.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_bulk_completein.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { %struct.sisusb_usb_data* }
%struct.sisusb_usb_data = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @sisusb_bulk_completein to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sisusb_bulk_completein(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.sisusb_usb_data*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %4 = load %struct.urb*, %struct.urb** %2, align 8
  %5 = getelementptr inbounds %struct.urb, %struct.urb* %4, i32 0, i32 0
  %6 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  store %struct.sisusb_usb_data* %6, %struct.sisusb_usb_data** %3, align 8
  %7 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %8 = icmp ne %struct.sisusb_usb_data* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %11 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %16 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %9, %1
  br label %26

20:                                               ; preds = %14
  %21 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %22 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %24 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %23, i32 0, i32 1
  %25 = call i32 @wake_up(i32* %24)
  br label %26

26:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
