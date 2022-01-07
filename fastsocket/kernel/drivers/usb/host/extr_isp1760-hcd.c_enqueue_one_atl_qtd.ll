; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_isp1760-hcd.c_enqueue_one_atl_qtd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_isp1760-hcd.c_enqueue_one_atl_qtd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp1760_hcd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, %struct.isp1760_qtd*, %struct.isp1760_qh*, %struct.urb* }
%struct.isp1760_qh = type { i32 }
%struct.urb = type { i32 }
%struct.isp1760_qtd = type { i32, i32 }
%struct.ptd = type { i32 }
%struct.usb_hcd = type { i64 }

@URB_ENQUEUED = common dso_local global i32 0, align 4
@URB_TYPE_ATL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, %struct.isp1760_hcd*, %struct.isp1760_qh*, %struct.urb*, i64, %struct.isp1760_qtd*)* @enqueue_one_atl_qtd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enqueue_one_atl_qtd(i64 %0, i64 %1, %struct.isp1760_hcd* %2, %struct.isp1760_qh* %3, %struct.urb* %4, i64 %5, %struct.isp1760_qtd* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.isp1760_hcd*, align 8
  %11 = alloca %struct.isp1760_qh*, align 8
  %12 = alloca %struct.urb*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.isp1760_qtd*, align 8
  %15 = alloca %struct.ptd, align 4
  %16 = alloca %struct.usb_hcd*, align 8
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.isp1760_hcd* %2, %struct.isp1760_hcd** %10, align 8
  store %struct.isp1760_qh* %3, %struct.isp1760_qh** %11, align 8
  store %struct.urb* %4, %struct.urb** %12, align 8
  store i64 %5, i64* %13, align 8
  store %struct.isp1760_qtd* %6, %struct.isp1760_qtd** %14, align 8
  %17 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %10, align 8
  %18 = call %struct.usb_hcd* @priv_to_hcd(%struct.isp1760_hcd* %17)
  store %struct.usb_hcd* %18, %struct.usb_hcd** %16, align 8
  %19 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %10, align 8
  %20 = load %struct.isp1760_qh*, %struct.isp1760_qh** %11, align 8
  %21 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %14, align 8
  %22 = load %struct.urb*, %struct.urb** %12, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @transform_into_atl(%struct.isp1760_hcd* %19, %struct.isp1760_qh* %20, %struct.isp1760_qtd* %21, %struct.urb* %22, i64 %23, %struct.ptd* %15)
  %25 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %10, align 8
  %26 = bitcast %struct.ptd* %15 to i64*
  %27 = load %struct.usb_hcd*, %struct.usb_hcd** %16, align 8
  %28 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = add i64 %29, %30
  %32 = call i32 @priv_write_copy(%struct.isp1760_hcd* %25, i64* %26, i64 %31, i32 4)
  %33 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %14, align 8
  %34 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %10, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @enqueue_one_qtd(%struct.isp1760_qtd* %33, %struct.isp1760_hcd* %34, i64 %35)
  %37 = load %struct.urb*, %struct.urb** %12, align 8
  %38 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %10, align 8
  %39 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i64, i64* %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 4
  store %struct.urb* %37, %struct.urb** %43, align 8
  %44 = load %struct.isp1760_qh*, %struct.isp1760_qh** %11, align 8
  %45 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %10, align 8
  %46 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i64, i64* %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  store %struct.isp1760_qh* %44, %struct.isp1760_qh** %50, align 8
  %51 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %14, align 8
  %52 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %10, align 8
  %53 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i64, i64* %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  store %struct.isp1760_qtd* %51, %struct.isp1760_qtd** %57, align 8
  %58 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %14, align 8
  %59 = getelementptr inbounds %struct.isp1760_qtd, %struct.isp1760_qtd* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %10, align 8
  %62 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i64, i64* %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i32 %60, i32* %66, align 8
  %67 = load i64, i64* %9, align 8
  %68 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %10, align 8
  %69 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i64, i64* %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i64 %67, i64* %73, align 8
  %74 = load i32, i32* @URB_ENQUEUED, align 4
  %75 = load i32, i32* @URB_TYPE_ATL, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %14, align 8
  %78 = getelementptr inbounds %struct.isp1760_qtd, %struct.isp1760_qtd* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = load i64, i64* %13, align 8
  %82 = shl i64 %81, 16
  %83 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %14, align 8
  %84 = getelementptr inbounds %struct.isp1760_qtd, %struct.isp1760_qtd* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = or i64 %86, %82
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %84, align 4
  ret void
}

declare dso_local %struct.usb_hcd* @priv_to_hcd(%struct.isp1760_hcd*) #1

declare dso_local i32 @transform_into_atl(%struct.isp1760_hcd*, %struct.isp1760_qh*, %struct.isp1760_qtd*, %struct.urb*, i64, %struct.ptd*) #1

declare dso_local i32 @priv_write_copy(%struct.isp1760_hcd*, i64*, i64, i32) #1

declare dso_local i32 @enqueue_one_qtd(%struct.isp1760_qtd*, %struct.isp1760_hcd*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
