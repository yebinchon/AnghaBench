; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_atyfb_base.c_atyfb_check_var.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_atyfb_base.c_atyfb_check_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i32, i32 }
%struct.fb_info = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.atyfb_par = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.fb_info*, i64, i32, %union.aty_pll*)*, i32 (%struct.fb_info*, %union.aty_pll*)* }
%union.aty_pll = type { i32 }
%struct.crtc = type { i32 }

@FB_ACTIVATE_TEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Invalid pixclock\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FB_ACCELF_TEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @atyfb_check_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atyfb_check_var(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.atyfb_par*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crtc, align 4
  %9 = alloca %union.aty_pll, align 4
  %10 = alloca i64, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.atyfb_par*
  store %struct.atyfb_par* %14, %struct.atyfb_par** %6, align 8
  %15 = load %struct.atyfb_par*, %struct.atyfb_par** %6, align 8
  %16 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %15, i32 0, i32 1
  %17 = call i32 @memcpy(%union.aty_pll* %9, i32* %16, i32 4)
  %18 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %19 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %20 = call i32 @aty_var_to_crtc(%struct.fb_info* %18, %struct.fb_var_screeninfo* %19, %struct.crtc* %8)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %88

25:                                               ; preds = %2
  %26 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %27 = load %struct.atyfb_par*, %struct.atyfb_par** %6, align 8
  %28 = call i64 @atyfb_get_pixclock(%struct.fb_var_screeninfo* %26, %struct.atyfb_par* %27)
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %25
  %32 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %33 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @FB_ACTIVATE_TEST, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %31
  %39 = call i32 @PRINTKE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %31
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %88

43:                                               ; preds = %25
  %44 = load %struct.atyfb_par*, %struct.atyfb_par** %6, align 8
  %45 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32 (%struct.fb_info*, i64, i32, %union.aty_pll*)*, i32 (%struct.fb_info*, i64, i32, %union.aty_pll*)** %47, align 8
  %49 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %52 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 %48(%struct.fb_info* %49, i64 %50, i32 %53, %union.aty_pll* %9)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %43
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %88

59:                                               ; preds = %43
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %62 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @FB_ACCELF_TEXT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load i32, i32* @FB_ACCELF_TEXT, align 4
  %69 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %70 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  br label %76

72:                                               ; preds = %60
  %73 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %74 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  br label %76

76:                                               ; preds = %72, %67
  %77 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %78 = call i32 @aty_crtc_to_var(%struct.crtc* %8, %struct.fb_var_screeninfo* %77)
  %79 = load %struct.atyfb_par*, %struct.atyfb_par** %6, align 8
  %80 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32 (%struct.fb_info*, %union.aty_pll*)*, i32 (%struct.fb_info*, %union.aty_pll*)** %82, align 8
  %84 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %85 = call i32 %83(%struct.fb_info* %84, %union.aty_pll* %9)
  %86 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %87 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %76, %57, %40, %23
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @memcpy(%union.aty_pll*, i32*, i32) #1

declare dso_local i32 @aty_var_to_crtc(%struct.fb_info*, %struct.fb_var_screeninfo*, %struct.crtc*) #1

declare dso_local i64 @atyfb_get_pixclock(%struct.fb_var_screeninfo*, %struct.atyfb_par*) #1

declare dso_local i32 @PRINTKE(i8*) #1

declare dso_local i32 @aty_crtc_to_var(%struct.crtc*, %struct.fb_var_screeninfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
