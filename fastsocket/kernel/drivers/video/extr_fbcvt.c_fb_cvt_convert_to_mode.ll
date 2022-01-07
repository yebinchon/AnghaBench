; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fbcvt.c_fb_cvt_convert_to_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fbcvt.c_fb_cvt_convert_to_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_cvt_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@FB_CVT_FLAG_REDUCED_BLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_cvt_data*, %struct.fb_videomode*)* @fb_cvt_convert_to_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fb_cvt_convert_to_mode(%struct.fb_cvt_data* %0, %struct.fb_videomode* %1) #0 {
  %3 = alloca %struct.fb_cvt_data*, align 8
  %4 = alloca %struct.fb_videomode*, align 8
  store %struct.fb_cvt_data* %0, %struct.fb_cvt_data** %3, align 8
  store %struct.fb_videomode* %1, %struct.fb_videomode** %4, align 8
  %5 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %3, align 8
  %6 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %5, i32 0, i32 8
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %9 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %8, i32 0, i32 8
  store i32 %7, i32* %9, align 4
  %10 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %3, align 8
  %11 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sdiv i32 %12, 1000
  %14 = call i32 @KHZ2PICOS(i32 %13)
  %15 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %16 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %15, i32 0, i32 7
  store i32 %14, i32* %16, align 4
  %17 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %3, align 8
  %18 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %21 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 4
  %22 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %3, align 8
  %23 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %26 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  %27 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %3, align 8
  %28 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %31 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %3, align 8
  %33 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %36 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %3, align 8
  %38 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %41 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %3, align 8
  %43 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %46 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %48 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %49 = or i32 %47, %48
  %50 = xor i32 %49, -1
  %51 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %52 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %3, align 8
  %56 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @FB_CVT_FLAG_REDUCED_BLANK, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %2
  %62 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %63 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %64 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %73

67:                                               ; preds = %2
  %68 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %69 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %70 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %67, %61
  ret void
}

declare dso_local i32 @KHZ2PICOS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
