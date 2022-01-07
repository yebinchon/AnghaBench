; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_svgalib.c_svga_get_caps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_svgalib.c_svga_get_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.fb_blit_caps = type { i32, i32, i32 }
%struct.fb_var_screeninfo = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svga_get_caps(%struct.fb_info* %0, %struct.fb_blit_caps* %1, %struct.fb_var_screeninfo* %2) #0 {
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.fb_blit_caps*, align 8
  %6 = alloca %struct.fb_var_screeninfo*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.fb_blit_caps* %1, %struct.fb_blit_caps** %5, align 8
  store %struct.fb_var_screeninfo* %2, %struct.fb_var_screeninfo** %6, align 8
  %7 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %8 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load %struct.fb_blit_caps*, %struct.fb_blit_caps** %5, align 8
  %13 = getelementptr inbounds %struct.fb_blit_caps, %struct.fb_blit_caps* %12, i32 0, i32 0
  store i32 128, i32* %13, align 4
  %14 = load %struct.fb_blit_caps*, %struct.fb_blit_caps** %5, align 8
  %15 = getelementptr inbounds %struct.fb_blit_caps, %struct.fb_blit_caps* %14, i32 0, i32 1
  store i32 32768, i32* %15, align 4
  %16 = load %struct.fb_blit_caps*, %struct.fb_blit_caps** %5, align 8
  %17 = getelementptr inbounds %struct.fb_blit_caps, %struct.fb_blit_caps* %16, i32 0, i32 2
  store i32 256, i32* %17, align 4
  br label %31

18:                                               ; preds = %3
  %19 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %20 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 4
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 128, i32 -1
  %25 = load %struct.fb_blit_caps*, %struct.fb_blit_caps** %5, align 8
  %26 = getelementptr inbounds %struct.fb_blit_caps, %struct.fb_blit_caps* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.fb_blit_caps*, %struct.fb_blit_caps** %5, align 8
  %28 = getelementptr inbounds %struct.fb_blit_caps, %struct.fb_blit_caps* %27, i32 0, i32 1
  store i32 -1, i32* %28, align 4
  %29 = load %struct.fb_blit_caps*, %struct.fb_blit_caps** %5, align 8
  %30 = getelementptr inbounds %struct.fb_blit_caps, %struct.fb_blit_caps* %29, i32 0, i32 2
  store i32 -1, i32* %30, align 4
  br label %31

31:                                               ; preds = %18, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
