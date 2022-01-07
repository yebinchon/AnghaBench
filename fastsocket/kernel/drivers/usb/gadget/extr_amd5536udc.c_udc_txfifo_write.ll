; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_amd5536udc.c_udc_txfifo_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_amd5536udc.c_udc_txfifo_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udc_ep = type { %struct.TYPE_4__*, i32*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.usb_request = type { i32, i32, i32* }

@UDC_DWORD_BYTES = common dso_local global i32 0, align 4
@UDC_BITS_PER_BYTE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.udc_ep*, %struct.usb_request*)* @udc_txfifo_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udc_txfifo_write(%struct.udc_ep* %0, %struct.usb_request* %1) #0 {
  %3 = alloca %struct.udc_ep*, align 8
  %4 = alloca %struct.usb_request*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.udc_ep* %0, %struct.udc_ep** %3, align 8
  store %struct.usb_request* %1, %struct.usb_request** %4, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %12 = icmp ne %struct.usb_request* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %15 = icmp ne %struct.udc_ep* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %2
  br label %95

17:                                               ; preds = %13
  %18 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %19 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %22 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  store i32* %25, i32** %5, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @prefetch(i32* %26)
  %28 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %29 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %32 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub i32 %30, %33
  store i32 %34, i32* %10, align 4
  %35 = load i32*, i32** %5, align 8
  store i32* %35, i32** %6, align 8
  %36 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %37 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ugt i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %17
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %43, %17
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %62, %45
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @UDC_DWORD_BYTES, align 4
  %50 = udiv i32 %48, %49
  %51 = icmp ult i32 %47, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %46
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %59 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @writel(i32 %57, i32* %60)
  br label %62

62:                                               ; preds = %52
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %46

65:                                               ; preds = %46
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %86, %65
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @UDC_DWORD_BYTES, align 4
  %70 = urem i32 %68, %69
  %71 = icmp ult i32 %67, %70
  br i1 %71, label %72, label %89

72:                                               ; preds = %66
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @UDC_BITS_PER_BYTE_SHIFT, align 4
  %80 = shl i32 %78, %79
  %81 = ashr i32 %77, %80
  %82 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %83 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @writeb(i32 %81, i32* %84)
  br label %86

86:                                               ; preds = %72
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %66

89:                                               ; preds = %66
  %90 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %91 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = call i32 @writel(i32 0, i32* %93)
  br label %95

95:                                               ; preds = %89, %16
  ret void
}

declare dso_local i32 @prefetch(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @writeb(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
