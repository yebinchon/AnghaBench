; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_qe_udc.c_qe_ep_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_qe_udc.c_qe_ep_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qe_udc = type { %struct.TYPE_2__*, %struct.qe_ep* }
%struct.TYPE_2__ = type { i32* }
%struct.qe_ep = type { i32 }

@USB_RTHS_MASK = common dso_local global i32 0, align 4
@USB_THS_IGNORE_IN = common dso_local global i32 0, align 4
@USB_RHS_IGNORE_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qe_udc*, i32)* @qe_ep_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qe_ep_reset(%struct.qe_udc* %0, i32 %1) #0 {
  %3 = alloca %struct.qe_udc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qe_ep*, align 8
  %6 = alloca i32, align 4
  store %struct.qe_udc* %0, %struct.qe_udc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %8 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %7, i32 0, i32 1
  %9 = load %struct.qe_ep*, %struct.qe_ep** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %9, i64 %11
  store %struct.qe_ep* %12, %struct.qe_ep** %5, align 8
  %13 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %14 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = call i32 @in_be16(i32* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @USB_RTHS_MASK, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load %struct.qe_ep*, %struct.qe_ep** %5, align 8
  %27 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %42 [
    i32 130, label %29
    i32 128, label %32
    i32 129, label %36
  ]

29:                                               ; preds = %2
  %30 = load %struct.qe_ep*, %struct.qe_ep** %5, align 8
  %31 = call i32 @qe_ep_flushtxfifo(%struct.qe_ep* %30)
  br label %43

32:                                               ; preds = %2
  %33 = load i32, i32* @USB_THS_IGNORE_IN, align 4
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  br label %43

36:                                               ; preds = %2
  %37 = load %struct.qe_ep*, %struct.qe_ep** %5, align 8
  %38 = call i32 @qe_ep_flushtxfifo(%struct.qe_ep* %37)
  %39 = load i32, i32* @USB_RHS_IGNORE_OUT, align 4
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %6, align 4
  br label %43

42:                                               ; preds = %2
  br label %43

43:                                               ; preds = %42, %36, %32, %29
  %44 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %45 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @out_be16(i32* %51, i32 %52)
  %54 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @qe_epbds_reset(%struct.qe_udc* %54, i32 %55)
  ret i32 0
}

declare dso_local i32 @in_be16(i32*) #1

declare dso_local i32 @qe_ep_flushtxfifo(%struct.qe_ep*) #1

declare dso_local i32 @out_be16(i32*, i32) #1

declare dso_local i32 @qe_epbds_reset(%struct.qe_udc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
