; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_..wusbcorewa-hc.h_wa_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_..wusbcorewa-hc.h_wa_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wahc = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@wa_urb_enqueue_run = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wahc*)* @wa_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wa_init(%struct.wahc* %0) #0 {
  %2 = alloca %struct.wahc*, align 8
  store %struct.wahc* %0, %struct.wahc** %2, align 8
  %3 = load %struct.wahc*, %struct.wahc** %2, align 8
  %4 = getelementptr inbounds %struct.wahc, %struct.wahc* %3, i32 0, i32 7
  %5 = call i32 @edc_init(i32* %4)
  %6 = load %struct.wahc*, %struct.wahc** %2, align 8
  %7 = getelementptr inbounds %struct.wahc, %struct.wahc* %6, i32 0, i32 6
  %8 = call i32 @atomic_set(i32* %7, i32 0)
  %9 = load %struct.wahc*, %struct.wahc** %2, align 8
  %10 = call i32 @wa_rpipe_init(%struct.wahc* %9)
  %11 = load %struct.wahc*, %struct.wahc** %2, align 8
  %12 = getelementptr inbounds %struct.wahc, %struct.wahc* %11, i32 0, i32 5
  %13 = call i32 @edc_init(i32* %12)
  %14 = load %struct.wahc*, %struct.wahc** %2, align 8
  %15 = getelementptr inbounds %struct.wahc, %struct.wahc* %14, i32 0, i32 4
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.wahc*, %struct.wahc** %2, align 8
  %18 = getelementptr inbounds %struct.wahc, %struct.wahc* %17, i32 0, i32 3
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.wahc*, %struct.wahc** %2, align 8
  %21 = getelementptr inbounds %struct.wahc, %struct.wahc* %20, i32 0, i32 2
  %22 = call i32 @spin_lock_init(i32* %21)
  %23 = load %struct.wahc*, %struct.wahc** %2, align 8
  %24 = getelementptr inbounds %struct.wahc, %struct.wahc* %23, i32 0, i32 1
  %25 = load i32, i32* @wa_urb_enqueue_run, align 4
  %26 = call i32 @INIT_WORK(i32* %24, i32 %25)
  %27 = load %struct.wahc*, %struct.wahc** %2, align 8
  %28 = getelementptr inbounds %struct.wahc, %struct.wahc* %27, i32 0, i32 0
  %29 = call i32 @atomic_set(i32* %28, i32 1)
  ret void
}

declare dso_local i32 @edc_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wa_rpipe_init(%struct.wahc*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
