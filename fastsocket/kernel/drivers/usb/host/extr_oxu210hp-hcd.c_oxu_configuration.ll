; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_configuration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@OXU_HOSTIFCONFIG = common dso_local global i32 0, align 4
@OXU_SOFTRESET = common dso_local global i32 0, align 4
@OXU_SRESET = common dso_local global i32 0, align 4
@OXU_PIOBURSTREADCTRL = common dso_local global i32 0, align 4
@OXU_ASO = common dso_local global i32 0, align 4
@OXU_SPHPOEN = common dso_local global i32 0, align 4
@OXU_OVRCCURPUPDEN = common dso_local global i32 0, align 4
@OXU_COMPARATOR = common dso_local global i32 0, align 4
@OXU_ASO_OP = common dso_local global i32 0, align 4
@OXU_CLKCTRL_SET = common dso_local global i32 0, align 4
@OXU_SYSCLKEN = common dso_local global i32 0, align 4
@OXU_USBOTGCLKEN = common dso_local global i32 0, align 4
@OXU_CHIPIRQEN_CLR = common dso_local global i32 0, align 4
@OXU_CHIPIRQSTATUS = common dso_local global i32 0, align 4
@OXU_CHIPIRQEN_SET = common dso_local global i32 0, align 4
@OXU_USBSPHLPWUI = common dso_local global i32 0, align 4
@OXU_USBOTGLPWUI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, i8*)* @oxu_configuration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oxu_configuration(%struct.platform_device* %0, i8* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i32, i32* @OXU_HOSTIFCONFIG, align 4
  %8 = call i32 @oxu_writel(i8* %6, i32 %7, i32 893)
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* @OXU_SOFTRESET, align 4
  %11 = load i32, i32* @OXU_SRESET, align 4
  %12 = call i32 @oxu_writel(i8* %9, i32 %10, i32 %11)
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* @OXU_HOSTIFCONFIG, align 4
  %15 = call i32 @oxu_writel(i8* %13, i32 %14, i32 893)
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* @OXU_PIOBURSTREADCTRL, align 4
  %18 = call i32 @oxu_readl(i8* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* @OXU_PIOBURSTREADCTRL, align 4
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, 64
  %23 = call i32 @oxu_writel(i8* %19, i32 %20, i32 %22)
  %24 = load i8*, i8** %4, align 8
  %25 = load i32, i32* @OXU_ASO, align 4
  %26 = load i32, i32* @OXU_SPHPOEN, align 4
  %27 = load i32, i32* @OXU_OVRCCURPUPDEN, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @OXU_COMPARATOR, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @OXU_ASO_OP, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @oxu_writel(i8* %24, i32 %25, i32 %32)
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* @OXU_CLKCTRL_SET, align 4
  %36 = call i32 @oxu_readl(i8* %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i8*, i8** %4, align 8
  %38 = load i32, i32* @OXU_CLKCTRL_SET, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @OXU_SYSCLKEN, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @OXU_USBOTGCLKEN, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @oxu_writel(i8* %37, i32 %38, i32 %43)
  %45 = load i8*, i8** %4, align 8
  %46 = load i32, i32* @OXU_CHIPIRQEN_CLR, align 4
  %47 = call i32 @oxu_writel(i8* %45, i32 %46, i32 255)
  %48 = load i8*, i8** %4, align 8
  %49 = load i32, i32* @OXU_CHIPIRQSTATUS, align 4
  %50 = call i32 @oxu_writel(i8* %48, i32 %49, i32 255)
  %51 = load i8*, i8** %4, align 8
  %52 = load i32, i32* @OXU_CHIPIRQEN_SET, align 4
  %53 = load i32, i32* @OXU_USBSPHLPWUI, align 4
  %54 = load i32, i32* @OXU_USBOTGLPWUI, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @oxu_writel(i8* %51, i32 %52, i32 %55)
  ret void
}

declare dso_local i32 @oxu_writel(i8*, i32, i32) #1

declare dso_local i32 @oxu_readl(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
