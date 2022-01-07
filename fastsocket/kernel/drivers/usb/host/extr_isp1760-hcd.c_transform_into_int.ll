; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_isp1760-hcd.c_transform_into_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_isp1760-hcd.c_transform_into_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp1760_hcd = type { i32 }
%struct.isp1760_qh = type { i32 }
%struct.isp1760_qtd = type { i32 }
%struct.urb = type { i32 }
%struct.ptd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp1760_hcd*, %struct.isp1760_qh*, %struct.isp1760_qtd*, %struct.urb*, i32, %struct.ptd*)* @transform_into_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transform_into_int(%struct.isp1760_hcd* %0, %struct.isp1760_qh* %1, %struct.isp1760_qtd* %2, %struct.urb* %3, i32 %4, %struct.ptd* %5) #0 {
  %7 = alloca %struct.isp1760_hcd*, align 8
  %8 = alloca %struct.isp1760_qh*, align 8
  %9 = alloca %struct.isp1760_qtd*, align 8
  %10 = alloca %struct.urb*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ptd*, align 8
  store %struct.isp1760_hcd* %0, %struct.isp1760_hcd** %7, align 8
  store %struct.isp1760_qh* %1, %struct.isp1760_qh** %8, align 8
  store %struct.isp1760_qtd* %2, %struct.isp1760_qtd** %9, align 8
  store %struct.urb* %3, %struct.urb** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.ptd* %5, %struct.ptd** %12, align 8
  %13 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %7, align 8
  %14 = load %struct.isp1760_qh*, %struct.isp1760_qh** %8, align 8
  %15 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %9, align 8
  %16 = load %struct.urb*, %struct.urb** %10, align 8
  %17 = load i32, i32* %11, align 4
  %18 = load %struct.ptd*, %struct.ptd** %12, align 8
  %19 = call i32 @transform_into_atl(%struct.isp1760_hcd* %13, %struct.isp1760_qh* %14, %struct.isp1760_qtd* %15, %struct.urb* %16, i32 %17, %struct.ptd* %18)
  %20 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %7, align 8
  %21 = load %struct.isp1760_qh*, %struct.isp1760_qh** %8, align 8
  %22 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %9, align 8
  %23 = load %struct.urb*, %struct.urb** %10, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.ptd*, %struct.ptd** %12, align 8
  %26 = call i32 @transform_add_int(%struct.isp1760_hcd* %20, %struct.isp1760_qh* %21, %struct.isp1760_qtd* %22, %struct.urb* %23, i32 %24, %struct.ptd* %25)
  ret void
}

declare dso_local i32 @transform_into_atl(%struct.isp1760_hcd*, %struct.isp1760_qh*, %struct.isp1760_qtd*, %struct.urb*, i32, %struct.ptd*) #1

declare dso_local i32 @transform_add_int(%struct.isp1760_hcd*, %struct.isp1760_qh*, %struct.isp1760_qtd*, %struct.urb*, i32, %struct.ptd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
