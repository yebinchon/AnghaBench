; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_imx_udc.c_ep0_chg_stat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_imx_udc.c_ep0_chg_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_udc_struct = type { i64, i32 }

@.str = private unnamed_addr constant [24 x i8] c"<%s> from %15s to %15s\0A\00", align 1
@state_name = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ep0_chg_stat(i8* %0, %struct.imx_udc_struct* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.imx_udc_struct*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.imx_udc_struct* %1, %struct.imx_udc_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.imx_udc_struct*, %struct.imx_udc_struct** %5, align 8
  %8 = getelementptr inbounds %struct.imx_udc_struct, %struct.imx_udc_struct* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i32*, i32** @state_name, align 8
  %12 = load %struct.imx_udc_struct*, %struct.imx_udc_struct** %5, align 8
  %13 = getelementptr inbounds %struct.imx_udc_struct, %struct.imx_udc_struct* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** @state_name, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @D_EP0(i32 %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %10, i32 %16, i32 %21)
  %23 = load %struct.imx_udc_struct*, %struct.imx_udc_struct** %5, align 8
  %24 = getelementptr inbounds %struct.imx_udc_struct, %struct.imx_udc_struct* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = icmp eq i64 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %35

30:                                               ; preds = %3
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = load %struct.imx_udc_struct*, %struct.imx_udc_struct** %5, align 8
  %34 = getelementptr inbounds %struct.imx_udc_struct, %struct.imx_udc_struct* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %30, %29
  ret void
}

declare dso_local i32 @D_EP0(i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
