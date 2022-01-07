; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_amd5536udc.c_startup_registers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_amd5536udc.c_startup_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@use_fullspeed = common dso_local global i64 0, align 8
@UDC_DEVCFG_SPD_FS = common dso_local global i32 0, align 4
@UDC_DEVCFG_SPD = common dso_local global i32 0, align 4
@UDC_DEVCFG_SPD_HS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.udc*)* @startup_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @startup_registers(%struct.udc* %0) #0 {
  %2 = alloca %struct.udc*, align 8
  %3 = alloca i32, align 4
  store %struct.udc* %0, %struct.udc** %2, align 8
  %4 = load %struct.udc*, %struct.udc** %2, align 8
  %5 = call i32 @udc_soft_reset(%struct.udc* %4)
  %6 = load %struct.udc*, %struct.udc** %2, align 8
  %7 = call i32 @udc_mask_unused_interrupts(%struct.udc* %6)
  %8 = load %struct.udc*, %struct.udc** %2, align 8
  %9 = call i32 @udc_basic_init(%struct.udc* %8)
  %10 = load %struct.udc*, %struct.udc** %2, align 8
  %11 = call i32 @udc_setup_endpoints(%struct.udc* %10)
  %12 = load %struct.udc*, %struct.udc** %2, align 8
  %13 = getelementptr inbounds %struct.udc, %struct.udc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @readl(i32* %15)
  store i32 %16, i32* %3, align 4
  %17 = load i64, i64* @use_fullspeed, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @UDC_DEVCFG_SPD_FS, align 4
  %22 = load i32, i32* @UDC_DEVCFG_SPD, align 4
  %23 = call i32 @AMD_ADDBITS(i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %3, align 4
  br label %29

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @UDC_DEVCFG_SPD_HS, align 4
  %27 = load i32, i32* @UDC_DEVCFG_SPD, align 4
  %28 = call i32 @AMD_ADDBITS(i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %24, %19
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.udc*, %struct.udc** %2, align 8
  %32 = getelementptr inbounds %struct.udc, %struct.udc* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @writel(i32 %30, i32* %34)
  ret i32 0
}

declare dso_local i32 @udc_soft_reset(%struct.udc*) #1

declare dso_local i32 @udc_mask_unused_interrupts(%struct.udc*) #1

declare dso_local i32 @udc_basic_init(%struct.udc*) #1

declare dso_local i32 @udc_setup_endpoints(%struct.udc*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @AMD_ADDBITS(i32, i32, i32) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
