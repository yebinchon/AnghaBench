; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_read_memio_24bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_read_memio_24bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sisusb_usb_data = type { i32 }
%struct.sisusb_packet = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sisusb_usb_data*, i32, i32, i32*)* @sisusb_read_memio_24bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sisusb_read_memio_24bit(%struct.sisusb_usb_data* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.sisusb_usb_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.sisusb_packet, align 4
  %10 = alloca i32, align 4
  store %struct.sisusb_usb_data* %0, %struct.sisusb_usb_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = and i32 %11, -4
  %13 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %14, 3
  switch i32 %15, label %98 [
    i32 0, label %16
    i32 1, label %27
    i32 2, label %38
    i32 3, label %68
  ]

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = shl i32 %17, 6
  %19 = or i32 %18, 7
  %20 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %22 = call i32 @sisusb_send_packet(%struct.sisusb_usb_data* %21, i32 6, %struct.sisusb_packet* %9)
  store i32 %22, i32* %10, align 4
  %23 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 16777215
  %26 = load i32*, i32** %8, align 8
  store i32 %25, i32* %26, align 4
  br label %98

27:                                               ; preds = %4
  %28 = load i32, i32* %6, align 4
  %29 = shl i32 %28, 6
  %30 = or i32 %29, 14
  %31 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %33 = call i32 @sisusb_send_packet(%struct.sisusb_usb_data* %32, i32 6, %struct.sisusb_packet* %9)
  store i32 %33, i32* %10, align 4
  %34 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 8
  %37 = load i32*, i32** %8, align 8
  store i32 %36, i32* %37, align 4
  br label %98

38:                                               ; preds = %4
  %39 = load i32, i32* %6, align 4
  %40 = shl i32 %39, 6
  %41 = or i32 %40, 12
  %42 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %44 = call i32 @sisusb_send_packet(%struct.sisusb_usb_data* %43, i32 6, %struct.sisusb_packet* %9)
  store i32 %44, i32* %10, align 4
  %45 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %46, 16
  %48 = load i32*, i32** %8, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %6, align 4
  %50 = shl i32 %49, 6
  %51 = or i32 %50, 1
  %52 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %53, -4
  %55 = add nsw i32 %54, 4
  %56 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  %57 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %58 = call i32 @sisusb_send_packet(%struct.sisusb_usb_data* %57, i32 6, %struct.sisusb_packet* %9)
  %59 = load i32, i32* %10, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %10, align 4
  %61 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 255
  %64 = shl i32 %63, 16
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %64
  store i32 %67, i32* %65, align 4
  br label %98

68:                                               ; preds = %4
  %69 = load i32, i32* %6, align 4
  %70 = shl i32 %69, 6
  %71 = or i32 %70, 8
  %72 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 1
  store i32 %71, i32* %72, align 4
  %73 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %74 = call i32 @sisusb_send_packet(%struct.sisusb_usb_data* %73, i32 6, %struct.sisusb_packet* %9)
  store i32 %74, i32* %10, align 4
  %75 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = ashr i32 %76, 24
  %78 = load i32*, i32** %8, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* %6, align 4
  %80 = shl i32 %79, 6
  %81 = or i32 %80, 3
  %82 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 1
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* %7, align 4
  %84 = and i32 %83, -4
  %85 = add nsw i32 %84, 4
  %86 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 0
  store i32 %85, i32* %86, align 4
  %87 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %88 = call i32 @sisusb_send_packet(%struct.sisusb_usb_data* %87, i32 6, %struct.sisusb_packet* %9)
  %89 = load i32, i32* %10, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %10, align 4
  %91 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 65535
  %94 = shl i32 %93, 8
  %95 = load i32*, i32** %8, align 8
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %94
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %68, %4, %38, %27, %16
  %99 = load i32, i32* %10, align 4
  ret i32 %99
}

declare dso_local i32 @sisusb_send_packet(%struct.sisusb_usb_data*, i32, %struct.sisusb_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
