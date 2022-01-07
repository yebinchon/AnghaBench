; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kref = type { i32 }
%struct.sisusb_usb_data = type { %struct.sisusb_usb_data*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sisusb_delete(%struct.kref* %0) #0 {
  %2 = alloca %struct.kref*, align 8
  %3 = alloca %struct.sisusb_usb_data*, align 8
  store %struct.kref* %0, %struct.kref** %2, align 8
  %4 = load %struct.kref*, %struct.kref** %2, align 8
  %5 = call %struct.sisusb_usb_data* @to_sisusb_dev(%struct.kref* %4)
  store %struct.sisusb_usb_data* %5, %struct.sisusb_usb_data** %3, align 8
  %6 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %7 = icmp ne %struct.sisusb_usb_data* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %28

9:                                                ; preds = %1
  %10 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %11 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %16 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @usb_put_dev(i32* %17)
  br label %19

19:                                               ; preds = %14, %9
  %20 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %21 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  %22 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %23 = call i32 @sisusb_free_buffers(%struct.sisusb_usb_data* %22)
  %24 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %25 = call i32 @sisusb_free_urbs(%struct.sisusb_usb_data* %24)
  %26 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %27 = call i32 @kfree(%struct.sisusb_usb_data* %26)
  br label %28

28:                                               ; preds = %19, %8
  ret void
}

declare dso_local %struct.sisusb_usb_data* @to_sisusb_dev(%struct.kref*) #1

declare dso_local i32 @usb_put_dev(i32*) #1

declare dso_local i32 @sisusb_free_buffers(%struct.sisusb_usb_data*) #1

declare dso_local i32 @sisusb_free_urbs(%struct.sisusb_usb_data*) #1

declare dso_local i32 @kfree(%struct.sisusb_usb_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
