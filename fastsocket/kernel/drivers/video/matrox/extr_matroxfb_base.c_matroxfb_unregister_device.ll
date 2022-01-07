; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_base.c_matroxfb_unregister_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_base.c_matroxfb_unregister_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrox_fb_info = type { i32, i32*, %struct.matroxfb_driver**, i32 }
%struct.matroxfb_driver = type { i32 (%struct.matrox_fb_info.0*, i32)* }
%struct.matrox_fb_info.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.matrox_fb_info*)* @matroxfb_unregister_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @matroxfb_unregister_device(%struct.matrox_fb_info* %0) #0 {
  %2 = alloca %struct.matrox_fb_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.matroxfb_driver*, align 8
  store %struct.matrox_fb_info* %0, %struct.matrox_fb_info** %2, align 8
  %5 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %6 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %5, i32 0, i32 3
  %7 = call i32 @list_del(i32* %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %44, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %11 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %47

14:                                               ; preds = %8
  %15 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %16 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %15, i32 0, i32 2
  %17 = load %struct.matroxfb_driver**, %struct.matroxfb_driver*** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.matroxfb_driver*, %struct.matroxfb_driver** %17, i64 %19
  %21 = load %struct.matroxfb_driver*, %struct.matroxfb_driver** %20, align 8
  store %struct.matroxfb_driver* %21, %struct.matroxfb_driver** %4, align 8
  %22 = load %struct.matroxfb_driver*, %struct.matroxfb_driver** %4, align 8
  %23 = icmp ne %struct.matroxfb_driver* %22, null
  br i1 %23, label %24, label %43

24:                                               ; preds = %14
  %25 = load %struct.matroxfb_driver*, %struct.matroxfb_driver** %4, align 8
  %26 = getelementptr inbounds %struct.matroxfb_driver, %struct.matroxfb_driver* %25, i32 0, i32 0
  %27 = load i32 (%struct.matrox_fb_info.0*, i32)*, i32 (%struct.matrox_fb_info.0*, i32)** %26, align 8
  %28 = icmp ne i32 (%struct.matrox_fb_info.0*, i32)* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = load %struct.matroxfb_driver*, %struct.matroxfb_driver** %4, align 8
  %31 = getelementptr inbounds %struct.matroxfb_driver, %struct.matroxfb_driver* %30, i32 0, i32 0
  %32 = load i32 (%struct.matrox_fb_info.0*, i32)*, i32 (%struct.matrox_fb_info.0*, i32)** %31, align 8
  %33 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %34 = bitcast %struct.matrox_fb_info* %33 to %struct.matrox_fb_info.0*
  %35 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %36 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 %32(%struct.matrox_fb_info.0* %34, i32 %41)
  br label %43

43:                                               ; preds = %29, %24, %14
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %8

47:                                               ; preds = %8
  ret void
}

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
