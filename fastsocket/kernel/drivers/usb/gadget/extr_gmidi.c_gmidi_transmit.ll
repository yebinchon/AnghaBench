; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_gmidi.c_gmidi_transmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_gmidi.c_gmidi_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gmidi_device = type { i32, %struct.gmidi_in_port, %struct.usb_ep* }
%struct.gmidi_in_port = type { i64 }
%struct.usb_ep = type { i32 }
%struct.usb_request = type { i64, i32 }

@buflen = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"gmidi_transmit: alloc_ep_request failed\0A\00", align 1
@gmidi_complete = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gmidi_device*, %struct.usb_request*)* @gmidi_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gmidi_transmit(%struct.gmidi_device* %0, %struct.usb_request* %1) #0 {
  %3 = alloca %struct.gmidi_device*, align 8
  %4 = alloca %struct.usb_request*, align 8
  %5 = alloca %struct.usb_ep*, align 8
  %6 = alloca %struct.gmidi_in_port*, align 8
  %7 = alloca i32, align 4
  store %struct.gmidi_device* %0, %struct.gmidi_device** %3, align 8
  store %struct.usb_request* %1, %struct.usb_request** %4, align 8
  %8 = load %struct.gmidi_device*, %struct.gmidi_device** %3, align 8
  %9 = getelementptr inbounds %struct.gmidi_device, %struct.gmidi_device* %8, i32 0, i32 2
  %10 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  store %struct.usb_ep* %10, %struct.usb_ep** %5, align 8
  %11 = load %struct.gmidi_device*, %struct.gmidi_device** %3, align 8
  %12 = getelementptr inbounds %struct.gmidi_device, %struct.gmidi_device* %11, i32 0, i32 1
  store %struct.gmidi_in_port* %12, %struct.gmidi_in_port** %6, align 8
  %13 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %14 = icmp ne %struct.usb_ep* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %76

16:                                               ; preds = %2
  %17 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %18 = icmp ne %struct.usb_request* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %21 = load i64, i64* @buflen, align 8
  %22 = call %struct.usb_request* @alloc_ep_req(%struct.usb_ep* %20, i64 %21)
  store %struct.usb_request* %22, %struct.usb_request** %4, align 8
  br label %23

23:                                               ; preds = %19, %16
  %24 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %25 = icmp ne %struct.usb_request* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load %struct.gmidi_device*, %struct.gmidi_device** %3, align 8
  %28 = call i32 @ERROR(%struct.gmidi_device* %27, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %76

29:                                               ; preds = %23
  %30 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %31 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* @gmidi_complete, align 4
  %33 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %34 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.gmidi_in_port*, %struct.gmidi_in_port** %6, align 8
  %36 = getelementptr inbounds %struct.gmidi_in_port, %struct.gmidi_in_port* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %56, %39
  %41 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %42 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 3
  %45 = load i64, i64* @buflen, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %40
  %48 = load %struct.gmidi_device*, %struct.gmidi_device** %3, align 8
  %49 = getelementptr inbounds %struct.gmidi_device, %struct.gmidi_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @snd_rawmidi_transmit(i32 %50, i32* %7, i32 1)
  %52 = icmp ne i32 %51, 1
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.gmidi_in_port*, %struct.gmidi_in_port** %6, align 8
  %55 = getelementptr inbounds %struct.gmidi_in_port, %struct.gmidi_in_port* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  br label %61

56:                                               ; preds = %47
  %57 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %58 = load %struct.gmidi_in_port*, %struct.gmidi_in_port** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @gmidi_transmit_byte(%struct.usb_request* %57, %struct.gmidi_in_port* %58, i32 %59)
  br label %40

61:                                               ; preds = %53, %40
  br label %62

62:                                               ; preds = %61, %29
  %63 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %64 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %69 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %70 = load i32, i32* @GFP_ATOMIC, align 4
  %71 = call i32 @usb_ep_queue(%struct.usb_ep* %68, %struct.usb_request* %69, i32 %70)
  br label %76

72:                                               ; preds = %62
  %73 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %74 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %75 = call i32 @free_ep_req(%struct.usb_ep* %73, %struct.usb_request* %74)
  br label %76

76:                                               ; preds = %15, %26, %72, %67
  ret void
}

declare dso_local %struct.usb_request* @alloc_ep_req(%struct.usb_ep*, i64) #1

declare dso_local i32 @ERROR(%struct.gmidi_device*, i8*) #1

declare dso_local i32 @snd_rawmidi_transmit(i32, i32*, i32) #1

declare dso_local i32 @gmidi_transmit_byte(%struct.usb_request*, %struct.gmidi_in_port*, i32) #1

declare dso_local i32 @usb_ep_queue(%struct.usb_ep*, %struct.usb_request*, i32) #1

declare dso_local i32 @free_ep_req(%struct.usb_ep*, %struct.usb_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
