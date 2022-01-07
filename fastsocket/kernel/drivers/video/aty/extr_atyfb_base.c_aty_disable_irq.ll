; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_atyfb_base.c_aty_disable_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_atyfb_base.c_aty_disable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atyfb_par = type { i32, i32, %struct.TYPE_3__, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@CRTC_OFF_PITCH = common dso_local global i32 0, align 4
@CRTC_INT_CNTL = common dso_local global i32 0, align 4
@CRTC_INT_EN_MASK = common dso_local global i32 0, align 4
@CRTC_VBLANK_INT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atyfb_par*)* @aty_disable_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aty_disable_irq(%struct.atyfb_par* %0) #0 {
  %2 = alloca %struct.atyfb_par*, align 8
  %3 = alloca i32, align 4
  store %struct.atyfb_par* %0, %struct.atyfb_par** %2, align 8
  %4 = load %struct.atyfb_par*, %struct.atyfb_par** %2, align 8
  %5 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %4, i32 0, i32 4
  %6 = call i64 @test_and_clear_bit(i32 0, i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %49

8:                                                ; preds = %1
  %9 = load %struct.atyfb_par*, %struct.atyfb_par** %2, align 8
  %10 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %8
  %15 = load %struct.atyfb_par*, %struct.atyfb_par** %2, align 8
  %16 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* @CRTC_OFF_PITCH, align 4
  %19 = load %struct.atyfb_par*, %struct.atyfb_par** %2, align 8
  %20 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.atyfb_par*, %struct.atyfb_par** %2, align 8
  %24 = call i32 @aty_st_le32(i32 %18, i32 %22, %struct.atyfb_par* %23)
  br label %25

25:                                               ; preds = %14, %8
  %26 = load %struct.atyfb_par*, %struct.atyfb_par** %2, align 8
  %27 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %26, i32 0, i32 1
  %28 = call i32 @spin_lock_irq(i32* %27)
  %29 = load i32, i32* @CRTC_INT_CNTL, align 4
  %30 = load %struct.atyfb_par*, %struct.atyfb_par** %2, align 8
  %31 = call i32 @aty_ld_le32(i32 %29, %struct.atyfb_par* %30)
  %32 = load i32, i32* @CRTC_INT_EN_MASK, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* @CRTC_INT_CNTL, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @CRTC_VBLANK_INT_EN, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  %39 = load %struct.atyfb_par*, %struct.atyfb_par** %2, align 8
  %40 = call i32 @aty_st_le32(i32 %34, i32 %38, %struct.atyfb_par* %39)
  %41 = load %struct.atyfb_par*, %struct.atyfb_par** %2, align 8
  %42 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %41, i32 0, i32 1
  %43 = call i32 @spin_unlock_irq(i32* %42)
  %44 = load %struct.atyfb_par*, %struct.atyfb_par** %2, align 8
  %45 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.atyfb_par*, %struct.atyfb_par** %2, align 8
  %48 = call i32 @free_irq(i32 %46, %struct.atyfb_par* %47)
  br label %49

49:                                               ; preds = %25, %1
  ret i32 0
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @aty_st_le32(i32, i32, %struct.atyfb_par*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @aty_ld_le32(i32, %struct.atyfb_par*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.atyfb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
