; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_g450.c_g450_set_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_g450.c_g450_set_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.v4l2_control = type { i32, i64 }
%struct.matrox_fb_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@g450_controls = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.v4l2_control*)* @g450_set_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g450_set_ctrl(i8* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.matrox_fb_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.matrox_fb_info*
  store %struct.matrox_fb_info* %12, %struct.matrox_fb_info** %7, align 8
  %13 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @get_ctrl_id(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %123

22:                                               ; preds = %2
  %23 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %7, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i64* @get_ctrl_ptr(%struct.matrox_fb_info* %26, i32 %27)
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %25, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %123

32:                                               ; preds = %22
  %33 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %34 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g450_controls, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %35, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %32
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %123

47:                                               ; preds = %32
  %48 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %49 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g450_controls, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %50, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %47
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %123

62:                                               ; preds = %47
  %63 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %64 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %7, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i64* @get_ctrl_ptr(%struct.matrox_fb_info* %66, i32 %67)
  store i64 %65, i64* %68, align 8
  %69 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %70 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  switch i32 %71, label %122 [
    i32 131, label %72
    i32 130, label %72
    i32 128, label %81
    i32 129, label %94
    i32 132, label %101
  ]

72:                                               ; preds = %62, %62
  %73 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %7, align 8
  %74 = call i32 @g450_compute_bwlevel(%struct.matrox_fb_info* %73, i32* %8, i32* %9)
  %75 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %7, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @cve2_set_reg10(%struct.matrox_fb_info* %75, i32 14, i32 %76)
  %78 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %7, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @cve2_set_reg10(%struct.matrox_fb_info* %78, i32 30, i32 %79)
  br label %122

81:                                               ; preds = %62
  %82 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %7, align 8
  %83 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %84 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i8
  %87 = call i32 @cve2_set_reg(%struct.matrox_fb_info* %82, i32 32, i8 zeroext %86)
  %88 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %7, align 8
  %89 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %90 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i8
  %93 = call i32 @cve2_set_reg(%struct.matrox_fb_info* %88, i32 34, i8 zeroext %92)
  br label %122

94:                                               ; preds = %62
  %95 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %7, align 8
  %96 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %97 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i8
  %100 = call i32 @cve2_set_reg(%struct.matrox_fb_info* %95, i32 37, i8 zeroext %99)
  br label %122

101:                                              ; preds = %62
  %102 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %7, align 8
  %103 = call zeroext i8 @cve2_get_reg(%struct.matrox_fb_info* %102, i32 5)
  store i8 %103, i8* %10, align 1
  %104 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %105 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = load i8, i8* %10, align 1
  %110 = zext i8 %109 to i32
  %111 = or i32 %110, 2
  %112 = trunc i32 %111 to i8
  store i8 %112, i8* %10, align 1
  br label %118

113:                                              ; preds = %101
  %114 = load i8, i8* %10, align 1
  %115 = zext i8 %114 to i32
  %116 = and i32 %115, -3
  %117 = trunc i32 %116 to i8
  store i8 %117, i8* %10, align 1
  br label %118

118:                                              ; preds = %113, %108
  %119 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %7, align 8
  %120 = load i8, i8* %10, align 1
  %121 = call i32 @cve2_set_reg(%struct.matrox_fb_info* %119, i32 5, i8 zeroext %120)
  br label %122

122:                                              ; preds = %62, %118, %94, %81, %72
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %122, %59, %44, %31, %19
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @get_ctrl_id(i32) #1

declare dso_local i64* @get_ctrl_ptr(%struct.matrox_fb_info*, i32) #1

declare dso_local i32 @g450_compute_bwlevel(%struct.matrox_fb_info*, i32*, i32*) #1

declare dso_local i32 @cve2_set_reg10(%struct.matrox_fb_info*, i32, i32) #1

declare dso_local i32 @cve2_set_reg(%struct.matrox_fb_info*, i32, i8 zeroext) #1

declare dso_local zeroext i8 @cve2_get_reg(%struct.matrox_fb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
