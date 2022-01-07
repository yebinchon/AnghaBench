; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_get_free_outbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_get_free_outbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sisusb_usb_data = type { i32 }

@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sisusb_usb_data*)* @sisusb_get_free_outbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sisusb_get_free_outbuf(%struct.sisusb_usb_data* %0) #0 {
  %2 = alloca %struct.sisusb_usb_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sisusb_usb_data* %0, %struct.sisusb_usb_data** %2, align 8
  %5 = load i32, i32* @HZ, align 4
  %6 = mul nsw i32 5, %5
  store i32 %6, i32* %4, align 4
  %7 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %8 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %11 = call i32 @sisusb_outurb_available(%struct.sisusb_usb_data* %10)
  store i32 %11, i32* %3, align 4
  %12 = icmp sge i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @wait_event_timeout(i32 %9, i32 %13, i32 %14)
  %16 = load i32, i32* %3, align 4
  ret i32 %16
}

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @sisusb_outurb_available(%struct.sisusb_usb_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
