; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_omap_udc.c_write_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_omap_udc.c_write_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_ep = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.omap_req = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i32, i32* }

@UDC_STAT_FLG = common dso_local global i32 0, align 4
@UDC_FIFO_UNWRITABLE = common dso_local global i32 0, align 4
@UDC_SET_FIFO_EN = common dso_local global i32 0, align 4
@UDC_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_ep*, %struct.omap_req*)* @write_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_fifo(%struct.omap_ep* %0, %struct.omap_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_ep*, align 8
  %5 = alloca %struct.omap_req*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.omap_ep* %0, %struct.omap_ep** %4, align 8
  store %struct.omap_req* %1, %struct.omap_req** %5, align 8
  %10 = load %struct.omap_req*, %struct.omap_req** %5, align 8
  %11 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.omap_req*, %struct.omap_req** %5, align 8
  %15 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %13, i64 %17
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @prefetch(i32* %19)
  %21 = load i32, i32* @UDC_STAT_FLG, align 4
  %22 = call i32 @omap_readw(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @UDC_FIFO_UNWRITABLE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %77

28:                                               ; preds = %2
  %29 = load %struct.omap_ep*, %struct.omap_ep** %4, align 8
  %30 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = load %struct.omap_req*, %struct.omap_req** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @write_packet(i32* %33, %struct.omap_req* %34, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* @UDC_SET_FIFO_EN, align 4
  %38 = load i32, i32* @UDC_CTRL, align 4
  %39 = call i32 @omap_writew(i32 %37, i32 %38)
  %40 = load %struct.omap_ep*, %struct.omap_ep** %4, align 8
  %41 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.omap_ep*, %struct.omap_ep** %4, align 8
  %44 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %42, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %28
  store i32 1, i32* %8, align 4
  br label %68

49:                                               ; preds = %28
  %50 = load %struct.omap_req*, %struct.omap_req** %5, align 8
  %51 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.omap_req*, %struct.omap_req** %5, align 8
  %55 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %53, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %49
  %60 = load %struct.omap_req*, %struct.omap_req** %5, align 8
  %61 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  store i32 1, i32* %8, align 4
  br label %67

66:                                               ; preds = %59, %49
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %66, %65
  br label %68

68:                                               ; preds = %67, %48
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load %struct.omap_ep*, %struct.omap_ep** %4, align 8
  %73 = load %struct.omap_req*, %struct.omap_req** %5, align 8
  %74 = call i32 @done(%struct.omap_ep* %72, %struct.omap_req* %73, i32 0)
  br label %75

75:                                               ; preds = %71, %68
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %27
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @prefetch(i32*) #1

declare dso_local i32 @omap_readw(i32) #1

declare dso_local i32 @write_packet(i32*, %struct.omap_req*, i32) #1

declare dso_local i32 @omap_writew(i32, i32) #1

declare dso_local i32 @done(%struct.omap_ep*, %struct.omap_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
