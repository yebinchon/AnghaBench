; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_read_memio_word.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_read_memio_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sisusb_usb_data = type { i32 }
%struct.sisusb_packet = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sisusb_usb_data*, i32, i32, i32*)* @sisusb_read_memio_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sisusb_read_memio_word(%struct.sisusb_usb_data* %0, i32 %1, i32 %2, i32* %3) #0 {
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
  %11 = call i32 @CLEARPACKET(%struct.sisusb_packet* %9)
  %12 = load i32, i32* %7, align 4
  %13 = and i32 %12, -4
  %14 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %7, align 4
  %16 = and i32 %15, 3
  switch i32 %16, label %78 [
    i32 0, label %17
    i32 1, label %27
    i32 2, label %38
    i32 3, label %49
  ]

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  %19 = shl i32 %18, 6
  %20 = or i32 %19, 3
  %21 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %23 = call i32 @sisusb_send_packet(%struct.sisusb_usb_data* %22, i32 6, %struct.sisusb_packet* %9)
  store i32 %23, i32* %10, align 4
  %24 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %8, align 8
  store i32 %25, i32* %26, align 4
  br label %78

27:                                               ; preds = %4
  %28 = load i32, i32* %6, align 4
  %29 = shl i32 %28, 6
  %30 = or i32 %29, 6
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
  br label %78

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
  br label %78

49:                                               ; preds = %4
  %50 = load i32, i32* %6, align 4
  %51 = shl i32 %50, 6
  %52 = or i32 %51, 8
  %53 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 1
  store i32 %52, i32* %53, align 4
  %54 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %55 = call i32 @sisusb_send_packet(%struct.sisusb_usb_data* %54, i32 6, %struct.sisusb_packet* %9)
  store i32 %55, i32* %10, align 4
  %56 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 24
  %59 = load i32*, i32** %8, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* %6, align 4
  %61 = shl i32 %60, 6
  %62 = or i32 %61, 1
  %63 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 1
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %7, align 4
  %65 = and i32 %64, -4
  %66 = add nsw i32 %65, 4
  %67 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 0
  store i32 %66, i32* %67, align 4
  %68 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %69 = call i32 @sisusb_send_packet(%struct.sisusb_usb_data* %68, i32 6, %struct.sisusb_packet* %9)
  %70 = load i32, i32* %10, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %10, align 4
  %72 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 8
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %74
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %49, %4, %38, %27, %17
  %79 = load i32, i32* %10, align 4
  ret i32 %79
}

declare dso_local i32 @CLEARPACKET(%struct.sisusb_packet*) #1

declare dso_local i32 @sisusb_send_packet(%struct.sisusb_usb_data*, i32, %struct.sisusb_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
