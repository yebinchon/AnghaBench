; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/savage/extr_savagefb_driver.c_savage_update_var.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/savage/extr_savagefb_driver.c_savage_update_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32 }
%struct.fb_videomode = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_var_screeninfo*, %struct.fb_videomode*)* @savage_update_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @savage_update_var(%struct.fb_var_screeninfo* %0, %struct.fb_videomode* %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.fb_videomode*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store %struct.fb_videomode* %1, %struct.fb_videomode** %4, align 8
  %5 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %6 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %5, i32 0, i32 10
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %9 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %8, i32 0, i32 13
  store i32 %7, i32* %9, align 8
  %10 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %11 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %10, i32 0, i32 14
  store i32 %7, i32* %11, align 4
  %12 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %13 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %16 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %18 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %21 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %26 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %29 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %24, %2
  %31 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %32 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %31, i32 0, i32 11
  store i64 0, i64* %32, align 8
  %33 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %34 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %33, i32 0, i32 12
  store i64 0, i64* %34, align 8
  %35 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %36 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %39 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %38, i32 0, i32 10
  store i32 %37, i32* %39, align 8
  %40 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %41 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %44 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %43, i32 0, i32 9
  store i32 %42, i32* %44, align 4
  %45 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %46 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %49 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %48, i32 0, i32 8
  store i32 %47, i32* %49, align 8
  %50 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %51 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %54 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %53, i32 0, i32 7
  store i32 %52, i32* %54, align 4
  %55 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %56 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %59 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %58, i32 0, i32 6
  store i32 %57, i32* %59, align 8
  %60 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %61 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %64 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  %65 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %66 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %69 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  %70 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %71 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %74 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %76 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %79 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
