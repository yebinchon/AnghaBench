; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/msm/extr_msm_fb.c_msmfb_fillrect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/msm/extr_msm_fb.c_msmfb_fillrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.fb_fillrect = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_fillrect*)* @msmfb_fillrect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msmfb_fillrect(%struct.fb_info* %0, %struct.fb_fillrect* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_fillrect*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_fillrect* %1, %struct.fb_fillrect** %4, align 8
  %5 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %6 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %7 = call i32 @cfb_fillrect(%struct.fb_info* %5, %struct.fb_fillrect* %6)
  %8 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %9 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %10 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %13 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %16 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %19 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %17, %20
  %22 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %23 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %26 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = call i32 @msmfb_update(%struct.fb_info* %8, i64 %11, i64 %14, i64 %21, i64 %28)
  ret void
}

declare dso_local i32 @cfb_fillrect(%struct.fb_info*, %struct.fb_fillrect*) #1

declare dso_local i32 @msmfb_update(%struct.fb_info*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
