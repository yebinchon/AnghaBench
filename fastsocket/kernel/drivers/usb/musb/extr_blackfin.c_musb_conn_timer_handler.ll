; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/musb/extr_blackfin.c_musb_conn_timer_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/musb/extr_blackfin.c_musb_conn_timer_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@MUSB_DEVCTL = common dso_local global i32 0, align 4
@MUSB_DEVCTL_SESSION = common dso_local global i32 0, align 4
@MUSB_DEVCTL_BDEVICE = common dso_local global i32 0, align 4
@MUSB_INTRUSBE = common dso_local global i32 0, align 4
@MUSB_INTR_VBUSERROR = common dso_local global i32 0, align 4
@MUSB_INTR_SUSPEND = common dso_local global i32 0, align 4
@MUSB_INTRUSB = common dso_local global i32 0, align 4
@MUSB_POWER_HSENAB = common dso_local global i32 0, align 4
@MUSB_POWER = common dso_local global i32 0, align 4
@musb_conn_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@TIMER_DELAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"%s state not handled\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"state is %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @musb_conn_timer_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @musb_conn_timer_handler(i64 %0) #0 {
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
  %10 = getelementptr inbounds %struct.musb, %struct.musb* %9, i32 0, i32 0
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.musb*, %struct.musb** %3, align 8
  %14 = getelementptr inbounds %struct.musb, %struct.musb* %13, i32 0, i32 3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %96 [
    i32 129, label %18
    i32 128, label %18
  ]

18:                                               ; preds = %1, %1
  %19 = load %struct.musb*, %struct.musb** %3, align 8
  %20 = getelementptr inbounds %struct.musb, %struct.musb* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MUSB_DEVCTL, align 4
  %23 = call i32 @musb_readw(i32 %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @MUSB_DEVCTL_SESSION, align 4
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load %struct.musb*, %struct.musb** %3, align 8
  %28 = getelementptr inbounds %struct.musb, %struct.musb* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MUSB_DEVCTL, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @musb_writew(i32 %29, i32 %30, i32 %31)
  %33 = load %struct.musb*, %struct.musb** %3, align 8
  %34 = getelementptr inbounds %struct.musb, %struct.musb* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MUSB_DEVCTL, align 4
  %37 = call i32 @musb_readw(i32 %35, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @MUSB_DEVCTL_BDEVICE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %18
  %43 = load %struct.musb*, %struct.musb** %3, align 8
  %44 = getelementptr inbounds %struct.musb, %struct.musb* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @gpio_set_value(i32 %47, i32 1)
  %49 = load %struct.musb*, %struct.musb** %3, align 8
  %50 = getelementptr inbounds %struct.musb, %struct.musb* %49, i32 0, i32 3
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 128, i32* %52, align 4
  br label %91

53:                                               ; preds = %18
  %54 = load %struct.musb*, %struct.musb** %3, align 8
  %55 = getelementptr inbounds %struct.musb, %struct.musb* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @gpio_set_value(i32 %58, i32 0)
  %60 = load %struct.musb*, %struct.musb** %3, align 8
  %61 = getelementptr inbounds %struct.musb, %struct.musb* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @MUSB_INTRUSBE, align 4
  %64 = call i32 @musb_readb(i32 %62, i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* @MUSB_INTR_VBUSERROR, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %5, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %5, align 4
  %69 = load %struct.musb*, %struct.musb** %3, align 8
  %70 = getelementptr inbounds %struct.musb, %struct.musb* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @MUSB_INTRUSBE, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @musb_writeb(i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* @MUSB_INTR_SUSPEND, align 4
  %76 = load i32, i32* @MUSB_INTR_VBUSERROR, align 4
  %77 = or i32 %75, %76
  store i32 %77, i32* %5, align 4
  %78 = load %struct.musb*, %struct.musb** %3, align 8
  %79 = getelementptr inbounds %struct.musb, %struct.musb* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @MUSB_INTRUSB, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @musb_writeb(i32 %80, i32 %81, i32 %82)
  %84 = load i32, i32* @MUSB_POWER_HSENAB, align 4
  store i32 %84, i32* %5, align 4
  %85 = load %struct.musb*, %struct.musb** %3, align 8
  %86 = getelementptr inbounds %struct.musb, %struct.musb* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @MUSB_POWER, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @musb_writeb(i32 %87, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %53, %42
  %92 = load i64, i64* @jiffies, align 8
  %93 = load i64, i64* @TIMER_DELAY, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @mod_timer(i32* @musb_conn_timer, i64 %94)
  br label %100

96:                                               ; preds = %1
  %97 = load %struct.musb*, %struct.musb** %3, align 8
  %98 = call i32 @otg_state_string(%struct.musb* %97)
  %99 = call i32 @DBG(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %96, %91
  %101 = load %struct.musb*, %struct.musb** %3, align 8
  %102 = getelementptr inbounds %struct.musb, %struct.musb* %101, i32 0, i32 0
  %103 = load i64, i64* %4, align 8
  %104 = call i32 @spin_unlock_irqrestore(i32* %102, i64 %103)
  %105 = load %struct.musb*, %struct.musb** %3, align 8
  %106 = call i32 @otg_state_string(%struct.musb* %105)
  %107 = call i32 @DBG(i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @musb_readw(i32, i32) #1

declare dso_local i32 @musb_writew(i32, i32, i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @musb_readb(i32, i32) #1

declare dso_local i32 @musb_writeb(i32, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @DBG(i32, i8*, i32) #1

declare dso_local i32 @otg_state_string(%struct.musb*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
