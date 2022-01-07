; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_base.c_matroxfb_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_base.c_matroxfb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrox_fb_info = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.matrox_fb_info*, i32)* @matroxfb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @matroxfb_remove(%struct.matrox_fb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.matrox_fb_info*, align 8
  %4 = alloca i32, align 4
  store %struct.matrox_fb_info* %0, %struct.matrox_fb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %6 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %5, i32 0, i32 0
  store i32 1, i32* %6, align 8
  %7 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %8 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %46

12:                                               ; preds = %2
  %13 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %14 = call i32 @matroxfb_unregister_device(%struct.matrox_fb_info* %13)
  %15 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %16 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %15, i32 0, i32 4
  %17 = call i32 @unregister_framebuffer(i32* %16)
  %18 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %19 = call i32 @matroxfb_g450_shutdown(%struct.matrox_fb_info* %18)
  %20 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %21 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @mga_iounmap(i32 %23)
  %25 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %26 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @mga_iounmap(i32 %28)
  %30 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %31 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %35 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @release_mem_region(i32 %33, i32 %37)
  %39 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %40 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @release_mem_region(i32 %42, i32 16384)
  %44 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %45 = call i32 @kfree(%struct.matrox_fb_info* %44)
  br label %46

46:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @matroxfb_unregister_device(%struct.matrox_fb_info*) #1

declare dso_local i32 @unregister_framebuffer(i32*) #1

declare dso_local i32 @matroxfb_g450_shutdown(%struct.matrox_fb_info*) #1

declare dso_local i32 @mga_iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @kfree(%struct.matrox_fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
