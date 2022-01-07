; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_base.c_matroxfb_get_vblank.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_base.c_matroxfb_get_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrox_fb_info = type { %struct.TYPE_8__, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.fb_vblank = type { i32, i64, i32 }

@FB_VBLANK_HAVE_VCOUNT = common dso_local global i32 0, align 4
@FB_VBLANK_HAVE_VSYNC = common dso_local global i32 0, align 4
@FB_VBLANK_HAVE_VBLANK = common dso_local global i32 0, align 4
@FB_VBLANK_HAVE_HBLANK = common dso_local global i32 0, align 4
@M_INSTS1 = common dso_local global i32 0, align 4
@M_VCOUNT = common dso_local global i32 0, align 4
@FB_VBLANK_HBLANKING = common dso_local global i32 0, align 4
@FB_VBLANK_VSYNCING = common dso_local global i32 0, align 4
@FB_VBLANK_VBLANKING = common dso_local global i32 0, align 4
@FB_VBLANK_HAVE_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.matrox_fb_info*, %struct.fb_vblank*)* @matroxfb_get_vblank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @matroxfb_get_vblank(%struct.matrox_fb_info* %0, %struct.fb_vblank* %1) #0 {
  %3 = alloca %struct.matrox_fb_info*, align 8
  %4 = alloca %struct.fb_vblank*, align 8
  %5 = alloca i32, align 4
  store %struct.matrox_fb_info* %0, %struct.matrox_fb_info** %3, align 8
  store %struct.fb_vblank* %1, %struct.fb_vblank** %4, align 8
  %6 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %7 = call i32 @matroxfb_enable_irq(%struct.matrox_fb_info* %6, i32 0)
  %8 = load %struct.fb_vblank*, %struct.fb_vblank** %4, align 8
  %9 = call i32 @memset(%struct.fb_vblank* %8, i32 0, i32 24)
  %10 = load i32, i32* @FB_VBLANK_HAVE_VCOUNT, align 4
  %11 = load i32, i32* @FB_VBLANK_HAVE_VSYNC, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @FB_VBLANK_HAVE_VBLANK, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @FB_VBLANK_HAVE_HBLANK, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.fb_vblank*, %struct.fb_vblank** %4, align 8
  %18 = getelementptr inbounds %struct.fb_vblank, %struct.fb_vblank* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @M_INSTS1, align 4
  %20 = call i32 @mga_inb(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @M_VCOUNT, align 4
  %22 = call i64 @mga_inl(i32 %21)
  %23 = load %struct.fb_vblank*, %struct.fb_vblank** %4, align 8
  %24 = getelementptr inbounds %struct.fb_vblank, %struct.fb_vblank* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, 1
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = load i32, i32* @FB_VBLANK_HBLANKING, align 4
  %30 = load %struct.fb_vblank*, %struct.fb_vblank** %4, align 8
  %31 = getelementptr inbounds %struct.fb_vblank, %struct.fb_vblank* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  br label %34

34:                                               ; preds = %28, %2
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32, i32* @FB_VBLANK_VSYNCING, align 4
  %40 = load %struct.fb_vblank*, %struct.fb_vblank** %4, align 8
  %41 = getelementptr inbounds %struct.fb_vblank, %struct.fb_vblank* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %38, %34
  %45 = load %struct.fb_vblank*, %struct.fb_vblank** %4, align 8
  %46 = getelementptr inbounds %struct.fb_vblank, %struct.fb_vblank* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %49 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sge i64 %47, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %44
  %55 = load i32, i32* @FB_VBLANK_VBLANKING, align 4
  %56 = load %struct.fb_vblank*, %struct.fb_vblank** %4, align 8
  %57 = getelementptr inbounds %struct.fb_vblank, %struct.fb_vblank* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %54, %44
  %61 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %62 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %61, i32 0, i32 1
  %63 = call i64 @test_bit(i32 0, i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %60
  %66 = load i32, i32* @FB_VBLANK_HAVE_COUNT, align 4
  %67 = load %struct.fb_vblank*, %struct.fb_vblank** %4, align 8
  %68 = getelementptr inbounds %struct.fb_vblank, %struct.fb_vblank* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %72 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.fb_vblank*, %struct.fb_vblank** %4, align 8
  %77 = getelementptr inbounds %struct.fb_vblank, %struct.fb_vblank* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %65, %60
  ret i32 0
}

declare dso_local i32 @matroxfb_enable_irq(%struct.matrox_fb_info*, i32) #1

declare dso_local i32 @memset(%struct.fb_vblank*, i32, i32) #1

declare dso_local i32 @mga_inb(i32) #1

declare dso_local i64 @mga_inl(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
