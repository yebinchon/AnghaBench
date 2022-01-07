; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/musb/extr_omap2430.c_musb_do_idle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/musb/extr_omap2430.c_musb_do_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@MUSB_DEVCTL = common dso_local global i32 0, align 4
@MUSB_DEVCTL_SESSION = common dso_local global i32 0, align 4
@MUSB_DEVCTL_BDEVICE = common dso_local global i32 0, align 4
@OTG_STATE_B_IDLE = common dso_local global i8* null, align 8
@OTG_STATE_A_IDLE = common dso_local global i32 0, align 4
@MUSB_PORT_STAT_RESUME = common dso_local global i32 0, align 4
@MUSB_POWER = common dso_local global i32 0, align 4
@MUSB_POWER_RESUME = common dso_local global i32 0, align 4
@USB_PORT_STAT_C_SUSPEND = common dso_local global i32 0, align 4
@USB_PORT_STAT_SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @musb_do_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @musb_do_idle(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.musb*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to i8*
  %8 = bitcast i8* %7 to %struct.musb*
  store %struct.musb* %8, %struct.musb** %3, align 8
  %9 = load %struct.musb*, %struct.musb** %3, align 8
  %10 = getelementptr inbounds %struct.musb, %struct.musb* %9, i32 0, i32 2
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.musb*, %struct.musb** %3, align 8
  %14 = getelementptr inbounds %struct.musb, %struct.musb* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MUSB_DEVCTL, align 4
  %17 = call i32 @musb_readb(i32 %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.musb*, %struct.musb** %3, align 8
  %19 = getelementptr inbounds %struct.musb, %struct.musb* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %61 [
    i32 128, label %23
  ]

23:                                               ; preds = %1
  %24 = load i32, i32* @MUSB_DEVCTL_SESSION, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load %struct.musb*, %struct.musb** %3, align 8
  %29 = getelementptr inbounds %struct.musb, %struct.musb* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @MUSB_DEVCTL, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @musb_writeb(i32 %30, i32 %31, i32 %32)
  %34 = load %struct.musb*, %struct.musb** %3, align 8
  %35 = getelementptr inbounds %struct.musb, %struct.musb* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @MUSB_DEVCTL, align 4
  %38 = call i32 @musb_readb(i32 %36, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @MUSB_DEVCTL_BDEVICE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %23
  %44 = load i8*, i8** @OTG_STATE_B_IDLE, align 8
  %45 = ptrtoint i8* %44 to i32
  %46 = load %struct.musb*, %struct.musb** %3, align 8
  %47 = getelementptr inbounds %struct.musb, %struct.musb* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 4
  %50 = load %struct.musb*, %struct.musb** %3, align 8
  %51 = call i32 @MUSB_DEV_MODE(%struct.musb* %50)
  br label %60

52:                                               ; preds = %23
  %53 = load i32, i32* @OTG_STATE_A_IDLE, align 4
  %54 = load %struct.musb*, %struct.musb** %3, align 8
  %55 = getelementptr inbounds %struct.musb, %struct.musb* %54, i32 0, i32 3
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 %53, i32* %57, align 4
  %58 = load %struct.musb*, %struct.musb** %3, align 8
  %59 = call i32 @MUSB_HST_MODE(%struct.musb* %58)
  br label %60

60:                                               ; preds = %52, %43
  br label %62

61:                                               ; preds = %1
  br label %62

62:                                               ; preds = %61, %60
  %63 = load %struct.musb*, %struct.musb** %3, align 8
  %64 = getelementptr inbounds %struct.musb, %struct.musb* %63, i32 0, i32 2
  %65 = load i64, i64* %4, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @musb_readb(i32, i32) #1

declare dso_local i32 @musb_writeb(i32, i32, i32) #1

declare dso_local i32 @MUSB_DEV_MODE(%struct.musb*) #1

declare dso_local i32 @MUSB_HST_MODE(%struct.musb*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
