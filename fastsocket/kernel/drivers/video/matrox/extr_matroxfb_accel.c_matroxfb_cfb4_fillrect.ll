; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_accel.c_matroxfb_cfb4_fillrect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_accel.c_matroxfb_cfb4_fillrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64 }
%struct.fb_fillrect = type { i32, i64, i32, i32, i32, i32 }
%struct.matrox_fb_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_fillrect*)* @matroxfb_cfb4_fillrect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @matroxfb_cfb4_fillrect(%struct.fb_info* %0, %struct.fb_fillrect* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_fillrect*, align 8
  %5 = alloca %struct.matrox_fb_info*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_fillrect* %1, %struct.fb_fillrect** %4, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %7 = call %struct.matrox_fb_info* @info2minfo(%struct.fb_info* %6)
  store %struct.matrox_fb_info* %7, %struct.matrox_fb_info** %5, align 8
  %8 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %9 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %35 [
    i32 128, label %11
  ]

11:                                               ; preds = %2
  %12 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %5, align 8
  %13 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i32*
  %17 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %18 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %23 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %26 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %29 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %32 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @matroxfb_cfb4_clear(%struct.matrox_fb_info* %12, i32 %21, i32 %24, i32 %27, i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %2, %11
  ret void
}

declare dso_local %struct.matrox_fb_info* @info2minfo(%struct.fb_info*) #1

declare dso_local i32 @matroxfb_cfb4_clear(%struct.matrox_fb_info*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
