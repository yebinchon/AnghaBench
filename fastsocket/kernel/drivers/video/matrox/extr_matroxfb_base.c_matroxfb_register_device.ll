; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_base.c_matroxfb_register_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_base.c_matroxfb_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__* }
%struct.matrox_fb_info = type { i32, %struct.matroxfb_driver**, i8**, i32 }
%struct.matroxfb_driver = type { i8* (%struct.matrox_fb_info.0*)*, %struct.TYPE_4__ }
%struct.matrox_fb_info.0 = type opaque
%struct.TYPE_4__ = type { %struct.TYPE_5__* }

@matroxfb_list = common dso_local global i32 0, align 4
@matroxfb_driver_list = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@MATROXFB_MAX_FB_DRIVERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.matrox_fb_info*)* @matroxfb_register_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @matroxfb_register_device(%struct.matrox_fb_info* %0) #0 {
  %2 = alloca %struct.matrox_fb_info*, align 8
  %3 = alloca %struct.matroxfb_driver*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.matrox_fb_info* %0, %struct.matrox_fb_info** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %7 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %6, i32 0, i32 3
  %8 = call i32 @list_add(i32* %7, i32* @matroxfb_list)
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @matroxfb_driver_list, i32 0, i32 0), align 8
  %10 = call %struct.matroxfb_driver* @matroxfb_driver_l(%struct.TYPE_5__* %9)
  store %struct.matroxfb_driver* %10, %struct.matroxfb_driver** %3, align 8
  br label %11

11:                                               ; preds = %55, %1
  %12 = load %struct.matroxfb_driver*, %struct.matroxfb_driver** %3, align 8
  %13 = call %struct.matroxfb_driver* @matroxfb_driver_l(%struct.TYPE_5__* @matroxfb_driver_list)
  %14 = icmp ne %struct.matroxfb_driver* %12, %13
  br i1 %14, label %15, label %61

15:                                               ; preds = %11
  %16 = load %struct.matroxfb_driver*, %struct.matroxfb_driver** %3, align 8
  %17 = icmp ne %struct.matroxfb_driver* %16, null
  br i1 %17, label %18, label %54

18:                                               ; preds = %15
  %19 = load %struct.matroxfb_driver*, %struct.matroxfb_driver** %3, align 8
  %20 = getelementptr inbounds %struct.matroxfb_driver, %struct.matroxfb_driver* %19, i32 0, i32 0
  %21 = load i8* (%struct.matrox_fb_info.0*)*, i8* (%struct.matrox_fb_info.0*)** %20, align 8
  %22 = icmp ne i8* (%struct.matrox_fb_info.0*)* %21, null
  br i1 %22, label %23, label %54

23:                                               ; preds = %18
  %24 = load %struct.matroxfb_driver*, %struct.matroxfb_driver** %3, align 8
  %25 = getelementptr inbounds %struct.matroxfb_driver, %struct.matroxfb_driver* %24, i32 0, i32 0
  %26 = load i8* (%struct.matrox_fb_info.0*)*, i8* (%struct.matrox_fb_info.0*)** %25, align 8
  %27 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %28 = bitcast %struct.matrox_fb_info* %27 to %struct.matrox_fb_info.0*
  %29 = call i8* %26(%struct.matrox_fb_info.0* %28)
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %53

32:                                               ; preds = %23
  %33 = load i8*, i8** %5, align 8
  %34 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %35 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %34, i32 0, i32 2
  %36 = load i8**, i8*** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  store i8* %33, i8** %39, align 8
  %40 = load %struct.matroxfb_driver*, %struct.matroxfb_driver** %3, align 8
  %41 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %42 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %41, i32 0, i32 1
  %43 = load %struct.matroxfb_driver**, %struct.matroxfb_driver*** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds %struct.matroxfb_driver*, %struct.matroxfb_driver** %43, i64 %46
  store %struct.matroxfb_driver* %40, %struct.matroxfb_driver** %47, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @MATROXFB_MAX_FB_DRIVERS, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %32
  br label %61

52:                                               ; preds = %32
  br label %53

53:                                               ; preds = %52, %23
  br label %54

54:                                               ; preds = %53, %18, %15
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.matroxfb_driver*, %struct.matroxfb_driver** %3, align 8
  %57 = getelementptr inbounds %struct.matroxfb_driver, %struct.matroxfb_driver* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = call %struct.matroxfb_driver* @matroxfb_driver_l(%struct.TYPE_5__* %59)
  store %struct.matroxfb_driver* %60, %struct.matroxfb_driver** %3, align 8
  br label %11

61:                                               ; preds = %51, %11
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %64 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  ret void
}

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local %struct.matroxfb_driver* @matroxfb_driver_l(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
