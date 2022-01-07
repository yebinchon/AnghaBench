; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_driver.c_line6_start_listen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_driver.c_line6_start_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_line6 = type { %struct.TYPE_3__*, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@LINE6_BUFSIZE_LISTEN = common dso_local global i32 0, align 4
@line6_data_received = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_line6*)* @line6_start_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @line6_start_listen(%struct.usb_line6* %0) #0 {
  %2 = alloca %struct.usb_line6*, align 8
  store %struct.usb_line6* %0, %struct.usb_line6** %2, align 8
  %3 = load %struct.usb_line6*, %struct.usb_line6** %2, align 8
  %4 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %3, i32 0, i32 0
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = load %struct.usb_line6*, %struct.usb_line6** %2, align 8
  %7 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.usb_line6*, %struct.usb_line6** %2, align 8
  %10 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.usb_line6*, %struct.usb_line6** %2, align 8
  %13 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @usb_rcvintpipe(i32 %11, i32 %14)
  %16 = load %struct.usb_line6*, %struct.usb_line6** %2, align 8
  %17 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @LINE6_BUFSIZE_LISTEN, align 4
  %20 = load i32, i32* @line6_data_received, align 4
  %21 = load %struct.usb_line6*, %struct.usb_line6** %2, align 8
  %22 = load %struct.usb_line6*, %struct.usb_line6** %2, align 8
  %23 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @usb_fill_int_urb(%struct.TYPE_3__* %5, i32 %8, i32 %15, i32 %18, i32 %19, i32 %20, %struct.usb_line6* %21, i32 %24)
  %26 = load %struct.usb_line6*, %struct.usb_line6** %2, align 8
  %27 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.usb_line6*, %struct.usb_line6** %2, align 8
  %31 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i32 @usb_submit_urb(%struct.TYPE_3__* %32, i32 %33)
  ret i32 %34
}

declare dso_local i32 @usb_fill_int_urb(%struct.TYPE_3__*, i32, i32, i32, i32, i32, %struct.usb_line6*, i32) #1

declare dso_local i32 @usb_rcvintpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
