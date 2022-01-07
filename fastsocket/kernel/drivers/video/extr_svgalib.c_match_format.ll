; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_svgalib.c_match_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_svgalib.c_match_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svga_fb_format = type { i64, i64, %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.fb_var_screeninfo = type { i64, i64, %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@SVGA_FORMAT_END_VAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svga_fb_format*, %struct.fb_var_screeninfo*)* @match_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_format(%struct.svga_fb_format* %0, %struct.fb_var_screeninfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svga_fb_format*, align 8
  %5 = alloca %struct.fb_var_screeninfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.svga_fb_format* %0, %struct.svga_fb_format** %4, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  br label %10

10:                                               ; preds = %84, %2
  %11 = load %struct.svga_fb_format*, %struct.svga_fb_format** %4, align 8
  %12 = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SVGA_FORMAT_END_VAL, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %89

16:                                               ; preds = %10
  %17 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %18 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.svga_fb_format*, %struct.svga_fb_format** %4, align 8
  %21 = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %74

24:                                               ; preds = %16
  %25 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %26 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.svga_fb_format*, %struct.svga_fb_format** %4, align 8
  %30 = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sle i64 %28, %32
  br i1 %33, label %34, label %74

34:                                               ; preds = %24
  %35 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %36 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.svga_fb_format*, %struct.svga_fb_format** %4, align 8
  %40 = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sle i64 %38, %42
  br i1 %43, label %44, label %74

44:                                               ; preds = %34
  %45 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %46 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.svga_fb_format*, %struct.svga_fb_format** %4, align 8
  %50 = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sle i64 %48, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %44
  %55 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %56 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.svga_fb_format*, %struct.svga_fb_format** %4, align 8
  %60 = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sle i64 %58, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %54
  %65 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %66 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.svga_fb_format*, %struct.svga_fb_format** %4, align 8
  %69 = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %67, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %3, align 4
  br label %91

74:                                               ; preds = %64, %54, %44, %34, %24, %16
  %75 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %76 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.svga_fb_format*, %struct.svga_fb_format** %4, align 8
  %79 = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %77, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %82, %74
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  %87 = load %struct.svga_fb_format*, %struct.svga_fb_format** %4, align 8
  %88 = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %87, i32 1
  store %struct.svga_fb_format* %88, %struct.svga_fb_format** %4, align 8
  br label %10

89:                                               ; preds = %10
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %72
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
