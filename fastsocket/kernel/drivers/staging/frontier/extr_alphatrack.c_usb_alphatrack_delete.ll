; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/frontier/extr_alphatrack.c_usb_alphatrack_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/frontier/extr_alphatrack.c_usb_alphatrack_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_alphatrack = type { %struct.usb_alphatrack*, %struct.usb_alphatrack*, %struct.usb_alphatrack*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_alphatrack*)* @usb_alphatrack_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_alphatrack_delete(%struct.usb_alphatrack* %0) #0 {
  %2 = alloca %struct.usb_alphatrack*, align 8
  store %struct.usb_alphatrack* %0, %struct.usb_alphatrack** %2, align 8
  %3 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %2, align 8
  %4 = call i32 @usb_alphatrack_abort_transfers(%struct.usb_alphatrack* %3)
  %5 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %2, align 8
  %6 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @usb_free_urb(i32 %7)
  %9 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %2, align 8
  %10 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @usb_free_urb(i32 %11)
  %13 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %2, align 8
  %14 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %13, i32 0, i32 2
  %15 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %14, align 8
  %16 = call i32 @kfree(%struct.usb_alphatrack* %15)
  %17 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %2, align 8
  %18 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %17, i32 0, i32 1
  %19 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %18, align 8
  %20 = call i32 @kfree(%struct.usb_alphatrack* %19)
  %21 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %2, align 8
  %22 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %21, i32 0, i32 0
  %23 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %22, align 8
  %24 = call i32 @kfree(%struct.usb_alphatrack* %23)
  %25 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %2, align 8
  %26 = call i32 @kfree(%struct.usb_alphatrack* %25)
  ret void
}

declare dso_local i32 @usb_alphatrack_abort_transfers(%struct.usb_alphatrack*) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @kfree(%struct.usb_alphatrack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
