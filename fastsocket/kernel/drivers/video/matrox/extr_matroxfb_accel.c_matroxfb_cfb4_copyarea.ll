; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_accel.c_matroxfb_cfb4_copyarea.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_accel.c_matroxfb_cfb4_copyarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.matrox_fb_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_copyarea*)* @matroxfb_cfb4_copyarea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @matroxfb_cfb4_copyarea(%struct.fb_info* %0, %struct.fb_copyarea* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_copyarea*, align 8
  %5 = alloca %struct.matrox_fb_info*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_copyarea* %1, %struct.fb_copyarea** %4, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %7 = call %struct.matrox_fb_info* @info2minfo(%struct.fb_info* %6)
  store %struct.matrox_fb_info* %7, %struct.matrox_fb_info** %5, align 8
  %8 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %9 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %12 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %10, %13
  %15 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %16 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %14, %17
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %23 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %24 = call i32 @cfb_copyarea(%struct.fb_info* %22, %struct.fb_copyarea* %23)
  br label %55

25:                                               ; preds = %2
  %26 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %5, align 8
  %27 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %5, align 8
  %28 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 1
  %33 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %34 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %37 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 1
  %40 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %41 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %44 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %45, 1
  %47 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %48 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %51 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 1
  %54 = call i32 @matrox_accel_bmove_lin(%struct.matrox_fb_info* %26, i32 %32, i32 %35, i32 %39, i32 %42, i32 %46, i32 %49, i32 %53)
  br label %55

55:                                               ; preds = %25, %21
  ret void
}

declare dso_local %struct.matrox_fb_info* @info2minfo(%struct.fb_info*) #1

declare dso_local i32 @cfb_copyarea(%struct.fb_info*, %struct.fb_copyarea*) #1

declare dso_local i32 @matrox_accel_bmove_lin(%struct.matrox_fb_info*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
