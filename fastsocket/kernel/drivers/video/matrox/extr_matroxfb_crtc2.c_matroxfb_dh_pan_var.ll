; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_crtc2.c_matroxfb_dh_pan_var.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_crtc2.c_matroxfb_dh_pan_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matroxfb_dh_fb_info = type { i64, %struct.TYPE_6__, %struct.TYPE_5__, %struct.matrox_fb_info* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.matrox_fb_info = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.matroxfb_dh_fb_info*, %struct.fb_var_screeninfo*)* @matroxfb_dh_pan_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @matroxfb_dh_pan_var(%struct.matroxfb_dh_fb_info* %0, %struct.fb_var_screeninfo* %1) #0 {
  %3 = alloca %struct.matroxfb_dh_fb_info*, align 8
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.matrox_fb_info*, align 8
  store %struct.matroxfb_dh_fb_info* %0, %struct.matroxfb_dh_fb_info** %3, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %4, align 8
  %9 = load %struct.matroxfb_dh_fb_info*, %struct.matroxfb_dh_fb_info** %3, align 8
  %10 = getelementptr inbounds %struct.matroxfb_dh_fb_info, %struct.matroxfb_dh_fb_info* %9, i32 0, i32 3
  %11 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %10, align 8
  store %struct.matrox_fb_info* %11, %struct.matrox_fb_info** %8, align 8
  %12 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %13 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.matroxfb_dh_fb_info*, %struct.matroxfb_dh_fb_info** %3, align 8
  %16 = getelementptr inbounds %struct.matroxfb_dh_fb_info, %struct.matroxfb_dh_fb_info* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 %14, i32* %18, align 8
  %19 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %20 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.matroxfb_dh_fb_info*, %struct.matroxfb_dh_fb_info** %3, align 8
  %23 = getelementptr inbounds %struct.matroxfb_dh_fb_info, %struct.matroxfb_dh_fb_info* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32 %21, i32* %25, align 4
  %26 = load %struct.matroxfb_dh_fb_info*, %struct.matroxfb_dh_fb_info** %3, align 8
  %27 = getelementptr inbounds %struct.matroxfb_dh_fb_info, %struct.matroxfb_dh_fb_info* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = ashr i32 %30, 3
  store i32 %31, i32* %7, align 4
  %32 = load %struct.matroxfb_dh_fb_info*, %struct.matroxfb_dh_fb_info** %3, align 8
  %33 = getelementptr inbounds %struct.matroxfb_dh_fb_info, %struct.matroxfb_dh_fb_info* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = mul i32 %36, %37
  store i32 %38, i32* %6, align 4
  %39 = load %struct.matroxfb_dh_fb_info*, %struct.matroxfb_dh_fb_info** %3, align 8
  %40 = getelementptr inbounds %struct.matroxfb_dh_fb_info, %struct.matroxfb_dh_fb_info* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = mul i32 %43, %44
  %46 = load %struct.matroxfb_dh_fb_info*, %struct.matroxfb_dh_fb_info** %3, align 8
  %47 = getelementptr inbounds %struct.matroxfb_dh_fb_info, %struct.matroxfb_dh_fb_info* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = mul i32 %50, %51
  %53 = add i32 %45, %52
  store i32 %53, i32* %5, align 4
  %54 = load %struct.matroxfb_dh_fb_info*, %struct.matroxfb_dh_fb_info** %3, align 8
  %55 = getelementptr inbounds %struct.matroxfb_dh_fb_info, %struct.matroxfb_dh_fb_info* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = zext i32 %58 to i64
  %60 = add nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %5, align 4
  %62 = load %struct.matroxfb_dh_fb_info*, %struct.matroxfb_dh_fb_info** %3, align 8
  %63 = getelementptr inbounds %struct.matroxfb_dh_fb_info, %struct.matroxfb_dh_fb_info* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %2
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @mga_outl(i32 15404, i32 %67)
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %6, align 4
  %71 = add i32 %69, %70
  %72 = call i32 @mga_outl(i32 15400, i32 %71)
  br label %76

73:                                               ; preds = %2
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @mga_outl(i32 15400, i32 %74)
  br label %76

76:                                               ; preds = %73, %66
  ret void
}

declare dso_local i32 @mga_outl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
