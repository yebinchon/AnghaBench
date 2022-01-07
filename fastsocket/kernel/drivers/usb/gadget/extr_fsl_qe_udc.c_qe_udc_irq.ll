; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_qe_udc.c_qe_udc_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_qe_udc.c_qe_udc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qe_udc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@USB_E_IDLE_MASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@USB_E_TXB_MASK = common dso_local global i32 0, align 4
@USB_E_RXB_MASK = common dso_local global i32 0, align 4
@USB_E_RESET_MASK = common dso_local global i32 0, align 4
@USB_E_BSY_MASK = common dso_local global i32 0, align 4
@USB_E_TXE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @qe_udc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qe_udc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qe_udc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.qe_udc*
  store %struct.qe_udc* %10, %struct.qe_udc** %5, align 8
  %11 = load i32, i32* @IRQ_NONE, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.qe_udc*, %struct.qe_udc** %5, align 8
  %13 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %12, i32 0, i32 0
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.qe_udc*, %struct.qe_udc** %5, align 8
  %17 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @in_be16(i32* %19)
  %21 = load %struct.qe_udc*, %struct.qe_udc** %5, align 8
  %22 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = call i32 @in_be16(i32* %24)
  %26 = and i32 %20, %25
  store i32 %26, i32* %6, align 4
  %27 = load %struct.qe_udc*, %struct.qe_udc** %5, align 8
  %28 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @out_be16(i32* %30, i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @USB_E_IDLE_MASK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %2
  %38 = load %struct.qe_udc*, %struct.qe_udc** %5, align 8
  %39 = call i32 @idle_irq(%struct.qe_udc* %38)
  %40 = load i32, i32* @USB_E_IDLE_MASK, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %37, %2
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @USB_E_TXB_MASK, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load %struct.qe_udc*, %struct.qe_udc** %5, align 8
  %52 = call i32 @tx_irq(%struct.qe_udc* %51)
  %53 = load i32, i32* @USB_E_TXB_MASK, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %50, %45
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @USB_E_RXB_MASK, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load %struct.qe_udc*, %struct.qe_udc** %5, align 8
  %65 = call i32 @rx_irq(%struct.qe_udc* %64)
  %66 = load i32, i32* @USB_E_RXB_MASK, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %6, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %63, %58
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @USB_E_RESET_MASK, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load %struct.qe_udc*, %struct.qe_udc** %5, align 8
  %78 = call i32 @reset_irq(%struct.qe_udc* %77)
  %79 = load i32, i32* @USB_E_RESET_MASK, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %6, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %76, %71
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @USB_E_BSY_MASK, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %84
  %90 = load %struct.qe_udc*, %struct.qe_udc** %5, align 8
  %91 = call i32 @bsy_irq(%struct.qe_udc* %90)
  %92 = load i32, i32* @USB_E_BSY_MASK, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %6, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %89, %84
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @USB_E_TXE_MASK, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %97
  %103 = load %struct.qe_udc*, %struct.qe_udc** %5, align 8
  %104 = call i32 @txe_irq(%struct.qe_udc* %103)
  %105 = load i32, i32* @USB_E_TXE_MASK, align 4
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %6, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %102, %97
  %111 = load %struct.qe_udc*, %struct.qe_udc** %5, align 8
  %112 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %111, i32 0, i32 0
  %113 = load i64, i64* %8, align 8
  %114 = call i32 @spin_unlock_irqrestore(i32* %112, i64 %113)
  %115 = load i32, i32* %7, align 4
  ret i32 %115
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @in_be16(i32*) #1

declare dso_local i32 @out_be16(i32*, i32) #1

declare dso_local i32 @idle_irq(%struct.qe_udc*) #1

declare dso_local i32 @tx_irq(%struct.qe_udc*) #1

declare dso_local i32 @rx_irq(%struct.qe_udc*) #1

declare dso_local i32 @reset_irq(%struct.qe_udc*) #1

declare dso_local i32 @bsy_irq(%struct.qe_udc*) #1

declare dso_local i32 @txe_irq(%struct.qe_udc*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
