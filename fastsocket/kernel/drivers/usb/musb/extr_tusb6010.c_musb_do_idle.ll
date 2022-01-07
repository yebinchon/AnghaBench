; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/musb/extr_tusb6010.c_musb_do_idle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/musb/extr_tusb6010.c_musb_do_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Nothing connected %s, turning off VBUS\0A\00", align 1
@TUSB_PRCM_WHOSTDISCON = common dso_local global i32 0, align 4
@TUSB_PRCM_WBUS = common dso_local global i32 0, align 4
@TUSB_PRCM_WID = common dso_local global i32 0, align 4
@TUSB_PRCM_WVBUS = common dso_local global i32 0, align 4
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
  %10 = getelementptr inbounds %struct.musb, %struct.musb* %9, i32 0, i32 1
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.musb*, %struct.musb** %3, align 8
  %14 = getelementptr inbounds %struct.musb, %struct.musb* %13, i32 0, i32 6
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %43 [
    i32 128, label %18
    i32 129, label %40
  ]

18:                                               ; preds = %1
  %19 = load %struct.musb*, %struct.musb** %3, align 8
  %20 = getelementptr inbounds %struct.musb, %struct.musb* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %18
  %24 = load %struct.musb*, %struct.musb** %3, align 8
  %25 = getelementptr inbounds %struct.musb, %struct.musb* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @jiffies, align 4
  %30 = load %struct.musb*, %struct.musb** %3, align 8
  %31 = getelementptr inbounds %struct.musb, %struct.musb* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @time_after(i32 %29, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28, %23
  %36 = load %struct.musb*, %struct.musb** %3, align 8
  %37 = call i32 @otg_state_string(%struct.musb* %36)
  %38 = call i32 @DBG(i32 4, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %35, %28, %18
  br label %40

40:                                               ; preds = %1, %39
  %41 = load %struct.musb*, %struct.musb** %3, align 8
  %42 = call i32 @tusb_source_power(%struct.musb* %41, i32 0)
  br label %43

43:                                               ; preds = %1, %40
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.musb*, %struct.musb** %3, align 8
  %46 = getelementptr inbounds %struct.musb, %struct.musb* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %67, label %49

49:                                               ; preds = %44
  %50 = load %struct.musb*, %struct.musb** %3, align 8
  %51 = call i64 @is_host_active(%struct.musb* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load %struct.musb*, %struct.musb** %3, align 8
  %55 = getelementptr inbounds %struct.musb, %struct.musb* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = ashr i32 %56, 16
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %68

60:                                               ; preds = %53, %49
  %61 = load i32, i32* @TUSB_PRCM_WHOSTDISCON, align 4
  %62 = load i32, i32* @TUSB_PRCM_WBUS, align 4
  %63 = or i32 %61, %62
  store i32 %63, i32* %5, align 4
  %64 = load %struct.musb*, %struct.musb** %3, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @tusb_allow_idle(%struct.musb* %64, i32 %65)
  br label %67

67:                                               ; preds = %60, %44
  br label %68

68:                                               ; preds = %67, %59
  %69 = load %struct.musb*, %struct.musb** %3, align 8
  %70 = getelementptr inbounds %struct.musb, %struct.musb* %69, i32 0, i32 1
  %71 = load i64, i64* %4, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @time_after(i32, i32) #1

declare dso_local i32 @DBG(i32, i8*, i32) #1

declare dso_local i32 @otg_state_string(%struct.musb*) #1

declare dso_local i32 @tusb_source_power(%struct.musb*, i32) #1

declare dso_local i64 @is_host_active(%struct.musb*) #1

declare dso_local i32 @tusb_allow_idle(%struct.musb*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
