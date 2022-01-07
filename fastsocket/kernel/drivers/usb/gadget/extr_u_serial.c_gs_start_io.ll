; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_u_serial.c_gs_start_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_u_serial.c_gs_start_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_port = type { %struct.list_head, %struct.TYPE_2__*, i32, i64, %struct.list_head }
%struct.TYPE_2__ = type { %struct.usb_ep*, %struct.usb_ep* }
%struct.usb_ep = type { i32 }
%struct.list_head = type { i32 }

@gs_read_complete = common dso_local global i32 0, align 4
@gs_write_complete = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gs_port*)* @gs_start_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gs_start_io(%struct.gs_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gs_port*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.usb_ep*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gs_port* %0, %struct.gs_port** %3, align 8
  %8 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %9 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %8, i32 0, i32 4
  store %struct.list_head* %9, %struct.list_head** %4, align 8
  %10 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %11 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.usb_ep*, %struct.usb_ep** %13, align 8
  store %struct.usb_ep* %14, %struct.usb_ep** %5, align 8
  %15 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %16 = load %struct.list_head*, %struct.list_head** %4, align 8
  %17 = load i32, i32* @gs_read_complete, align 4
  %18 = call i32 @gs_alloc_requests(%struct.usb_ep* %15, %struct.list_head* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %68

23:                                               ; preds = %1
  %24 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %25 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.usb_ep*, %struct.usb_ep** %27, align 8
  %29 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %30 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %29, i32 0, i32 0
  %31 = load i32, i32* @gs_write_complete, align 4
  %32 = call i32 @gs_alloc_requests(%struct.usb_ep* %28, %struct.list_head* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %23
  %36 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %37 = load %struct.list_head*, %struct.list_head** %4, align 8
  %38 = call i32 @gs_free_requests(%struct.usb_ep* %36, %struct.list_head* %37)
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %68

40:                                               ; preds = %23
  %41 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %42 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  %43 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %44 = call i32 @gs_start_rx(%struct.gs_port* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %49 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @tty_wakeup(i32 %50)
  br label %66

52:                                               ; preds = %40
  %53 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %54 = load %struct.list_head*, %struct.list_head** %4, align 8
  %55 = call i32 @gs_free_requests(%struct.usb_ep* %53, %struct.list_head* %54)
  %56 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %57 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load %struct.usb_ep*, %struct.usb_ep** %59, align 8
  %61 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %62 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %61, i32 0, i32 0
  %63 = call i32 @gs_free_requests(%struct.usb_ep* %60, %struct.list_head* %62)
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %52, %47
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %66, %35, %21
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @gs_alloc_requests(%struct.usb_ep*, %struct.list_head*, i32) #1

declare dso_local i32 @gs_free_requests(%struct.usb_ep*, %struct.list_head*) #1

declare dso_local i32 @gs_start_rx(%struct.gs_port*) #1

declare dso_local i32 @tty_wakeup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
