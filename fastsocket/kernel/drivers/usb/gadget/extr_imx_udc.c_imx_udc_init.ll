; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_imx_udc.c_imx_udc_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_imx_udc.c_imx_udc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_udc_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx_udc_struct*)* @imx_udc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_udc_init(%struct.imx_udc_struct* %0) #0 {
  %2 = alloca %struct.imx_udc_struct*, align 8
  store %struct.imx_udc_struct* %0, %struct.imx_udc_struct** %2, align 8
  %3 = load %struct.imx_udc_struct*, %struct.imx_udc_struct** %2, align 8
  %4 = call i32 @imx_udc_reset(%struct.imx_udc_struct* %3)
  %5 = load %struct.imx_udc_struct*, %struct.imx_udc_struct** %2, align 8
  %6 = call i32 @imx_udc_config(%struct.imx_udc_struct* %5)
  %7 = load %struct.imx_udc_struct*, %struct.imx_udc_struct** %2, align 8
  %8 = call i32 @imx_udc_init_irq(%struct.imx_udc_struct* %7)
  %9 = load %struct.imx_udc_struct*, %struct.imx_udc_struct** %2, align 8
  %10 = call i32 @imx_udc_init_ep(%struct.imx_udc_struct* %9)
  %11 = load %struct.imx_udc_struct*, %struct.imx_udc_struct** %2, align 8
  %12 = call i32 @imx_udc_init_fifo(%struct.imx_udc_struct* %11)
  ret void
}

declare dso_local i32 @imx_udc_reset(%struct.imx_udc_struct*) #1

declare dso_local i32 @imx_udc_config(%struct.imx_udc_struct*) #1

declare dso_local i32 @imx_udc_init_irq(%struct.imx_udc_struct*) #1

declare dso_local i32 @imx_udc_init_ep(%struct.imx_udc_struct*) #1

declare dso_local i32 @imx_udc_init_fifo(%struct.imx_udc_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
