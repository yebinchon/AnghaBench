; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/riva/extr_fbdev.c_riva_update_var.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/riva/extr_fbdev.c_riva_update_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32 }
%struct.fb_videomode = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_var_screeninfo*, %struct.fb_videomode*)* @riva_update_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @riva_update_var(%struct.fb_var_screeninfo* %0, %struct.fb_videomode* %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.fb_videomode*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store %struct.fb_videomode* %1, %struct.fb_videomode** %4, align 8
  %5 = call i32 (...) @NVTRACE_ENTER()
  %6 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %7 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %6, i32 0, i32 10
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %10 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %9, i32 0, i32 13
  store i32 %8, i32* %10, align 8
  %11 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %12 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %11, i32 0, i32 14
  store i32 %8, i32* %12, align 4
  %13 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %14 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %17 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %19 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %22 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %20, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %27 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %30 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %25, %2
  %32 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %33 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %32, i32 0, i32 11
  store i64 0, i64* %33, align 8
  %34 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %35 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %34, i32 0, i32 12
  store i64 0, i64* %35, align 8
  %36 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %37 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %40 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %39, i32 0, i32 10
  store i32 %38, i32* %40, align 8
  %41 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %42 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %45 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %44, i32 0, i32 9
  store i32 %43, i32* %45, align 4
  %46 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %47 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %50 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %49, i32 0, i32 8
  store i32 %48, i32* %50, align 8
  %51 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %52 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %55 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %54, i32 0, i32 7
  store i32 %53, i32* %55, align 4
  %56 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %57 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %60 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 8
  %61 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %62 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %65 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  %66 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %67 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %70 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  %71 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %72 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %75 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %77 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %80 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = call i32 (...) @NVTRACE_LEAVE()
  ret void
}

declare dso_local i32 @NVTRACE_ENTER(...) #1

declare dso_local i32 @NVTRACE_LEAVE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
