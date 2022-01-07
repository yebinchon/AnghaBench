; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pxafb.c_pxafb_set_par.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pxafb.c_pxafb_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fb_var_screeninfo }
%struct.fb_var_screeninfo = type { i32, i32 }
%struct.pxafb_info = type { i32, %struct.TYPE_8__, %struct.TYPE_6__*, i32*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32* }

@FB_VISUAL_TRUECOLOR = common dso_local global i32 0, align 4
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i32 0, align 4
@FB_VISUAL_STATIC_PSEUDOCOLOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @pxafb_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxafb_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.pxafb_info*, align 8
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %5 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %6 = bitcast %struct.fb_info* %5 to %struct.pxafb_info*
  store %struct.pxafb_info* %6, %struct.pxafb_info** %3, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 0
  store %struct.fb_var_screeninfo* %8, %struct.fb_var_screeninfo** %4, align 8
  %9 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %10 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sge i32 %11, 16
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load i32, i32* @FB_VISUAL_TRUECOLOR, align 4
  %15 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %16 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  store i32 %14, i32* %18, align 4
  br label %37

19:                                               ; preds = %1
  %20 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %21 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @FB_VISUAL_PSEUDOCOLOR, align 4
  %26 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %27 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  store i32 %25, i32* %29, align 4
  br label %36

30:                                               ; preds = %19
  %31 = load i32, i32* @FB_VISUAL_STATIC_PSEUDOCOLOR, align 4
  %32 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %33 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  store i32 %31, i32* %35, align 4
  br label %36

36:                                               ; preds = %30, %24
  br label %37

37:                                               ; preds = %36, %13
  %38 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %39 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %42 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %40, %43
  %45 = sdiv i32 %44, 8
  %46 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %47 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 4
  %50 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %51 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sge i32 %52, 16
  br i1 %53, label %54, label %57

54:                                               ; preds = %37
  %55 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %56 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  br label %72

57:                                               ; preds = %37
  %58 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %59 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %68

63:                                               ; preds = %57
  %64 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %65 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 1, %66
  br label %68

68:                                               ; preds = %63, %62
  %69 = phi i32 [ 4, %62 ], [ %67, %63 ]
  %70 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %71 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %68, %54
  %73 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %74 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %73, i32 0, i32 2
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %80 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %79, i32 0, i32 3
  store i32* %78, i32** %80, align 8
  %81 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %82 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp sge i32 %85, 16
  br i1 %86, label %87, label %92

87:                                               ; preds = %72
  %88 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %89 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = call i32 @fb_dealloc_cmap(i32* %90)
  br label %103

92:                                               ; preds = %72
  %93 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %94 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %97 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = shl i32 1, %100
  %102 = call i32 @fb_alloc_cmap(i32* %95, i32 %101, i32 0)
  br label %103

103:                                              ; preds = %92, %87
  %104 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %105 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %106 = call i32 @pxafb_activate_var(%struct.fb_var_screeninfo* %104, %struct.pxafb_info* %105)
  ret i32 0
}

declare dso_local i32 @fb_dealloc_cmap(i32*) #1

declare dso_local i32 @fb_alloc_cmap(i32*, i32, i32) #1

declare dso_local i32 @pxafb_activate_var(%struct.fb_var_screeninfo*, %struct.pxafb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
