; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/msm/extr_mdp.c_get_img.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/msm/extr_mdp.c_get_img.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp_img = type { i32 }
%struct.fb_info = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.file = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@FB_MAJOR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_img(%struct.mdp_img* %0, %struct.fb_info* %1, i64* %2, i64* %3, %struct.file** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mdp_img*, align 8
  %8 = alloca %struct.fb_info*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.file**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.file*, align 8
  %15 = alloca i64, align 8
  store %struct.mdp_img* %0, %struct.mdp_img** %7, align 8
  store %struct.fb_info* %1, %struct.fb_info** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store %struct.file** %4, %struct.file*** %11, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.mdp_img*, %struct.mdp_img** %7, align 8
  %17 = getelementptr inbounds %struct.mdp_img, %struct.mdp_img* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.file* @fget_light(i32 %18, i32* %12)
  store %struct.file* %19, %struct.file** %14, align 8
  %20 = load %struct.file*, %struct.file** %14, align 8
  %21 = icmp eq %struct.file* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %51

23:                                               ; preds = %5
  %24 = load %struct.file*, %struct.file** %14, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @MAJOR(i32 %30)
  %32 = load i64, i64* @FB_MAJOR, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %23
  %35 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64*, i64** %9, align 8
  store i64 %38, i64* %39, align 8
  %40 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %41 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %10, align 8
  store i64 %43, i64* %44, align 8
  br label %46

45:                                               ; preds = %23
  store i32 -1, i32* %13, align 4
  br label %46

46:                                               ; preds = %45, %34
  %47 = load %struct.file*, %struct.file** %14, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @fput_light(%struct.file* %47, i32 %48)
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %46, %22
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local %struct.file* @fget_light(i32, i32*) #1

declare dso_local i64 @MAJOR(i32) #1

declare dso_local i32 @fput_light(%struct.file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
