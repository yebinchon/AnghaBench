; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_endpoint.c_snd_usb_endpoint_deactivate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_endpoint.c_snd_usb_endpoint_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_endpoint = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EP_FLAG_ACTIVATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_usb_endpoint_deactivate(%struct.snd_usb_endpoint* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_usb_endpoint*, align 8
  store %struct.snd_usb_endpoint* %0, %struct.snd_usb_endpoint** %3, align 8
  %4 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %5 = icmp ne %struct.snd_usb_endpoint* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %2, align 4
  br label %24

9:                                                ; preds = %1
  %10 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %11 = call i32 @deactivate_urbs(%struct.snd_usb_endpoint* %10, i32 1, i32 1)
  %12 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %13 = call i32 @wait_clear_urbs(%struct.snd_usb_endpoint* %12)
  %14 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %15 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %24

19:                                               ; preds = %9
  %20 = load i32, i32* @EP_FLAG_ACTIVATED, align 4
  %21 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %22 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %21, i32 0, i32 1
  %23 = call i32 @clear_bit(i32 %20, i32* %22)
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %19, %18, %6
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @deactivate_urbs(%struct.snd_usb_endpoint*, i32, i32) #1

declare dso_local i32 @wait_clear_urbs(%struct.snd_usb_endpoint*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
