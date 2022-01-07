; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fbmem.c_fb_get_color_depth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fbmem.c_fb_get_color_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.fb_fix_screeninfo = type { i64 }

@FB_VISUAL_MONO01 = common dso_local global i64 0, align 8
@FB_VISUAL_MONO10 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fb_get_color_depth(%struct.fb_var_screeninfo* %0, %struct.fb_fix_screeninfo* %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.fb_fix_screeninfo*, align 8
  %5 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store %struct.fb_fix_screeninfo* %1, %struct.fb_fix_screeninfo** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %7 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @FB_VISUAL_MONO01, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %13 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @FB_VISUAL_MONO10, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %2
  store i32 1, i32* %5, align 4
  br label %79

18:                                               ; preds = %11
  %19 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %20 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %24 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %22, %26
  br i1 %27, label %28, label %63

28:                                               ; preds = %18
  %29 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %30 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %34 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %32, %36
  br i1 %37, label %38, label %63

38:                                               ; preds = %28
  %39 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %40 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %44 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %42, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %38
  %49 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %50 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %54 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %52, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %48
  %59 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %60 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %5, align 4
  br label %78

63:                                               ; preds = %48, %38, %28, %18
  %64 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %65 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %69 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %67, %71
  %73 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %74 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %72, %76
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %63, %58
  br label %79

79:                                               ; preds = %78, %17
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
