; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_u132-hcd.c_edset_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_u132-hcd.c_edset_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.u132 = type { i32 }
%struct.u132_ring = type { i32 }
%struct.u132_endp = type { i32 }
%struct.urb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.u132*, %struct.u132_ring*, %struct.u132_endp*, %struct.urb*, i32, i32, void (i8*, %struct.urb*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*)* @edset_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edset_output(%struct.u132* %0, %struct.u132_ring* %1, %struct.u132_endp* %2, %struct.urb* %3, i32 %4, i32 %5, void (i8*, %struct.urb*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* %6) #0 {
  %8 = alloca %struct.u132*, align 8
  %9 = alloca %struct.u132_ring*, align 8
  %10 = alloca %struct.u132_endp*, align 8
  %11 = alloca %struct.urb*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca void (i8*, %struct.urb*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, align 8
  store %struct.u132* %0, %struct.u132** %8, align 8
  store %struct.u132_ring* %1, %struct.u132_ring** %9, align 8
  store %struct.u132_endp* %2, %struct.u132_endp** %10, align 8
  store %struct.urb* %3, %struct.urb** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store void (i8*, %struct.urb*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* %6, void (i8*, %struct.urb*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32)** %14, align 8
  %15 = load %struct.u132*, %struct.u132** %8, align 8
  %16 = getelementptr inbounds %struct.u132, %struct.u132* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.u132_ring*, %struct.u132_ring** %9, align 8
  %19 = getelementptr inbounds %struct.u132_ring, %struct.u132_ring* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.u132_endp*, %struct.u132_endp** %10, align 8
  %22 = load %struct.urb*, %struct.urb** %11, align 8
  %23 = load i32, i32* %12, align 4
  %24 = load %struct.u132_endp*, %struct.u132_endp** %10, align 8
  %25 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load void (i8*, %struct.urb*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, void (i8*, %struct.urb*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32)** %14, align 8
  %29 = call i32 @usb_ftdi_elan_edset_output(i32 %17, i32 %20, %struct.u132_endp* %21, %struct.urb* %22, i32 %23, i32 %26, i32 %27, void (i8*, %struct.urb*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* %28)
  ret i32 %29
}

declare dso_local i32 @usb_ftdi_elan_edset_output(i32, i32, %struct.u132_endp*, %struct.urb*, i32, i32, i32, void (i8*, %struct.urb*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
