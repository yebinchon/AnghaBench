; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-video.c_cx25821_set_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-video.c_cx25821_set_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i32, i32, i32, i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.v4l2_queryctrl = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx25821_set_control(%struct.cx25821_dev* %0, %struct.v4l2_control* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx25821_dev*, align 8
  %6 = alloca %struct.v4l2_control*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_queryctrl*, align 8
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %5, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %8, align 4
  %12 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %13 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.v4l2_queryctrl* @ctrl_by_id(i32 %14)
  store %struct.v4l2_queryctrl* %15, %struct.v4l2_queryctrl** %9, align 8
  %16 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %17 = icmp eq %struct.v4l2_queryctrl* null, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %4, align 4
  br label %108

20:                                               ; preds = %3
  %21 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %22 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %53 [
    i32 130, label %24
    i32 128, label %24
    i32 129, label %24
  ]

24:                                               ; preds = %20, %20, %20
  %25 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %26 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %29 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %34 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %37 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %32, %24
  %39 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %40 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %43 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp sgt i32 %41, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %38
  %47 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %48 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %51 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %46, %38
  br label %54

53:                                               ; preds = %20
  br label %54

54:                                               ; preds = %53, %52
  %55 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %56 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %106 [
    i32 134, label %58
    i32 132, label %70
    i32 133, label %82
    i32 131, label %94
  ]

58:                                               ; preds = %54
  %59 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %60 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %63 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %65 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %66 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @medusa_set_brightness(%struct.cx25821_dev* %64, i32 %67, i32 %68)
  br label %106

70:                                               ; preds = %54
  %71 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %72 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %75 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  %76 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %77 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %78 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @medusa_set_hue(%struct.cx25821_dev* %76, i32 %79, i32 %80)
  br label %106

82:                                               ; preds = %54
  %83 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %84 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %87 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %89 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %90 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @medusa_set_contrast(%struct.cx25821_dev* %88, i32 %91, i32 %92)
  br label %106

94:                                               ; preds = %54
  %95 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %96 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %99 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  %100 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %101 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %102 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @medusa_set_saturation(%struct.cx25821_dev* %100, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %54, %94, %82, %70, %58
  store i32 0, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %106, %18
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local %struct.v4l2_queryctrl* @ctrl_by_id(i32) #1

declare dso_local i32 @medusa_set_brightness(%struct.cx25821_dev*, i32, i32) #1

declare dso_local i32 @medusa_set_hue(%struct.cx25821_dev*, i32, i32) #1

declare dso_local i32 @medusa_set_contrast(%struct.cx25821_dev*, i32, i32) #1

declare dso_local i32 @medusa_set_saturation(%struct.cx25821_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
