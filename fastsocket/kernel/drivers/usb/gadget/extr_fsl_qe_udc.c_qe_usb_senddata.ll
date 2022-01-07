; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_qe_udc.c_qe_usb_senddata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_qe_udc.c_qe_usb_senddata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qe_ep = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.qe_frame = type { i32 }

@u32 = common dso_local global i32 0, align 4
@FRAME_OK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qe_ep*, %struct.qe_frame*)* @qe_usb_senddata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qe_usb_senddata(%struct.qe_ep* %0, %struct.qe_frame* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qe_ep*, align 8
  %5 = alloca %struct.qe_frame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.qe_ep* %0, %struct.qe_ep** %4, align 8
  store %struct.qe_frame* %1, %struct.qe_frame** %5, align 8
  %8 = load %struct.qe_frame*, %struct.qe_frame** %5, align 8
  %9 = call i32 @qe_frame_clean(%struct.qe_frame* %8)
  %10 = load i32, i32* @u32, align 4
  %11 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %12 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %11, i32 0, i32 2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %18 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %16, %19
  %21 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %22 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @min_t(i32 %10, i32 %20, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %27 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %26, i32 0, i32 2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i32*
  %33 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %34 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %32, i64 %36
  store i32* %37, i32** %7, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %61

40:                                               ; preds = %2
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %40
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %46 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.qe_frame*, %struct.qe_frame** %5, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @frame_set_data(%struct.qe_frame* %47, i32* %48)
  %50 = load %struct.qe_frame*, %struct.qe_frame** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @frame_set_length(%struct.qe_frame* %50, i32 %51)
  %53 = load %struct.qe_frame*, %struct.qe_frame** %5, align 8
  %54 = load i32, i32* @FRAME_OK, align 4
  %55 = call i32 @frame_set_status(%struct.qe_frame* %53, i32 %54)
  %56 = load %struct.qe_frame*, %struct.qe_frame** %5, align 8
  %57 = call i32 @frame_set_info(%struct.qe_frame* %56, i32 0)
  %58 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %59 = load %struct.qe_frame*, %struct.qe_frame** %5, align 8
  %60 = call i32 @qe_ep_tx(%struct.qe_ep* %58, %struct.qe_frame* %59)
  store i32 %60, i32* %3, align 4
  br label %64

61:                                               ; preds = %40, %2
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %61, %43
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @qe_frame_clean(%struct.qe_frame*) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

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
