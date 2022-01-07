; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_atyfb_base.c_aty_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_atyfb_base.c_aty_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atyfb_par = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@CRTC_INT_CNTL = common dso_local global i32 0, align 4
@CRTC_VBLANK_INT = common dso_local global i32 0, align 4
@CRTC_INT_EN_MASK = common dso_local global i32 0, align 4
@CRTC_VBLANK_INT_AK = common dso_local global i32 0, align 4
@CRTC_OFF_PITCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @aty_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aty_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.atyfb_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.atyfb_par*
  store %struct.atyfb_par* %9, %struct.atyfb_par** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %11 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load i32, i32* @CRTC_INT_CNTL, align 4
  %14 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %15 = call i32 @aty_ld_le32(i32 %13, %struct.atyfb_par* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @CRTC_VBLANK_INT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %55

20:                                               ; preds = %2
  %21 = load i32, i32* @CRTC_INT_CNTL, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @CRTC_INT_EN_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @CRTC_VBLANK_INT_AK, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %28 = call i32 @aty_st_le32(i32 %21, i32 %26, %struct.atyfb_par* %27)
  %29 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %30 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %35 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %20
  %40 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %41 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* @CRTC_OFF_PITCH, align 4
  %44 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %45 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %49 = call i32 @aty_st_le32(i32 %43, i32 %47, %struct.atyfb_par* %48)
  br label %50

50:                                               ; preds = %39, %20
  %51 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %52 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = call i32 @wake_up_interruptible(i32* %53)
  store i32 1, i32* %6, align 4
  br label %55

55:                                               ; preds = %50, %2
  %56 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %57 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %56, i32 0, i32 0
  %58 = call i32 @spin_unlock(i32* %57)
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @IRQ_RETVAL(i32 %59)
  ret i32 %60
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @aty_ld_le32(i32, %struct.atyfb_par*) #1

declare dso_local i32 @aty_st_le32(i32, i32, %struct.atyfb_par*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
