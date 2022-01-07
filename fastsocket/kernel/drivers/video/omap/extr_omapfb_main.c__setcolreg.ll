; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_omapfb_main.c__setcolreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_omapfb_main.c__setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, %struct.fb_var_screeninfo, %struct.omapfb_plane_struct* }
%struct.fb_var_screeninfo = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.omapfb_plane_struct = type { i32, %struct.omapfb_device* }
%struct.omapfb_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32, i32, i32, i32, i32, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, i32, i32, i32, i32, i32, i32)* @_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_setcolreg(%struct.fb_info* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.fb_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.omapfb_plane_struct*, align 8
  %16 = alloca %struct.omapfb_device*, align 8
  %17 = alloca %struct.fb_var_screeninfo*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %20 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 2
  %22 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %21, align 8
  store %struct.omapfb_plane_struct* %22, %struct.omapfb_plane_struct** %15, align 8
  %23 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %15, align 8
  %24 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %23, i32 0, i32 1
  %25 = load %struct.omapfb_device*, %struct.omapfb_device** %24, align 8
  store %struct.omapfb_device* %25, %struct.omapfb_device** %16, align 8
  %26 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %27 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %26, i32 0, i32 1
  store %struct.fb_var_screeninfo* %27, %struct.fb_var_screeninfo** %17, align 8
  store i32 0, i32* %18, align 4
  %28 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %15, align 8
  %29 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %111 [
    i32 129, label %31
    i32 130, label %31
    i32 128, label %31
    i32 133, label %34
    i32 134, label %34
    i32 135, label %34
    i32 136, label %34
    i32 131, label %55
    i32 132, label %55
  ]

31:                                               ; preds = %7, %7, %7
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %18, align 4
  br label %113

34:                                               ; preds = %7, %7, %7, %7
  %35 = load %struct.omapfb_device*, %struct.omapfb_device** %16, align 8
  %36 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32 (i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32)** %38, align 8
  %40 = icmp ne i32 (i32, i32, i32, i32, i32, i32)* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %34
  %42 = load %struct.omapfb_device*, %struct.omapfb_device** %16, align 8
  %43 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32 (i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32)** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %14, align 4
  %53 = call i32 %46(i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %18, align 4
  br label %54

54:                                               ; preds = %41, %34
  br label %55

55:                                               ; preds = %7, %7, %54
  %56 = load i32, i32* %18, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %113

59:                                               ; preds = %55
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %18, align 4
  br label %113

65:                                               ; preds = %59
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 16
  br i1 %67, label %68, label %110

68:                                               ; preds = %65
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %17, align 8
  %71 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 16, %73
  %75 = ashr i32 %69, %74
  %76 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %17, align 8
  %77 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %75, %79
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %17, align 8
  %83 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 16, %85
  %87 = ashr i32 %81, %86
  %88 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %17, align 8
  %89 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 %87, %91
  %93 = or i32 %80, %92
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %17, align 8
  %96 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 16, %98
  %100 = ashr i32 %94, %99
  %101 = or i32 %93, %100
  store i32 %101, i32* %19, align 4
  %102 = load i32, i32* %19, align 4
  %103 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %104 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to i32*
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  store i32 %102, i32* %109, align 4
  br label %110

110:                                              ; preds = %68, %65
  br label %113

111:                                              ; preds = %7
  %112 = call i32 (...) @BUG()
  br label %113

113:                                              ; preds = %111, %110, %62, %58, %31
  %114 = load i32, i32* %18, align 4
  ret i32 %114
}

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
