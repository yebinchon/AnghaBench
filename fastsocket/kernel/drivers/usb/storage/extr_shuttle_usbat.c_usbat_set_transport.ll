; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_shuttle_usbat.c_usbat_set_transport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_shuttle_usbat.c_usbat_set_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32 }
%struct.usbat_info = type { i32 }

@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@usbat_hp8200e_transport = common dso_local global i32 0, align 4
@usbat_flash_transport = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, %struct.usbat_info*, i32)* @usbat_set_transport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbat_set_transport(%struct.us_data* %0, %struct.usbat_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.us_data*, align 8
  %6 = alloca %struct.usbat_info*, align 8
  %7 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %5, align 8
  store %struct.usbat_info* %1, %struct.usbat_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.usbat_info*, %struct.usbat_info** %6, align 8
  %9 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.usbat_info*, %struct.usbat_info** %6, align 8
  %15 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  br label %16

16:                                               ; preds = %12, %3
  %17 = load %struct.usbat_info*, %struct.usbat_info** %6, align 8
  %18 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load %struct.us_data*, %struct.us_data** %5, align 8
  %23 = load %struct.usbat_info*, %struct.usbat_info** %6, align 8
  %24 = call i32 @usbat_identify_device(%struct.us_data* %22, %struct.usbat_info* %23)
  br label %25

25:                                               ; preds = %21, %16
  %26 = load %struct.usbat_info*, %struct.usbat_info** %6, align 8
  %27 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %29 [
    i32 128, label %31
    i32 129, label %35
  ]

29:                                               ; preds = %25
  %30 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %30, i32* %4, align 4
  br label %40

31:                                               ; preds = %25
  %32 = load i32, i32* @usbat_hp8200e_transport, align 4
  %33 = load %struct.us_data*, %struct.us_data** %5, align 8
  %34 = getelementptr inbounds %struct.us_data, %struct.us_data* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %39

35:                                               ; preds = %25
  %36 = load i32, i32* @usbat_flash_transport, align 4
  %37 = load %struct.us_data*, %struct.us_data** %5, align 8
  %38 = getelementptr inbounds %struct.us_data, %struct.us_data* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %35, %31
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %29
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @usbat_identify_device(%struct.us_data*, %struct.usbat_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
