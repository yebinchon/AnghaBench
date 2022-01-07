; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_usb.c_carlusb_tx_bulk_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_usb.c_carlusb_tx_bulk_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb_transfer = type { i64 }
%struct.frame = type { i64 }
%struct.carlu = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.libusb_transfer*)* @carlusb_tx_bulk_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carlusb_tx_bulk_cb(%struct.libusb_transfer* %0) #0 {
  %2 = alloca %struct.libusb_transfer*, align 8
  %3 = alloca %struct.frame*, align 8
  %4 = alloca %struct.carlu*, align 8
  store %struct.libusb_transfer* %0, %struct.libusb_transfer** %2, align 8
  %5 = load %struct.libusb_transfer*, %struct.libusb_transfer** %2, align 8
  %6 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i8*
  %9 = bitcast i8* %8 to %struct.frame*
  store %struct.frame* %9, %struct.frame** %3, align 8
  %10 = load %struct.frame*, %struct.frame** %3, align 8
  %11 = getelementptr inbounds %struct.frame, %struct.frame* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.carlu*
  store %struct.carlu* %14, %struct.carlu** %4, align 8
  %15 = load %struct.carlu*, %struct.carlu** %4, align 8
  %16 = getelementptr inbounds %struct.carlu, %struct.carlu* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @SDL_mutexP(i32 %17)
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.carlu*, %struct.carlu** %4, align 8
  %23 = getelementptr inbounds %struct.carlu, %struct.carlu* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %23, align 4
  %26 = load %struct.carlu*, %struct.carlu** %4, align 8
  %27 = getelementptr inbounds %struct.carlu, %struct.carlu* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @SDL_mutexV(i32 %28)
  %30 = load %struct.carlu*, %struct.carlu** %4, align 8
  %31 = getelementptr inbounds %struct.carlu, %struct.carlu* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %1
  %35 = load %struct.frame*, %struct.frame** %3, align 8
  %36 = call i32 @frame_pull(%struct.frame* %35, i32 4)
  br label %37

37:                                               ; preds = %34, %1
  %38 = load %struct.carlu*, %struct.carlu** %4, align 8
  %39 = load %struct.frame*, %struct.frame** %3, align 8
  %40 = call i32 @carlusb_tx_cb(%struct.carlu* %38, %struct.frame* %39)
  %41 = load %struct.carlu*, %struct.carlu** %4, align 8
  %42 = call i32 @carlusb_tx_pending(%struct.carlu* %41)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @SDL_mutexP(i32) #1

declare dso_local i32 @SDL_mutexV(i32) #1

declare dso_local i32 @frame_pull(%struct.frame*, i32) #1

declare dso_local i32 @carlusb_tx_cb(%struct.carlu*, %struct.frame*) #1

declare dso_local i32 @carlusb_tx_pending(%struct.carlu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
