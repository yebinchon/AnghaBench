; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_vgacon.c_vgacon_font_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_vgacon.c_vgacon_font_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32 }
%struct.console_font = type { i32, i64, i32, i32 }

@vga_video_type = common dso_local global i64 0, align 8
@VIDEO_TYPE_EGAM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@VGA_FONTWIDTH = common dso_local global i64 0, align 8
@state = common dso_local global i32 0, align 4
@KD_FONT_FLAG_DONT_RECALC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*, %struct.console_font*, i32)* @vgacon_font_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgacon_font_set(%struct.vc_data* %0, %struct.console_font* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vc_data*, align 8
  %6 = alloca %struct.console_font*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %5, align 8
  store %struct.console_font* %1, %struct.console_font** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.console_font*, %struct.console_font** %6, align 8
  %11 = getelementptr inbounds %struct.console_font, %struct.console_font* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %8, align 4
  %13 = load i64, i64* @vga_video_type, align 8
  %14 = load i64, i64* @VIDEO_TYPE_EGAM, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %59

19:                                               ; preds = %3
  %20 = load %struct.console_font*, %struct.console_font** %6, align 8
  %21 = getelementptr inbounds %struct.console_font, %struct.console_font* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VGA_FONTWIDTH, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 256
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 512
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %19
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %59

34:                                               ; preds = %28, %25
  %35 = load %struct.console_font*, %struct.console_font** %6, align 8
  %36 = getelementptr inbounds %struct.console_font, %struct.console_font* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 512
  %40 = zext i1 %39 to i32
  %41 = call i32 @vgacon_do_font_op(i32* @state, i32 %37, i32 1, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %4, align 4
  br label %59

46:                                               ; preds = %34
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @KD_FONT_FLAG_DONT_RECALC, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %46
  %52 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %53 = load %struct.console_font*, %struct.console_font** %6, align 8
  %54 = getelementptr inbounds %struct.console_font, %struct.console_font* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @vgacon_adjust_height(%struct.vc_data* %52, i32 %55)
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %51, %46
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %44, %31, %16
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @vgacon_do_font_op(i32*, i32, i32, i32) #1

declare dso_local i32 @vgacon_adjust_height(%struct.vc_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
