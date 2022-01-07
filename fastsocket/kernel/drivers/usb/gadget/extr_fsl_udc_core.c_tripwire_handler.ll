; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_udc_core.c_tripwire_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_udc_core.c_tripwire_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.fsl_udc = type { %struct.ep_queue_head* }
%struct.ep_queue_head = type { i64 }

@EP_DIR_OUT = common dso_local global i32 0, align 4
@dr_regs = common dso_local global %struct.TYPE_2__* null, align 8
@USB_CMD_SUTW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_udc*, i32, i32*)* @tripwire_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tripwire_handler(%struct.fsl_udc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.fsl_udc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ep_queue_head*, align 8
  store %struct.fsl_udc* %0, %struct.fsl_udc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.fsl_udc*, %struct.fsl_udc** %4, align 8
  %10 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %9, i32 0, i32 0
  %11 = load %struct.ep_queue_head*, %struct.ep_queue_head** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = mul nsw i32 %12, 2
  %14 = load i32, i32* @EP_DIR_OUT, align 4
  %15 = add nsw i32 %13, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ep_queue_head, %struct.ep_queue_head* %11, i64 %16
  store %struct.ep_queue_head* %17, %struct.ep_queue_head** %8, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dr_regs, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = call i32 @fsl_readl(i32* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = shl i32 1, %22
  %24 = or i32 %21, %23
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dr_regs, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = call i32 @fsl_writel(i32 %24, i32* %26)
  br label %28

28:                                               ; preds = %44, %3
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dr_regs, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @fsl_readl(i32* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @USB_CMD_SUTW, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dr_regs, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @fsl_writel(i32 %34, i32* %36)
  %38 = load i32*, i32** %6, align 8
  %39 = load %struct.ep_queue_head*, %struct.ep_queue_head** %8, align 8
  %40 = getelementptr inbounds %struct.ep_queue_head, %struct.ep_queue_head* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i32*
  %43 = call i32 @memcpy(i32* %38, i32* %42, i32 8)
  br label %44

44:                                               ; preds = %28
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dr_regs, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @fsl_readl(i32* %46)
  %48 = load i32, i32* @USB_CMD_SUTW, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br i1 %51, label %28, label %52

52:                                               ; preds = %44
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dr_regs, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i32 @fsl_readl(i32* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @USB_CMD_SUTW, align 4
  %58 = xor i32 %57, -1
  %59 = and i32 %56, %58
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dr_regs, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i32 @fsl_writel(i32 %59, i32* %61)
  ret void
}

declare dso_local i32 @fsl_readl(i32*) #1

declare dso_local i32 @fsl_writel(i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
