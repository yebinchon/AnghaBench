; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_setidxregmask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_setidxregmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sisusb_usb_data = type { i32 }

@SISUSB_TYPE_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sisusb_usb_data*, i32, i32, i32, i32)* @sisusb_setidxregmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sisusb_setidxregmask(%struct.sisusb_usb_data* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sisusb_usb_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sisusb_usb_data* %0, %struct.sisusb_usb_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %14 = load i32, i32* @SISUSB_TYPE_IO, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @sisusb_write_memio_byte(%struct.sisusb_usb_data* %13, i32 %14, i32 %15, i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %19 = load i32, i32* @SISUSB_TYPE_IO, align 4
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, 1
  %22 = call i32 @sisusb_read_memio_byte(%struct.sisusb_usb_data* %18, i32 %19, i32 %21, i32* %12)
  %23 = load i32, i32* %11, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %10, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %12, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* %12, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %12, align 4
  %34 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %35 = load i32, i32* @SISUSB_TYPE_IO, align 4
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @sisusb_write_memio_byte(%struct.sisusb_usb_data* %34, i32 %35, i32 %37, i32 %38)
  %40 = load i32, i32* %11, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  ret i32 %42
}

declare dso_local i32 @sisusb_write_memio_byte(%struct.sisusb_usb_data*, i32, i32, i32) #1

declare dso_local i32 @sisusb_read_memio_byte(%struct.sisusb_usb_data*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
