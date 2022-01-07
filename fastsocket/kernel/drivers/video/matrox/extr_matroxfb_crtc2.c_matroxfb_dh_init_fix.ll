; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_crtc2.c_matroxfb_dh_init_fix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_crtc2.c_matroxfb_dh_init_fix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matroxfb_dh_fb_info = type { %struct.TYPE_5__, %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.fb_fix_screeninfo }
%struct.fb_fix_screeninfo = type { i32, i32, i64, i32, i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"MATROX DH\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.matroxfb_dh_fb_info*)* @matroxfb_dh_init_fix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @matroxfb_dh_init_fix(%struct.matroxfb_dh_fb_info* %0) #0 {
  %2 = alloca %struct.matroxfb_dh_fb_info*, align 8
  %3 = alloca %struct.fb_fix_screeninfo*, align 8
  store %struct.matroxfb_dh_fb_info* %0, %struct.matroxfb_dh_fb_info** %2, align 8
  %4 = load %struct.matroxfb_dh_fb_info*, %struct.matroxfb_dh_fb_info** %2, align 8
  %5 = getelementptr inbounds %struct.matroxfb_dh_fb_info, %struct.matroxfb_dh_fb_info* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store %struct.fb_fix_screeninfo* %6, %struct.fb_fix_screeninfo** %3, align 8
  %7 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %8 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %7, i32 0, i32 8
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @strcpy(i32 %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.matroxfb_dh_fb_info*, %struct.matroxfb_dh_fb_info** %2, align 8
  %12 = getelementptr inbounds %struct.matroxfb_dh_fb_info, %struct.matroxfb_dh_fb_info* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %16 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %15, i32 0, i32 7
  store i32 %14, i32* %16, align 4
  %17 = load %struct.matroxfb_dh_fb_info*, %struct.matroxfb_dh_fb_info** %2, align 8
  %18 = getelementptr inbounds %struct.matroxfb_dh_fb_info, %struct.matroxfb_dh_fb_info* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %22 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 8
  %23 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %24 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %26 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %25, i32 0, i32 5
  store i64 0, i64* %26, align 8
  %27 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %28 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %27, i32 0, i32 1
  store i32 8, i32* %28, align 4
  %29 = load %struct.matroxfb_dh_fb_info*, %struct.matroxfb_dh_fb_info** %2, align 8
  %30 = getelementptr inbounds %struct.matroxfb_dh_fb_info, %struct.matroxfb_dh_fb_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %34 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load %struct.matroxfb_dh_fb_info*, %struct.matroxfb_dh_fb_info** %2, align 8
  %36 = getelementptr inbounds %struct.matroxfb_dh_fb_info, %struct.matroxfb_dh_fb_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %40 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %42 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  ret void
}

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
