; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_audio.c_f_audio_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_audio.c_f_audio_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usb_request = type { i32, i32, i32, %struct.f_audio* }
%struct.f_audio = type { %struct.TYPE_2__*, i32, %struct.usb_ep* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ep*, %struct.usb_request*)* @f_audio_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f_audio_complete(%struct.usb_ep* %0, %struct.usb_request* %1) #0 {
  %3 = alloca %struct.usb_ep*, align 8
  %4 = alloca %struct.usb_request*, align 8
  %5 = alloca %struct.f_audio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_ep*, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %3, align 8
  store %struct.usb_request* %1, %struct.usb_request** %4, align 8
  %9 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %10 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %9, i32 0, i32 3
  %11 = load %struct.f_audio*, %struct.f_audio** %10, align 8
  store %struct.f_audio* %11, %struct.f_audio** %5, align 8
  %12 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %13 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %15 = load %struct.f_audio*, %struct.f_audio** %5, align 8
  %16 = getelementptr inbounds %struct.f_audio, %struct.f_audio* %15, i32 0, i32 2
  %17 = load %struct.usb_ep*, %struct.usb_ep** %16, align 8
  store %struct.usb_ep* %17, %struct.usb_ep** %8, align 8
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %58 [
    i32 0, label %19
  ]

19:                                               ; preds = %2
  %20 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %21 = load %struct.usb_ep*, %struct.usb_ep** %8, align 8
  %22 = icmp eq %struct.usb_ep* %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %25 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %26 = call i32 @f_audio_out_ep_complete(%struct.usb_ep* %24, %struct.usb_request* %25)
  br label %57

27:                                               ; preds = %19
  %28 = load %struct.f_audio*, %struct.f_audio** %5, align 8
  %29 = getelementptr inbounds %struct.f_audio, %struct.f_audio* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = icmp ne %struct.TYPE_2__* %30, null
  br i1 %31, label %32, label %56

32:                                               ; preds = %27
  %33 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %34 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %37 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @memcpy(i32* %7, i32 %35, i32 %38)
  %40 = load %struct.f_audio*, %struct.f_audio** %5, align 8
  %41 = getelementptr inbounds %struct.f_audio, %struct.f_audio* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (%struct.TYPE_2__*, i32, i32)*, i32 (%struct.TYPE_2__*, i32, i32)** %43, align 8
  %45 = load %struct.f_audio*, %struct.f_audio** %5, align 8
  %46 = getelementptr inbounds %struct.f_audio, %struct.f_audio* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load %struct.f_audio*, %struct.f_audio** %5, align 8
  %49 = getelementptr inbounds %struct.f_audio, %struct.f_audio* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @le16_to_cpu(i32 %51)
  %53 = call i32 %44(%struct.TYPE_2__* %47, i32 %50, i32 %52)
  %54 = load %struct.f_audio*, %struct.f_audio** %5, align 8
  %55 = getelementptr inbounds %struct.f_audio, %struct.f_audio* %54, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %55, align 8
  br label %56

56:                                               ; preds = %32, %27
  br label %57

57:                                               ; preds = %56, %23
  br label %59

58:                                               ; preds = %2
  br label %59

59:                                               ; preds = %58, %57
  ret void
}

declare dso_local i32 @f_audio_out_ep_complete(%struct.usb_ep*, %struct.usb_request*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
