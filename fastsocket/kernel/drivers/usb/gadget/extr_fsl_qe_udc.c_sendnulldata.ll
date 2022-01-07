; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_qe_udc.c_sendnulldata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_qe_udc.c_sendnulldata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qe_ep = type { %struct.qe_udc* }
%struct.qe_udc = type { i64 }
%struct.qe_frame = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@FRAME_OK = common dso_local global i32 0, align 4
@ZLP = common dso_local global i32 0, align 4
@NO_CRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qe_ep*, %struct.qe_frame*, i32)* @sendnulldata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sendnulldata(%struct.qe_ep* %0, %struct.qe_frame* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qe_ep*, align 8
  %6 = alloca %struct.qe_frame*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qe_udc*, align 8
  store %struct.qe_ep* %0, %struct.qe_ep** %5, align 8
  store %struct.qe_frame* %1, %struct.qe_frame** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.qe_ep*, %struct.qe_ep** %5, align 8
  %10 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %9, i32 0, i32 0
  %11 = load %struct.qe_udc*, %struct.qe_udc** %10, align 8
  store %struct.qe_udc* %11, %struct.qe_udc** %8, align 8
  %12 = load %struct.qe_frame*, %struct.qe_frame** %6, align 8
  %13 = icmp eq %struct.qe_frame* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %41

17:                                               ; preds = %3
  %18 = load %struct.qe_frame*, %struct.qe_frame** %6, align 8
  %19 = call i32 @qe_frame_clean(%struct.qe_frame* %18)
  %20 = load %struct.qe_frame*, %struct.qe_frame** %6, align 8
  %21 = load %struct.qe_udc*, %struct.qe_udc** %8, align 8
  %22 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32*
  %25 = call i32 @frame_set_data(%struct.qe_frame* %20, i32* %24)
  %26 = load %struct.qe_frame*, %struct.qe_frame** %6, align 8
  %27 = call i32 @frame_set_length(%struct.qe_frame* %26, i32 2)
  %28 = load %struct.qe_frame*, %struct.qe_frame** %6, align 8
  %29 = load i32, i32* @FRAME_OK, align 4
  %30 = call i32 @frame_set_status(%struct.qe_frame* %28, i32 %29)
  %31 = load %struct.qe_frame*, %struct.qe_frame** %6, align 8
  %32 = load i32, i32* @ZLP, align 4
  %33 = load i32, i32* @NO_CRC, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @frame_set_info(%struct.qe_frame* %31, i32 %36)
  %38 = load %struct.qe_ep*, %struct.qe_ep** %5, align 8
  %39 = load %struct.qe_frame*, %struct.qe_frame** %6, align 8
  %40 = call i32 @qe_ep_tx(%struct.qe_ep* %38, %struct.qe_frame* %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %17, %14
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @qe_frame_clean(%struct.qe_frame*) #1

declare dso_local i32 @frame_set_data(%struct.qe_frame*, i32*) #1

declare dso_local i32 @frame_set_length(%struct.qe_frame*, i32) #1

declare dso_local i32 @frame_set_status(%struct.qe_frame*, i32) #1

declare dso_local i32 @frame_set_info(%struct.qe_frame*, i32) #1

declare dso_local i32 @qe_ep_tx(%struct.qe_ep*, %struct.qe_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
