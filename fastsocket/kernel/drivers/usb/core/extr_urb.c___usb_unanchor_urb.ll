; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_urb.c___usb_unanchor_urb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_urb.c___usb_unanchor_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32* }
%struct.usb_anchor = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*, %struct.usb_anchor*)* @__usb_unanchor_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__usb_unanchor_urb(%struct.urb* %0, %struct.usb_anchor* %1) #0 {
  %3 = alloca %struct.urb*, align 8
  %4 = alloca %struct.usb_anchor*, align 8
  store %struct.urb* %0, %struct.urb** %3, align 8
  store %struct.usb_anchor* %1, %struct.usb_anchor** %4, align 8
  %5 = load %struct.urb*, %struct.urb** %3, align 8
  %6 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 1
  store i32* null, i32** %6, align 8
  %7 = load %struct.urb*, %struct.urb** %3, align 8
  %8 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 0
  %9 = call i32 @list_del(i32* %8)
  %10 = load %struct.urb*, %struct.urb** %3, align 8
  %11 = call i32 @usb_put_urb(%struct.urb* %10)
  %12 = load %struct.usb_anchor*, %struct.usb_anchor** %4, align 8
  %13 = getelementptr inbounds %struct.usb_anchor, %struct.usb_anchor* %12, i32 0, i32 1
  %14 = call i64 @list_empty(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.usb_anchor*, %struct.usb_anchor** %4, align 8
  %18 = getelementptr inbounds %struct.usb_anchor, %struct.usb_anchor* %17, i32 0, i32 0
  %19 = call i32 @wake_up(i32* %18)
  br label %20

20:                                               ; preds = %16, %2
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @usb_put_urb(%struct.urb*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
