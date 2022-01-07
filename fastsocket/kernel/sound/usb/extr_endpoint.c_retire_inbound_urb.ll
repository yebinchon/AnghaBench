; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_endpoint.c_retire_inbound_urb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_endpoint.c_retire_inbound_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_endpoint = type { i64, i32, i32 (i32, %struct.urb*)*, i64 }
%struct.urb = type { i32 }
%struct.snd_urb_ctx = type { %struct.urb* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usb_endpoint*, %struct.snd_urb_ctx*)* @retire_inbound_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @retire_inbound_urb(%struct.snd_usb_endpoint* %0, %struct.snd_urb_ctx* %1) #0 {
  %3 = alloca %struct.snd_usb_endpoint*, align 8
  %4 = alloca %struct.snd_urb_ctx*, align 8
  %5 = alloca %struct.urb*, align 8
  store %struct.snd_usb_endpoint* %0, %struct.snd_usb_endpoint** %3, align 8
  store %struct.snd_urb_ctx* %1, %struct.snd_urb_ctx** %4, align 8
  %6 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %4, align 8
  %7 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %6, i32 0, i32 0
  %8 = load %struct.urb*, %struct.urb** %7, align 8
  store %struct.urb* %8, %struct.urb** %5, align 8
  %9 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %10 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %18 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, i64* %18, align 8
  br label %47

21:                                               ; preds = %2
  %22 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %23 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %28 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %31 = load %struct.urb*, %struct.urb** %5, align 8
  %32 = call i32 @snd_usb_handle_sync_urb(i64 %29, %struct.snd_usb_endpoint* %30, %struct.urb* %31)
  br label %33

33:                                               ; preds = %26, %21
  %34 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %35 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %34, i32 0, i32 2
  %36 = load i32 (i32, %struct.urb*)*, i32 (i32, %struct.urb*)** %35, align 8
  %37 = icmp ne i32 (i32, %struct.urb*)* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %40 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %39, i32 0, i32 2
  %41 = load i32 (i32, %struct.urb*)*, i32 (i32, %struct.urb*)** %40, align 8
  %42 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %43 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.urb*, %struct.urb** %5, align 8
  %46 = call i32 %41(i32 %44, %struct.urb* %45)
  br label %47

47:                                               ; preds = %16, %38, %33
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @snd_usb_handle_sync_urb(i64, %struct.snd_usb_endpoint*, %struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
