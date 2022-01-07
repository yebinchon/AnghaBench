; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_arcfb.c_arcfb_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_arcfb.c_arcfb_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.arcfb_par* }
%struct.arcfb_par = type { i32 }

@KS_INTACK = common dso_local global i8 0, align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@KS_CLRINT = common dso_local global i32 0, align 4
@arcfb_waitq = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @arcfb_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arcfb_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fb_info*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.arcfb_par*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.fb_info*
  store %struct.fb_info* %10, %struct.fb_info** %6, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 0
  %13 = load %struct.arcfb_par*, %struct.arcfb_par** %12, align 8
  store %struct.arcfb_par* %13, %struct.arcfb_par** %8, align 8
  %14 = load %struct.arcfb_par*, %struct.arcfb_par** %8, align 8
  %15 = call zeroext i8 @ks108_readb_ctl2(%struct.arcfb_par* %14)
  store i8 %15, i8* %7, align 1
  %16 = load i8, i8* %7, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* @KS_INTACK, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @IRQ_NONE, align 4
  store i32 %23, i32* %3, align 4
  br label %40

24:                                               ; preds = %2
  %25 = load %struct.arcfb_par*, %struct.arcfb_par** %8, align 8
  %26 = load i32, i32* @KS_CLRINT, align 4
  %27 = call i32 @ks108_writeb_mainctl(%struct.arcfb_par* %25, i32 %26)
  %28 = load %struct.arcfb_par*, %struct.arcfb_par** %8, align 8
  %29 = getelementptr inbounds %struct.arcfb_par, %struct.arcfb_par* %28, i32 0, i32 0
  %30 = call i32 @spin_lock(i32* %29)
  %31 = call i64 @waitqueue_active(i32* @arcfb_waitq)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = call i32 @wake_up(i32* @arcfb_waitq)
  br label %35

35:                                               ; preds = %33, %24
  %36 = load %struct.arcfb_par*, %struct.arcfb_par** %8, align 8
  %37 = getelementptr inbounds %struct.arcfb_par, %struct.arcfb_par* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %35, %22
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local zeroext i8 @ks108_readb_ctl2(%struct.arcfb_par*) #1

declare dso_local i32 @ks108_writeb_mainctl(%struct.arcfb_par*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
