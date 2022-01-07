; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_svgalib.c_svga_tilecursor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_svgalib.c_svga_tilecursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.fb_tilecursor = type { i32, i32, i32, i32 }

@FB_TILE_CURSOR_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svga_tilecursor(%struct.fb_info* %0, %struct.fb_tilecursor* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_tilecursor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_tilecursor* %1, %struct.fb_tilecursor** %4, align 8
  store i32 13, i32* %5, align 4
  store i32 14, i32* %6, align 4
  %8 = load %struct.fb_tilecursor*, %struct.fb_tilecursor** %4, align 8
  %9 = getelementptr inbounds %struct.fb_tilecursor, %struct.fb_tilecursor* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sdiv i32 %14, 8
  %16 = add nsw i32 %10, %15
  %17 = load %struct.fb_tilecursor*, %struct.fb_tilecursor** %4, align 8
  %18 = getelementptr inbounds %struct.fb_tilecursor, %struct.fb_tilecursor* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sdiv i32 %23, 16
  %25 = add nsw i32 %19, %24
  %26 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %27 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %29, 8
  %31 = mul nsw i32 %25, %30
  %32 = add nsw i32 %16, %31
  store i32 %32, i32* %7, align 4
  %33 = load %struct.fb_tilecursor*, %struct.fb_tilecursor** %4, align 8
  %34 = getelementptr inbounds %struct.fb_tilecursor, %struct.fb_tilecursor* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %2
  br label %66

38:                                               ; preds = %2
  %39 = call i32 @svga_wcrt_mask(i32 10, i32 32, i32 32)
  %40 = load %struct.fb_tilecursor*, %struct.fb_tilecursor** %4, align 8
  %41 = getelementptr inbounds %struct.fb_tilecursor, %struct.fb_tilecursor* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @FB_TILE_CURSOR_NONE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %66

46:                                               ; preds = %38
  %47 = load %struct.fb_tilecursor*, %struct.fb_tilecursor** %4, align 8
  %48 = getelementptr inbounds %struct.fb_tilecursor, %struct.fb_tilecursor* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %55 [
    i32 128, label %50
    i32 130, label %51
    i32 131, label %52
    i32 129, label %53
    i32 132, label %54
  ]

50:                                               ; preds = %46
  store i32 13, i32* %5, align 4
  br label %55

51:                                               ; preds = %46
  store i32 9, i32* %5, align 4
  br label %55

52:                                               ; preds = %46
  store i32 7, i32* %5, align 4
  br label %55

53:                                               ; preds = %46
  store i32 5, i32* %5, align 4
  br label %55

54:                                               ; preds = %46
  store i32 1, i32* %5, align 4
  br label %55

55:                                               ; preds = %46, %54, %53, %52, %51, %50
  %56 = load i32, i32* %7, align 4
  %57 = ashr i32 %56, 8
  %58 = call i32 @vga_wcrt(i32* null, i32 14, i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = and i32 %59, 255
  %61 = call i32 @vga_wcrt(i32* null, i32 15, i32 %60)
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @vga_wcrt(i32* null, i32 11, i32 %62)
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @vga_wcrt(i32* null, i32 10, i32 %64)
  br label %66

66:                                               ; preds = %55, %45, %37
  ret void
}

declare dso_local i32 @svga_wcrt_mask(i32, i32, i32) #1

declare dso_local i32 @vga_wcrt(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
