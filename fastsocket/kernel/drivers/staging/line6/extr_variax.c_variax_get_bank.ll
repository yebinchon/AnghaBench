; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_variax.c_variax_get_bank.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_variax.c_variax_get_bank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.usb_line6_variax = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @variax_get_bank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @variax_get_bank(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.usb_line6_variax*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call i32 @to_usb_interface(%struct.device* %8)
  %10 = call %struct.usb_line6_variax* @usb_get_intfdata(i32 %9)
  store %struct.usb_line6_variax* %10, %struct.usb_line6_variax** %7, align 8
  %11 = load %struct.usb_line6_variax*, %struct.usb_line6_variax** %7, align 8
  %12 = getelementptr inbounds %struct.usb_line6_variax, %struct.usb_line6_variax* %11, i32 0, i32 1
  %13 = call i32 @line6_wait_dump(i32* %12, i32 0)
  %14 = load i8*, i8** %6, align 8
  %15 = load %struct.usb_line6_variax*, %struct.usb_line6_variax** %7, align 8
  %16 = getelementptr inbounds %struct.usb_line6_variax, %struct.usb_line6_variax* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @get_string(i8* %14, i32 %17, i32 4)
  ret i32 %18
}

declare dso_local %struct.usb_line6_variax* @usb_get_intfdata(i32) #1

declare dso_local i32 @to_usb_interface(%struct.device*) #1

declare dso_local i32 @line6_wait_dump(i32*, i32) #1

declare dso_local i32 @get_string(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
