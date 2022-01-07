; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa27x_udc.c_irq_handle_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa27x_udc.c_irq_handle_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_udc = type { %struct.pxa_ep* }
%struct.pxa_ep = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@UDCISR0 = common dso_local global i32 0, align 4
@UDCCISR0_EP_MASK = common dso_local global i32 0, align 4
@UDCISR1 = common dso_local global i32 0, align 4
@UDCCISR1_EP_MASK = common dso_local global i32 0, align 4
@UDCISR_INT_MASK = common dso_local global i32 0, align 4
@UDCICR_FIFOERR = common dso_local global i32 0, align 4
@UDCICR_PKTCOMPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.pxa_udc*)* @irq_handle_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @irq_handle_data(i32 %0, %struct.pxa_udc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pxa_udc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pxa_ep*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.pxa_udc* %1, %struct.pxa_udc** %4, align 8
  %9 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %10 = load i32, i32* @UDCISR0, align 4
  %11 = call i32 @udc_readl(%struct.pxa_udc* %9, i32 %10)
  %12 = load i32, i32* @UDCCISR0_EP_MASK, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %7, align 4
  %14 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %15 = load i32, i32* @UDCISR1, align 4
  %16 = call i32 @udc_readl(%struct.pxa_udc* %14, i32 %15)
  %17 = load i32, i32* @UDCCISR1_EP_MASK, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @UDCISR_INT_MASK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %53

23:                                               ; preds = %2
  %24 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %25 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %24, i32 0, i32 0
  %26 = load %struct.pxa_ep*, %struct.pxa_ep** %25, align 8
  %27 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %26, i64 0
  %28 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %33 = load i32, i32* @UDCISR0, align 4
  %34 = load i32, i32* @UDCISR_INT_MASK, align 4
  %35 = call i32 @UDCISR_INT(i32 0, i32 %34)
  %36 = call i32 @udc_writel(%struct.pxa_udc* %32, i32 %33, i32 %35)
  %37 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @UDCICR_FIFOERR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @UDCICR_PKTCOMPL, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i32 @handle_ep0(%struct.pxa_udc* %37, i32 %44, i32 %51)
  br label %53

53:                                               ; preds = %23, %2
  %54 = load i32, i32* %7, align 4
  %55 = ashr i32 %54, 2
  store i32 %55, i32* %7, align 4
  store i32 1, i32* %5, align 4
  br label %56

56:                                               ; preds = %90, %53
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %60, 16
  br label %62

62:                                               ; preds = %59, %56
  %63 = phi i1 [ false, %56 ], [ %61, %59 ]
  br i1 %63, label %64, label %95

64:                                               ; preds = %62
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @UDCISR_INT_MASK, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  br label %90

70:                                               ; preds = %64
  %71 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %72 = load i32, i32* @UDCISR0, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @UDCISR_INT_MASK, align 4
  %75 = call i32 @UDCISR_INT(i32 %73, i32 %74)
  %76 = call i32 @udc_writel(%struct.pxa_udc* %71, i32 %72, i32 %75)
  %77 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %78 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %77, i32 0, i32 0
  %79 = load %struct.pxa_ep*, %struct.pxa_ep** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %79, i64 %81
  store %struct.pxa_ep* %82, %struct.pxa_ep** %6, align 8
  %83 = load %struct.pxa_ep*, %struct.pxa_ep** %6, align 8
  %84 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  %88 = load %struct.pxa_ep*, %struct.pxa_ep** %6, align 8
  %89 = call i32 @handle_ep(%struct.pxa_ep* %88)
  br label %90

90:                                               ; preds = %70, %69
  %91 = load i32, i32* %7, align 4
  %92 = ashr i32 %91, 2
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %56

95:                                               ; preds = %62
  store i32 16, i32* %5, align 4
  br label %96

96:                                               ; preds = %131, %95
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32, i32* %5, align 4
  %101 = icmp slt i32 %100, 24
  br label %102

102:                                              ; preds = %99, %96
  %103 = phi i1 [ false, %96 ], [ %101, %99 ]
  br i1 %103, label %104, label %136

104:                                              ; preds = %102
  %105 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %106 = load i32, i32* @UDCISR1, align 4
  %107 = load i32, i32* %5, align 4
  %108 = sub nsw i32 %107, 16
  %109 = load i32, i32* @UDCISR_INT_MASK, align 4
  %110 = call i32 @UDCISR_INT(i32 %108, i32 %109)
  %111 = call i32 @udc_writel(%struct.pxa_udc* %105, i32 %106, i32 %110)
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @UDCISR_INT_MASK, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %104
  br label %131

117:                                              ; preds = %104
  %118 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %119 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %118, i32 0, i32 0
  %120 = load %struct.pxa_ep*, %struct.pxa_ep** %119, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %120, i64 %122
  store %struct.pxa_ep* %123, %struct.pxa_ep** %6, align 8
  %124 = load %struct.pxa_ep*, %struct.pxa_ep** %6, align 8
  %125 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  %129 = load %struct.pxa_ep*, %struct.pxa_ep** %6, align 8
  %130 = call i32 @handle_ep(%struct.pxa_ep* %129)
  br label %131

131:                                              ; preds = %117, %116
  %132 = load i32, i32* %8, align 4
  %133 = ashr i32 %132, 2
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %5, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %5, align 4
  br label %96

136:                                              ; preds = %102
  ret void
}

declare dso_local i32 @udc_readl(%struct.pxa_udc*, i32) #1

declare dso_local i32 @udc_writel(%struct.pxa_udc*, i32, i32) #1

declare dso_local i32 @UDCISR_INT(i32, i32) #1

declare dso_local i32 @handle_ep0(%struct.pxa_udc*, i32, i32) #1

declare dso_local i32 @handle_ep(%struct.pxa_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
