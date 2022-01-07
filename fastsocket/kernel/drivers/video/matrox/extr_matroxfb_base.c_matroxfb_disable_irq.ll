; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_base.c_matroxfb_disable_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_base.c_matroxfb_disable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrox_fb_info = type { %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@FB_ACCEL_MATROX_MGAG400 = common dso_local global i64 0, align 8
@M_IEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.matrox_fb_info*)* @matroxfb_disable_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @matroxfb_disable_irq(%struct.matrox_fb_info* %0) #0 {
  %2 = alloca %struct.matrox_fb_info*, align 8
  store %struct.matrox_fb_info* %0, %struct.matrox_fb_info** %2, align 8
  %3 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %4 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %3, i32 0, i32 2
  %5 = call i64 @test_and_clear_bit(i32 0, i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %36

7:                                                ; preds = %1
  %8 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %9 = call i32 @matroxfb_crtc1_panpos(%struct.matrox_fb_info* %8)
  %10 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %11 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @FB_ACCEL_MATROX_MGAG400, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %7
  %17 = load i32, i32* @M_IEN, align 4
  %18 = load i32, i32* @M_IEN, align 4
  %19 = call i32 @mga_inl(i32 %18)
  %20 = and i32 %19, -545
  %21 = call i32 @mga_outl(i32 %17, i32 %20)
  br label %28

22:                                               ; preds = %7
  %23 = load i32, i32* @M_IEN, align 4
  %24 = load i32, i32* @M_IEN, align 4
  %25 = call i32 @mga_inl(i32 %24)
  %26 = and i32 %25, -33
  %27 = call i32 @mga_outl(i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %22, %16
  %29 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %30 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %35 = call i32 @free_irq(i32 %33, %struct.matrox_fb_info* %34)
  br label %36

36:                                               ; preds = %28, %1
  ret void
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @matroxfb_crtc1_panpos(%struct.matrox_fb_info*) #1

declare dso_local i32 @mga_outl(i32, i32) #1

declare dso_local i32 @mga_inl(i32) #1

declare dso_local i32 @free_irq(i32, %struct.matrox_fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
