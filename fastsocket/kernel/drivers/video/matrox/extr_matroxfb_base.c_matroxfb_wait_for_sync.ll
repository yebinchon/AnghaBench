; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_base.c_matroxfb_wait_for_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_base.c_matroxfb_wait_for_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrox_fb_info = type { %struct.TYPE_4__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { %struct.matrox_vsync }
%struct.matrox_vsync = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.matrox_vsync }

@FB_ACCEL_MATROX_MGAG400 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @matroxfb_wait_for_sync(%struct.matrox_fb_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.matrox_fb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.matrox_vsync*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.matrox_fb_info* %0, %struct.matrox_fb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %28 [
    i32 0, label %10
    i32 1, label %14
  ]

10:                                               ; preds = %2
  %11 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %4, align 8
  %12 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store %struct.matrox_vsync* %13, %struct.matrox_vsync** %6, align 8
  br label %31

14:                                               ; preds = %2
  %15 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %4, align 8
  %16 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @FB_ACCEL_MATROX_MGAG400, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %67

24:                                               ; preds = %14
  %25 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %4, align 8
  %26 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store %struct.matrox_vsync* %27, %struct.matrox_vsync** %6, align 8
  br label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %67

31:                                               ; preds = %24, %10
  %32 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %4, align 8
  %33 = call i32 @matroxfb_enable_irq(%struct.matrox_fb_info* %32, i32 0)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %67

38:                                               ; preds = %31
  %39 = load %struct.matrox_vsync*, %struct.matrox_vsync** %6, align 8
  %40 = getelementptr inbounds %struct.matrox_vsync, %struct.matrox_vsync* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %7, align 4
  %42 = load %struct.matrox_vsync*, %struct.matrox_vsync** %6, align 8
  %43 = getelementptr inbounds %struct.matrox_vsync, %struct.matrox_vsync* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.matrox_vsync*, %struct.matrox_vsync** %6, align 8
  %47 = getelementptr inbounds %struct.matrox_vsync, %struct.matrox_vsync* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %45, %48
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* @HZ, align 4
  %52 = sdiv i32 %51, 10
  %53 = call i32 @wait_event_interruptible_timeout(i32 %44, i32 %50, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %38
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %3, align 4
  br label %67

58:                                               ; preds = %38
  %59 = load i32, i32* %8, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %4, align 8
  %63 = call i32 @matroxfb_enable_irq(%struct.matrox_fb_info* %62, i32 1)
  %64 = load i32, i32* @ETIMEDOUT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %67

66:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %61, %56, %36, %28, %21
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @matroxfb_enable_irq(%struct.matrox_fb_info*, i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
