; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tmiofb.c_tmiofb_find_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tmiofb.c_tmiofb_find_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_videomode = type { i64, i64 }
%struct.fb_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mfd_cell* }
%struct.mfd_cell = type { %struct.tmio_fb_data* }
%struct.tmio_fb_data = type { i32, %struct.fb_videomode* }
%struct.fb_var_screeninfo = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fb_videomode* (%struct.fb_info*, %struct.fb_var_screeninfo*)* @tmiofb_find_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fb_videomode* @tmiofb_find_mode(%struct.fb_info* %0, %struct.fb_var_screeninfo* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.mfd_cell*, align 8
  %6 = alloca %struct.tmio_fb_data*, align 8
  %7 = alloca %struct.fb_videomode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fb_videomode*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %4, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.mfd_cell*, %struct.mfd_cell** %13, align 8
  store %struct.mfd_cell* %14, %struct.mfd_cell** %5, align 8
  %15 = load %struct.mfd_cell*, %struct.mfd_cell** %5, align 8
  %16 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %15, i32 0, i32 0
  %17 = load %struct.tmio_fb_data*, %struct.tmio_fb_data** %16, align 8
  store %struct.tmio_fb_data* %17, %struct.tmio_fb_data** %6, align 8
  store %struct.fb_videomode* null, %struct.fb_videomode** %7, align 8
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %68, %2
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.tmio_fb_data*, %struct.tmio_fb_data** %6, align 8
  %21 = getelementptr inbounds %struct.tmio_fb_data, %struct.tmio_fb_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %71

24:                                               ; preds = %18
  %25 = load %struct.tmio_fb_data*, %struct.tmio_fb_data** %6, align 8
  %26 = getelementptr inbounds %struct.tmio_fb_data, %struct.tmio_fb_data* %25, i32 0, i32 1
  %27 = load %struct.fb_videomode*, %struct.fb_videomode** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %27, i64 %29
  store %struct.fb_videomode* %30, %struct.fb_videomode** %9, align 8
  %31 = load %struct.fb_videomode*, %struct.fb_videomode** %9, align 8
  %32 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %35 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sge i64 %33, %36
  br i1 %37, label %38, label %67

38:                                               ; preds = %24
  %39 = load %struct.fb_videomode*, %struct.fb_videomode** %9, align 8
  %40 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %43 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sge i64 %41, %44
  br i1 %45, label %46, label %67

46:                                               ; preds = %38
  %47 = load %struct.fb_videomode*, %struct.fb_videomode** %7, align 8
  %48 = icmp ne %struct.fb_videomode* %47, null
  br i1 %48, label %49, label %65

49:                                               ; preds = %46
  %50 = load %struct.fb_videomode*, %struct.fb_videomode** %9, align 8
  %51 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.fb_videomode*, %struct.fb_videomode** %7, align 8
  %54 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %52, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %49
  %58 = load %struct.fb_videomode*, %struct.fb_videomode** %9, align 8
  %59 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.fb_videomode*, %struct.fb_videomode** %7, align 8
  %62 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %57, %46
  %66 = load %struct.fb_videomode*, %struct.fb_videomode** %9, align 8
  store %struct.fb_videomode* %66, %struct.fb_videomode** %7, align 8
  br label %67

67:                                               ; preds = %65, %57, %49, %38, %24
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %18

71:                                               ; preds = %18
  %72 = load %struct.fb_videomode*, %struct.fb_videomode** %7, align 8
  ret %struct.fb_videomode* %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
