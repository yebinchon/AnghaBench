; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/musb/extr_omap2430.c_omap_set_vbus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/musb/extr_omap2430.c_omap_set_vbus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@MUSB_DEVCTL = common dso_local global i32 0, align 4
@OTG_STATE_A_WAIT_VRISE = common dso_local global i32 0, align 4
@MUSB_DEVCTL_SESSION = common dso_local global i32 0, align 4
@OTG_STATE_B_IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"VBUS %s, devctl %02x \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.musb*, i32)* @omap_set_vbus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_set_vbus(%struct.musb* %0, i32 %1) #0 {
  %3 = alloca %struct.musb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.musb* %0, %struct.musb** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.musb*, %struct.musb** %3, align 8
  %7 = getelementptr inbounds %struct.musb, %struct.musb* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MUSB_DEVCTL, align 4
  %10 = call i32 @musb_readb(i32 %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = load %struct.musb*, %struct.musb** %3, align 8
  %15 = getelementptr inbounds %struct.musb, %struct.musb* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.musb*, %struct.musb** %3, align 8
  %17 = getelementptr inbounds %struct.musb, %struct.musb* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load i32, i32* @OTG_STATE_A_WAIT_VRISE, align 4
  %21 = load %struct.musb*, %struct.musb** %3, align 8
  %22 = getelementptr inbounds %struct.musb, %struct.musb* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i32 %20, i32* %24, align 4
  %25 = load i32, i32* @MUSB_DEVCTL_SESSION, align 4
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load %struct.musb*, %struct.musb** %3, align 8
  %29 = call i32 @MUSB_HST_MODE(%struct.musb* %28)
  br label %48

30:                                               ; preds = %2
  %31 = load %struct.musb*, %struct.musb** %3, align 8
  %32 = getelementptr inbounds %struct.musb, %struct.musb* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load %struct.musb*, %struct.musb** %3, align 8
  %34 = getelementptr inbounds %struct.musb, %struct.musb* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 0, i32* %36, align 4
  %37 = load i32, i32* @OTG_STATE_B_IDLE, align 4
  %38 = load %struct.musb*, %struct.musb** %3, align 8
  %39 = getelementptr inbounds %struct.musb, %struct.musb* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* @MUSB_DEVCTL_SESSION, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = load %struct.musb*, %struct.musb** %3, align 8
  %47 = call i32 @MUSB_DEV_MODE(%struct.musb* %46)
  br label %48

48:                                               ; preds = %30, %13
  %49 = load %struct.musb*, %struct.musb** %3, align 8
  %50 = getelementptr inbounds %struct.musb, %struct.musb* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MUSB_DEVCTL, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @musb_writeb(i32 %51, i32 %52, i32 %53)
  %55 = load %struct.musb*, %struct.musb** %3, align 8
  %56 = call i32 @otg_state_string(%struct.musb* %55)
  %57 = load %struct.musb*, %struct.musb** %3, align 8
  %58 = getelementptr inbounds %struct.musb, %struct.musb* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @MUSB_DEVCTL, align 4
  %61 = call i32 @musb_readb(i32 %59, i32 %60)
  %62 = call i32 @DBG(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %61)
  ret void
}

declare dso_local i32 @musb_readb(i32, i32) #1

declare dso_local i32 @MUSB_HST_MODE(%struct.musb*) #1

declare dso_local i32 @MUSB_DEV_MODE(%struct.musb*) #1

declare dso_local i32 @musb_writeb(i32, i32, i32) #1

declare dso_local i32 @DBG(i32, i8*, i32, i32) #1

declare dso_local i32 @otg_state_string(%struct.musb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
