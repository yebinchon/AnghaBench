; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_u_serial.c_gs_send_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_u_serial.c_gs_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gs_port*, i8*, i32)* @gs_send_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gs_send_packet(%struct.gs_port* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.gs_port*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gs_port* %0, %struct.gs_port** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.gs_port*, %struct.gs_port** %4, align 8
  %9 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %8, i32 0, i32 0
  %10 = call i32 @gs_buf_data_avail(i32* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %14, %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load %struct.gs_port*, %struct.gs_port** %4, align 8
  %21 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %20, i32 0, i32 0
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @gs_buf_get(i32* %21, i8* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %19, %16
  %26 = load i32, i32* %6, align 4
  ret i32 %26
}

declare dso_local i32 @gs_buf_data_avail(i32*) #1

declare dso_local i32 @gs_buf_get(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
