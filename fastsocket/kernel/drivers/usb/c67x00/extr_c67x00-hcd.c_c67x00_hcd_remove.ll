; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/c67x00/extr_c67x00-hcd.c_c67x00_hcd_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/c67x00/extr_c67x00-hcd.c_c67x00_hcd_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c67x00_sie = type { %struct.c67x00_hcd* }
%struct.c67x00_hcd = type { i32 }
%struct.usb_hcd = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c67x00_hcd_remove(%struct.c67x00_sie* %0) #0 {
  %2 = alloca %struct.c67x00_sie*, align 8
  %3 = alloca %struct.c67x00_hcd*, align 8
  %4 = alloca %struct.usb_hcd*, align 8
  store %struct.c67x00_sie* %0, %struct.c67x00_sie** %2, align 8
  %5 = load %struct.c67x00_sie*, %struct.c67x00_sie** %2, align 8
  %6 = getelementptr inbounds %struct.c67x00_sie, %struct.c67x00_sie* %5, i32 0, i32 0
  %7 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %6, align 8
  store %struct.c67x00_hcd* %7, %struct.c67x00_hcd** %3, align 8
  %8 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %3, align 8
  %9 = call %struct.usb_hcd* @c67x00_hcd_to_hcd(%struct.c67x00_hcd* %8)
  store %struct.usb_hcd* %9, %struct.usb_hcd** %4, align 8
  %10 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %3, align 8
  %11 = call i32 @c67x00_sched_stop_scheduler(%struct.c67x00_hcd* %10)
  %12 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %13 = call i32 @usb_remove_hcd(%struct.usb_hcd* %12)
  %14 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %15 = call i32 @usb_put_hcd(%struct.usb_hcd* %14)
  ret void
}

declare dso_local %struct.usb_hcd* @c67x00_hcd_to_hcd(%struct.c67x00_hcd*) #1

declare dso_local i32 @c67x00_sched_stop_scheduler(%struct.c67x00_hcd*) #1

declare dso_local i32 @usb_remove_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
